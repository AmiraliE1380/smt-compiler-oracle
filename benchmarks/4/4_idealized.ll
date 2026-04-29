; ModuleID = 'benchmarks/4/4_idealized.c'
source_filename = "benchmarks/4/4_idealized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @test_hoist_trap(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sub nsw i32 %0, %2
  %6 = sdiv i32 100, %5
  %7 = icmp sgt i32 %0, %1
  %8 = icmp sgt i32 %1, %2
  %9 = and i1 %7, %8
  %10 = icmp sgt i32 %3, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %4
  %13 = add i32 %0, 199
  %14 = add i32 %13, %2
  %15 = and i32 %3, 1
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %42, label %17

17:                                               ; preds = %12
  %18 = and i32 %3, 2147483646
  %19 = and i32 %1, 1
  %20 = and i32 %1, 1
  %21 = icmp eq i32 %19, 0
  %22 = icmp eq i32 %20, 0
  br label %23

23:                                               ; preds = %23, %17
  %24 = phi i32 [ 0, %17 ], [ %37, %23 ]
  %25 = phi i32 [ 0, %17 ], [ %33, %23 ]
  %26 = phi i32 [ 0, %17 ], [ %36, %23 ]
  %27 = phi i32 [ 0, %17 ], [ %38, %23 ]
  %28 = select i1 %21, i32 %6, i32 %25
  %29 = add i32 %14, %24
  %30 = add i32 %29, %28
  %31 = xor i32 %30, %26
  %32 = or disjoint i32 %24, 1
  %33 = select i1 %22, i32 %28, i32 %6
  %34 = add i32 %14, %32
  %35 = add i32 %34, %33
  %36 = xor i32 %35, %31
  %37 = add nuw nsw i32 %24, 2
  %38 = add i32 %27, 2
  %39 = icmp eq i32 %38, %18
  br i1 %39, label %40, label %23, !llvm.loop !8

40:                                               ; preds = %23
  %41 = icmp eq i32 %15, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %40, %12
  %43 = phi i32 [ 0, %12 ], [ %37, %40 ]
  %44 = phi i32 [ 0, %12 ], [ %33, %40 ]
  %45 = phi i32 [ 0, %12 ], [ %36, %40 ]
  %46 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %46)
  %47 = add nsw i32 %43, %1
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %6, i32 %44
  %51 = add i32 %14, %43
  %52 = add i32 %51, %50
  %53 = xor i32 %52, %45
  br label %54

54:                                               ; preds = %42, %40, %4
  %55 = phi i32 [ 0, %4 ], [ %36, %40 ], [ %53, %42 ]
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %55)
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
