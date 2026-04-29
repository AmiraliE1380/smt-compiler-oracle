#include <stdio.h>

__attribute__((noinline))
void test_loop_postcondition_float(double a, double b, double c, int x) {
    int result = 0;

    if (c < 1000.0) {
        
        while (a + b < c) {
            a += 1.5; 
        }

        if (c - a > b + 0.01) {
            result = 100 / x; 
        }
    }
    printf("%d", result);
}