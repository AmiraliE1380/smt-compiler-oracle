#include <stdio.h>

__attribute__((noinline)) 
void benchmark_transitivity(double a, double b, double c, double j) {
    double i = 0;
    
    if (a > b) {
        if (b > c) {
            if (c > a) {
                i = j / 15;
            }
        }
    }
    printf("%f", i);
}

int main(int argc, char** argv) {
    benchmark_transitivity(argc, argc + 1, argc + 2, 100);
    return 0;
}