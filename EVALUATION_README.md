# Evaluation & Limit Study Summary

This directory contains the empirical foundation for our SMT-based compiler Oracle. The files document the failure of standard LLVM heuristics on modern codebases and establish the theoretical maximum speedup our tool can achieve via a Limit Study.

## 1. Baseline Benchmarks (The Blindspots)
* **`evaluation/{zstd,zlib,openssl}/*_integer_O3.ll`**: IR files compiled with the broad `-fsanitize=integer` umbrella. These revealed LLVM's massive blindspots in handling non-linear bitwise math and sliding windows, generating hundreds of panic branches (e.g., Zstd had 353, OpenSSL had 224).
* **`evaluation/polybench/jacobi2d_traps_O3.ll`**: Contained exactly 0 traps. This proves the "Affine Overfit" thesis: LLVM heuristics perfectly handle simple scientific arrays but fail heavily on cryptography and compression.

## 2. The Limit Study Simulator
* **`strip_traps.py`**: A Python script that neutralizes `@llvm.ubsantrap` instructions in the IR. We used this to bypass the Phase Ordering Problem and perfectly simulate an SMT solver proving the traps as `UNSAT`.
* **`*_trap_free_O3.ll`**: The modified IR files output by the script. These represent the theoretical maximum optimization limit our SMT Oracle can achieve.

## 3. The Strict UB Pivot (LZ4)
* **`evaluation/lz4/lz4_strict_O3.ll`**: LZ4 IR compiled explicitly with `-fsanitize=signed-integer-overflow,shift`. We pivoted to strict Undefined Behavior (UB) because the broad integer flag penalized legal unsigned overflows used in LZ4's core hashing loops, causing a hardware crash (`ud2`).
* **`logs/lz4_strict_trap_count.txt`**: Logs the exact 40 strict UB traps remaining in LZ4. These 40 traps are the concrete, mathematical targets for our SMT Oracle pass.

## 4. Performance Metrics (The Payoff)
* **`evaluation/lz4/bench_lz4.c`**: A custom micro-benchmark harness designed to compress a 10MB buffer 100 times, isolating pure CPU execution time without file I/O noise.
* **`logs/lz4_strict_runtime_results.txt`**: The crown jewel of the dataset. It logs the benchmark execution, proving that running the trap-free binary (`run_strict_oracle`) instead of the baseline (`run_strict_baseline`) drops execution time from ~0.129s to ~0.101s—a ~22% temporal speedup.