#include <stdio.h>

__attribute__((noinline)) 
void benchmark_transitivity(int a, int b, int c, int j) {
    int i = 0;
    
    if (a - b> 0) {
        if (b - c > 0) {
            if (c - a > 0) {
                i = j / 155;
            }
        }
    }
    printf("%d", i);
}
