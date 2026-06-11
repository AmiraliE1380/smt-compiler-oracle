$CC -O3 -fsanitize=integer -fsanitize-trap=all -S -emit-llvm ../lz4/lib/lz4.c -o evaluation/lz4/lz4_integer_O3.ll
