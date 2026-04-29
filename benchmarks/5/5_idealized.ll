; ModuleID = 'benchmarks/5/5_idealized.c'
source_filename = "benchmarks/5/5_idealized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @test_hoist_float(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = fsub float %0, %2
  %6 = tail call float @logf(float noundef %5) #4, !tbaa !4
  %7 = fcmp ogt float %0, %1
  %8 = fcmp ogt float %1, %2
  %9 = and i1 %7, %8
  %10 = icmp sgt i32 %3, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %4
  %13 = fptosi float %6 to i32
  %14 = fadd float %0, %2
  %15 = fadd float %14, 1.990000e+02
  %16 = sitofp i32 %13 to float
  %17 = and i32 %3, 1
  %18 = icmp eq i32 %3, 1
  br i1 %18, label %39, label %19

19:                                               ; preds = %12
  %20 = and i32 %3, 2147483646
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ 0, %19 ], [ %34, %21 ]
  %23 = phi float [ 0.000000e+00, %19 ], [ %33, %21 ]
  %24 = phi i32 [ 0, %19 ], [ %35, %21 ]
  %25 = uitofp nneg i32 %22 to float
  %26 = fadd float %16, %25
  %27 = fadd float %15, %26
  %28 = fadd float %23, %27
  %29 = or disjoint i32 %22, 1
  %30 = uitofp nneg i32 %29 to float
  %31 = fadd float %16, %30
  %32 = fadd float %15, %31
  %33 = fadd float %28, %32
  %34 = add nuw nsw i32 %22, 2
  %35 = add i32 %24, 2
  %36 = icmp eq i32 %35, %20
  br i1 %36, label %37, label %21, !llvm.loop !8

37:                                               ; preds = %21
  %38 = icmp eq i32 %17, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %37, %12
  %40 = phi i32 [ 0, %12 ], [ %34, %37 ]
  %41 = phi float [ 0.000000e+00, %12 ], [ %16, %37 ]
  %42 = phi float [ 0.000000e+00, %12 ], [ %33, %37 ]
  %43 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %43)
  %44 = and i32 %40, 1
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, float %16, float %41
  %47 = uitofp nneg i32 %40 to float
  %48 = fadd float %46, %47
  %49 = fadd float %15, %48
  %50 = fadd float %42, %49
  br label %51

51:                                               ; preds = %37, %39
  %52 = phi float [ %33, %37 ], [ %50, %39 ]
  %53 = fpext float %52 to double
  br label %54

54:                                               ; preds = %51, %4
  %55 = phi double [ 0.000000e+00, %4 ], [ %53, %51 ]
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %55)
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
