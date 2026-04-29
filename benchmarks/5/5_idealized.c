#include <stdio.h>
#include <math.h> // Required for logf()

__attribute__((noinline)) 
void test_hoist_float(float a, float b, float c, int N) {
    int i = 0;
    float sum = 0.0f;
    float my_hoistable = 0.0f;
    float llvm_hoistable = 0.0f; 
    
    int invariant = logf(a - c);

    if (a > b) {
        if (b > c) {
            
            while (i < N) {
                llvm_hoistable = a + c + 199.0f;       
                
                if (i % 2 == 0) {
                    my_hoistable = invariant; 
                }
                
                sum += (float)i + my_hoistable + llvm_hoistable;
                i++;
            }
        }
    }
    printf("%f", sum);
}