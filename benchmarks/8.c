#include <stdio.h>

__attribute__((noinline))
void benchmark_bitwise_math(int x, int y) {
    int result = 0;

    // If there are no overlapping 1-bits, addition is mathematically identical to XOR
    if ((x & y) == 0) {
        if ((x + y) != (x ^ y)) {
            // LLVM struggles to bridge the gap between bitwise AND and algebraic addition.
            // Z3's BitVector theory proves this is an impossible contradiction instantly!
            result = 100 / x;
        }
    }

    printf("%d", result);
}