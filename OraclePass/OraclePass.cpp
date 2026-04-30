#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "Z3Encoder.h"

using namespace llvm;

namespace {
struct OraclePass : public PassInfoMixin<OraclePass> {
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
        errs() << "\n[Z3 Oracle] Analyzing Function: " << F.getName() << "\n";
        
        double TotalLatency = 0.0; // Track the total SMT time

        for (BasicBlock &BB : F) {
            auto *Branch = dyn_cast<BranchInst>(BB.getTerminator());
            if (!Branch || !Branch->isConditional()) continue;

            errs() << "  -> Branch found in block:\n";

            for (unsigned Edge = 0; Edge < 2; ++Edge) {
                bool IsTrueEdge = (Edge == 0);
                StringRef PathName = IsTrueEdge ? "TRUE" : "FALSE";
                
                try {
                    Z3Encoder Encoder;

                    for (BasicBlock &FuncBB : F) {
                        for (Instruction &Inst : FuncBB) {
                            Encoder.encodeInstruction(&Inst);
                        }
                    }

                    BasicBlock *Curr = &BB;
                    while (BasicBlock *Pred = Curr->getSinglePredecessor()) {
                        auto *PredBr = dyn_cast<BranchInst>(Pred->getTerminator());
                        if (PredBr && PredBr->isConditional()) {
                            bool WasTrueEdge = (PredBr->getSuccessor(0) == Curr);
                            Encoder.assertCondition(PredBr->getCondition(), WasTrueEdge);
                        }
                        Curr = Pred;
                    }

                    Encoder.assertCondition(Branch->getCondition(), IsTrueEdge);

                    // Unpack the pair using C++17 structured binding
                    auto [ResultString, QueryLatency] = Encoder.checkSatisfiability();
                    TotalLatency += QueryLatency;
                    
                    errs() << "     Testing " << PathName << " path... " << ResultString << "\n";
                           
                } catch (z3::exception &ex) {
                    errs() << "     [Z3 Error] " << ex.msg() << "\n";
                }
            }
        }
        
        // Print the grand total at the end of the function!
        errs() << "  => Total SMT Query Latency for Function: " << TotalLatency << " ms\n";
        
        return PreservedAnalyses::all();
    }
};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "OraclePass", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](StringRef Name, FunctionPassManager &FPM,
                       ArrayRef<PassBuilder::PipelineElement>) {
                        if (Name == "oracle-pass") {
                            FPM.addPass(OraclePass());
                            return true;
                        }
                        return false;
                    });
            }};
}