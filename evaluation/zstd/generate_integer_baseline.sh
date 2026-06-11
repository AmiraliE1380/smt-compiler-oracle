$CC -O3 -fsanitize=integer -fsanitize-trap=all -I ../zstd/lib -I ../zstd/lib/common -S -emit-llvm ../zstd/lib/compress/zstd_compress.c -o evaluation/zstd/zstd_integer_O3.ll
