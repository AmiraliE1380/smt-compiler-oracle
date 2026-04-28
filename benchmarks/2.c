#include <stdio.h>

void test_hoist(int a, 
                int b,
                int c,
                int j) {
    int i=0;
    
    int sum = 0;

    j = j % 1000;
    while (i <= j) {
        sum += i;
        i++;
    }

    if (i - j + 1) {
        j = b % 155;
    } else {
        j = b / 133;
    }

    printf("%d", j);
    printf("%d", sum);
}