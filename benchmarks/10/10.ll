; ModuleID = 'benchmarks/10.c'
source_filename = "benchmarks/10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @benchmark_linear_math(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = fadd double %0, %1
  %5 = fcmp olt double %4, %2
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = fsub double %2, %0
  %8 = fadd double %1, -1.000000e-02
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = fdiv double 1.000000e+02, %0
  br label %12

12:                                               ; preds = %6, %10, %3
  %13 = phi double [ %11, %10 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %3 ]
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %13)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

attributes #0 = { nofree noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
