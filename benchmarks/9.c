#include <stdio.h>

__attribute__((noinline)) 
void benchmark_div_rem_prime(unsigned int x) {
    int result = 0;
    
    if (x / 7 == 5) {
        
        if (x % 7 == 6) {
            
            if (x != 41) {
                result = 10000 / (x - 35); 
            }
        }
    }
    printf("%d", result);
}