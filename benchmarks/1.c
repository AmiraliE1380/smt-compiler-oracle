#include <stdio.h>

__attribute__((noinline)) 
void benchmark_transitivity(int a, int b, int c, int j) {
    int i = 0;
    
    if (a > b) {
        if (b > c) {
            if (c > a) {
                i = j / 15;
            }
        }
    }
    printf("%d", i);
}
