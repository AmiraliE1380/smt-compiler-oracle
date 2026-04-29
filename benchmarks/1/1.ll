; ModuleID = 'benchmarks/1/1.c'
source_filename = "benchmarks/1/1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @benchmark_transitivity(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %0, %1
  %6 = icmp sgt i32 %1, -1
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = mul nsw i32 %0, %0
  %10 = mul nuw nsw i32 %1, %1
  %11 = icmp samesign ult i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = sdiv i32 %3, 155
  br label %14

14:                                               ; preds = %8, %12, %4
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ], [ 0, %4 ]
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %15)
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
