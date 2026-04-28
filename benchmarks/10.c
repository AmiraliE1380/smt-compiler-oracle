#include <stdio.h>

__attribute__((noinline)) 
void benchmark_linear_math(double a, double b, double c) {
    double result = 0;
    
    if (a + b < c) {
        // Simple algebra: if a + b = c, then c - a = b.
        if (c - a < b - 0.01) {
            // LLVM will almost certainly leave this branch alive.
            // Z3 natively understands linear arithmetic and will prove this is unsat.
            result = 100 / a;
        }
    }
    printf("%f", result);
}