#include <stdio.h>
#include <math.h> 

__attribute__((noinline)) 
void test_hoist_float(float a, float b, float c, int N) {
    int i = 0;
    float sum = 0.0f;
    float my_hoistable = 0.0f;
    float llvm_hoistable = 0.0f; 

    if (a > b) {
        if (b > c) {
            float invariant_log = logf(a - c);
            float invariant_add = a + c + 199.0f; 

            while (i < N) {
                if (i % 2 == 0) {
                    my_hoistable = invariant_log; 
                }
                
                sum += (float)i + my_hoistable + invariant_add;
                i++;
            }
        }
    }
    printf("%f", sum);
}