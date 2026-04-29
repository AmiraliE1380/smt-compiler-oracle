#include <stdio.h>

__attribute__((noinline)) 
void benchmark_transitivity(int a, int b, int c, int j) {
    int i = 0;
    
    if (a > b && b >= 0) {
        if (a*a < b*b) {
            i = j / 155;
        }
    }
    printf("%d", i);
}
