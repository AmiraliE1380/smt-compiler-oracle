#include <stdio.h>

__attribute__((noinline)) 
void benchmark_modulo(int x) {
    int result = 0;
    
    if (x % 81 == 0) {
        if (x % 9 != 0) {
            result = 1000 / x; 
        }
    }
    printf("%d", result);
}