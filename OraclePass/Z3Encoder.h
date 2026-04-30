#pragma once
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include <z3++.h>
#include <unordered_map>
#include <string>
#include <utility> // Added for std::pair

class Z3Encoder {
    z3::context Ctx;
    z3::solver Solver;
    std::unordered_map<llvm::Value*, z3::expr> ValueMap;

public:
    Z3Encoder();
    z3::expr getOrCreateZ3Expr(llvm::Value *Val);
    void encodeInstruction(llvm::Instruction *Inst);
    void assertCondition(llvm::Value *Cond, bool IsTrue);
    
    // Now returns {Formatted String, Raw Latency Double}
    std::pair<std::string, double> checkSatisfiability(); 
};