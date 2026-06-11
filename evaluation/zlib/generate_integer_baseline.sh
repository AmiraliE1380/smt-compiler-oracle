$CC -O3 -fsanitize=integer -fsanitize-trap=all -I ../zlib -S -emit-llvm ../zlib/deflate.c -o evaluation/zlib/deflate_integer_O3.ll
