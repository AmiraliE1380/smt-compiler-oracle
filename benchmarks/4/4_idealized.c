#include <stdio.h>

__attribute__((noinline)) 
void test_hoist_trap(int a, int b, int c, int N) {
    int i = 0;
    int sum = 0;
    int my_hoistable = 0;
    int llvm_hoistable = 0;  

    int invariant = 100 / (a - c);

    if (a > b) {
        if (b > c) {
            
            while (i < N) {
                llvm_hoistable = a + c + 199;       
                
                if ((b + i) % 2 == 0) {
                    my_hoistable = invariant; 
                }
                
                sum ^= i + my_hoistable + llvm_hoistable;
                i++;
            }
        }
    }
    printf("%d", sum);
}