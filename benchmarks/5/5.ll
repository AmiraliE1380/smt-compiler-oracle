; ModuleID = 'benchmarks/5/5.c'
source_filename = "benchmarks/5/5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @test_hoist_float(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = fcmp ogt float %0, %1
  %6 = fcmp ogt float %1, %2
  %7 = and i1 %5, %6
  %8 = icmp sgt i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = fadd float %0, %2
  %12 = fadd float %11, 1.990000e+02
  %13 = fsub float %0, %2
  br label %14

14:                                               ; preds = %10, %22
  %15 = phi float [ 0.000000e+00, %10 ], [ %23, %22 ]
  %16 = phi float [ 0.000000e+00, %10 ], [ %27, %22 ]
  %17 = phi i32 [ 0, %10 ], [ %28, %22 ]
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = tail call float @logf(float noundef %13) #3, !tbaa !4
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi float [ %21, %20 ], [ %15, %14 ]
  %24 = uitofp nneg i32 %17 to float
  %25 = fadd float %23, %24
  %26 = fadd float %12, %25
  %27 = fadd float %16, %26
  %28 = add nuw nsw i32 %17, 1
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %30, label %14, !llvm.loop !8

30:                                               ; preds = %22
  %31 = fpext float %27 to double
  br label %32

32:                                               ; preds = %30, %4
  %33 = phi double [ 0.000000e+00, %4 ], [ %31, %30 ]
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %33)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

attributes #0 = { nofree noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
