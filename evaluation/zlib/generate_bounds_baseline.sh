$CC -O3 -fsanitize=bounds -fsanitize-trap=all -I ../zlib -S -emit-llvm ../zlib/deflate.c -o evaluation/zlib/deflate_bounds_O3.ll
