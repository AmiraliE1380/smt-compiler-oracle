clang -O3 -fsanitize=bounds -fsanitize-trap=bounds -S -emit-llvm ../../../lz4/lib/lz4.c -o lz4_bounds_O3.ll
