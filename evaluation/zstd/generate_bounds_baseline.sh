$CC -O3 -fsanitize=bounds -fsanitize-trap=all -I ../zstd/lib -I ../zstd/lib/common -S -emit-llvm ../zstd/lib/compress/zstd_compress.c -o evaluation/zstd/zstd_bounds_O3.ll
