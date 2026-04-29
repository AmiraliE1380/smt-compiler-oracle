#include <stdio.h>

__attribute__((noinline))
void test_loop_postcondition_float(int a, int b, int c, int x) {
    int result = 0;

    if (c < 1000) {
        
        while (a + b < c) {
            a += 4; 
            result += b;
        }

    }
    printf("%d", result);
}