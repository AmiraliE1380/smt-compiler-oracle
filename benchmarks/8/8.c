#include <stdio.h>

__attribute__((noinline))
void benchmark_bitwise_math(int x, int y) {
    int result = 0;

    if ((x & y) == 0) {
        if ((x + y) != (x ^ y)) {
            result = 100 / x;
        }
    }

    printf("%d", result);
}