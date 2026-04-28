#include <stdio.h>

__attribute__((noinline)) 
void test_hoist(int a, int b, int c, int N) {
    int i = 0;
    int sum = 0;
    int my_hoistable = 0;
    int llvm_hoistable = 0;  

    if (a > b) {
        if (b > c) {
            // Mathematical fact: a != c. 
            
            while (i < N) {
                // Unconditional math. LLVM hoists this instantly.
                llvm_hoistable = a + c + 199;       
                
                // THE TRAP: Now it depends on 'i'. LLVM CANNOT unswitch the loop!
                // It must evaluate this on every iteration.
                if ((b + i) % 2 == 0) {
                    // LLVM is trapped. It cannot hoist this speculatively because it fears a crash.
                    // Your SMT Oracle proves a > b > c means (a - c) != 0, and hoists it!
                    my_hoistable = 100 / (a - c); 
                }
                
                sum ^= i + my_hoistable + llvm_hoistable;
                i++;
            }
        }
    }
    printf("%d", sum);
}