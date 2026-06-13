#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "../../../lz4/lib/lz4.h"

#define DATA_SIZE (10 * 1024 * 1024) // 10 MB buffer
#define ITERATIONS 100

int main() {
    char* src = (char*)malloc(DATA_SIZE);
    for (int i = 0; i < DATA_SIZE; i++) {
        src[i] = (char)(i % 255); 
    }

    int max_dst_size = LZ4_compressBound(DATA_SIZE);
    char* dst = (char*)malloc(max_dst_size);

    LZ4_compress_default(src, dst, DATA_SIZE, max_dst_size);

    clock_t start = clock();
    for (int i = 0; i < ITERATIONS; i++) {
        LZ4_compress_default(src, dst, DATA_SIZE, max_dst_size);
    }
    clock_t end = clock();

    double time_spent = (double)(end - start) / CLOCKS_PER_SEC;
    printf("Completed %d iterations.\n", ITERATIONS);
    printf("Total CPU Time: %f seconds\n", time_spent);

    free(src);
    free(dst);
    return 0;
}
