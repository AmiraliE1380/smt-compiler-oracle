; ModuleID = 'benchmarks/5/5_idealized.c'
source_filename = "benchmarks/5/5_idealized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @test_hoist_float(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = fcmp ogt float %0, %1
  %6 = fcmp ogt float %1, %2
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %52

8:                                                ; preds = %4
  %9 = fsub float %0, %2
  %10 = tail call float @logf(float noundef %9) #4, !tbaa !4
  %11 = fadd float %0, %2
  %12 = fadd float %11, 1.990000e+02
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %8
  %15 = and i32 %3, 1
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = and i32 %3, 2147483646
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %32, %19 ]
  %21 = phi float [ 0.000000e+00, %17 ], [ %31, %19 ]
  %22 = phi i32 [ 0, %17 ], [ %33, %19 ]
  %23 = uitofp nneg i32 %20 to float
  %24 = fadd float %10, %23
  %25 = fadd float %12, %24
  %26 = fadd float %21, %25
  %27 = or disjoint i32 %20, 1
  %28 = uitofp nneg i32 %27 to float
  %29 = fadd float %10, %28
  %30 = fadd float %12, %29
  %31 = fadd float %26, %30
  %32 = add nuw nsw i32 %20, 2
  %33 = add i32 %22, 2
  %34 = icmp eq i32 %33, %18
  br i1 %34, label %35, label %19, !llvm.loop !8

35:                                               ; preds = %19
  %36 = icmp eq i32 %15, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %35, %14
  %38 = phi i32 [ 0, %14 ], [ %32, %35 ]
  %39 = phi float [ 0.000000e+00, %14 ], [ %31, %35 ]
  %40 = phi float [ 0.000000e+00, %14 ], [ %10, %35 ]
  %41 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %41)
  %42 = and i32 %38, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, float %10, float %40
  %45 = uitofp nneg i32 %38 to float
  %46 = fadd float %44, %45
  %47 = fadd float %12, %46
  %48 = fadd float %39, %47
  br label %49

49:                                               ; preds = %35, %37
  %50 = phi float [ %31, %35 ], [ %48, %37 ]
  %51 = fpext float %50 to double
  br label %52

52:                                               ; preds = %8, %49, %4
  %53 = phi double [ 0.000000e+00, %4 ], [ 0.000000e+00, %8 ], [ %51, %49 ]
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %53)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

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
