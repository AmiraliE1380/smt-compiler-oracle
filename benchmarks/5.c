#include <stdio.h>
#include <math.h> // Required for logf()

__attribute__((noinline)) 
void test_hoist_float(float a, float b, float c, int N) {
    int i = 0;
    float sum = 0.0f;
    float my_hoistable = 0.0f;
    float llvm_hoistable = 0.0f;  

    if (a > b) {
        if (b > c) {
            // Mathematical fact: a > c. 
            // Therefore, (a - c) is strictly greater than 0.
            
            while (i < N) {
                // Unconditional math. LLVM hoists this instantly.
                llvm_hoistable = a + c + 199.0f;       
                
                // THE TRAP: Depends on 'i'. LLVM must evaluate this every iteration.
                if (i % 2 == 0) {
                    // LLVM is trapped! It does not know if (a - c) > 0.
                    // If (a - c) is negative, logf() sets the global 'errno' (a side effect).
                    // LLVM leaves it in the loop to avoid speculative side effects.
                    // Your SMT Oracle proves a > b > c means (a - c) > 0, and hoists it!
                    my_hoistable = logf(a - c); 
                }
                
                sum += (float)i + my_hoistable + llvm_hoistable;
                i++;
            }
        }
    }
    printf("%f", sum);
}