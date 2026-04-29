; ModuleID = 'benchmarks/4/4.c'
source_filename = "benchmarks/4/4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @test_hoist_trap(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %0, %1
  %6 = icmp sgt i32 %1, %2
  %7 = and i1 %5, %6
  %8 = icmp sgt i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %62

10:                                               ; preds = %4
  %11 = sub nsw i32 %0, %2
  %12 = add i32 %0, 199
  %13 = add i32 %12, %2
  %14 = and i32 %3, 1
  %15 = icmp eq i32 %3, 1
  br i1 %15, label %47, label %16

16:                                               ; preds = %10
  %17 = and i32 %3, 2147483646
  %18 = and i32 %1, 1
  %19 = and i32 %1, 1
  %20 = icmp eq i32 %18, 0
  %21 = icmp eq i32 %19, 0
  br label %22

22:                                               ; preds = %37, %16
  %23 = phi i32 [ 0, %16 ], [ %38, %37 ]
  %24 = phi i32 [ 0, %16 ], [ %41, %37 ]
  %25 = phi i32 [ 0, %16 ], [ %42, %37 ]
  %26 = phi i32 [ 0, %16 ], [ %43, %37 ]
  br i1 %20, label %27, label %29

27:                                               ; preds = %22
  %28 = sdiv i32 100, %11
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ %28, %27 ], [ %23, %22 ]
  %31 = add i32 %13, %25
  %32 = add i32 %31, %30
  %33 = xor i32 %32, %24
  %34 = or disjoint i32 %25, 1
  br i1 %21, label %37, label %35

35:                                               ; preds = %29
  %36 = sdiv i32 100, %11
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i32 [ %36, %35 ], [ %30, %29 ]
  %39 = add i32 %13, %34
  %40 = add i32 %39, %38
  %41 = xor i32 %40, %33
  %42 = add nuw nsw i32 %25, 2
  %43 = add i32 %26, 2
  %44 = icmp eq i32 %43, %17
  br i1 %44, label %45, label %22, !llvm.loop !8

45:                                               ; preds = %37
  %46 = icmp eq i32 %14, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %45, %10
  %48 = phi i32 [ 0, %10 ], [ %38, %45 ]
  %49 = phi i32 [ 0, %10 ], [ %41, %45 ]
  %50 = phi i32 [ 0, %10 ], [ %42, %45 ]
  %51 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %51)
  %52 = add nsw i32 %50, %1
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = sdiv i32 100, %11
  br label %57

57:                                               ; preds = %55, %47
  %58 = phi i32 [ %56, %55 ], [ %48, %47 ]
  %59 = add i32 %13, %50
  %60 = add i32 %59, %58
  %61 = xor i32 %60, %49
  br label %62

62:                                               ; preds = %57, %45, %4
  %63 = phi i32 [ 0, %4 ], [ %41, %45 ], [ %61, %57 ]
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %63)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nofree noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
