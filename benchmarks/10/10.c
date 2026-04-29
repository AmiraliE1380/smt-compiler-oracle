#include <stdio.h>

__attribute__((noinline)) 
void benchmark_linear_math(double a, double b, double c) {
    double result = 0;
    
    if (a + b < c) {
        if (c - a < b - 0.01) {
            result = 100 / a;
        }
    }
    printf("%f", result);
}