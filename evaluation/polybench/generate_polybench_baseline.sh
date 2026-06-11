$CC -O3 -fsanitize=integer,bounds -fsanitize-trap=all -I ../polybench/utilities -S -emit-llvm ../polybench/stencils/jacobi-2d/jacobi-2d.c -o evaluation/polybench/jacobi2d_traps_O3.ll
