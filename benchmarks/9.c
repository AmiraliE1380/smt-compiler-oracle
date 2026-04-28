#include <stdio.h>

__attribute__((noinline)) 
void benchmark_div_rem_prime(unsigned int x) {
    int result = 0;
    
    // If x / 7 == 5, LLVM correctly calculates that x is in the range [35, 41].
    if (x / 7 == 5) {
        
        // The only number in [35, 41] that leaves a remainder of 6 when divided by 7 is 41.
        // Therefore, x MUST be exactly 41. 
        if (x % 7 == 6) {
            
            // LLVM's ConstantRange tracks the bounds [35, 41], but its bit-tracker 
            // cannot process "% 7". It completely fails to realize x is 41.
            if (x != 41) {
                // Dead code! 
                // We use (x - 35) as the denominator. Since 35 is in LLVM's known range,
                // it panics about a divide-by-zero crash and leaves this sitting in the IR!
                // Z3's Linear Integer Arithmetic evaluates division/modulo algebraically and kills it.
                result = 10000 / (x - 35); 
            }
        }
    }
    printf("%d", result);
}