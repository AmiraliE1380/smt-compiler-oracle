#include "Z3Encoder.h"
#include "llvm/Support/raw_ostream.h"
#include <chrono>
#include <string>

using namespace llvm;

Z3Encoder::Z3Encoder() : Solver(Ctx) {}

z3::expr Z3Encoder::getOrCreateZ3Expr(Value *Val) {
    auto it = ValueMap.find(Val);
    if (it != ValueMap.end()) {
        return it->second; 
    }

    if (auto *CI = dyn_cast<ConstantInt>(Val)) {
        // If LLVM gives us a hardcoded true/false (i1)
        if (CI->getType()->isIntegerTy(1)) {
            z3::expr z3_bool = Ctx.bool_val(CI->getZExtValue() != 0);
            ValueMap.insert({Val, z3_bool});
            return z3_bool;
        }
        // Otherwise, standard 32-bit integer
        uint64_t val = CI->getZExtValue();
        z3::expr z3_const = Ctx.bv_val((unsigned)val, 32); 
        ValueMap.insert({Val, z3_const});
        return z3_const;
    }

    std::string unique_name = "val_" + std::to_string(reinterpret_cast<uintptr_t>(Val));

    // If LLVM gives us a boolean variable
    if (Val->getType()->isIntegerTy(1)) {
        z3::expr new_bool = Ctx.bool_const(Val->getName().str().c_str());
        ValueMap.insert({Val, new_bool});
        return new_bool;
    }

    // Otherwise, standard 32-bit integer variable
    z3::expr new_var = Ctx.bv_const(Val->getName().str().c_str(), 32);
    ValueMap.insert({Val, new_var});
    return new_var;
}

void Z3Encoder::encodeInstruction(Instruction *Inst) {
    if (auto *BinOp = dyn_cast<BinaryOperator>(Inst)) {
        z3::expr op1 = getOrCreateZ3Expr(BinOp->getOperand(0));
        z3::expr op2 = getOrCreateZ3Expr(BinOp->getOperand(1));
        z3::expr res(Ctx);

        switch (BinOp->getOpcode()) {
            case Instruction::Add:  res = op1 + op2; break;
            case Instruction::Sub:  res = op1 - op2; break;
            case Instruction::Mul:  res = op1 * op2; break;
            case Instruction::SDiv: res = op1 / op2; break;
            case Instruction::UDiv: res = z3::udiv(op1, op2); break;
            case Instruction::SRem: res = z3::srem(op1, op2); break;
            case Instruction::URem: res = z3::urem(op1, op2); break;
            
            // Context-Aware Bitwise/Logical Operations!
            case Instruction::And:  
                res = op1.is_bool() ? (op1 && op2) : (op1 & op2); 
                break;
            case Instruction::Or:   
                res = op1.is_bool() ? (op1 || op2) : (op1 | op2); 
                break;
            case Instruction::Xor:  
                res = op1.is_bool() ? (op1 != op2) : (op1 ^ op2); // Logical XOR is Inequality
                break;
            default: return; 
        }
        ValueMap.insert({Inst, res}); // SAFE
    } 
    else if (auto *Cmp = dyn_cast<ICmpInst>(Inst)) {
        z3::expr op1 = getOrCreateZ3Expr(Cmp->getOperand(0));
        z3::expr op2 = getOrCreateZ3Expr(Cmp->getOperand(1));
        z3::expr res(Ctx);

        switch (Cmp->getPredicate()) {
            case CmpInst::ICMP_EQ:  res = (op1 == op2); break;
            case CmpInst::ICMP_NE:  res = (op1 != op2); break;
            case CmpInst::ICMP_SGT: res = (op1 > op2); break;
            case CmpInst::ICMP_SGE: res = (op1 >= op2); break;
            case CmpInst::ICMP_SLT: res = (op1 < op2); break;
            case CmpInst::ICMP_SLE: res = (op1 <= op2); break;
            case CmpInst::ICMP_UGT: res = z3::ugt(op1, op2); break;
            case CmpInst::ICMP_UGE: res = z3::uge(op1, op2); break;
            case CmpInst::ICMP_ULT: res = z3::ult(op1, op2); break;
            case CmpInst::ICMP_ULE: res = z3::ule(op1, op2); break;
            default: return;
        }
        ValueMap.insert({Inst, res}); // SAFE
    }
    else if (isa<TruncInst>(Inst) || isa<ZExtInst>(Inst) || isa<SExtInst>(Inst)) {
        ValueMap.insert({Inst, getOrCreateZ3Expr(Inst->getOperand(0))}); // SAFE
    }
}

void Z3Encoder::assertCondition(Value *Cond, bool IsTrue) {
    z3::expr z3_cond = getOrCreateZ3Expr(Cond);
    if (!IsTrue) {
        z3_cond = !z3_cond;
    }
    Solver.add(z3_cond);
}

std::pair<std::string, double> Z3Encoder::checkSatisfiability() {
    auto start_time = std::chrono::high_resolution_clock::now();
    z3::check_result result = Solver.check();
    auto end_time = std::chrono::high_resolution_clock::now();
    
    std::chrono::duration<double, std::milli> latency = end_time - start_time;
    double raw_latency = latency.count();

    std::string status;
    switch (result) {
        case z3::unsat:   status = "UNSAT (Dead Code / Impossible Path)"; break;
        case z3::sat:     status = "SAT (Reachable Path)"; break;
        case z3::unknown: status = "UNKNOWN (Solver gave up)"; break;
        default:          status = "ERROR"; break;
    }

    std::string output = status + " [Query Latency: " + std::to_string(raw_latency) + " ms]";
    return {output, raw_latency};
}