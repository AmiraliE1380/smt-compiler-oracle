# SMT Compiler Oracle

**Author:** Amirali Ebrahimzadeh  
**Course:** CSE-590

## Overview
`smt-compiler-oracle` is a path-sensitive, out-of-tree LLVM optimization pass that integrates the **Z3 SMT Solver** directly into the compiler pipeline. 

While modern LLVM optimization passes (like `InstCombine` and `ConstraintElimination`) are exceptionally fast, they often rely on linear pattern matching. This creates "blind spots" where the compiler fails to identify mathematically impossible execution paths—particularly those involving bitwise arithmetic, non-linear transitivity, and modulo operations. 

This project bridges that gap by translating LLVM Intermediate Representation (IR) into Z3's Theory of BitVectors (`QF_BV`), proving the reachability of conditional branches with absolute mathematical certainty.

## Architecture

The project consists of two core components:

1. **`Z3Encoder` (The Translator):** Maps LLVM `Value`s and `Instruction`s directly to Z3 AST nodes. It explicitly handles machine-level semantics, correctly translating LLVM's 1-bit booleans (`i1`) to logical constraints and 32-bit integers (`i32`) to Z3 BitVectors. This guarantees that the SMT solver perfectly mirrors the physical hardware's ALU, natively handling integer overflows.
   
2. **`OraclePass` (The Engine):** An LLVM function pass that traverses the Control Flow Graph (CFG). When it encounters a conditional branch, it walks backward up the CFG (`getSinglePredecessor`) to collect the required path conditions. It then queries Z3 for both the `TRUE` and `FALSE` edges:
   * **`SAT`:** The path is reachable.
   * **`UNSAT`:** The path is a logical contradiction (Dead Code).

## Building

This pass is built against the bleeding-edge `main` branch of LLVM (23.0.0git) and uses modern LLVM plugin registration.

### Dependencies
* LLVM (23.0.0git or later)
* Z3 Theorem Prover
* CMake (>= 3.16)
* Ninja Build System
* Clang/Clang++ 

### Compilation
Code output
README generated.

```bash
mkdir build && cd build
# Force CMake to use Clang to support LLVM 23's advanced C++ metaprogramming
CC=clang CXX=clang++ cmake -G Ninja ..
ninja
```

### Usage
Use LLVM's opt tool to load the shared object and fire it at an LLVM IR file.

```Bash
opt -load-pass-plugin=./build/OraclePass.so -passes="oracle-pass" benchmarks/8/8.ll -disable-output
```
