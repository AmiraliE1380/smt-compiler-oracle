; ModuleID = '../zlib/deflate.c'
source_filename = "../zlib/deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }

@deflate_copyright = dso_local local_unnamed_addr constant [70 x i8] c" deflate 1.3.2.1 Copyright 1995-2026 Jean-loup Gailly and Mark Adler \00", align 16
@z_errmsg = external local_unnamed_addr constant [10 x ptr], align 16
@configuration_table = internal unnamed_addr constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 16
@_length_code = external local_unnamed_addr constant [0 x i8], align 1
@_dist_code = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit_(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef %2, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %135, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %135, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %135, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store ptr @zcalloc, ptr %19, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %23, align 8, !tbaa !16
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ @zcalloc, %22 ], [ %20, %17 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store ptr @zcfree, ptr %26, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %1, -1
  %32 = select i1 %31, i32 6, i32 %1
  %33 = icmp slt i32 %3, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = icmp samesign ult i32 %3, -15
  br i1 %35, label %135, label %36

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %3
  br label %42

38:                                               ; preds = %30
  %39 = icmp samesign ugt i32 %3, 15
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = add nsw i32 %3, -16
  br label %42

42:                                               ; preds = %38, %40, %36
  %43 = phi i32 [ %37, %36 ], [ %41, %40 ], [ %3, %38 ]
  %44 = phi i1 [ true, %36 ], [ true, %40 ], [ false, %38 ]
  %45 = phi i32 [ 0, %36 ], [ 2, %40 ], [ 1, %38 ]
  %46 = add i32 %4, -10
  %47 = icmp ult i32 %46, -9
  %48 = icmp ne i32 %2, 8
  %49 = or i1 %48, %47
  %50 = add nsw i32 %43, -16
  %51 = icmp ult i32 %50, -8
  %52 = select i1 %49, i1 true, i1 %51
  %53 = icmp ugt i32 %32, 9
  %54 = or i1 %53, %52
  %55 = icmp ugt i32 %5, 4
  %56 = or i1 %55, %54
  br i1 %56, label %135, label %57

57:                                               ; preds = %42
  %58 = icmp eq i32 %43, 8
  %59 = and i1 %58, %44
  br i1 %59, label %135, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %135, label %65

65:                                               ; preds = %60
  %66 = select i1 %58, i32 9, i32 %43
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %67, i8 0, i64 5960, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %68, align 8, !tbaa !18
  store ptr %0, ptr %63, align 8, !tbaa !19
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 42, ptr %69, align 8, !tbaa !28
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store i32 %45, ptr %70, align 8, !tbaa !29
  %71 = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %66, ptr %71, align 4, !tbaa !30
  %72 = shl nuw nsw i32 1, %66
  %73 = getelementptr inbounds nuw i8, ptr %63, i64 80
  store i32 %72, ptr %73, align 8, !tbaa !31
  %74 = add nsw i32 %72, -1
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 88
  store i32 %74, ptr %75, align 8, !tbaa !32
  %76 = add nuw nsw i32 %4, 7
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 136
  store i32 %76, ptr %77, align 8, !tbaa !33
  %78 = shl nuw nsw i32 128, %4
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %78, ptr %79, align 4, !tbaa !34
  %80 = add nsw i32 %78, -1
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %80, ptr %81, align 4, !tbaa !35
  %82 = trunc nuw nsw i32 %4 to i8
  %83 = add nuw nsw i8 %82, 9
  %84 = udiv i8 %83, 3
  %85 = zext nneg i8 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %85, ptr %86, align 8, !tbaa !36
  %87 = load ptr, ptr %19, align 8, !tbaa !15
  %88 = load ptr, ptr %61, align 8, !tbaa !16
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef %72, i32 noundef 2) #13
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %89, ptr %90, align 8, !tbaa !37
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  %92 = load ptr, ptr %61, align 8, !tbaa !16
  %93 = load i32, ptr %73, align 8, !tbaa !31
  %94 = tail call ptr %91(ptr noundef %92, i32 noundef %93, i32 noundef 2) #13
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %94, ptr %95, align 8, !tbaa !38
  %96 = load ptr, ptr %19, align 8, !tbaa !15
  %97 = load ptr, ptr %61, align 8, !tbaa !16
  %98 = load i32, ptr %79, align 4, !tbaa !34
  %99 = tail call ptr %96(ptr noundef %97, i32 noundef %98, i32 noundef 2) #13
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %99, ptr %100, align 8, !tbaa !39
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %101, align 8, !tbaa !40
  %102 = shl nuw nsw i32 64, %4
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %102, ptr %103, align 8, !tbaa !41
  %104 = load ptr, ptr %19, align 8, !tbaa !15
  %105 = load ptr, ptr %61, align 8, !tbaa !16
  %106 = tail call ptr %104(ptr noundef %105, i32 noundef %102, i32 noundef 4) #13
  %107 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %106, ptr %107, align 8, !tbaa !42
  %108 = load i32, ptr %103, align 8, !tbaa !41
  %109 = zext i32 %108 to i64
  %110 = shl nuw nsw i64 %109, 2
  %111 = getelementptr inbounds nuw i8, ptr %63, i64 24
  store i64 %110, ptr %111, align 8, !tbaa !43
  %112 = load ptr, ptr %90, align 8, !tbaa !37
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %65
  %115 = load ptr, ptr %95, align 8, !tbaa !38
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %100, align 8, !tbaa !39
  %119 = icmp eq ptr %118, null
  %120 = icmp eq ptr %106, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %114, %65
  store i32 666, ptr %69, align 8, !tbaa !28
  %123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !44
  store ptr %123, ptr %18, align 8, !tbaa !9
  %124 = tail call i32 @deflateEnd(ptr noundef nonnull %0)
  br label %135

125:                                              ; preds = %117
  %126 = getelementptr inbounds nuw i8, ptr %106, i64 %109
  %127 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %126, ptr %127, align 8, !tbaa !45
  %128 = mul i32 %108, 3
  %129 = add i32 %128, -3
  %130 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %129, ptr %130, align 8, !tbaa !46
  %131 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %131, align 4, !tbaa !47
  %132 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %132, align 8, !tbaa !48
  %133 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %133, align 8, !tbaa !49
  %134 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %135

135:                                              ; preds = %60, %42, %57, %34, %15, %8, %10, %125, %122
  %136 = phi i32 [ %134, %125 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %42 ], [ -4, %122 ], [ -6, %10 ], [ -2, %57 ], [ -4, %60 ]
  ret i32 %136
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #1

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, 1) i32 @deflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
  switch i32 %20, label %70 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #13
  %28 = load ptr, ptr %12, align 8, !tbaa !18
  %29 = load ptr, ptr %8, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi ptr [ %29, %25 ], [ %9, %21 ]
  %32 = phi ptr [ %28, %25 ], [ %13, %21 ]
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 120
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #13
  %39 = load ptr, ptr %12, align 8, !tbaa !18
  %40 = load ptr, ptr %8, align 8, !tbaa !17
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi ptr [ %40, %36 ], [ %31, %30 ]
  %43 = phi ptr [ %39, %36 ], [ %32, %30 ]
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %49 = load ptr, ptr %48, align 8, !tbaa !16
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #13
  %50 = load ptr, ptr %12, align 8, !tbaa !18
  %51 = load ptr, ptr %8, align 8, !tbaa !17
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi ptr [ %51, %47 ], [ %42, %41 ]
  %54 = phi ptr [ %50, %47 ], [ %43, %41 ]
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !37
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #13
  %61 = load ptr, ptr %8, align 8, !tbaa !17
  %62 = load ptr, ptr %12, align 8, !tbaa !18
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #13
  store ptr null, ptr %12, align 8, !tbaa !18
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %11, %15, %18, %3, %7, %1, %63
  %71 = phi i32 [ %69, %63 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = tail call i32 @deflateResetKeep(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %55

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 80
  %8 = load i32, ptr %7, align 8, !tbaa !31
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 1
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 %10, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 120
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 132
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = add i32 %15, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw [2 x i8], ptr %13, i64 %17
  store i16 0, ptr %18, align 2, !tbaa !51
  %19 = shl nuw nsw i64 %17, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %13, i8 0, i64 %19, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 5960
  store i32 0, ptr %20, align 8, !tbaa !52
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 196
  %22 = load i32, ptr %21, align 4, !tbaa !47
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %25, label %24, !prof !53, !nosanitize !54

24:                                               ; preds = %4
  tail call void @llvm.ubsantrap(i8 18) #14, !nosanitize !54
  unreachable, !nosanitize !54

25:                                               ; preds = %4
  %26 = zext nneg i32 %22 to i64
  %27 = shl nuw nsw i64 %26, 4
  %28 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %26
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 2
  %30 = load i16, ptr %29, align 2, !tbaa !55
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 192
  store i32 %31, ptr %32, align 8, !tbaa !57
  %33 = load i16, ptr %28, align 16, !tbaa !58
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 204
  store i32 %34, ptr %35, align 4, !tbaa !59
  %36 = getelementptr inbounds nuw i8, ptr %28, i64 4
  %37 = load i16, ptr %36, align 4, !tbaa !60
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 %38, ptr %39, align 8, !tbaa !61
  %40 = or disjoint i64 %27, 6
  %41 = icmp samesign ugt i64 %40, 160, !nosanitize !54
  br i1 %41, label %56, label %42

42:                                               ; preds = %25
  %43 = getelementptr inbounds nuw i8, ptr %28, i64 6
  %44 = load i16, ptr %43, align 2, !tbaa !62
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 188
  store i32 %45, ptr %46, align 4, !tbaa !63
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 0, ptr %47, align 4, !tbaa !64
  %48 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 0, ptr %48, align 8, !tbaa !65
  %49 = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i32 0, ptr %49, align 4, !tbaa !66
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 5932
  store i32 0, ptr %50, align 4, !tbaa !67
  %51 = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 2, ptr %51, align 8, !tbaa !68
  %52 = getelementptr inbounds nuw i8, ptr %6, i64 160
  store i32 2, ptr %52, align 8, !tbaa !69
  %53 = getelementptr inbounds nuw i8, ptr %6, i64 168
  store i32 0, ptr %53, align 8, !tbaa !70
  %54 = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i32 0, ptr %54, align 8, !tbaa !71
  br label %55

55:                                               ; preds = %42, %1
  ret i32 %2

56:                                               ; preds = %25
  tail call void @llvm.ubsantrap(i8 13) #15, !nosanitize !54
  unreachable, !nosanitize !54
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %136, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %136, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %136, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %136, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %136

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %136 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq ptr %1, null
  br i1 %24, label %136, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !29
  switch i32 %27, label %34 [
    i32 2, label %136
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %136

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !66
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %136

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !66
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %136

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !29
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !31
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %71, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !72
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #13
  store i64 %45, ptr %43, align 8, !tbaa !72
  store i32 0, ptr %26, align 8, !tbaa !29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %47 = load i32, ptr %46, align 8, !tbaa !31
  %48 = icmp ult i32 %2, %47
  br i1 %48, label %71, label %65

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %53 = load ptr, ptr %52, align 8, !tbaa !39
  %54 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %55 = load i32, ptr %54, align 4, !tbaa !34
  %56 = add i32 %55, -1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds nuw [2 x i8], ptr %53, i64 %57
  store i16 0, ptr %58, align 2, !tbaa !51
  %59 = shl nuw nsw i64 %57, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %53, i8 0, i64 %59, i1 false)
  %60 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %60, align 8, !tbaa !52
  %61 = getelementptr inbounds nuw i8, ptr %15, i64 172
  store i32 0, ptr %61, align 4, !tbaa !64
  %62 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %62, align 8, !tbaa !65
  %63 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 0, ptr %63, align 4, !tbaa !67
  %64 = load i32, ptr %39, align 8, !tbaa !31
  br label %65

65:                                               ; preds = %42, %51, %49
  %66 = phi ptr [ %35, %51 ], [ %35, %49 ], [ %31, %42 ]
  %67 = phi i32 [ %64, %51 ], [ %40, %49 ], [ %47, %42 ]
  %68 = sub i32 %2, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 %69
  br label %71

71:                                               ; preds = %42, %65, %38
  %72 = phi ptr [ %66, %65 ], [ %35, %38 ], [ %31, %42 ]
  %73 = phi i32 [ %67, %65 ], [ %2, %38 ], [ %2, %42 ]
  %74 = phi ptr [ %70, %65 ], [ %1, %38 ], [ %1, %42 ]
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %76 = load i32, ptr %75, align 8, !tbaa !73
  %77 = load ptr, ptr %0, align 8, !tbaa !74
  store i32 %73, ptr %75, align 8, !tbaa !73
  store ptr %74, ptr %0, align 8, !tbaa !74
  tail call fastcc void @fill_window(ptr noundef nonnull %15)
  %78 = load i32, ptr %72, align 4, !tbaa !66
  %79 = icmp ugt i32 %78, 2
  br i1 %79, label %80, label %125

80:                                               ; preds = %71
  %81 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %82 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %83 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %84 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %85 = getelementptr inbounds nuw i8, ptr %15, i64 140
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %87 = getelementptr inbounds nuw i8, ptr %15, i64 112
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 88
  br label %89

89:                                               ; preds = %80, %122
  %90 = phi i32 [ %78, %80 ], [ %123, %122 ]
  %91 = load i32, ptr %81, align 4, !tbaa !64
  %92 = add i32 %90, -2
  %93 = load i32, ptr %83, align 8, !tbaa !36
  %94 = load ptr, ptr %84, align 8, !tbaa !37
  %95 = load i32, ptr %85, align 4, !tbaa !35
  %96 = load ptr, ptr %86, align 8, !tbaa !39
  %97 = load ptr, ptr %87, align 8, !tbaa !38
  %98 = load i32, ptr %88, align 8, !tbaa !32
  %99 = load i32, ptr %82, align 8, !tbaa !71
  br label %100

100:                                              ; preds = %100, %89
  %101 = phi i32 [ %99, %89 ], [ %111, %100 ]
  %102 = phi i32 [ %91, %89 ], [ %119, %100 ]
  %103 = phi i32 [ %92, %89 ], [ %120, %100 ]
  %104 = shl i32 %101, %93
  %105 = add i32 %102, 2
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds nuw i8, ptr %94, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !8
  %109 = zext i8 %108 to i32
  %110 = xor i32 %104, %109
  %111 = and i32 %110, %95
  store i32 %111, ptr %82, align 8, !tbaa !71
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds nuw [2 x i8], ptr %96, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !51
  %115 = and i32 %98, %102
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds nuw [2 x i8], ptr %97, i64 %116
  store i16 %114, ptr %117, align 2, !tbaa !51
  %118 = trunc i32 %102 to i16
  store i16 %118, ptr %113, align 2, !tbaa !51
  %119 = add i32 %102, 1
  %120 = add i32 %103, -1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %100, !llvm.loop !75

122:                                              ; preds = %100
  store i32 %119, ptr %81, align 4, !tbaa !64
  store i32 2, ptr %72, align 4, !tbaa !66
  tail call fastcc void @fill_window(ptr noundef nonnull %15)
  %123 = load i32, ptr %72, align 4, !tbaa !66
  %124 = icmp ugt i32 %123, 2
  br i1 %124, label %89, label %125, !llvm.loop !77

125:                                              ; preds = %122, %71
  %126 = phi i32 [ %78, %71 ], [ %123, %122 ]
  %127 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %128 = load i32, ptr %127, align 4, !tbaa !64
  %129 = add i32 %128, %126
  store i32 %129, ptr %127, align 4, !tbaa !64
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 %130, ptr %131, align 8, !tbaa !65
  %132 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 %126, ptr %132, align 4, !tbaa !67
  store i32 0, ptr %72, align 4, !tbaa !66
  %133 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %133, align 8, !tbaa !68
  %134 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %134, align 8, !tbaa !69
  %135 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %135, align 8, !tbaa !70
  store ptr %77, ptr %0, align 8, !tbaa !74
  store i32 %76, ptr %75, align 8, !tbaa !73
  store i32 %27, ptr %26, align 8, !tbaa !29
  br label %136

136:                                              ; preds = %25, %13, %17, %20, %5, %9, %3, %34, %28, %30, %23, %125
  %137 = phi i32 [ 0, %125 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %137
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = add i32 %3, -262
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %20 = load i32, ptr %5, align 4, !tbaa !66
  %21 = insertelement <2 x i32> poison, i32 %3, i64 0
  %22 = shufflevector <2 x i32> %21, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %23

23:                                               ; preds = %229, %1
  %24 = phi i32 [ %177, %229 ], [ %20, %1 ]
  %25 = load i64, ptr %4, align 8, !tbaa !50
  %26 = zext i32 %24 to i64
  %27 = load i32, ptr %6, align 4, !tbaa !64
  %28 = zext i32 %27 to i64
  %29 = add nuw nsw i64 %26, %28
  %30 = sub i64 %25, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, ptr %2, align 8, !tbaa !31
  %33 = add i32 %7, %32
  %34 = icmp ult i32 %27, %33
  br i1 %34, label %136, label %35

35:                                               ; preds = %23
  %36 = load ptr, ptr %8, align 8, !tbaa !37
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %9
  %38 = sub i32 %3, %31
  %39 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %37, i64 %39, i1 false)
  %40 = load <2 x i32>, ptr %6, align 4, !tbaa !4
  %41 = sub <2 x i32> %40, %22
  store <2 x i32> %41, ptr %6, align 4, !tbaa !4
  %42 = load i64, ptr %10, align 8, !tbaa !65
  %43 = sub nsw i64 %42, %9
  store i64 %43, ptr %10, align 8, !tbaa !65
  %44 = load i32, ptr %11, align 4, !tbaa !67
  %45 = extractelement <2 x i32> %41, i64 0
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 %45, ptr %11, align 4, !tbaa !67
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, ptr %2, align 8, !tbaa !31
  %50 = load i32, ptr %12, align 4, !tbaa !34
  %51 = load ptr, ptr %13, align 8, !tbaa !39
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds nuw [2 x i8], ptr %51, i64 %52
  %54 = add i32 %50, -1
  %55 = zext i32 %54 to i64
  %56 = add nuw nsw i64 %55, 1
  %57 = icmp ult i32 %54, 7
  br i1 %57, label %79, label %58

58:                                               ; preds = %48
  %59 = and i64 %56, 8589934584
  %60 = mul nsw i64 %59, -2
  %61 = getelementptr i8, ptr %53, i64 %60
  %62 = trunc i64 %59 to i32
  %63 = sub i32 %50, %62
  %64 = insertelement <8 x i32> poison, i32 %49, i64 0
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %66

66:                                               ; preds = %66, %58
  %67 = phi i64 [ 0, %58 ], [ %75, %66 ]
  %68 = mul i64 %67, -2
  %69 = getelementptr i8, ptr %53, i64 %68
  %70 = getelementptr inbounds i8, ptr %69, i64 -16
  %71 = load <8 x i16>, ptr %70, align 2, !tbaa !51
  %72 = zext <8 x i16> %71 to <8 x i32>
  %73 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %72, <8 x i32> %65)
  %74 = trunc nuw <8 x i32> %73 to <8 x i16>
  store <8 x i16> %74, ptr %70, align 2, !tbaa !51
  %75 = add nuw i64 %67, 8
  %76 = icmp eq i64 %75, %59
  br i1 %76, label %77, label %66, !llvm.loop !78

77:                                               ; preds = %66
  %78 = icmp eq i64 %56, %59
  br i1 %78, label %92, label %79

79:                                               ; preds = %48, %77
  %80 = phi ptr [ %53, %48 ], [ %61, %77 ]
  %81 = phi i32 [ %50, %48 ], [ %63, %77 ]
  br label %82

82:                                               ; preds = %79, %82
  %83 = phi ptr [ %85, %82 ], [ %80, %79 ]
  %84 = phi i32 [ %90, %82 ], [ %81, %79 ]
  %85 = getelementptr inbounds i8, ptr %83, i64 -2
  %86 = load i16, ptr %85, align 2, !tbaa !51
  %87 = zext i16 %86 to i32
  %88 = tail call i32 @llvm.usub.sat.i32(i32 %87, i32 %49)
  %89 = trunc nuw i32 %88 to i16
  store i16 %89, ptr %85, align 2, !tbaa !51
  %90 = add i32 %84, -1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %82, !llvm.loop !81

92:                                               ; preds = %82, %77
  %93 = load ptr, ptr %14, align 8, !tbaa !38
  %94 = zext i32 %49 to i64
  %95 = getelementptr inbounds nuw [2 x i8], ptr %93, i64 %94
  %96 = add i32 %49, -1
  %97 = zext i32 %96 to i64
  %98 = add nuw nsw i64 %97, 1
  %99 = icmp ult i32 %96, 7
  br i1 %99, label %121, label %100

100:                                              ; preds = %92
  %101 = and i64 %98, 8589934584
  %102 = mul nsw i64 %101, -2
  %103 = getelementptr i8, ptr %95, i64 %102
  %104 = trunc i64 %101 to i32
  %105 = sub i32 %49, %104
  %106 = insertelement <8 x i32> poison, i32 %49, i64 0
  %107 = shufflevector <8 x i32> %106, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %108

108:                                              ; preds = %108, %100
  %109 = phi i64 [ 0, %100 ], [ %117, %108 ]
  %110 = mul i64 %109, -2
  %111 = getelementptr i8, ptr %95, i64 %110
  %112 = getelementptr inbounds i8, ptr %111, i64 -16
  %113 = load <8 x i16>, ptr %112, align 2, !tbaa !51
  %114 = zext <8 x i16> %113 to <8 x i32>
  %115 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %114, <8 x i32> %107)
  %116 = trunc nuw <8 x i32> %115 to <8 x i16>
  store <8 x i16> %116, ptr %112, align 2, !tbaa !51
  %117 = add nuw i64 %109, 8
  %118 = icmp eq i64 %117, %101
  br i1 %118, label %119, label %108, !llvm.loop !82

119:                                              ; preds = %108
  %120 = icmp eq i64 %98, %101
  br i1 %120, label %134, label %121

121:                                              ; preds = %92, %119
  %122 = phi ptr [ %95, %92 ], [ %103, %119 ]
  %123 = phi i32 [ %49, %92 ], [ %105, %119 ]
  br label %124

124:                                              ; preds = %121, %124
  %125 = phi ptr [ %127, %124 ], [ %122, %121 ]
  %126 = phi i32 [ %132, %124 ], [ %123, %121 ]
  %127 = getelementptr inbounds i8, ptr %125, i64 -2
  %128 = load i16, ptr %127, align 2, !tbaa !51
  %129 = zext i16 %128 to i32
  %130 = tail call i32 @llvm.usub.sat.i32(i32 %129, i32 %49)
  %131 = trunc nuw i32 %130 to i16
  store i16 %131, ptr %127, align 2, !tbaa !51
  %132 = add i32 %126, -1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %124, !llvm.loop !83

134:                                              ; preds = %124, %119
  store i32 1, ptr %15, align 8, !tbaa !52
  %135 = add i32 %3, %31
  br label %136

136:                                              ; preds = %134, %23
  %137 = phi i32 [ %45, %134 ], [ %27, %23 ]
  %138 = phi i32 [ %135, %134 ], [ %31, %23 ]
  %139 = load ptr, ptr %0, align 8, !tbaa !19
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 8
  %141 = load i32, ptr %140, align 8, !tbaa !73
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %234, label %143

143:                                              ; preds = %136
  %144 = load ptr, ptr %8, align 8, !tbaa !37
  %145 = zext i32 %137 to i64
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 %145
  %147 = load i32, ptr %5, align 4, !tbaa !66
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds nuw i8, ptr %146, i64 %148
  %150 = tail call i32 @llvm.umin.i32(i32 %141, i32 %138)
  %151 = icmp eq i32 %138, 0
  br i1 %151, label %175, label %152

152:                                              ; preds = %143
  %153 = sub i32 %141, %150
  store i32 %153, ptr %140, align 8, !tbaa !73
  %154 = load ptr, ptr %139, align 8, !tbaa !74
  %155 = zext i32 %150 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %149, ptr align 1 %154, i64 %155, i1 false)
  %156 = getelementptr inbounds nuw i8, ptr %139, i64 56
  %157 = load ptr, ptr %156, align 8, !tbaa !18
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 48
  %159 = load i32, ptr %158, align 8, !tbaa !29
  switch i32 %159, label %168 [
    i32 1, label %160
    i32 2, label %164
  ]

160:                                              ; preds = %152
  %161 = getelementptr inbounds nuw i8, ptr %139, i64 96
  %162 = load i64, ptr %161, align 8, !tbaa !72
  %163 = tail call i64 @adler32(i64 noundef %162, ptr noundef %149, i32 noundef %150) #13
  store i64 %163, ptr %161, align 8, !tbaa !72
  br label %168

164:                                              ; preds = %152
  %165 = getelementptr inbounds nuw i8, ptr %139, i64 96
  %166 = load i64, ptr %165, align 8, !tbaa !72
  %167 = tail call i64 @crc32(i64 noundef %166, ptr noundef %149, i32 noundef %150) #13
  store i64 %167, ptr %165, align 8, !tbaa !72
  br label %168

168:                                              ; preds = %164, %160, %152
  %169 = load ptr, ptr %139, align 8, !tbaa !74
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 %155
  store ptr %170, ptr %139, align 8, !tbaa !74
  %171 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %172 = load i64, ptr %171, align 8, !tbaa !84
  %173 = add i64 %172, %155
  store i64 %173, ptr %171, align 8, !tbaa !84
  %174 = load i32, ptr %5, align 4, !tbaa !66
  br label %175

175:                                              ; preds = %143, %168
  %176 = phi i32 [ %147, %143 ], [ %174, %168 ]
  %177 = add i32 %176, %150
  store i32 %177, ptr %5, align 4, !tbaa !66
  %178 = load i32, ptr %11, align 4, !tbaa !67
  %179 = add i32 %178, %177
  %180 = icmp ugt i32 %179, 2
  br i1 %180, label %181, label %227

181:                                              ; preds = %175
  %182 = load i32, ptr %6, align 4, !tbaa !64
  %183 = sub i32 %182, %178
  %184 = load ptr, ptr %8, align 8, !tbaa !37
  %185 = zext i32 %183 to i64
  %186 = getelementptr inbounds nuw i8, ptr %184, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !8
  %188 = zext i8 %187 to i32
  store i32 %188, ptr %16, align 8, !tbaa !71
  %189 = load i32, ptr %17, align 8, !tbaa !36
  %190 = shl i32 %188, %189
  %191 = add i32 %183, 1
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds nuw i8, ptr %184, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !8
  %195 = zext i8 %194 to i32
  %196 = xor i32 %190, %195
  %197 = load i32, ptr %18, align 4, !tbaa !35
  %198 = and i32 %196, %197
  store i32 %198, ptr %16, align 8, !tbaa !71
  br label %199

199:                                              ; preds = %204, %181
  %200 = phi i32 [ %212, %204 ], [ %198, %181 ]
  %201 = phi i32 [ %224, %204 ], [ %178, %181 ]
  %202 = phi i32 [ %223, %204 ], [ %183, %181 ]
  %203 = icmp eq i32 %201, 0
  br i1 %203, label %227, label %204

204:                                              ; preds = %199
  %205 = shl i32 %200, %189
  %206 = add i32 %202, 2
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds nuw i8, ptr %184, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !8
  %210 = zext i8 %209 to i32
  %211 = xor i32 %205, %210
  %212 = and i32 %211, %197
  store i32 %212, ptr %16, align 8, !tbaa !71
  %213 = load ptr, ptr %13, align 8, !tbaa !39
  %214 = zext i32 %212 to i64
  %215 = getelementptr inbounds nuw [2 x i8], ptr %213, i64 %214
  %216 = load i16, ptr %215, align 2, !tbaa !51
  %217 = load ptr, ptr %14, align 8, !tbaa !38
  %218 = load i32, ptr %19, align 8, !tbaa !32
  %219 = and i32 %218, %202
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds nuw [2 x i8], ptr %217, i64 %220
  store i16 %216, ptr %221, align 2, !tbaa !51
  %222 = trunc i32 %202 to i16
  store i16 %222, ptr %215, align 2, !tbaa !51
  %223 = add i32 %202, 1
  %224 = add i32 %201, -1
  store i32 %224, ptr %11, align 4, !tbaa !67
  %225 = add i32 %224, %177
  %226 = icmp ult i32 %225, 3
  br i1 %226, label %227, label %199, !llvm.loop !85

227:                                              ; preds = %199, %204, %175
  %228 = icmp ult i32 %177, 262
  br i1 %228, label %229, label %234

229:                                              ; preds = %227
  %230 = load ptr, ptr %0, align 8, !tbaa !19
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 8
  %232 = load i32, ptr %231, align 8, !tbaa !73
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %23, !llvm.loop !86

234:                                              ; preds = %227, %136, %229
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %236 = load i64, ptr %235, align 8, !tbaa !40
  %237 = load i64, ptr %4, align 8, !tbaa !50
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %266

239:                                              ; preds = %234
  %240 = load i32, ptr %6, align 4, !tbaa !64
  %241 = zext i32 %240 to i64
  %242 = load i32, ptr %5, align 4, !tbaa !66
  %243 = zext i32 %242 to i64
  %244 = add nuw nsw i64 %243, %241
  %245 = icmp ult i64 %236, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %239
  %247 = sub i64 %237, %244
  %248 = tail call i64 @llvm.umin.i64(i64 %247, i64 258)
  %249 = load ptr, ptr %8, align 8, !tbaa !37
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 %244
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %250, i8 0, i64 %248, i1 false)
  %251 = add nuw nsw i64 %248, %244
  br label %264

252:                                              ; preds = %239
  %253 = add nuw nsw i64 %244, 258
  %254 = icmp ult i64 %236, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = sub nuw nsw i64 %253, %236
  %257 = sub i64 %237, %236
  %258 = tail call i64 @llvm.umin.i64(i64 %256, i64 %257)
  %259 = load ptr, ptr %8, align 8, !tbaa !37
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 %236
  %261 = and i64 %258, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %260, i8 0, i64 %261, i1 false)
  %262 = load i64, ptr %235, align 8, !tbaa !40
  %263 = add i64 %262, %258
  br label %264

264:                                              ; preds = %255, %246
  %265 = phi i64 [ %251, %246 ], [ %263, %255 ]
  store i64 %265, ptr %235, align 8, !tbaa !40
  br label %266

266:                                              ; preds = %264, %252, %234
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %48 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %25 = load i32, ptr %24, align 4, !tbaa !64
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %27 = load i32, ptr %26, align 4, !tbaa !66
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %30 = load i32, ptr %29, align 8, !tbaa !31
  %31 = tail call i32 @llvm.umin.i32(i32 %28, i32 %30)
  %32 = icmp ne ptr %1, null
  %33 = icmp ne i32 %31, 0
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %37 = load ptr, ptr %36, align 8, !tbaa !37
  %38 = zext i32 %25 to i64
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  %40 = zext i32 %27 to i64
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 %40
  %42 = zext i32 %31 to i64
  %43 = sub nsw i64 0, %42
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %44, i64 %42, i1 false)
  br label %45

45:                                               ; preds = %35, %23
  %46 = icmp eq ptr %2, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  store i32 %31, ptr %2, align 4, !tbaa !4
  br label %48

48:                                               ; preds = %13, %17, %20, %5, %9, %3, %45, %47
  %49 = phi i32 [ 0, %45 ], [ 0, %47 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
  switch i32 %20, label %46 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %23, align 8, !tbaa !84
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !87
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !88
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !89
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = sub nsw i32 0, %30
  store i32 %33, ptr %29, align 8, !tbaa !29
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %33, %32 ], [ %30, %21 ]
  %36 = icmp eq i32 %35, 2
  %37 = select i1 %36, i32 57, i32 42
  store i32 %37, ptr %19, align 8, !tbaa !28
  br i1 %36, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %43, ptr %44, align 8, !tbaa !72
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !90
  tail call void @_tr_init(ptr noundef nonnull %13) #13
  br label %46

46:                                               ; preds = %11, %15, %18, %3, %7, %1, %42
  %47 = phi i32 [ 0, %42 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %47
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_tr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %28 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %24 = load i32, ptr %23, align 8, !tbaa !29
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %1, ptr %27, align 8, !tbaa !91
  br label %28

28:                                               ; preds = %12, %16, %19, %4, %8, %2, %22, %26
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @deflatePending(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %37 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq ptr %2, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %27 = load i32, ptr %26, align 4, !tbaa !92
  store i32 %27, ptr %2, align 4, !tbaa !4
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %32 = load i64, ptr %31, align 8, !tbaa !88
  %33 = trunc i64 %32 to i32
  %34 = icmp ult i64 %32, 4294967296
  %35 = select i1 %34, i32 %33, i32 -1
  store i32 %35, ptr %1, align 4
  %36 = select i1 %34, i32 0, i32 -5
  br label %37

37:                                               ; preds = %13, %17, %20, %5, %9, %3, %30, %28
  %38 = phi i32 [ %36, %30 ], [ 0, %28 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateUsed(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %27 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp eq ptr %1, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 5944
  %26 = load i32, ptr %25, align 8, !tbaa !93
  store i32 %26, ptr %1, align 4, !tbaa !4
  br label %27

27:                                               ; preds = %12, %16, %19, %4, %8, %2, %22, %24
  %28 = phi i32 [ 0, %22 ], [ 0, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %52 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp ugt i32 %1, 16
  br i1 %24, label %52, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5888
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !89
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 5936
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i32 [ %50, %35 ], [ %1, %32 ]
  %37 = phi i32 [ %49, %35 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !92
  %39 = sub nsw i32 16, %38
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %36)
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %37, %42
  %44 = shl i32 %43, %38
  %45 = load i16, ptr %34, align 8, !tbaa !94
  %46 = trunc i32 %44 to i16
  %47 = or i16 %45, %46
  store i16 %47, ptr %34, align 8, !tbaa !94
  %48 = add nsw i32 %40, %38
  store i32 %48, ptr %33, align 4, !tbaa !92
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #13
  %49 = ashr i32 %37, %40
  %50 = sub nsw i32 %36, %40
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %35, !llvm.loop !95

52:                                               ; preds = %35, %13, %17, %20, %5, %9, %3, %23, %25
  %53 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %35 ]
  ret i32 %53
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %120, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %120, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %120, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %120, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %120

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %120 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq i32 %1, -1
  %25 = select i1 %24, i32 6, i32 %1
  %26 = icmp ugt i32 %25, 9
  %27 = icmp ugt i32 %2, 4
  %28 = or i1 %27, %26
  br i1 %28, label %120, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = load i32, ptr %30, align 4, !tbaa !47
  %32 = icmp ult i32 %31, 10
  br i1 %32, label %34, label %33, !prof !53, !nosanitize !54

33:                                               ; preds = %29
  tail call void @llvm.ubsantrap(i8 18) #14, !nosanitize !54
  unreachable, !nosanitize !54

34:                                               ; preds = %29
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %36 = load i32, ptr %35, align 8, !tbaa !48
  %37 = icmp eq i32 %2, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = icmp ugt i32 %25, 9
  br i1 %39, label %122, label %40

40:                                               ; preds = %38
  %41 = zext nneg i32 %25 to i64
  %42 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %44 = zext nneg i32 %31 to i64
  %45 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8, !tbaa !96
  %48 = load ptr, ptr %43, align 8, !tbaa !96
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %75, label %50

50:                                               ; preds = %40, %34
  %51 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %52 = load i32, ptr %51, align 4, !tbaa !90
  %53 = icmp eq i32 %52, -2
  br i1 %53, label %75, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @deflate(ptr noundef nonnull %0, i32 noundef 5)
  %56 = icmp eq i32 %55, -2
  br i1 %56, label %120, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %59 = load i32, ptr %58, align 8, !tbaa !73
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %120

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %63 = load i32, ptr %62, align 4, !tbaa !64
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %66 = load i64, ptr %65, align 8, !tbaa !65
  %67 = sub nsw i64 %64, %66
  %68 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %69 = load i32, ptr %68, align 4, !tbaa !66
  %70 = zext i32 %69 to i64
  %71 = sub nsw i64 0, %70
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %120

73:                                               ; preds = %61
  %74 = load i32, ptr %30, align 4, !tbaa !47
  br label %75

75:                                               ; preds = %73, %50, %40
  %76 = phi i32 [ %74, %73 ], [ %31, %50 ], [ %31, %40 ]
  %77 = icmp eq i32 %76, %25
  br i1 %77, label %119, label %78

78:                                               ; preds = %75
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %78
  %81 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %82 = load i32, ptr %81, align 8, !tbaa !97
  switch i32 %82, label %84 [
    i32 0, label %95
    i32 1, label %83
  ]

83:                                               ; preds = %80
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %94

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %88 = load i32, ptr %87, align 4, !tbaa !34
  %89 = add i32 %88, -1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds nuw [2 x i8], ptr %86, i64 %90
  store i16 0, ptr %91, align 2, !tbaa !51
  %92 = shl nuw nsw i64 %90, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %86, i8 0, i64 %92, i1 false)
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %93, align 8, !tbaa !52
  br label %94

94:                                               ; preds = %84, %83
  store i32 0, ptr %81, align 8, !tbaa !97
  br label %95

95:                                               ; preds = %80, %94, %78
  store i32 %25, ptr %30, align 4, !tbaa !47
  %96 = zext nneg i32 %25 to i64
  %97 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %96
  %98 = icmp ugt i32 %25, 9
  br i1 %98, label %123, label %99

99:                                               ; preds = %95
  %100 = shl nuw nsw i64 %96, 4
  %101 = getelementptr inbounds nuw i8, ptr %97, i64 2
  %102 = load i16, ptr %101, align 2, !tbaa !55
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %103, ptr %104, align 8, !tbaa !57
  %105 = load i16, ptr %97, align 16, !tbaa !58
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %106, ptr %107, align 4, !tbaa !59
  %108 = getelementptr inbounds nuw i8, ptr %97, i64 4
  %109 = load i16, ptr %108, align 4, !tbaa !60
  %110 = zext i16 %109 to i32
  %111 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %110, ptr %111, align 8, !tbaa !61
  %112 = or disjoint i64 %100, 6
  %113 = icmp samesign ugt i64 %112, 160, !nosanitize !54
  br i1 %113, label %124, label %114

114:                                              ; preds = %99
  %115 = getelementptr inbounds nuw i8, ptr %97, i64 6
  %116 = load i16, ptr %115, align 2, !tbaa !62
  %117 = zext i16 %116 to i32
  %118 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %117, ptr %118, align 4, !tbaa !63
  br label %119

119:                                              ; preds = %114, %75
  store i32 %2, ptr %35, align 8, !tbaa !48
  br label %120

120:                                              ; preds = %54, %57, %13, %17, %20, %5, %9, %3, %23, %61, %119
  %121 = phi i32 [ -5, %61 ], [ -2, %13 ], [ 0, %119 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %54 ], [ -5, %57 ]
  ret i32 %121

122:                                              ; preds = %38
  tail call void @llvm.ubsantrap(i8 29) #15, !nosanitize !54
  unreachable, !nosanitize !54

123:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 31) #15, !nosanitize !54
  unreachable, !nosanitize !54

124:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 37) #15, !nosanitize !54
  unreachable, !nosanitize !54
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %943, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %943, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %943, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %943, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %943

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %943 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp ugt i32 %1, 5
  br i1 %23, label %943, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !73
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !74
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32, %28
  %36 = icmp eq i32 %21, 666
  %37 = icmp ne i32 %1, 4
  %38 = and i1 %37, %36
  br i1 %38, label %40, label %43

39:                                               ; preds = %799
  tail call void @llvm.ubsantrap(i8 18) #14, !nosanitize !54
  unreachable, !nosanitize !54

40:                                               ; preds = %24, %32, %35
  %41 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !44
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %41, ptr %42, align 8, !tbaa !9
  br label %943

43:                                               ; preds = %35
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = load i32, ptr %44, align 8, !tbaa !99
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %48, ptr %49, align 8, !tbaa !9
  br label %943

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %52 = load i32, ptr %51, align 4, !tbaa !90
  store i32 %1, ptr %51, align 4, !tbaa !90
  %53 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %54 = load i64, ptr %53, align 8, !tbaa !88
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %50
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #13
  %57 = load i64, ptr %53, align 8, !tbaa !88
  %58 = load i32, ptr %44, align 8, !tbaa !99
  %59 = zext i32 %58 to i64
  %60 = tail call i64 @llvm.umin.i64(i64 %57, i64 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %56
  %63 = trunc nuw i64 %60 to i32
  %64 = load ptr, ptr %25, align 8, !tbaa !98
  %65 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %66 = load ptr, ptr %65, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %66, i64 %60, i1 false)
  %67 = load ptr, ptr %25, align 8, !tbaa !98
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 %60
  store ptr %68, ptr %25, align 8, !tbaa !98
  %69 = load ptr, ptr %65, align 8, !tbaa !89
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 %60
  store ptr %70, ptr %65, align 8, !tbaa !89
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %72 = load i64, ptr %71, align 8, !tbaa !100
  %73 = add i64 %72, %60
  store i64 %73, ptr %71, align 8, !tbaa !100
  %74 = load i32, ptr %44, align 8, !tbaa !99
  %75 = sub i32 %74, %63
  store i32 %75, ptr %44, align 8, !tbaa !99
  %76 = load i64, ptr %53, align 8, !tbaa !88
  %77 = sub i64 %76, %60
  store i64 %77, ptr %53, align 8, !tbaa !88
  %78 = icmp eq i64 %76, %60
  br i1 %78, label %79, label %82

79:                                               ; preds = %62
  %80 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  store ptr %81, ptr %65, align 8, !tbaa !89
  br label %82

82:                                               ; preds = %56, %62, %79
  %83 = phi i64 [ %57, %56 ], [ %77, %62 ], [ 0, %79 ]
  %84 = phi i32 [ %58, %56 ], [ %75, %62 ], [ %75, %79 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %20, align 8, !tbaa !28
  br label %104

88:                                               ; preds = %82
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

89:                                               ; preds = %50
  br i1 %31, label %90, label %104

90:                                               ; preds = %89
  %91 = shl nuw nsw i32 %1, 1
  %92 = icmp eq i32 %1, 5
  %93 = select i1 %92, i32 -9, i32 0
  %94 = add nsw i32 %93, %91
  %95 = shl nsw i32 %52, 1
  %96 = icmp sgt i32 %52, 4
  %97 = select i1 %96, i32 -9, i32 0
  %98 = add i32 %97, %95
  %99 = icmp sle i32 %94, %98
  %100 = and i1 %37, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !44
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %102, ptr %103, align 8, !tbaa !9
  br label %943

104:                                              ; preds = %86, %89, %90
  %105 = phi i64 [ %83, %86 ], [ 0, %89 ], [ 0, %90 ]
  %106 = phi i32 [ %87, %86 ], [ %21, %89 ], [ %21, %90 ]
  switch i32 %106, label %194 [
    i32 666, label %107
    i32 42, label %113
  ]

107:                                              ; preds = %104
  %108 = load i32, ptr %29, align 8, !tbaa !73
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %777, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !44
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %111, ptr %112, align 8, !tbaa !9
  br label %943

113:                                              ; preds = %104
  %114 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %115 = load i32, ptr %114, align 8, !tbaa !29
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 113, ptr %20, align 8, !tbaa !28
  br label %774

118:                                              ; preds = %113
  %119 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %120 = load i32, ptr %119, align 4, !tbaa !30
  %121 = shl i32 %120, 12
  %122 = add i32 %121, -30720
  %123 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %124 = load i32, ptr %123, align 8, !tbaa !48
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %135, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %128 = load i32, ptr %127, align 4, !tbaa !47
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = icmp samesign ult i32 %128, 6
  br i1 %131, label %135, label %132

132:                                              ; preds = %130
  %133 = icmp eq i32 %128, 6
  %134 = select i1 %133, i32 128, i32 192
  br label %135

135:                                              ; preds = %132, %130, %118, %126
  %136 = phi i32 [ 64, %130 ], [ 0, %118 ], [ %134, %132 ], [ 0, %126 ]
  %137 = or disjoint i32 %136, %122
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %139 = load i32, ptr %138, align 4, !tbaa !64
  %140 = icmp eq i32 %139, 0
  %141 = or disjoint i32 %137, 32
  %142 = select i1 %140, i32 %137, i32 %141
  %143 = urem i32 %142, 31
  %144 = or disjoint i32 %143, %142
  %145 = lshr i32 %142, 8
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %148 = load ptr, ptr %147, align 8, !tbaa !42
  %149 = add i64 %105, 1
  store i64 %149, ptr %53, align 8, !tbaa !88
  %150 = getelementptr inbounds nuw i8, ptr %148, i64 %105
  store i8 %146, ptr %150, align 1, !tbaa !8
  %151 = trunc i32 %144 to i8
  %152 = xor i8 %151, 31
  %153 = load ptr, ptr %147, align 8, !tbaa !42
  %154 = load i64, ptr %53, align 8, !tbaa !88
  %155 = add i64 %154, 1
  store i64 %155, ptr %53, align 8, !tbaa !88
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  store i8 %152, ptr %156, align 1, !tbaa !8
  %157 = load i32, ptr %138, align 4, !tbaa !64
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %186, label %159

159:                                              ; preds = %135
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %161 = load i64, ptr %160, align 8, !tbaa !72
  %162 = lshr i64 %161, 16
  %163 = lshr i64 %161, 24
  %164 = trunc i64 %163 to i8
  %165 = load ptr, ptr %147, align 8, !tbaa !42
  %166 = load i64, ptr %53, align 8, !tbaa !88
  %167 = add i64 %166, 1
  store i64 %167, ptr %53, align 8, !tbaa !88
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 %166
  store i8 %164, ptr %168, align 1, !tbaa !8
  %169 = trunc i64 %162 to i8
  %170 = load ptr, ptr %147, align 8, !tbaa !42
  %171 = load i64, ptr %53, align 8, !tbaa !88
  %172 = add i64 %171, 1
  store i64 %172, ptr %53, align 8, !tbaa !88
  %173 = getelementptr inbounds nuw i8, ptr %170, i64 %171
  store i8 %169, ptr %173, align 1, !tbaa !8
  %174 = load i64, ptr %160, align 8, !tbaa !72
  %175 = trunc i64 %174 to i8
  %176 = lshr i64 %174, 8
  %177 = trunc i64 %176 to i8
  %178 = load ptr, ptr %147, align 8, !tbaa !42
  %179 = load i64, ptr %53, align 8, !tbaa !88
  %180 = add i64 %179, 1
  store i64 %180, ptr %53, align 8, !tbaa !88
  %181 = getelementptr inbounds nuw i8, ptr %178, i64 %179
  store i8 %177, ptr %181, align 1, !tbaa !8
  %182 = load ptr, ptr %147, align 8, !tbaa !42
  %183 = load i64, ptr %53, align 8, !tbaa !88
  %184 = add i64 %183, 1
  store i64 %184, ptr %53, align 8, !tbaa !88
  %185 = getelementptr inbounds nuw i8, ptr %182, i64 %183
  store i8 %175, ptr %185, align 1, !tbaa !8
  br label %186

186:                                              ; preds = %159, %135
  %187 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %187, ptr %188, align 8, !tbaa !72
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %189 = load i64, ptr %53, align 8, !tbaa !88
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, ptr %20, align 8, !tbaa !28
  br label %194

193:                                              ; preds = %186
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

194:                                              ; preds = %104, %191
  %195 = phi i32 [ %192, %191 ], [ %106, %104 ]
  %196 = icmp eq i32 %195, 57
  br i1 %196, label %197, label %383

197:                                              ; preds = %194
  %198 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %198, ptr %199, align 8, !tbaa !72
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %201 = load ptr, ptr %200, align 8, !tbaa !42
  %202 = load i64, ptr %53, align 8, !tbaa !88
  %203 = add i64 %202, 1
  store i64 %203, ptr %53, align 8, !tbaa !88
  %204 = getelementptr inbounds nuw i8, ptr %201, i64 %202
  store i8 31, ptr %204, align 1, !tbaa !8
  %205 = load ptr, ptr %200, align 8, !tbaa !42
  %206 = load i64, ptr %53, align 8, !tbaa !88
  %207 = add i64 %206, 1
  store i64 %207, ptr %53, align 8, !tbaa !88
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 %206
  store i8 -117, ptr %208, align 1, !tbaa !8
  %209 = load ptr, ptr %200, align 8, !tbaa !42
  %210 = load i64, ptr %53, align 8, !tbaa !88
  %211 = add i64 %210, 1
  store i64 %211, ptr %53, align 8, !tbaa !88
  %212 = getelementptr inbounds nuw i8, ptr %209, i64 %210
  store i8 8, ptr %212, align 1, !tbaa !8
  %213 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %214 = load ptr, ptr %213, align 8, !tbaa !91
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %260

216:                                              ; preds = %197
  %217 = load ptr, ptr %200, align 8, !tbaa !42
  %218 = load i64, ptr %53, align 8, !tbaa !88
  %219 = add i64 %218, 1
  store i64 %219, ptr %53, align 8, !tbaa !88
  %220 = getelementptr inbounds nuw i8, ptr %217, i64 %218
  store i8 0, ptr %220, align 1, !tbaa !8
  %221 = load ptr, ptr %200, align 8, !tbaa !42
  %222 = load i64, ptr %53, align 8, !tbaa !88
  %223 = add i64 %222, 1
  store i64 %223, ptr %53, align 8, !tbaa !88
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 %222
  store i8 0, ptr %224, align 1, !tbaa !8
  %225 = load ptr, ptr %200, align 8, !tbaa !42
  %226 = load i64, ptr %53, align 8, !tbaa !88
  %227 = add i64 %226, 1
  store i64 %227, ptr %53, align 8, !tbaa !88
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 %226
  store i8 0, ptr %228, align 1, !tbaa !8
  %229 = load ptr, ptr %200, align 8, !tbaa !42
  %230 = load i64, ptr %53, align 8, !tbaa !88
  %231 = add i64 %230, 1
  store i64 %231, ptr %53, align 8, !tbaa !88
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 %230
  store i8 0, ptr %232, align 1, !tbaa !8
  %233 = load ptr, ptr %200, align 8, !tbaa !42
  %234 = load i64, ptr %53, align 8, !tbaa !88
  %235 = add i64 %234, 1
  store i64 %235, ptr %53, align 8, !tbaa !88
  %236 = getelementptr inbounds nuw i8, ptr %233, i64 %234
  store i8 0, ptr %236, align 1, !tbaa !8
  %237 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %238 = load i32, ptr %237, align 4, !tbaa !47
  %239 = icmp eq i32 %238, 9
  br i1 %239, label %247, label %240

240:                                              ; preds = %216
  %241 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %242 = load i32, ptr %241, align 8, !tbaa !48
  %243 = icmp sgt i32 %242, 1
  %244 = icmp slt i32 %238, 2
  %245 = or i1 %244, %243
  %246 = select i1 %245, i8 4, i8 0
  br label %247

247:                                              ; preds = %216, %240
  %248 = phi i8 [ %246, %240 ], [ 2, %216 ]
  %249 = load ptr, ptr %200, align 8, !tbaa !42
  %250 = load i64, ptr %53, align 8, !tbaa !88
  %251 = add i64 %250, 1
  store i64 %251, ptr %53, align 8, !tbaa !88
  %252 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  store i8 %248, ptr %252, align 1, !tbaa !8
  %253 = load ptr, ptr %200, align 8, !tbaa !42
  %254 = load i64, ptr %53, align 8, !tbaa !88
  %255 = add i64 %254, 1
  store i64 %255, ptr %53, align 8, !tbaa !88
  %256 = getelementptr inbounds nuw i8, ptr %253, i64 %254
  store i8 3, ptr %256, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %257 = load i64, ptr %53, align 8, !tbaa !88
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %381, label %259

259:                                              ; preds = %247
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

260:                                              ; preds = %197
  %261 = load i32, ptr %214, align 8, !tbaa !101
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds nuw i8, ptr %214, i64 68
  %265 = load i32, ptr %264, align 4, !tbaa !103
  %266 = icmp eq i32 %265, 0
  %267 = select i1 %266, i8 0, i8 2
  %268 = or disjoint i8 %267, %263
  %269 = getelementptr inbounds nuw i8, ptr %214, i64 24
  %270 = load ptr, ptr %269, align 8, !tbaa !104
  %271 = icmp eq ptr %270, null
  %272 = select i1 %271, i8 0, i8 4
  %273 = or disjoint i8 %268, %272
  %274 = getelementptr inbounds nuw i8, ptr %214, i64 40
  %275 = load ptr, ptr %274, align 8, !tbaa !105
  %276 = icmp eq ptr %275, null
  %277 = select i1 %276, i8 0, i8 8
  %278 = or disjoint i8 %273, %277
  %279 = getelementptr inbounds nuw i8, ptr %214, i64 56
  %280 = load ptr, ptr %279, align 8, !tbaa !106
  %281 = icmp eq ptr %280, null
  %282 = select i1 %281, i8 0, i8 16
  %283 = or disjoint i8 %278, %282
  %284 = load ptr, ptr %200, align 8, !tbaa !42
  %285 = load i64, ptr %53, align 8, !tbaa !88
  %286 = add i64 %285, 1
  store i64 %286, ptr %53, align 8, !tbaa !88
  %287 = getelementptr inbounds nuw i8, ptr %284, i64 %285
  store i8 %283, ptr %287, align 1, !tbaa !8
  %288 = load ptr, ptr %213, align 8, !tbaa !91
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 8
  %290 = load i64, ptr %289, align 8, !tbaa !107
  %291 = trunc i64 %290 to i8
  %292 = load ptr, ptr %200, align 8, !tbaa !42
  %293 = load i64, ptr %53, align 8, !tbaa !88
  %294 = add i64 %293, 1
  store i64 %294, ptr %53, align 8, !tbaa !88
  %295 = getelementptr inbounds nuw i8, ptr %292, i64 %293
  store i8 %291, ptr %295, align 1, !tbaa !8
  %296 = load ptr, ptr %213, align 8, !tbaa !91
  %297 = getelementptr inbounds nuw i8, ptr %296, i64 8
  %298 = load i64, ptr %297, align 8, !tbaa !107
  %299 = lshr i64 %298, 8
  %300 = trunc i64 %299 to i8
  %301 = load ptr, ptr %200, align 8, !tbaa !42
  %302 = load i64, ptr %53, align 8, !tbaa !88
  %303 = add i64 %302, 1
  store i64 %303, ptr %53, align 8, !tbaa !88
  %304 = getelementptr inbounds nuw i8, ptr %301, i64 %302
  store i8 %300, ptr %304, align 1, !tbaa !8
  %305 = load ptr, ptr %213, align 8, !tbaa !91
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 8
  %307 = load i64, ptr %306, align 8, !tbaa !107
  %308 = lshr i64 %307, 16
  %309 = trunc i64 %308 to i8
  %310 = load ptr, ptr %200, align 8, !tbaa !42
  %311 = load i64, ptr %53, align 8, !tbaa !88
  %312 = add i64 %311, 1
  store i64 %312, ptr %53, align 8, !tbaa !88
  %313 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  store i8 %309, ptr %313, align 1, !tbaa !8
  %314 = load ptr, ptr %213, align 8, !tbaa !91
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 8
  %316 = load i64, ptr %315, align 8, !tbaa !107
  %317 = lshr i64 %316, 24
  %318 = trunc i64 %317 to i8
  %319 = load ptr, ptr %200, align 8, !tbaa !42
  %320 = load i64, ptr %53, align 8, !tbaa !88
  %321 = add i64 %320, 1
  store i64 %321, ptr %53, align 8, !tbaa !88
  %322 = getelementptr inbounds nuw i8, ptr %319, i64 %320
  store i8 %318, ptr %322, align 1, !tbaa !8
  %323 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %324 = load i32, ptr %323, align 4, !tbaa !47
  %325 = icmp eq i32 %324, 9
  br i1 %325, label %333, label %326

326:                                              ; preds = %260
  %327 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %328 = load i32, ptr %327, align 8, !tbaa !48
  %329 = icmp sgt i32 %328, 1
  %330 = icmp slt i32 %324, 2
  %331 = or i1 %330, %329
  %332 = select i1 %331, i8 4, i8 0
  br label %333

333:                                              ; preds = %260, %326
  %334 = phi i8 [ %332, %326 ], [ 2, %260 ]
  %335 = load ptr, ptr %200, align 8, !tbaa !42
  %336 = load i64, ptr %53, align 8, !tbaa !88
  %337 = add i64 %336, 1
  store i64 %337, ptr %53, align 8, !tbaa !88
  %338 = getelementptr inbounds nuw i8, ptr %335, i64 %336
  store i8 %334, ptr %338, align 1, !tbaa !8
  %339 = load ptr, ptr %213, align 8, !tbaa !91
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 20
  %341 = load i32, ptr %340, align 4, !tbaa !108
  %342 = trunc i32 %341 to i8
  %343 = load ptr, ptr %200, align 8, !tbaa !42
  %344 = load i64, ptr %53, align 8, !tbaa !88
  %345 = add i64 %344, 1
  store i64 %345, ptr %53, align 8, !tbaa !88
  %346 = getelementptr inbounds nuw i8, ptr %343, i64 %344
  store i8 %342, ptr %346, align 1, !tbaa !8
  %347 = load ptr, ptr %213, align 8, !tbaa !91
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 24
  %349 = load ptr, ptr %348, align 8, !tbaa !104
  %350 = icmp eq ptr %349, null
  br i1 %350, label %369, label %351

351:                                              ; preds = %333
  %352 = getelementptr inbounds nuw i8, ptr %347, i64 32
  %353 = load i32, ptr %352, align 8, !tbaa !109
  %354 = trunc i32 %353 to i8
  %355 = load ptr, ptr %200, align 8, !tbaa !42
  %356 = load i64, ptr %53, align 8, !tbaa !88
  %357 = add i64 %356, 1
  store i64 %357, ptr %53, align 8, !tbaa !88
  %358 = getelementptr inbounds nuw i8, ptr %355, i64 %356
  store i8 %354, ptr %358, align 1, !tbaa !8
  %359 = load ptr, ptr %213, align 8, !tbaa !91
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 32
  %361 = load i32, ptr %360, align 8, !tbaa !109
  %362 = lshr i32 %361, 8
  %363 = trunc i32 %362 to i8
  %364 = load ptr, ptr %200, align 8, !tbaa !42
  %365 = load i64, ptr %53, align 8, !tbaa !88
  %366 = add i64 %365, 1
  store i64 %366, ptr %53, align 8, !tbaa !88
  %367 = getelementptr inbounds nuw i8, ptr %364, i64 %365
  store i8 %363, ptr %367, align 1, !tbaa !8
  %368 = load ptr, ptr %213, align 8, !tbaa !91
  br label %369

369:                                              ; preds = %351, %333
  %370 = phi ptr [ %368, %351 ], [ %347, %333 ]
  %371 = getelementptr inbounds nuw i8, ptr %370, i64 68
  %372 = load i32, ptr %371, align 4, !tbaa !103
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %379, label %374

374:                                              ; preds = %369
  %375 = load i64, ptr %199, align 8, !tbaa !72
  %376 = load ptr, ptr %200, align 8, !tbaa !42
  %377 = load i64, ptr %53, align 8, !tbaa !88
  %378 = tail call i64 @crc32_z(i64 noundef %375, ptr noundef %376, i64 noundef %377) #13
  store i64 %378, ptr %199, align 8, !tbaa !72
  br label %379

379:                                              ; preds = %369, %374
  %380 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %380, align 8, !tbaa !110
  store i32 69, ptr %20, align 8, !tbaa !28
  br label %385

381:                                              ; preds = %247
  %382 = load i32, ptr %20, align 8, !tbaa !28
  br label %383

383:                                              ; preds = %381, %194
  %384 = phi i32 [ %382, %381 ], [ %195, %194 ]
  switch i32 %384, label %774 [
    i32 69, label %385
    i32 73, label %550
    i32 91, label %644
    i32 103, label %737
  ]

385:                                              ; preds = %383, %379
  %386 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %387 = load ptr, ptr %386, align 8, !tbaa !91
  %388 = getelementptr inbounds nuw i8, ptr %387, i64 24
  %389 = load ptr, ptr %388, align 8, !tbaa !104
  %390 = icmp eq ptr %389, null
  br i1 %390, label %549, label %391

391:                                              ; preds = %385
  %392 = load i64, ptr %53, align 8, !tbaa !88
  %393 = getelementptr inbounds nuw i8, ptr %387, i64 32
  %394 = load i32, ptr %393, align 8, !tbaa !109
  %395 = and i32 %394, 65535
  %396 = zext nneg i32 %395 to i64
  %397 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %398 = load i64, ptr %397, align 8, !tbaa !110
  %399 = sub i64 %396, %398
  %400 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %401 = add i64 %392, %399
  %402 = load i64, ptr %400, align 8, !tbaa !43
  %403 = icmp ugt i64 %401, %402
  br i1 %403, label %404, label %524

404:                                              ; preds = %391
  %405 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %408 = sub i64 %402, %392
  %409 = load ptr, ptr %405, align 8, !tbaa !42
  %410 = getelementptr inbounds nuw i8, ptr %409, i64 %392
  %411 = getelementptr inbounds nuw i8, ptr %389, i64 %398
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %410, ptr nonnull align 1 %411, i64 %408, i1 false)
  %412 = load i64, ptr %400, align 8, !tbaa !43
  store i64 %412, ptr %53, align 8, !tbaa !88
  %413 = load ptr, ptr %386, align 8, !tbaa !91
  %414 = getelementptr inbounds nuw i8, ptr %413, i64 68
  %415 = load i32, ptr %414, align 4, !tbaa !103
  %416 = icmp ne i32 %415, 0
  %417 = icmp ugt i64 %412, %392
  %418 = select i1 %416, i1 %417, i1 false
  br i1 %418, label %419, label %425

419:                                              ; preds = %404
  %420 = load i64, ptr %406, align 8, !tbaa !72
  %421 = load ptr, ptr %405, align 8, !tbaa !42
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 %392
  %423 = sub nuw i64 %412, %392
  %424 = tail call i64 @crc32_z(i64 noundef %420, ptr noundef %422, i64 noundef %423) #13
  store i64 %424, ptr %406, align 8, !tbaa !72
  br label %425

425:                                              ; preds = %419, %404
  %426 = load i64, ptr %397, align 8, !tbaa !110
  %427 = add i64 %426, %408
  store i64 %427, ptr %397, align 8, !tbaa !110
  %428 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %428) #13
  %429 = getelementptr inbounds nuw i8, ptr %428, i64 40
  %430 = load i64, ptr %429, align 8, !tbaa !88
  %431 = load i32, ptr %44, align 8, !tbaa !99
  %432 = zext i32 %431 to i64
  %433 = tail call i64 @llvm.umin.i64(i64 %430, i64 %432)
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %454, label %435

435:                                              ; preds = %425
  %436 = trunc nuw i64 %433 to i32
  %437 = load ptr, ptr %25, align 8, !tbaa !98
  %438 = getelementptr inbounds nuw i8, ptr %428, i64 32
  %439 = load ptr, ptr %438, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %437, ptr align 1 %439, i64 %433, i1 false)
  %440 = load ptr, ptr %25, align 8, !tbaa !98
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 %433
  store ptr %441, ptr %25, align 8, !tbaa !98
  %442 = load ptr, ptr %438, align 8, !tbaa !89
  %443 = getelementptr inbounds nuw i8, ptr %442, i64 %433
  store ptr %443, ptr %438, align 8, !tbaa !89
  %444 = load i64, ptr %407, align 8, !tbaa !100
  %445 = add i64 %444, %433
  store i64 %445, ptr %407, align 8, !tbaa !100
  %446 = load i32, ptr %44, align 8, !tbaa !99
  %447 = sub i32 %446, %436
  store i32 %447, ptr %44, align 8, !tbaa !99
  %448 = load i64, ptr %429, align 8, !tbaa !88
  %449 = sub i64 %448, %433
  store i64 %449, ptr %429, align 8, !tbaa !88
  %450 = icmp eq i64 %448, %433
  br i1 %450, label %451, label %454

451:                                              ; preds = %435
  %452 = getelementptr inbounds nuw i8, ptr %428, i64 16
  %453 = load ptr, ptr %452, align 8, !tbaa !42
  store ptr %453, ptr %438, align 8, !tbaa !89
  br label %454

454:                                              ; preds = %451, %435, %425
  %455 = load i64, ptr %53, align 8, !tbaa !88
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %457, label %513

457:                                              ; preds = %454
  %458 = sub i64 %399, %408
  %459 = load i64, ptr %400, align 8, !tbaa !43
  %460 = icmp ugt i64 %458, %459
  br i1 %460, label %461, label %518

461:                                              ; preds = %457, %514
  %462 = phi i64 [ %516, %514 ], [ %459, %457 ]
  %463 = phi i64 [ %515, %514 ], [ %458, %457 ]
  %464 = load ptr, ptr %405, align 8, !tbaa !42
  %465 = load ptr, ptr %386, align 8, !tbaa !91
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 24
  %467 = load ptr, ptr %466, align 8, !tbaa !104
  %468 = load i64, ptr %397, align 8, !tbaa !110
  %469 = getelementptr inbounds nuw i8, ptr %467, i64 %468
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %464, ptr align 1 %469, i64 %462, i1 false)
  %470 = load i64, ptr %400, align 8, !tbaa !43
  store i64 %470, ptr %53, align 8, !tbaa !88
  %471 = load ptr, ptr %386, align 8, !tbaa !91
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 68
  %473 = load i32, ptr %472, align 4, !tbaa !103
  %474 = icmp ne i32 %473, 0
  %475 = icmp ne i64 %470, 0
  %476 = select i1 %474, i1 %475, i1 false
  br i1 %476, label %477, label %481

477:                                              ; preds = %461
  %478 = load i64, ptr %406, align 8, !tbaa !72
  %479 = load ptr, ptr %405, align 8, !tbaa !42
  %480 = tail call i64 @crc32_z(i64 noundef %478, ptr noundef %479, i64 noundef %470) #13
  store i64 %480, ptr %406, align 8, !tbaa !72
  br label %481

481:                                              ; preds = %477, %461
  %482 = load i64, ptr %397, align 8, !tbaa !110
  %483 = add i64 %482, %462
  store i64 %483, ptr %397, align 8, !tbaa !110
  %484 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %484) #13
  %485 = getelementptr inbounds nuw i8, ptr %484, i64 40
  %486 = load i64, ptr %485, align 8, !tbaa !88
  %487 = load i32, ptr %44, align 8, !tbaa !99
  %488 = zext i32 %487 to i64
  %489 = tail call i64 @llvm.umin.i64(i64 %486, i64 %488)
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %510, label %491

491:                                              ; preds = %481
  %492 = trunc nuw i64 %489 to i32
  %493 = load ptr, ptr %25, align 8, !tbaa !98
  %494 = getelementptr inbounds nuw i8, ptr %484, i64 32
  %495 = load ptr, ptr %494, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %493, ptr align 1 %495, i64 %489, i1 false)
  %496 = load ptr, ptr %25, align 8, !tbaa !98
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 %489
  store ptr %497, ptr %25, align 8, !tbaa !98
  %498 = load ptr, ptr %494, align 8, !tbaa !89
  %499 = getelementptr inbounds nuw i8, ptr %498, i64 %489
  store ptr %499, ptr %494, align 8, !tbaa !89
  %500 = load i64, ptr %407, align 8, !tbaa !100
  %501 = add i64 %500, %489
  store i64 %501, ptr %407, align 8, !tbaa !100
  %502 = load i32, ptr %44, align 8, !tbaa !99
  %503 = sub i32 %502, %492
  store i32 %503, ptr %44, align 8, !tbaa !99
  %504 = load i64, ptr %485, align 8, !tbaa !88
  %505 = sub i64 %504, %489
  store i64 %505, ptr %485, align 8, !tbaa !88
  %506 = icmp eq i64 %504, %489
  br i1 %506, label %507, label %510

507:                                              ; preds = %491
  %508 = getelementptr inbounds nuw i8, ptr %484, i64 16
  %509 = load ptr, ptr %508, align 8, !tbaa !42
  store ptr %509, ptr %494, align 8, !tbaa !89
  br label %510

510:                                              ; preds = %481, %491, %507
  %511 = load i64, ptr %53, align 8, !tbaa !88
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %514, label %513

513:                                              ; preds = %510, %454
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

514:                                              ; preds = %510
  %515 = sub i64 %463, %462
  %516 = load i64, ptr %400, align 8, !tbaa !43
  %517 = icmp ugt i64 %515, %516
  br i1 %517, label %461, label %518, !llvm.loop !111

518:                                              ; preds = %514, %457
  %519 = phi i64 [ %458, %457 ], [ %515, %514 ]
  %520 = load ptr, ptr %386, align 8, !tbaa !91
  %521 = getelementptr inbounds nuw i8, ptr %520, i64 24
  %522 = load ptr, ptr %521, align 8, !tbaa !104
  %523 = load i64, ptr %397, align 8, !tbaa !110
  br label %524

524:                                              ; preds = %518, %391
  %525 = phi i64 [ %398, %391 ], [ %523, %518 ]
  %526 = phi ptr [ %389, %391 ], [ %522, %518 ]
  %527 = phi i64 [ %392, %391 ], [ 0, %518 ]
  %528 = phi i64 [ %399, %391 ], [ %519, %518 ]
  %529 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %530 = load ptr, ptr %529, align 8, !tbaa !42
  %531 = getelementptr inbounds nuw i8, ptr %530, i64 %527
  %532 = getelementptr inbounds nuw i8, ptr %526, i64 %525
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %531, ptr align 1 %532, i64 %528, i1 false)
  %533 = load i64, ptr %53, align 8, !tbaa !88
  %534 = add i64 %533, %528
  store i64 %534, ptr %53, align 8, !tbaa !88
  %535 = load ptr, ptr %386, align 8, !tbaa !91
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 68
  %537 = load i32, ptr %536, align 4, !tbaa !103
  %538 = icmp ne i32 %537, 0
  %539 = icmp ugt i64 %534, %527
  %540 = select i1 %538, i1 %539, i1 false
  br i1 %540, label %541, label %548

541:                                              ; preds = %524
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %543 = load i64, ptr %542, align 8, !tbaa !72
  %544 = load ptr, ptr %529, align 8, !tbaa !42
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 %527
  %546 = sub nuw i64 %534, %527
  %547 = tail call i64 @crc32_z(i64 noundef %543, ptr noundef %545, i64 noundef %546) #13
  store i64 %547, ptr %542, align 8, !tbaa !72
  br label %548

548:                                              ; preds = %524, %541
  store i64 0, ptr %397, align 8, !tbaa !110
  br label %549

549:                                              ; preds = %385, %548
  store i32 73, ptr %20, align 8, !tbaa !28
  br label %550

550:                                              ; preds = %383, %549
  %551 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %552 = load ptr, ptr %551, align 8, !tbaa !91
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 40
  %554 = load ptr, ptr %553, align 8, !tbaa !105
  %555 = icmp eq ptr %554, null
  br i1 %555, label %643, label %556

556:                                              ; preds = %550
  %557 = load i64, ptr %53, align 8, !tbaa !88
  %558 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %559 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %560 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %561 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %562 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %563

563:                                              ; preds = %614, %556
  %564 = phi i64 [ %557, %556 ], [ %617, %614 ]
  %565 = load i64, ptr %53, align 8, !tbaa !88
  %566 = load i64, ptr %558, align 8, !tbaa !43
  %567 = icmp eq i64 %565, %566
  %568 = load ptr, ptr %551, align 8, !tbaa !91
  br i1 %567, label %569, label %614

569:                                              ; preds = %563
  %570 = getelementptr inbounds nuw i8, ptr %568, i64 68
  %571 = load i32, ptr %570, align 4, !tbaa !103
  %572 = icmp ne i32 %571, 0
  %573 = icmp ugt i64 %565, %564
  %574 = select i1 %572, i1 %573, i1 false
  br i1 %574, label %575, label %581

575:                                              ; preds = %569
  %576 = load i64, ptr %559, align 8, !tbaa !72
  %577 = load ptr, ptr %560, align 8, !tbaa !42
  %578 = getelementptr inbounds nuw i8, ptr %577, i64 %564
  %579 = sub nuw i64 %565, %564
  %580 = tail call i64 @crc32_z(i64 noundef %576, ptr noundef %578, i64 noundef %579) #13
  store i64 %580, ptr %559, align 8, !tbaa !72
  br label %581

581:                                              ; preds = %575, %569
  %582 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %582) #13
  %583 = getelementptr inbounds nuw i8, ptr %582, i64 40
  %584 = load i64, ptr %583, align 8, !tbaa !88
  %585 = load i32, ptr %44, align 8, !tbaa !99
  %586 = zext i32 %585 to i64
  %587 = tail call i64 @llvm.umin.i64(i64 %584, i64 %586)
  %588 = icmp eq i64 %587, 0
  br i1 %588, label %608, label %589

589:                                              ; preds = %581
  %590 = trunc nuw i64 %587 to i32
  %591 = load ptr, ptr %25, align 8, !tbaa !98
  %592 = getelementptr inbounds nuw i8, ptr %582, i64 32
  %593 = load ptr, ptr %592, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %591, ptr align 1 %593, i64 %587, i1 false)
  %594 = load ptr, ptr %25, align 8, !tbaa !98
  %595 = getelementptr inbounds nuw i8, ptr %594, i64 %587
  store ptr %595, ptr %25, align 8, !tbaa !98
  %596 = load ptr, ptr %592, align 8, !tbaa !89
  %597 = getelementptr inbounds nuw i8, ptr %596, i64 %587
  store ptr %597, ptr %592, align 8, !tbaa !89
  %598 = load i64, ptr %561, align 8, !tbaa !100
  %599 = add i64 %598, %587
  store i64 %599, ptr %561, align 8, !tbaa !100
  %600 = load i32, ptr %44, align 8, !tbaa !99
  %601 = sub i32 %600, %590
  store i32 %601, ptr %44, align 8, !tbaa !99
  %602 = load i64, ptr %583, align 8, !tbaa !88
  %603 = sub i64 %602, %587
  store i64 %603, ptr %583, align 8, !tbaa !88
  %604 = icmp eq i64 %602, %587
  br i1 %604, label %605, label %608

605:                                              ; preds = %589
  %606 = getelementptr inbounds nuw i8, ptr %582, i64 16
  %607 = load ptr, ptr %606, align 8, !tbaa !42
  store ptr %607, ptr %592, align 8, !tbaa !89
  br label %608

608:                                              ; preds = %581, %589, %605
  %609 = load i64, ptr %53, align 8, !tbaa !88
  %610 = icmp eq i64 %609, 0
  br i1 %610, label %611, label %613

611:                                              ; preds = %608
  %612 = load ptr, ptr %551, align 8, !tbaa !91
  br label %614

613:                                              ; preds = %608
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

614:                                              ; preds = %611, %563
  %615 = phi i64 [ %565, %563 ], [ 0, %611 ]
  %616 = phi ptr [ %568, %563 ], [ %612, %611 ]
  %617 = phi i64 [ %564, %563 ], [ 0, %611 ]
  %618 = getelementptr inbounds nuw i8, ptr %616, i64 40
  %619 = load ptr, ptr %618, align 8, !tbaa !105
  %620 = load i64, ptr %562, align 8, !tbaa !110
  %621 = add i64 %620, 1
  store i64 %621, ptr %562, align 8, !tbaa !110
  %622 = getelementptr inbounds nuw i8, ptr %619, i64 %620
  %623 = load i8, ptr %622, align 1, !tbaa !8
  %624 = load ptr, ptr %560, align 8, !tbaa !42
  %625 = add i64 %615, 1
  store i64 %625, ptr %53, align 8, !tbaa !88
  %626 = getelementptr inbounds nuw i8, ptr %624, i64 %615
  store i8 %623, ptr %626, align 1, !tbaa !8
  %627 = icmp eq i8 %623, 0
  br i1 %627, label %628, label %563, !llvm.loop !113

628:                                              ; preds = %614
  %629 = load ptr, ptr %551, align 8, !tbaa !91
  %630 = getelementptr inbounds nuw i8, ptr %629, i64 68
  %631 = load i32, ptr %630, align 4, !tbaa !103
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %642, label %633

633:                                              ; preds = %628
  %634 = load i64, ptr %53, align 8, !tbaa !88
  %635 = icmp ugt i64 %634, %617
  br i1 %635, label %636, label %642

636:                                              ; preds = %633
  %637 = load i64, ptr %559, align 8, !tbaa !72
  %638 = load ptr, ptr %560, align 8, !tbaa !42
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 %617
  %640 = sub nuw i64 %634, %617
  %641 = tail call i64 @crc32_z(i64 noundef %637, ptr noundef %639, i64 noundef %640) #13
  store i64 %641, ptr %559, align 8, !tbaa !72
  br label %642

642:                                              ; preds = %636, %633, %628
  store i64 0, ptr %562, align 8, !tbaa !110
  br label %643

643:                                              ; preds = %550, %642
  store i32 91, ptr %20, align 8, !tbaa !28
  br label %644

644:                                              ; preds = %383, %643
  %645 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %646 = load ptr, ptr %645, align 8, !tbaa !91
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 56
  %648 = load ptr, ptr %647, align 8, !tbaa !106
  %649 = icmp eq ptr %648, null
  br i1 %649, label %736, label %650

650:                                              ; preds = %644
  %651 = load i64, ptr %53, align 8, !tbaa !88
  %652 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %653 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %654 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %655 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %656 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %657

657:                                              ; preds = %708, %650
  %658 = phi i64 [ %651, %650 ], [ %711, %708 ]
  %659 = load i64, ptr %53, align 8, !tbaa !88
  %660 = load i64, ptr %652, align 8, !tbaa !43
  %661 = icmp eq i64 %659, %660
  %662 = load ptr, ptr %645, align 8, !tbaa !91
  br i1 %661, label %663, label %708

663:                                              ; preds = %657
  %664 = getelementptr inbounds nuw i8, ptr %662, i64 68
  %665 = load i32, ptr %664, align 4, !tbaa !103
  %666 = icmp ne i32 %665, 0
  %667 = icmp ugt i64 %659, %658
  %668 = select i1 %666, i1 %667, i1 false
  br i1 %668, label %669, label %675

669:                                              ; preds = %663
  %670 = load i64, ptr %653, align 8, !tbaa !72
  %671 = load ptr, ptr %654, align 8, !tbaa !42
  %672 = getelementptr inbounds nuw i8, ptr %671, i64 %658
  %673 = sub nuw i64 %659, %658
  %674 = tail call i64 @crc32_z(i64 noundef %670, ptr noundef %672, i64 noundef %673) #13
  store i64 %674, ptr %653, align 8, !tbaa !72
  br label %675

675:                                              ; preds = %669, %663
  %676 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %676) #13
  %677 = getelementptr inbounds nuw i8, ptr %676, i64 40
  %678 = load i64, ptr %677, align 8, !tbaa !88
  %679 = load i32, ptr %44, align 8, !tbaa !99
  %680 = zext i32 %679 to i64
  %681 = tail call i64 @llvm.umin.i64(i64 %678, i64 %680)
  %682 = icmp eq i64 %681, 0
  br i1 %682, label %702, label %683

683:                                              ; preds = %675
  %684 = trunc nuw i64 %681 to i32
  %685 = load ptr, ptr %25, align 8, !tbaa !98
  %686 = getelementptr inbounds nuw i8, ptr %676, i64 32
  %687 = load ptr, ptr %686, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %685, ptr align 1 %687, i64 %681, i1 false)
  %688 = load ptr, ptr %25, align 8, !tbaa !98
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 %681
  store ptr %689, ptr %25, align 8, !tbaa !98
  %690 = load ptr, ptr %686, align 8, !tbaa !89
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 %681
  store ptr %691, ptr %686, align 8, !tbaa !89
  %692 = load i64, ptr %655, align 8, !tbaa !100
  %693 = add i64 %692, %681
  store i64 %693, ptr %655, align 8, !tbaa !100
  %694 = load i32, ptr %44, align 8, !tbaa !99
  %695 = sub i32 %694, %684
  store i32 %695, ptr %44, align 8, !tbaa !99
  %696 = load i64, ptr %677, align 8, !tbaa !88
  %697 = sub i64 %696, %681
  store i64 %697, ptr %677, align 8, !tbaa !88
  %698 = icmp eq i64 %696, %681
  br i1 %698, label %699, label %702

699:                                              ; preds = %683
  %700 = getelementptr inbounds nuw i8, ptr %676, i64 16
  %701 = load ptr, ptr %700, align 8, !tbaa !42
  store ptr %701, ptr %686, align 8, !tbaa !89
  br label %702

702:                                              ; preds = %675, %683, %699
  %703 = load i64, ptr %53, align 8, !tbaa !88
  %704 = icmp eq i64 %703, 0
  br i1 %704, label %705, label %707

705:                                              ; preds = %702
  %706 = load ptr, ptr %645, align 8, !tbaa !91
  br label %708

707:                                              ; preds = %702
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

708:                                              ; preds = %705, %657
  %709 = phi i64 [ %659, %657 ], [ 0, %705 ]
  %710 = phi ptr [ %662, %657 ], [ %706, %705 ]
  %711 = phi i64 [ %658, %657 ], [ 0, %705 ]
  %712 = getelementptr inbounds nuw i8, ptr %710, i64 56
  %713 = load ptr, ptr %712, align 8, !tbaa !106
  %714 = load i64, ptr %656, align 8, !tbaa !110
  %715 = add i64 %714, 1
  store i64 %715, ptr %656, align 8, !tbaa !110
  %716 = getelementptr inbounds nuw i8, ptr %713, i64 %714
  %717 = load i8, ptr %716, align 1, !tbaa !8
  %718 = load ptr, ptr %654, align 8, !tbaa !42
  %719 = add i64 %709, 1
  store i64 %719, ptr %53, align 8, !tbaa !88
  %720 = getelementptr inbounds nuw i8, ptr %718, i64 %709
  store i8 %717, ptr %720, align 1, !tbaa !8
  %721 = icmp eq i8 %717, 0
  br i1 %721, label %722, label %657, !llvm.loop !114

722:                                              ; preds = %708
  %723 = load ptr, ptr %645, align 8, !tbaa !91
  %724 = getelementptr inbounds nuw i8, ptr %723, i64 68
  %725 = load i32, ptr %724, align 4, !tbaa !103
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %736, label %727

727:                                              ; preds = %722
  %728 = load i64, ptr %53, align 8, !tbaa !88
  %729 = icmp ugt i64 %728, %711
  br i1 %729, label %730, label %736

730:                                              ; preds = %727
  %731 = load i64, ptr %653, align 8, !tbaa !72
  %732 = load ptr, ptr %654, align 8, !tbaa !42
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 %711
  %734 = sub nuw i64 %728, %711
  %735 = tail call i64 @crc32_z(i64 noundef %731, ptr noundef %733, i64 noundef %734) #13
  store i64 %735, ptr %653, align 8, !tbaa !72
  br label %736

736:                                              ; preds = %644, %722, %727, %730
  store i32 103, ptr %20, align 8, !tbaa !28
  br label %737

737:                                              ; preds = %383, %736
  %738 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %739 = load ptr, ptr %738, align 8, !tbaa !91
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 68
  %741 = load i32, ptr %740, align 4, !tbaa !103
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %770, label %743

743:                                              ; preds = %737
  %744 = load i64, ptr %53, align 8, !tbaa !88
  %745 = add i64 %744, 2
  %746 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %747 = load i64, ptr %746, align 8, !tbaa !43
  %748 = icmp ugt i64 %745, %747
  br i1 %748, label %749, label %753

749:                                              ; preds = %743
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %750 = load i64, ptr %53, align 8, !tbaa !88
  %751 = icmp eq i64 %750, 0
  br i1 %751, label %753, label %752

752:                                              ; preds = %749
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

753:                                              ; preds = %749, %743
  %754 = phi i64 [ 0, %749 ], [ %744, %743 ]
  %755 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %756 = load i64, ptr %755, align 8, !tbaa !72
  %757 = trunc i64 %756 to i8
  %758 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %759 = load ptr, ptr %758, align 8, !tbaa !42
  %760 = add i64 %754, 1
  store i64 %760, ptr %53, align 8, !tbaa !88
  %761 = getelementptr inbounds nuw i8, ptr %759, i64 %754
  store i8 %757, ptr %761, align 1, !tbaa !8
  %762 = load i64, ptr %755, align 8, !tbaa !72
  %763 = lshr i64 %762, 8
  %764 = trunc i64 %763 to i8
  %765 = load ptr, ptr %758, align 8, !tbaa !42
  %766 = load i64, ptr %53, align 8, !tbaa !88
  %767 = add i64 %766, 1
  store i64 %767, ptr %53, align 8, !tbaa !88
  %768 = getelementptr inbounds nuw i8, ptr %765, i64 %766
  store i8 %764, ptr %768, align 1, !tbaa !8
  %769 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %769, ptr %755, align 8, !tbaa !72
  br label %770

770:                                              ; preds = %753, %737
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %771 = load i64, ptr %53, align 8, !tbaa !88
  %772 = icmp eq i64 %771, 0
  br i1 %772, label %774, label %773

773:                                              ; preds = %770
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

774:                                              ; preds = %383, %117, %770
  %775 = load i32, ptr %29, align 8, !tbaa !73
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %786

777:                                              ; preds = %107, %774
  %778 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %779 = load i32, ptr %778, align 4, !tbaa !66
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %786

781:                                              ; preds = %777
  %782 = icmp eq i32 %1, 0
  br i1 %782, label %943, label %783

783:                                              ; preds = %781
  %784 = load i32, ptr %20, align 8, !tbaa !28
  %785 = icmp eq i32 %784, 666
  br i1 %785, label %846, label %786

786:                                              ; preds = %783, %777, %774
  %787 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %788 = load i32, ptr %787, align 4, !tbaa !47
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %792

790:                                              ; preds = %786
  %791 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %807

792:                                              ; preds = %786
  %793 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %794 = load i32, ptr %793, align 8, !tbaa !48
  switch i32 %794, label %799 [
    i32 2, label %795
    i32 3, label %797
  ]

795:                                              ; preds = %792
  %796 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %807

797:                                              ; preds = %792
  %798 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %807

799:                                              ; preds = %792
  %800 = icmp ult i32 %788, 10
  br i1 %800, label %801, label %39, !prof !53, !nosanitize !54

801:                                              ; preds = %799
  %802 = zext nneg i32 %788 to i64
  %803 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %802
  %804 = getelementptr inbounds nuw i8, ptr %803, i64 8
  %805 = load ptr, ptr %804, align 8, !tbaa !96
  %806 = tail call i32 %805(ptr noundef nonnull %14, i32 noundef %1) #13
  br label %807

807:                                              ; preds = %795, %801, %797, %790
  %808 = phi i32 [ %791, %790 ], [ %796, %795 ], [ %798, %797 ], [ %806, %801 ]
  %809 = and i32 %808, -2
  %810 = icmp eq i32 %809, 2
  br i1 %810, label %811, label %812

811:                                              ; preds = %807
  store i32 666, ptr %20, align 8, !tbaa !28
  br label %812

812:                                              ; preds = %807, %811
  %813 = and i32 %808, -3
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %819

815:                                              ; preds = %812
  %816 = load i32, ptr %44, align 8, !tbaa !99
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %943

818:                                              ; preds = %815
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

819:                                              ; preds = %812
  %820 = icmp eq i32 %808, 1
  br i1 %820, label %821, label %846

821:                                              ; preds = %819
  switch i32 %1, label %823 [
    i32 1, label %822
    i32 5, label %842
  ]

822:                                              ; preds = %821
  tail call void @_tr_align(ptr noundef nonnull %14) #13
  br label %842

823:                                              ; preds = %821
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #13
  %824 = icmp eq i32 %1, 3
  br i1 %824, label %825, label %842

825:                                              ; preds = %823
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %827 = load ptr, ptr %826, align 8, !tbaa !39
  %828 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %829 = load i32, ptr %828, align 4, !tbaa !34
  %830 = add i32 %829, -1
  %831 = zext i32 %830 to i64
  %832 = getelementptr inbounds nuw [2 x i8], ptr %827, i64 %831
  store i16 0, ptr %832, align 2, !tbaa !51
  %833 = shl nuw nsw i64 %831, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %827, i8 0, i64 %833, i1 false)
  %834 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %834, align 8, !tbaa !52
  %835 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %836 = load i32, ptr %835, align 4, !tbaa !66
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %842

838:                                              ; preds = %825
  %839 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %839, align 4, !tbaa !64
  %840 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %840, align 8, !tbaa !65
  %841 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %841, align 4, !tbaa !67
  br label %842

842:                                              ; preds = %821, %825, %838, %823, %822
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %843 = load i32, ptr %44, align 8, !tbaa !99
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %846

845:                                              ; preds = %842
  store i32 -1, ptr %51, align 4, !tbaa !90
  br label %943

846:                                              ; preds = %842, %819, %783
  br i1 %37, label %943, label %847

847:                                              ; preds = %846
  %848 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %849 = load i32, ptr %848, align 8, !tbaa !29
  %850 = icmp slt i32 %849, 1
  br i1 %850, label %943, label %851

851:                                              ; preds = %847
  %852 = icmp eq i32 %849, 2
  %853 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %854 = load i64, ptr %853, align 8, !tbaa !72
  br i1 %852, label %855, label %906

855:                                              ; preds = %851
  %856 = trunc i64 %854 to i8
  %857 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %858 = load ptr, ptr %857, align 8, !tbaa !42
  %859 = load i64, ptr %53, align 8, !tbaa !88
  %860 = add i64 %859, 1
  store i64 %860, ptr %53, align 8, !tbaa !88
  %861 = getelementptr inbounds nuw i8, ptr %858, i64 %859
  store i8 %856, ptr %861, align 1, !tbaa !8
  %862 = load i64, ptr %853, align 8, !tbaa !72
  %863 = lshr i64 %862, 8
  %864 = trunc i64 %863 to i8
  %865 = load ptr, ptr %857, align 8, !tbaa !42
  %866 = load i64, ptr %53, align 8, !tbaa !88
  %867 = add i64 %866, 1
  store i64 %867, ptr %53, align 8, !tbaa !88
  %868 = getelementptr inbounds nuw i8, ptr %865, i64 %866
  store i8 %864, ptr %868, align 1, !tbaa !8
  %869 = load i64, ptr %853, align 8, !tbaa !72
  %870 = lshr i64 %869, 16
  %871 = trunc i64 %870 to i8
  %872 = load ptr, ptr %857, align 8, !tbaa !42
  %873 = load i64, ptr %53, align 8, !tbaa !88
  %874 = add i64 %873, 1
  store i64 %874, ptr %53, align 8, !tbaa !88
  %875 = getelementptr inbounds nuw i8, ptr %872, i64 %873
  store i8 %871, ptr %875, align 1, !tbaa !8
  %876 = load i64, ptr %853, align 8, !tbaa !72
  %877 = lshr i64 %876, 24
  %878 = trunc i64 %877 to i8
  %879 = load ptr, ptr %857, align 8, !tbaa !42
  %880 = load i64, ptr %53, align 8, !tbaa !88
  %881 = add i64 %880, 1
  store i64 %881, ptr %53, align 8, !tbaa !88
  %882 = getelementptr inbounds nuw i8, ptr %879, i64 %880
  store i8 %878, ptr %882, align 1, !tbaa !8
  %883 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %884 = load i64, ptr %883, align 8, !tbaa !84
  %885 = trunc i64 %884 to i8
  %886 = load ptr, ptr %857, align 8, !tbaa !42
  %887 = load i64, ptr %53, align 8, !tbaa !88
  %888 = add i64 %887, 1
  store i64 %888, ptr %53, align 8, !tbaa !88
  %889 = getelementptr inbounds nuw i8, ptr %886, i64 %887
  store i8 %885, ptr %889, align 1, !tbaa !8
  %890 = load i64, ptr %883, align 8, !tbaa !84
  %891 = lshr i64 %890, 8
  %892 = trunc i64 %891 to i8
  %893 = load ptr, ptr %857, align 8, !tbaa !42
  %894 = load i64, ptr %53, align 8, !tbaa !88
  %895 = add i64 %894, 1
  store i64 %895, ptr %53, align 8, !tbaa !88
  %896 = getelementptr inbounds nuw i8, ptr %893, i64 %894
  store i8 %892, ptr %896, align 1, !tbaa !8
  %897 = load i64, ptr %883, align 8, !tbaa !84
  %898 = lshr i64 %897, 16
  %899 = trunc i64 %898 to i8
  %900 = load ptr, ptr %857, align 8, !tbaa !42
  %901 = load i64, ptr %53, align 8, !tbaa !88
  %902 = add i64 %901, 1
  store i64 %902, ptr %53, align 8, !tbaa !88
  %903 = getelementptr inbounds nuw i8, ptr %900, i64 %901
  store i8 %899, ptr %903, align 1, !tbaa !8
  %904 = load i64, ptr %883, align 8, !tbaa !84
  %905 = lshr i64 %904, 24
  br label %927

906:                                              ; preds = %851
  %907 = lshr i64 %854, 16
  %908 = lshr i64 %854, 24
  %909 = trunc i64 %908 to i8
  %910 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %911 = load ptr, ptr %910, align 8, !tbaa !42
  %912 = load i64, ptr %53, align 8, !tbaa !88
  %913 = add i64 %912, 1
  store i64 %913, ptr %53, align 8, !tbaa !88
  %914 = getelementptr inbounds nuw i8, ptr %911, i64 %912
  store i8 %909, ptr %914, align 1, !tbaa !8
  %915 = trunc i64 %907 to i8
  %916 = load ptr, ptr %910, align 8, !tbaa !42
  %917 = load i64, ptr %53, align 8, !tbaa !88
  %918 = add i64 %917, 1
  store i64 %918, ptr %53, align 8, !tbaa !88
  %919 = getelementptr inbounds nuw i8, ptr %916, i64 %917
  store i8 %915, ptr %919, align 1, !tbaa !8
  %920 = load i64, ptr %853, align 8, !tbaa !72
  %921 = lshr i64 %920, 8
  %922 = trunc i64 %921 to i8
  %923 = load ptr, ptr %910, align 8, !tbaa !42
  %924 = load i64, ptr %53, align 8, !tbaa !88
  %925 = add i64 %924, 1
  store i64 %925, ptr %53, align 8, !tbaa !88
  %926 = getelementptr inbounds nuw i8, ptr %923, i64 %924
  store i8 %922, ptr %926, align 1, !tbaa !8
  br label %927

927:                                              ; preds = %906, %855
  %928 = phi ptr [ %910, %906 ], [ %857, %855 ]
  %929 = phi i64 [ %920, %906 ], [ %905, %855 ]
  %930 = trunc i64 %929 to i8
  %931 = load ptr, ptr %928, align 8, !tbaa !42
  %932 = load i64, ptr %53, align 8, !tbaa !88
  %933 = add i64 %932, 1
  store i64 %933, ptr %53, align 8, !tbaa !88
  %934 = getelementptr inbounds nuw i8, ptr %931, i64 %932
  store i8 %930, ptr %934, align 1, !tbaa !8
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %935 = load i32, ptr %848, align 8, !tbaa !29
  %936 = icmp sgt i32 %935, 0
  br i1 %936, label %937, label %939

937:                                              ; preds = %927
  %938 = sub nsw i32 0, %935
  store i32 %938, ptr %848, align 8, !tbaa !29
  br label %939

939:                                              ; preds = %937, %927
  %940 = load i64, ptr %53, align 8, !tbaa !88
  %941 = icmp eq i64 %940, 0
  %942 = zext i1 %941 to i32
  br label %943

943:                                              ; preds = %781, %12, %16, %19, %4, %8, %2, %513, %193, %815, %845, %818, %847, %846, %707, %613, %22, %939, %773, %752, %259, %110, %101, %88, %47, %40
  %944 = phi i32 [ -5, %101 ], [ -2, %40 ], [ -5, %47 ], [ 0, %88 ], [ -5, %110 ], [ 0, %259 ], [ 0, %752 ], [ 0, %773 ], [ -2, %22 ], [ 0, %846 ], [ %942, %939 ], [ 1, %847 ], [ 0, %707 ], [ 0, %613 ], [ 0, %513 ], [ 0, %193 ], [ 0, %818 ], [ 0, %845 ], [ 0, %815 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %781 ]
  ret i32 %944
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %10 = add i32 %5, -1
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp ult i32 %10, 7
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = and i64 %12, 8589934584
  %16 = mul nsw i64 %15, -2
  %17 = getelementptr i8, ptr %9, i64 %16
  %18 = trunc i64 %15 to i32
  %19 = sub i32 %5, %18
  %20 = insertelement <8 x i32> poison, i32 %3, i64 0
  %21 = shufflevector <8 x i32> %20, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %22

22:                                               ; preds = %22, %14
  %23 = phi i64 [ 0, %14 ], [ %31, %22 ]
  %24 = mul i64 %23, -2
  %25 = getelementptr i8, ptr %9, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 -16
  %27 = load <8 x i16>, ptr %26, align 2, !tbaa !51
  %28 = zext <8 x i16> %27 to <8 x i32>
  %29 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %28, <8 x i32> %21)
  %30 = trunc nuw <8 x i32> %29 to <8 x i16>
  store <8 x i16> %30, ptr %26, align 2, !tbaa !51
  %31 = add nuw i64 %23, 8
  %32 = icmp eq i64 %31, %15
  br i1 %32, label %33, label %22, !llvm.loop !115

33:                                               ; preds = %22
  %34 = icmp eq i64 %12, %15
  br i1 %34, label %48, label %35

35:                                               ; preds = %1, %33
  %36 = phi ptr [ %9, %1 ], [ %17, %33 ]
  %37 = phi i32 [ %5, %1 ], [ %19, %33 ]
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %35 ]
  %40 = phi i32 [ %46, %38 ], [ %37, %35 ]
  %41 = getelementptr inbounds i8, ptr %39, i64 -2
  %42 = load i16, ptr %41, align 2, !tbaa !51
  %43 = zext i16 %42 to i32
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %43, i32 %3)
  %45 = trunc nuw i32 %44 to i16
  store i16 %45, ptr %41, align 2, !tbaa !51
  %46 = add i32 %40, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %38, !llvm.loop !116

48:                                               ; preds = %38, %33
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %50 = load ptr, ptr %49, align 8, !tbaa !38
  %51 = zext i32 %3 to i64
  %52 = getelementptr inbounds nuw [2 x i8], ptr %50, i64 %51
  %53 = add i32 %3, -1
  %54 = zext i32 %53 to i64
  %55 = add nuw nsw i64 %54, 1
  %56 = icmp ult i32 %53, 7
  br i1 %56, label %78, label %57

57:                                               ; preds = %48
  %58 = and i64 %55, 8589934584
  %59 = mul nsw i64 %58, -2
  %60 = getelementptr i8, ptr %52, i64 %59
  %61 = trunc i64 %58 to i32
  %62 = sub i32 %3, %61
  %63 = insertelement <8 x i32> poison, i32 %3, i64 0
  %64 = shufflevector <8 x i32> %63, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %65

65:                                               ; preds = %65, %57
  %66 = phi i64 [ 0, %57 ], [ %74, %65 ]
  %67 = mul i64 %66, -2
  %68 = getelementptr i8, ptr %52, i64 %67
  %69 = getelementptr inbounds i8, ptr %68, i64 -16
  %70 = load <8 x i16>, ptr %69, align 2, !tbaa !51
  %71 = zext <8 x i16> %70 to <8 x i32>
  %72 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %71, <8 x i32> %64)
  %73 = trunc nuw <8 x i32> %72 to <8 x i16>
  store <8 x i16> %73, ptr %69, align 2, !tbaa !51
  %74 = add nuw i64 %66, 8
  %75 = icmp eq i64 %74, %58
  br i1 %75, label %76, label %65, !llvm.loop !117

76:                                               ; preds = %65
  %77 = icmp eq i64 %55, %58
  br i1 %77, label %91, label %78

78:                                               ; preds = %48, %76
  %79 = phi ptr [ %52, %48 ], [ %60, %76 ]
  %80 = phi i32 [ %3, %48 ], [ %62, %76 ]
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %78 ]
  %83 = phi i32 [ %89, %81 ], [ %80, %78 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 -2
  %85 = load i16, ptr %84, align 2, !tbaa !51
  %86 = zext i16 %85 to i32
  %87 = tail call i32 @llvm.usub.sat.i32(i32 %86, i32 %3)
  %88 = trunc nuw i32 %87 to i16
  store i16 %88, ptr %84, align 2, !tbaa !51
  %89 = add i32 %83, -1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %81, !llvm.loop !118

91:                                               ; preds = %81, %76
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %92, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !19
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %24 = load i32, ptr %23, align 8, !tbaa !28
  switch i32 %24, label %30 [
    i32 42, label %25
    i32 57, label %25
    i32 69, label %25
    i32 73, label %25
    i32 91, label %25
    i32 103, label %25
    i32 113, label %25
    i32 666, label %25
  ]

25:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22
  %26 = getelementptr inbounds nuw i8, ptr %17, i64 204
  store i32 %1, ptr %26, align 4, !tbaa !59
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 192
  store i32 %2, ptr %27, align 8, !tbaa !57
  %28 = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i32 %3, ptr %28, align 8, !tbaa !61
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i32 %4, ptr %29, align 4, !tbaa !63
  br label %30

30:                                               ; preds = %15, %19, %22, %7, %11, %5, %25
  %31 = phi i32 [ 0, %25 ], [ -2, %5 ], [ -2, %11 ], [ -2, %7 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = lshr i64 %1, 3
  %4 = lshr i64 %1, 8
  %5 = lshr i64 %1, 9
  %6 = add i64 %1, 4
  %7 = add i64 %6, %3
  %8 = add i64 %7, %4
  %9 = add i64 %8, %5
  %10 = icmp ult i64 %9, %1
  %11 = select i1 %10, i64 -1, i64 %9
  %12 = lshr i64 %1, 5
  %13 = lshr i64 %1, 7
  %14 = lshr i64 %1, 11
  %15 = add i64 %1, 7
  %16 = add i64 %15, %12
  %17 = add i64 %16, %13
  %18 = add i64 %17, %14
  %19 = icmp ult i64 %18, %1
  %20 = select i1 %19, i64 -1, i64 %18
  %21 = icmp eq ptr %0, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !19
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %39 = load i32, ptr %38, align 8, !tbaa !28
  switch i32 %39, label %40 [
    i32 42, label %43
    i32 57, label %43
    i32 69, label %43
    i32 73, label %43
    i32 91, label %43
    i32 103, label %43
    i32 113, label %43
    i32 666, label %43
  ]

40:                                               ; preds = %2, %26, %22, %37, %34, %30
  %41 = tail call i64 @llvm.umax.i64(i64 %11, i64 %20)
  %42 = tail call i64 @llvm.uadd.sat.i64(i64 %41, i64 18)
  br label %121

43:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37
  %44 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %45 = load i32, ptr %44, align 8, !tbaa !29
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 true)
  switch i32 %46, label %91 [
    i32 0, label %92
    i32 1, label %47
    i32 2, label %52
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %32, i64 172
  %49 = load i32, ptr %48, align 4, !tbaa !64
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i64 6, i64 10
  br label %92

52:                                               ; preds = %43
  %53 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %54 = load ptr, ptr %53, align 8, !tbaa !91
  %55 = icmp eq ptr %54, null
  br i1 %55, label %92, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 24
  %58 = load ptr, ptr %57, align 8, !tbaa !104
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %62 = load i32, ptr %61, align 8, !tbaa !109
  %63 = add i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = add nuw nsw i64 %64, 18
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i64 [ %65, %60 ], [ 18, %56 ]
  %68 = getelementptr inbounds nuw i8, ptr %54, i64 40
  %69 = load ptr, ptr %68, align 8, !tbaa !105
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69)
  %73 = add i64 %72, %67
  %74 = add i64 %73, 1
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ %67, %66 ], [ %74, %71 ]
  %77 = getelementptr inbounds nuw i8, ptr %54, i64 56
  %78 = load ptr, ptr %77, align 8, !tbaa !106
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %78)
  %82 = add i64 %81, %76
  %83 = add i64 %82, 1
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi i64 [ %76, %75 ], [ %83, %80 ]
  %86 = getelementptr inbounds nuw i8, ptr %54, i64 68
  %87 = load i32, ptr %86, align 4, !tbaa !103
  %88 = icmp eq i32 %87, 0
  %89 = add i64 %85, 2
  %90 = select i1 %88, i64 %85, i64 %89
  br label %92

91:                                               ; preds = %43
  br label %92

92:                                               ; preds = %43, %52, %84, %91, %47
  %93 = phi i64 [ 18, %91 ], [ 18, %52 ], [ %51, %47 ], [ %90, %84 ], [ 0, %43 ]
  %94 = getelementptr inbounds nuw i8, ptr %32, i64 84
  %95 = load i32, ptr %94, align 4, !tbaa !30
  %96 = icmp eq i32 %95, 15
  %97 = getelementptr inbounds nuw i8, ptr %32, i64 136
  %98 = load i32, ptr %97, align 8, !tbaa !33
  %99 = icmp eq i32 %98, 15
  %100 = select i1 %96, i1 %99, i1 false
  br i1 %100, label %111, label %101

101:                                              ; preds = %92
  %102 = icmp ugt i32 %95, %98
  br i1 %102, label %107, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds nuw i8, ptr %32, i64 196
  %105 = load i32, ptr %104, align 4, !tbaa !47
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %101
  br label %108

108:                                              ; preds = %103, %107
  %109 = phi i64 [ %20, %107 ], [ %11, %103 ]
  %110 = tail call i64 @llvm.uadd.sat.i64(i64 %109, i64 %93)
  br label %121

111:                                              ; preds = %92
  %112 = lshr i64 %1, 12
  %113 = lshr i64 %1, 14
  %114 = lshr i64 %1, 25
  %115 = add i64 %15, %112
  %116 = add i64 %115, %113
  %117 = add i64 %116, %114
  %118 = add i64 %117, %93
  %119 = icmp ult i64 %118, %1
  %120 = select i1 %119, i64 -1, i64 %118
  br label %121

121:                                              ; preds = %111, %108, %40
  %122 = phi i64 [ %42, %40 ], [ %110, %108 ], [ %120, %111 ]
  ret i64 %122
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = tail call i64 @deflateBound_z(ptr noundef %0, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %3) #13
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !99
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %1
  %12 = trunc nuw i64 %9 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !98
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !98
  %19 = load ptr, ptr %15, align 8, !tbaa !89
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !89
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !100
  %23 = add i64 %22, %9
  store i64 %23, ptr %21, align 8, !tbaa !100
  %24 = load i32, ptr %6, align 8, !tbaa !99
  %25 = sub i32 %24, %12
  store i32 %25, ptr %6, align 8, !tbaa !99
  %26 = load i64, ptr %4, align 8, !tbaa !88
  %27 = sub i64 %26, %9
  store i64 %27, ptr %4, align 8, !tbaa !88
  %28 = icmp eq i64 %26, %9
  br i1 %28, label %29, label %32

29:                                               ; preds = %11
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  store ptr %31, ptr %15, align 8, !tbaa !89
  br label %32

32:                                               ; preds = %11, %29, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = add i64 %4, -5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %7 = load i32, ptr %6, align 8, !tbaa !31
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = load ptr, ptr %0, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !73
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %17 = icmp eq i32 %1, 4
  %18 = icmp ne i32 %1, 0
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %22

22:                                               ; preds = %182, %2
  %23 = load i32, ptr %14, align 4, !tbaa !92
  %24 = add i32 %23, 42
  %25 = lshr i32 %24, 3
  %26 = load ptr, ptr %0, align 8, !tbaa !19
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %28 = load i32, ptr %27, align 8, !tbaa !99
  %29 = icmp ult i32 %28, %25
  br i1 %29, label %185, label %30

30:                                               ; preds = %22
  %31 = sub nuw i32 %28, %25
  %32 = load i32, ptr %15, align 4, !tbaa !64
  %33 = load i64, ptr %16, align 8, !tbaa !65
  %34 = trunc i64 %33 to i32
  %35 = sub i32 %32, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %38 = load i32, ptr %37, align 8, !tbaa !73
  %39 = zext i32 %38 to i64
  %40 = add nuw nsw i64 %36, %39
  %41 = icmp samesign ult i64 %40, 65535
  %42 = add i32 %35, %38
  %43 = select i1 %41, i32 %42, i32 65535
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %31)
  %45 = icmp ult i32 %44, %10
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = icmp ne i32 %44, 0
  %48 = or i1 %17, %47
  %49 = icmp eq i32 %44, %42
  %50 = and i1 %48, %49
  %51 = and i1 %50, %18
  br i1 %51, label %52, label %185

52:                                               ; preds = %46, %30
  %53 = icmp eq i32 %44, %42
  %54 = and i1 %17, %53
  %55 = zext i1 %54 to i32
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %55) #13
  %56 = trunc i32 %44 to i8
  %57 = load ptr, ptr %19, align 8, !tbaa !42
  %58 = load i64, ptr %20, align 8, !tbaa !88
  %59 = getelementptr i8, ptr %57, i64 %58
  %60 = getelementptr i8, ptr %59, i64 -4
  store i8 %56, ptr %60, align 1, !tbaa !8
  %61 = lshr i32 %44, 8
  %62 = trunc i32 %61 to i8
  %63 = load ptr, ptr %19, align 8, !tbaa !42
  %64 = load i64, ptr %20, align 8, !tbaa !88
  %65 = getelementptr i8, ptr %63, i64 %64
  %66 = getelementptr i8, ptr %65, i64 -3
  store i8 %62, ptr %66, align 1, !tbaa !8
  %67 = xor i32 %44, -1
  %68 = trunc i32 %67 to i8
  %69 = load ptr, ptr %19, align 8, !tbaa !42
  %70 = load i64, ptr %20, align 8, !tbaa !88
  %71 = getelementptr i8, ptr %69, i64 %70
  %72 = getelementptr i8, ptr %71, i64 -2
  store i8 %68, ptr %72, align 1, !tbaa !8
  %73 = lshr i32 %67, 8
  %74 = trunc i32 %73 to i8
  %75 = load ptr, ptr %19, align 8, !tbaa !42
  %76 = load i64, ptr %20, align 8, !tbaa !88
  %77 = getelementptr i8, ptr %75, i64 %76
  %78 = getelementptr i8, ptr %77, i64 -1
  store i8 %74, ptr %78, align 1, !tbaa !8
  %79 = load ptr, ptr %0, align 8, !tbaa !19
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 56
  %81 = load ptr, ptr %80, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %81) #13
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 40
  %83 = load i64, ptr %82, align 8, !tbaa !88
  %84 = getelementptr inbounds nuw i8, ptr %79, i64 32
  %85 = load i32, ptr %84, align 8, !tbaa !99
  %86 = zext i32 %85 to i64
  %87 = tail call i64 @llvm.umin.i64(i64 %83, i64 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %52
  %90 = trunc nuw i64 %87 to i32
  %91 = getelementptr inbounds nuw i8, ptr %79, i64 24
  %92 = load ptr, ptr %91, align 8, !tbaa !98
  %93 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %94 = load ptr, ptr %93, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %92, ptr align 1 %94, i64 %87, i1 false)
  %95 = load ptr, ptr %91, align 8, !tbaa !98
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 %87
  store ptr %96, ptr %91, align 8, !tbaa !98
  %97 = load ptr, ptr %93, align 8, !tbaa !89
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 %87
  store ptr %98, ptr %93, align 8, !tbaa !89
  %99 = getelementptr inbounds nuw i8, ptr %79, i64 40
  %100 = load i64, ptr %99, align 8, !tbaa !100
  %101 = add i64 %100, %87
  store i64 %101, ptr %99, align 8, !tbaa !100
  %102 = load i32, ptr %84, align 8, !tbaa !99
  %103 = sub i32 %102, %90
  store i32 %103, ptr %84, align 8, !tbaa !99
  %104 = load i64, ptr %82, align 8, !tbaa !88
  %105 = sub i64 %104, %87
  store i64 %105, ptr %82, align 8, !tbaa !88
  %106 = icmp eq i64 %104, %87
  br i1 %106, label %107, label %110

107:                                              ; preds = %89
  %108 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %109 = load ptr, ptr %108, align 8, !tbaa !42
  store ptr %109, ptr %93, align 8, !tbaa !89
  br label %110

110:                                              ; preds = %52, %89, %107
  %111 = icmp eq i32 %32, %34
  br i1 %111, label %134, label %112

112:                                              ; preds = %110
  %113 = tail call i32 @llvm.umin.i32(i32 %35, i32 %44)
  %114 = load ptr, ptr %0, align 8, !tbaa !19
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 24
  %116 = load ptr, ptr %115, align 8, !tbaa !98
  %117 = load ptr, ptr %21, align 8, !tbaa !37
  %118 = load i64, ptr %16, align 8, !tbaa !65
  %119 = getelementptr inbounds i8, ptr %117, i64 %118
  %120 = zext i32 %113 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %116, ptr align 1 %119, i64 %120, i1 false)
  %121 = load ptr, ptr %0, align 8, !tbaa !19
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 24
  %123 = load ptr, ptr %122, align 8, !tbaa !98
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 %120
  store ptr %124, ptr %122, align 8, !tbaa !98
  %125 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %126 = load i32, ptr %125, align 8, !tbaa !99
  %127 = sub i32 %126, %113
  store i32 %127, ptr %125, align 8, !tbaa !99
  %128 = getelementptr inbounds nuw i8, ptr %121, i64 40
  %129 = load i64, ptr %128, align 8, !tbaa !100
  %130 = add i64 %129, %120
  store i64 %130, ptr %128, align 8, !tbaa !100
  %131 = load i64, ptr %16, align 8, !tbaa !65
  %132 = add nsw i64 %131, %120
  store i64 %132, ptr %16, align 8, !tbaa !65
  %133 = sub i32 %44, %113
  br label %134

134:                                              ; preds = %112, %110
  %135 = phi i32 [ %133, %112 ], [ %44, %110 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %182, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %0, align 8, !tbaa !19
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !98
  %141 = getelementptr inbounds nuw i8, ptr %138, i64 8
  %142 = load i32, ptr %141, align 8, !tbaa !73
  %143 = tail call i32 @llvm.umin.i32(i32 %142, i32 %135)
  %144 = icmp eq i32 %142, 0
  br i1 %144, label %170, label %145

145:                                              ; preds = %137
  %146 = sub i32 %142, %143
  store i32 %146, ptr %141, align 8, !tbaa !73
  %147 = load ptr, ptr %138, align 8, !tbaa !74
  %148 = zext i32 %143 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %147, i64 %148, i1 false)
  %149 = getelementptr inbounds nuw i8, ptr %138, i64 56
  %150 = load ptr, ptr %149, align 8, !tbaa !18
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 48
  %152 = load i32, ptr %151, align 8, !tbaa !29
  switch i32 %152, label %161 [
    i32 1, label %153
    i32 2, label %157
  ]

153:                                              ; preds = %145
  %154 = getelementptr inbounds nuw i8, ptr %138, i64 96
  %155 = load i64, ptr %154, align 8, !tbaa !72
  %156 = tail call i64 @adler32(i64 noundef %155, ptr noundef %140, i32 noundef %143) #13
  store i64 %156, ptr %154, align 8, !tbaa !72
  br label %161

157:                                              ; preds = %145
  %158 = getelementptr inbounds nuw i8, ptr %138, i64 96
  %159 = load i64, ptr %158, align 8, !tbaa !72
  %160 = tail call i64 @crc32(i64 noundef %159, ptr noundef %140, i32 noundef %143) #13
  store i64 %160, ptr %158, align 8, !tbaa !72
  br label %161

161:                                              ; preds = %157, %153, %145
  %162 = load ptr, ptr %138, align 8, !tbaa !74
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 %148
  store ptr %163, ptr %138, align 8, !tbaa !74
  %164 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %165 = load i64, ptr %164, align 8, !tbaa !84
  %166 = add i64 %165, %148
  store i64 %166, ptr %164, align 8, !tbaa !84
  %167 = load ptr, ptr %0, align 8, !tbaa !19
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 24
  %169 = load ptr, ptr %168, align 8, !tbaa !98
  br label %170

170:                                              ; preds = %137, %161
  %171 = phi ptr [ %140, %137 ], [ %169, %161 ]
  %172 = phi ptr [ %138, %137 ], [ %167, %161 ]
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 24
  %174 = zext i32 %135 to i64
  %175 = getelementptr inbounds nuw i8, ptr %171, i64 %174
  store ptr %175, ptr %173, align 8, !tbaa !98
  %176 = getelementptr inbounds nuw i8, ptr %172, i64 32
  %177 = load i32, ptr %176, align 8, !tbaa !99
  %178 = sub i32 %177, %135
  store i32 %178, ptr %176, align 8, !tbaa !99
  %179 = getelementptr inbounds nuw i8, ptr %172, i64 40
  %180 = load i64, ptr %179, align 8, !tbaa !100
  %181 = add i64 %180, %174
  store i64 %181, ptr %179, align 8, !tbaa !100
  br label %182

182:                                              ; preds = %134, %170
  br i1 %54, label %183, label %22, !llvm.loop !119

183:                                              ; preds = %182
  %184 = load ptr, ptr %0, align 8, !tbaa !19
  br label %185, !llvm.loop !119

185:                                              ; preds = %46, %22, %183
  %186 = phi ptr [ %184, %183 ], [ %26, %22 ], [ %26, %46 ]
  %187 = phi i1 [ false, %183 ], [ true, %22 ], [ true, %46 ]
  %188 = getelementptr inbounds nuw i8, ptr %186, i64 8
  %189 = load i32, ptr %188, align 8, !tbaa !73
  %190 = sub i32 %13, %189
  %191 = icmp eq i32 %13, %189
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i32, ptr %15, align 4, !tbaa !64
  %194 = zext i32 %193 to i64
  br label %252

195:                                              ; preds = %185
  %196 = load i32, ptr %6, align 8, !tbaa !31
  %197 = icmp ult i32 %190, %196
  br i1 %197, label %207, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %199, align 8, !tbaa !97
  %200 = load ptr, ptr %21, align 8, !tbaa !37
  %201 = load ptr, ptr %186, align 8, !tbaa !74
  %202 = zext i32 %196 to i64
  %203 = sub nsw i64 0, %202
  %204 = getelementptr inbounds i8, ptr %201, i64 %203
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %200, ptr align 1 %204, i64 %202, i1 false)
  %205 = load i32, ptr %6, align 8, !tbaa !31
  store i32 %205, ptr %15, align 4, !tbaa !64
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %205, ptr %206, align 4, !tbaa !67
  br label %249

207:                                              ; preds = %195
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %209 = load i64, ptr %208, align 8, !tbaa !50
  %210 = load i32, ptr %15, align 4, !tbaa !64
  %211 = zext i32 %210 to i64
  %212 = sub i64 %209, %211
  %213 = zext i32 %190 to i64
  %214 = icmp ugt i64 %212, %213
  br i1 %214, label %232, label %215

215:                                              ; preds = %207
  %216 = sub i32 %210, %196
  store i32 %216, ptr %15, align 4, !tbaa !64
  %217 = load ptr, ptr %21, align 8, !tbaa !37
  %218 = zext i32 %196 to i64
  %219 = getelementptr inbounds nuw i8, ptr %217, i64 %218
  %220 = zext i32 %216 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %217, ptr nonnull align 1 %219, i64 %220, i1 false)
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %222 = load i32, ptr %221, align 8, !tbaa !97
  %223 = icmp ult i32 %222, 2
  br i1 %223, label %224, label %226

224:                                              ; preds = %215
  %225 = add nuw nsw i32 %222, 1
  store i32 %225, ptr %221, align 8, !tbaa !97
  br label %226

226:                                              ; preds = %224, %215
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %228 = load i32, ptr %227, align 4, !tbaa !67
  %229 = load i32, ptr %15, align 4, !tbaa !64
  %230 = icmp ugt i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  store i32 %229, ptr %227, align 4, !tbaa !67
  br label %232

232:                                              ; preds = %226, %231, %207
  %233 = phi i32 [ %229, %226 ], [ %229, %231 ], [ %210, %207 ]
  %234 = load ptr, ptr %21, align 8, !tbaa !37
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 %235
  %237 = load ptr, ptr %0, align 8, !tbaa !19
  %238 = load ptr, ptr %237, align 8, !tbaa !74
  %239 = sub nsw i64 0, %213
  %240 = getelementptr inbounds i8, ptr %238, i64 %239
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %236, ptr nonnull align 1 %240, i64 %213, i1 false)
  %241 = load i32, ptr %15, align 4, !tbaa !64
  %242 = add i32 %241, %190
  store i32 %242, ptr %15, align 4, !tbaa !64
  %243 = load i32, ptr %6, align 8, !tbaa !31
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %245 = load i32, ptr %244, align 4, !tbaa !67
  %246 = sub i32 %243, %245
  %247 = tail call i32 @llvm.umin.i32(i32 %190, i32 %246)
  %248 = add i32 %247, %245
  store i32 %248, ptr %244, align 4, !tbaa !67
  br label %249

249:                                              ; preds = %232, %198
  %250 = phi i32 [ %242, %232 ], [ %205, %198 ]
  %251 = zext i32 %250 to i64
  store i64 %251, ptr %16, align 8, !tbaa !65
  br label %252

252:                                              ; preds = %192, %249
  %253 = phi i64 [ %194, %192 ], [ %251, %249 ]
  %254 = phi i32 [ %193, %192 ], [ %250, %249 ]
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %256 = load i64, ptr %255, align 8, !tbaa !40
  %257 = icmp ult i64 %256, %253
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  store i64 %253, ptr %255, align 8, !tbaa !40
  br label %259

259:                                              ; preds = %258, %252
  br i1 %187, label %260, label %423

260:                                              ; preds = %259
  switch i32 %1, label %261 [
    i32 4, label %269
    i32 0, label %269
  ]

261:                                              ; preds = %260
  %262 = load ptr, ptr %0, align 8, !tbaa !19
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %264 = load i32, ptr %263, align 8, !tbaa !73
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load i64, ptr %16, align 8, !tbaa !65
  %268 = icmp eq i64 %267, %253
  br i1 %268, label %426, label %269

269:                                              ; preds = %260, %260, %266, %261
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %271 = load i64, ptr %270, align 8, !tbaa !50
  %272 = trunc i64 %271 to i32
  %273 = sub i32 %272, %254
  %274 = load ptr, ptr %0, align 8, !tbaa !19
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 8
  %276 = load i32, ptr %275, align 8, !tbaa !73
  %277 = icmp ugt i32 %276, %273
  br i1 %277, label %278, label %302

278:                                              ; preds = %269
  %279 = load i64, ptr %16, align 8, !tbaa !65
  %280 = load i32, ptr %6, align 8, !tbaa !31
  %281 = zext i32 %280 to i64
  %282 = icmp slt i64 %279, %281
  br i1 %282, label %302, label %283

283:                                              ; preds = %278
  %284 = sub nsw i64 %279, %281
  store i64 %284, ptr %16, align 8, !tbaa !65
  %285 = sub i32 %254, %280
  store i32 %285, ptr %15, align 4, !tbaa !64
  %286 = load ptr, ptr %21, align 8, !tbaa !37
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 %281
  %288 = zext i32 %285 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %286, ptr align 1 %287, i64 %288, i1 false)
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %290 = load i32, ptr %289, align 8, !tbaa !97
  %291 = icmp ult i32 %290, 2
  br i1 %291, label %292, label %294

292:                                              ; preds = %283
  %293 = add nuw nsw i32 %290, 1
  store i32 %293, ptr %289, align 8, !tbaa !97
  br label %294

294:                                              ; preds = %292, %283
  %295 = load i32, ptr %6, align 8, !tbaa !31
  %296 = add i32 %295, %273
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %298 = load i32, ptr %297, align 4, !tbaa !67
  %299 = load i32, ptr %15, align 4, !tbaa !64
  %300 = icmp ugt i32 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %294
  store i32 %299, ptr %297, align 4, !tbaa !67
  br label %302

302:                                              ; preds = %294, %301, %278, %269
  %303 = phi i32 [ %299, %301 ], [ %299, %294 ], [ %254, %278 ], [ %254, %269 ]
  %304 = phi i32 [ %296, %301 ], [ %296, %294 ], [ %273, %278 ], [ %273, %269 ]
  %305 = load ptr, ptr %0, align 8, !tbaa !19
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 8
  %307 = load i32, ptr %306, align 8, !tbaa !73
  %308 = tail call i32 @llvm.umin.i32(i32 %304, i32 %307)
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %343, label %310

310:                                              ; preds = %302
  %311 = load ptr, ptr %21, align 8, !tbaa !37
  %312 = zext i32 %303 to i64
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  %314 = sub i32 %307, %308
  store i32 %314, ptr %306, align 8, !tbaa !73
  %315 = load ptr, ptr %305, align 8, !tbaa !74
  %316 = zext i32 %308 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %313, ptr align 1 %315, i64 %316, i1 false)
  %317 = getelementptr inbounds nuw i8, ptr %305, i64 56
  %318 = load ptr, ptr %317, align 8, !tbaa !18
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 48
  %320 = load i32, ptr %319, align 8, !tbaa !29
  switch i32 %320, label %329 [
    i32 1, label %321
    i32 2, label %325
  ]

321:                                              ; preds = %310
  %322 = getelementptr inbounds nuw i8, ptr %305, i64 96
  %323 = load i64, ptr %322, align 8, !tbaa !72
  %324 = tail call i64 @adler32(i64 noundef %323, ptr noundef %313, i32 noundef %308) #13
  store i64 %324, ptr %322, align 8, !tbaa !72
  br label %329

325:                                              ; preds = %310
  %326 = getelementptr inbounds nuw i8, ptr %305, i64 96
  %327 = load i64, ptr %326, align 8, !tbaa !72
  %328 = tail call i64 @crc32(i64 noundef %327, ptr noundef %313, i32 noundef %308) #13
  store i64 %328, ptr %326, align 8, !tbaa !72
  br label %329

329:                                              ; preds = %310, %321, %325
  %330 = load ptr, ptr %305, align 8, !tbaa !74
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 %316
  store ptr %331, ptr %305, align 8, !tbaa !74
  %332 = getelementptr inbounds nuw i8, ptr %305, i64 16
  %333 = load i64, ptr %332, align 8, !tbaa !84
  %334 = add i64 %333, %316
  store i64 %334, ptr %332, align 8, !tbaa !84
  %335 = load i32, ptr %15, align 4, !tbaa !64
  %336 = add i32 %335, %308
  store i32 %336, ptr %15, align 4, !tbaa !64
  %337 = load i32, ptr %6, align 8, !tbaa !31
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %339 = load i32, ptr %338, align 4, !tbaa !67
  %340 = sub i32 %337, %339
  %341 = tail call i32 @llvm.umin.i32(i32 %308, i32 %340)
  %342 = add i32 %341, %339
  store i32 %342, ptr %338, align 4, !tbaa !67
  br label %343

343:                                              ; preds = %329, %302
  %344 = phi i32 [ %336, %329 ], [ %303, %302 ]
  %345 = load i64, ptr %255, align 8, !tbaa !40
  %346 = zext i32 %344 to i64
  %347 = icmp ult i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %343
  store i64 %346, ptr %255, align 8, !tbaa !40
  br label %349

349:                                              ; preds = %348, %343
  %350 = load i32, ptr %14, align 4, !tbaa !92
  %351 = add i32 %350, 42
  %352 = lshr i32 %351, 3
  %353 = load i64, ptr %3, align 8, !tbaa !43
  %354 = zext nneg i32 %352 to i64
  %355 = sub i64 %353, %354
  %356 = tail call i64 @llvm.umin.i64(i64 %355, i64 65535)
  %357 = trunc nuw nsw i64 %356 to i32
  %358 = load i32, ptr %6, align 8, !tbaa !31
  %359 = tail call i32 @llvm.umin.i32(i32 %358, i32 %357)
  %360 = load i64, ptr %16, align 8, !tbaa !65
  %361 = trunc i64 %360 to i32
  %362 = sub i32 %344, %361
  %363 = icmp ult i32 %362, %359
  br i1 %363, label %364, label %373

364:                                              ; preds = %349
  %365 = icmp ne i32 %344, %361
  %366 = or i1 %17, %365
  %367 = and i1 %18, %366
  br i1 %367, label %368, label %426

368:                                              ; preds = %364
  %369 = load ptr, ptr %0, align 8, !tbaa !19
  %370 = getelementptr inbounds nuw i8, ptr %369, i64 8
  %371 = load i32, ptr %370, align 8, !tbaa !73
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %426

373:                                              ; preds = %368, %349
  %374 = tail call i32 @llvm.umin.i32(i32 %362, i32 %357)
  br i1 %17, label %375, label %383

375:                                              ; preds = %373
  %376 = load ptr, ptr %0, align 8, !tbaa !19
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 8
  %378 = load i32, ptr %377, align 8, !tbaa !73
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = icmp ule i32 %362, %357
  %382 = zext i1 %381 to i32
  br label %383

383:                                              ; preds = %380, %375, %373
  %384 = phi i32 [ 0, %375 ], [ 0, %373 ], [ %382, %380 ]
  %385 = load ptr, ptr %21, align 8, !tbaa !37
  %386 = getelementptr inbounds i8, ptr %385, i64 %360
  %387 = zext nneg i32 %374 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %386, i64 noundef %387, i32 noundef %384) #13
  %388 = load i64, ptr %16, align 8, !tbaa !65
  %389 = add nsw i64 %388, %387
  store i64 %389, ptr %16, align 8, !tbaa !65
  %390 = load ptr, ptr %0, align 8, !tbaa !19
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 56
  %392 = load ptr, ptr %391, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %392) #13
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 40
  %394 = load i64, ptr %393, align 8, !tbaa !88
  %395 = getelementptr inbounds nuw i8, ptr %390, i64 32
  %396 = load i32, ptr %395, align 8, !tbaa !99
  %397 = zext i32 %396 to i64
  %398 = tail call i64 @llvm.umin.i64(i64 %394, i64 %397)
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %421, label %400

400:                                              ; preds = %383
  %401 = trunc nuw i64 %398 to i32
  %402 = getelementptr inbounds nuw i8, ptr %390, i64 24
  %403 = load ptr, ptr %402, align 8, !tbaa !98
  %404 = getelementptr inbounds nuw i8, ptr %392, i64 32
  %405 = load ptr, ptr %404, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %403, ptr align 1 %405, i64 %398, i1 false)
  %406 = load ptr, ptr %402, align 8, !tbaa !98
  %407 = getelementptr inbounds nuw i8, ptr %406, i64 %398
  store ptr %407, ptr %402, align 8, !tbaa !98
  %408 = load ptr, ptr %404, align 8, !tbaa !89
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %398
  store ptr %409, ptr %404, align 8, !tbaa !89
  %410 = getelementptr inbounds nuw i8, ptr %390, i64 40
  %411 = load i64, ptr %410, align 8, !tbaa !100
  %412 = add i64 %411, %398
  store i64 %412, ptr %410, align 8, !tbaa !100
  %413 = load i32, ptr %395, align 8, !tbaa !99
  %414 = sub i32 %413, %401
  store i32 %414, ptr %395, align 8, !tbaa !99
  %415 = load i64, ptr %393, align 8, !tbaa !88
  %416 = sub i64 %415, %398
  store i64 %416, ptr %393, align 8, !tbaa !88
  %417 = icmp eq i64 %415, %398
  br i1 %417, label %418, label %421

418:                                              ; preds = %400
  %419 = getelementptr inbounds nuw i8, ptr %392, i64 16
  %420 = load ptr, ptr %419, align 8, !tbaa !42
  store ptr %420, ptr %404, align 8, !tbaa !89
  br label %421

421:                                              ; preds = %383, %400, %418
  %422 = icmp eq i32 %384, 0
  br i1 %422, label %426, label %423

423:                                              ; preds = %421, %259
  %424 = phi i32 [ 3, %259 ], [ 2, %421 ]
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %425, align 8, !tbaa !93
  br label %426

426:                                              ; preds = %423, %421, %368, %364, %266
  %427 = phi i32 [ 0, %368 ], [ 1, %266 ], [ 0, %364 ], [ 0, %421 ], [ %424, %423 ]
  ret i32 %427
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %12

12:                                               ; preds = %101, %2
  %13 = load i32, ptr %3, align 4, !tbaa !66
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %16 = load i32, ptr %3, align 4, !tbaa !66
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %210, label %102

20:                                               ; preds = %15, %12
  store i32 0, ptr %4, align 8, !tbaa !69
  %21 = load ptr, ptr %5, align 8, !tbaa !37
  %22 = load i32, ptr %6, align 4, !tbaa !64
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !8
  %26 = load ptr, ptr %7, align 8, !tbaa !45
  %27 = load i32, ptr %8, align 4, !tbaa !120
  %28 = add i32 %27, 1
  store i32 %28, ptr %8, align 4, !tbaa !120
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds nuw i8, ptr %26, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !8
  %31 = load ptr, ptr %7, align 8, !tbaa !45
  %32 = load i32, ptr %8, align 4, !tbaa !120
  %33 = add i32 %32, 1
  store i32 %33, ptr %8, align 4, !tbaa !120
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !8
  %36 = load ptr, ptr %7, align 8, !tbaa !45
  %37 = load i32, ptr %8, align 4, !tbaa !120
  %38 = add i32 %37, 1
  store i32 %38, ptr %8, align 4, !tbaa !120
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds nuw i8, ptr %36, i64 %39
  store i8 %25, ptr %40, align 1, !tbaa !8
  %41 = zext i8 %25 to i64, !nosanitize !54
  %42 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %41
  %43 = load i16, ptr %42, align 4, !tbaa !8
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4, !tbaa !8
  %45 = load i32, ptr %8, align 4, !tbaa !120
  %46 = load i32, ptr %10, align 8, !tbaa !46
  %47 = icmp eq i32 %45, %46
  %48 = load i32, ptr %3, align 4, !tbaa !66
  %49 = add i32 %48, -1
  store i32 %49, ptr %3, align 4, !tbaa !66
  %50 = load i32, ptr %6, align 4, !tbaa !64
  %51 = add i32 %50, 1
  store i32 %51, ptr %6, align 4, !tbaa !64
  br i1 %47, label %52, label %101

52:                                               ; preds = %20
  %53 = load i64, ptr %11, align 8, !tbaa !65
  %54 = icmp sgt i64 %53, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load ptr, ptr %5, align 8, !tbaa !37
  %57 = and i64 %53, 4294967295
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 %57
  br label %59

59:                                               ; preds = %52, %55
  %60 = phi ptr [ %58, %55 ], [ null, %52 ]
  %61 = zext i32 %51 to i64
  %62 = sub nsw i64 %61, %53
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %60, i64 noundef %62, i32 noundef 0) #13
  %63 = load i32, ptr %6, align 4, !tbaa !64
  %64 = zext i32 %63 to i64
  store i64 %64, ptr %11, align 8, !tbaa !65
  %65 = load ptr, ptr %0, align 8, !tbaa !19
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 56
  %67 = load ptr, ptr %66, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %67) #13
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 40
  %69 = load i64, ptr %68, align 8, !tbaa !88
  %70 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %71 = load i32, ptr %70, align 8, !tbaa !99
  %72 = zext i32 %71 to i64
  %73 = tail call i64 @llvm.umin.i64(i64 %69, i64 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %59
  %76 = trunc nuw i64 %73 to i32
  %77 = getelementptr inbounds nuw i8, ptr %65, i64 24
  %78 = load ptr, ptr %77, align 8, !tbaa !98
  %79 = getelementptr inbounds nuw i8, ptr %67, i64 32
  %80 = load ptr, ptr %79, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %78, ptr align 1 %80, i64 %73, i1 false)
  %81 = load ptr, ptr %77, align 8, !tbaa !98
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 %73
  store ptr %82, ptr %77, align 8, !tbaa !98
  %83 = load ptr, ptr %79, align 8, !tbaa !89
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 %73
  store ptr %84, ptr %79, align 8, !tbaa !89
  %85 = getelementptr inbounds nuw i8, ptr %65, i64 40
  %86 = load i64, ptr %85, align 8, !tbaa !100
  %87 = add i64 %86, %73
  store i64 %87, ptr %85, align 8, !tbaa !100
  %88 = load i32, ptr %70, align 8, !tbaa !99
  %89 = sub i32 %88, %76
  store i32 %89, ptr %70, align 8, !tbaa !99
  %90 = load i64, ptr %68, align 8, !tbaa !88
  %91 = sub i64 %90, %73
  store i64 %91, ptr %68, align 8, !tbaa !88
  %92 = icmp eq i64 %90, %73
  br i1 %92, label %93, label %96

93:                                               ; preds = %75
  %94 = getelementptr inbounds nuw i8, ptr %67, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !42
  store ptr %95, ptr %79, align 8, !tbaa !89
  br label %96

96:                                               ; preds = %59, %75, %93
  %97 = load ptr, ptr %0, align 8, !tbaa !19
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 32
  %99 = load i32, ptr %98, align 8, !tbaa !99
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %210, label %101

101:                                              ; preds = %96, %20
  br label %12

102:                                              ; preds = %18
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 0, ptr %103, align 4, !tbaa !67
  %104 = icmp eq i32 %1, 4
  br i1 %104, label %105, label %156

105:                                              ; preds = %102
  %106 = load i64, ptr %11, align 8, !tbaa !65
  %107 = icmp sgt i64 %106, -1
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load ptr, ptr %5, align 8, !tbaa !37
  %110 = and i64 %106, 4294967295
  %111 = getelementptr inbounds nuw i8, ptr %109, i64 %110
  br label %112

112:                                              ; preds = %105, %108
  %113 = phi ptr [ %111, %108 ], [ null, %105 ]
  %114 = load i32, ptr %6, align 4, !tbaa !64
  %115 = zext i32 %114 to i64
  %116 = sub nsw i64 %115, %106
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %113, i64 noundef %116, i32 noundef 1) #13
  %117 = load i32, ptr %6, align 4, !tbaa !64
  %118 = zext i32 %117 to i64
  store i64 %118, ptr %11, align 8, !tbaa !65
  %119 = load ptr, ptr %0, align 8, !tbaa !19
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 56
  %121 = load ptr, ptr %120, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %121) #13
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 40
  %123 = load i64, ptr %122, align 8, !tbaa !88
  %124 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %125 = load i32, ptr %124, align 8, !tbaa !99
  %126 = zext i32 %125 to i64
  %127 = tail call i64 @llvm.umin.i64(i64 %123, i64 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %150, label %129

129:                                              ; preds = %112
  %130 = trunc nuw i64 %127 to i32
  %131 = getelementptr inbounds nuw i8, ptr %119, i64 24
  %132 = load ptr, ptr %131, align 8, !tbaa !98
  %133 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %134 = load ptr, ptr %133, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %132, ptr align 1 %134, i64 %127, i1 false)
  %135 = load ptr, ptr %131, align 8, !tbaa !98
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 %127
  store ptr %136, ptr %131, align 8, !tbaa !98
  %137 = load ptr, ptr %133, align 8, !tbaa !89
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 %127
  store ptr %138, ptr %133, align 8, !tbaa !89
  %139 = getelementptr inbounds nuw i8, ptr %119, i64 40
  %140 = load i64, ptr %139, align 8, !tbaa !100
  %141 = add i64 %140, %127
  store i64 %141, ptr %139, align 8, !tbaa !100
  %142 = load i32, ptr %124, align 8, !tbaa !99
  %143 = sub i32 %142, %130
  store i32 %143, ptr %124, align 8, !tbaa !99
  %144 = load i64, ptr %122, align 8, !tbaa !88
  %145 = sub i64 %144, %127
  store i64 %145, ptr %122, align 8, !tbaa !88
  %146 = icmp eq i64 %144, %127
  br i1 %146, label %147, label %150

147:                                              ; preds = %129
  %148 = getelementptr inbounds nuw i8, ptr %121, i64 16
  %149 = load ptr, ptr %148, align 8, !tbaa !42
  store ptr %149, ptr %133, align 8, !tbaa !89
  br label %150

150:                                              ; preds = %112, %129, %147
  %151 = load ptr, ptr %0, align 8, !tbaa !19
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 32
  %153 = load i32, ptr %152, align 8, !tbaa !99
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %154, i32 2, i32 3
  br label %210

156:                                              ; preds = %102
  %157 = load i32, ptr %8, align 4, !tbaa !120
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %209, label %159

159:                                              ; preds = %156
  %160 = load i64, ptr %11, align 8, !tbaa !65
  %161 = icmp sgt i64 %160, -1
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load ptr, ptr %5, align 8, !tbaa !37
  %164 = and i64 %160, 4294967295
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 %164
  br label %166

166:                                              ; preds = %159, %162
  %167 = phi ptr [ %165, %162 ], [ null, %159 ]
  %168 = load i32, ptr %6, align 4, !tbaa !64
  %169 = zext i32 %168 to i64
  %170 = sub nsw i64 %169, %160
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %167, i64 noundef %170, i32 noundef 0) #13
  %171 = load i32, ptr %6, align 4, !tbaa !64
  %172 = zext i32 %171 to i64
  store i64 %172, ptr %11, align 8, !tbaa !65
  %173 = load ptr, ptr %0, align 8, !tbaa !19
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 56
  %175 = load ptr, ptr %174, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %175) #13
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 40
  %177 = load i64, ptr %176, align 8, !tbaa !88
  %178 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %179 = load i32, ptr %178, align 8, !tbaa !99
  %180 = zext i32 %179 to i64
  %181 = tail call i64 @llvm.umin.i64(i64 %177, i64 %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %204, label %183

183:                                              ; preds = %166
  %184 = trunc nuw i64 %181 to i32
  %185 = getelementptr inbounds nuw i8, ptr %173, i64 24
  %186 = load ptr, ptr %185, align 8, !tbaa !98
  %187 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %188 = load ptr, ptr %187, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %186, ptr align 1 %188, i64 %181, i1 false)
  %189 = load ptr, ptr %185, align 8, !tbaa !98
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 %181
  store ptr %190, ptr %185, align 8, !tbaa !98
  %191 = load ptr, ptr %187, align 8, !tbaa !89
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 %181
  store ptr %192, ptr %187, align 8, !tbaa !89
  %193 = getelementptr inbounds nuw i8, ptr %173, i64 40
  %194 = load i64, ptr %193, align 8, !tbaa !100
  %195 = add i64 %194, %181
  store i64 %195, ptr %193, align 8, !tbaa !100
  %196 = load i32, ptr %178, align 8, !tbaa !99
  %197 = sub i32 %196, %184
  store i32 %197, ptr %178, align 8, !tbaa !99
  %198 = load i64, ptr %176, align 8, !tbaa !88
  %199 = sub i64 %198, %181
  store i64 %199, ptr %176, align 8, !tbaa !88
  %200 = icmp eq i64 %198, %181
  br i1 %200, label %201, label %204

201:                                              ; preds = %183
  %202 = getelementptr inbounds nuw i8, ptr %175, i64 16
  %203 = load ptr, ptr %202, align 8, !tbaa !42
  store ptr %203, ptr %187, align 8, !tbaa !89
  br label %204

204:                                              ; preds = %166, %183, %201
  %205 = load ptr, ptr %0, align 8, !tbaa !19
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 32
  %207 = load i32, ptr %206, align 8, !tbaa !99
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %204, %156
  br label %210

210:                                              ; preds = %96, %204, %150, %18, %209
  %211 = phi i32 [ 0, %18 ], [ %155, %150 ], [ 0, %204 ], [ 1, %209 ], [ 0, %96 ]
  ret i32 %211
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %15

15:                                               ; preds = %154, %2
  %16 = load i32, ptr %3, align 4, !tbaa !66
  %17 = icmp ult i32 %16, 259
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  store i32 0, ptr %4, align 8, !tbaa !69
  %19 = load i32, ptr %6, align 4, !tbaa !64
  br label %29

20:                                               ; preds = %15
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %21 = load i32, ptr %3, align 4, !tbaa !66
  %22 = icmp ult i32 %21, 259
  %23 = and i1 %5, %22
  br i1 %23, label %348, label %24

24:                                               ; preds = %20
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %240, label %26

26:                                               ; preds = %24
  store i32 0, ptr %4, align 8, !tbaa !69
  %27 = icmp ugt i32 %21, 2
  %28 = load i32, ptr %6, align 4, !tbaa !64
  br i1 %27, label %29, label %155

29:                                               ; preds = %18, %26
  %30 = phi i32 [ %19, %18 ], [ %28, %26 ]
  %31 = phi i32 [ %16, %18 ], [ %21, %26 ]
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %155, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 8, !tbaa !37
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  %37 = getelementptr inbounds i8, ptr %36, i64 -1
  %38 = load i8, ptr %37, align 1, !tbaa !8
  %39 = load i8, ptr %36, align 1, !tbaa !8
  %40 = icmp eq i8 %38, %39
  br i1 %40, label %41, label %155

41:                                               ; preds = %33
  %42 = getelementptr inbounds nuw i8, ptr %36, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !8
  %44 = icmp eq i8 %38, %43
  br i1 %44, label %45, label %155

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %36, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !8
  %48 = icmp eq i8 %38, %47
  br i1 %48, label %49, label %155

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %36, i64 258
  br label %51

51:                                               ; preds = %81, %49
  %52 = phi i64 [ 2, %49 ], [ %82, %81 ]
  %53 = getelementptr inbounds nuw i8, ptr %36, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !8
  %56 = icmp eq i8 %38, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %51
  %58 = getelementptr inbounds nuw i8, ptr %53, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !8
  %60 = icmp eq i8 %38, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %53, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !8
  %64 = icmp eq i8 %38, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw i8, ptr %53, i64 4
  %67 = load i8, ptr %66, align 1, !tbaa !8
  %68 = icmp eq i8 %38, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %53, i64 5
  %71 = load i8, ptr %70, align 1, !tbaa !8
  %72 = icmp eq i8 %38, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %53, i64 6
  %75 = load i8, ptr %74, align 1, !tbaa !8
  %76 = icmp eq i8 %38, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %53, i64 7
  %79 = load i8, ptr %78, align 1, !tbaa !8
  %80 = icmp eq i8 %38, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = add nuw nsw i64 %52, 8
  %83 = getelementptr inbounds nuw i8, ptr %36, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !8
  %85 = icmp eq i8 %38, %84
  %86 = icmp samesign ult i64 %52, 250
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %51, label %88, !llvm.loop !121

88:                                               ; preds = %81
  %89 = getelementptr inbounds nuw i8, ptr %36, i64 %82
  br label %104

90:                                               ; preds = %77
  %91 = getelementptr inbounds nuw i8, ptr %53, i64 7
  br label %104

92:                                               ; preds = %73
  %93 = getelementptr inbounds nuw i8, ptr %53, i64 6
  br label %104

94:                                               ; preds = %69
  %95 = getelementptr inbounds nuw i8, ptr %53, i64 5
  br label %104

96:                                               ; preds = %65
  %97 = getelementptr inbounds nuw i8, ptr %53, i64 4
  br label %104

98:                                               ; preds = %61
  %99 = getelementptr inbounds nuw i8, ptr %53, i64 3
  br label %104

100:                                              ; preds = %57
  %101 = getelementptr inbounds nuw i8, ptr %53, i64 2
  br label %104

102:                                              ; preds = %51
  %103 = getelementptr inbounds nuw i8, ptr %53, i64 1
  br label %104

104:                                              ; preds = %102, %100, %98, %96, %94, %92, %90, %88
  %105 = phi ptr [ %97, %96 ], [ %95, %94 ], [ %99, %98 ], [ %101, %100 ], [ %89, %88 ], [ %91, %90 ], [ %93, %92 ], [ %103, %102 ]
  %106 = ptrtoint ptr %50 to i64
  %107 = ptrtoint ptr %105 to i64
  %108 = sub i64 %107, %106
  %109 = trunc i64 %108 to i32
  %110 = add i32 %109, 258
  %111 = tail call i32 @llvm.umin.i32(i32 %110, i32 %31)
  store i32 %111, ptr %4, align 8
  %112 = icmp ugt i32 %111, 2
  %113 = load i32, ptr %9, align 4, !tbaa !120
  br i1 %112, label %114, label %158

114:                                              ; preds = %104
  %115 = trunc i32 %111 to i8
  %116 = add i8 %115, -3
  %117 = load ptr, ptr %8, align 8, !tbaa !45
  %118 = add i32 %113, 1
  store i32 %118, ptr %9, align 4, !tbaa !120
  %119 = zext i32 %113 to i64
  %120 = getelementptr inbounds nuw i8, ptr %117, i64 %119
  store i8 1, ptr %120, align 1, !tbaa !8
  %121 = load ptr, ptr %8, align 8, !tbaa !45
  %122 = load i32, ptr %9, align 4, !tbaa !120
  %123 = add i32 %122, 1
  store i32 %123, ptr %9, align 4, !tbaa !120
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds nuw i8, ptr %121, i64 %124
  store i8 0, ptr %125, align 1, !tbaa !8
  %126 = load ptr, ptr %8, align 8, !tbaa !45
  %127 = load i32, ptr %9, align 4, !tbaa !120
  %128 = add i32 %127, 1
  store i32 %128, ptr %9, align 4, !tbaa !120
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds nuw i8, ptr %126, i64 %129
  store i8 %116, ptr %130, align 1, !tbaa !8
  %131 = zext i8 %116 to i64
  %132 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !8
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %134
  %136 = load i16, ptr %135, align 4, !tbaa !8
  %137 = add i16 %136, 1
  store i16 %137, ptr %135, align 4, !tbaa !8
  %138 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %139 = icmp ult i8 %138, 61
  br i1 %139, label %141, label %140, !prof !53, !nosanitize !54

140:                                              ; preds = %114
  tail call void @llvm.ubsantrap(i8 18) #14, !nosanitize !54
  unreachable, !nosanitize !54

141:                                              ; preds = %114
  %142 = zext nneg i8 %138 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %142
  %144 = load i16, ptr %143, align 4, !tbaa !8
  %145 = add i16 %144, 1
  store i16 %145, ptr %143, align 4, !tbaa !8
  %146 = load i32, ptr %9, align 4, !tbaa !120
  %147 = load i32, ptr %11, align 8, !tbaa !46
  %148 = icmp eq i32 %146, %147
  %149 = load i32, ptr %4, align 8, !tbaa !69
  %150 = load i32, ptr %3, align 4, !tbaa !66
  %151 = sub i32 %150, %149
  store i32 %151, ptr %3, align 4, !tbaa !66
  %152 = load i32, ptr %6, align 4, !tbaa !64
  %153 = add i32 %152, %149
  store i32 %153, ptr %6, align 4, !tbaa !64
  store i32 0, ptr %4, align 8, !tbaa !69
  br i1 %148, label %190, label %154

154:                                              ; preds = %141, %235, %158
  br label %15

155:                                              ; preds = %33, %41, %45, %29, %26
  %156 = phi i32 [ %28, %26 ], [ %30, %29 ], [ %30, %45 ], [ %30, %41 ], [ %30, %33 ]
  %157 = load i32, ptr %9, align 4, !tbaa !120
  br label %158

158:                                              ; preds = %155, %104
  %159 = phi i32 [ %113, %104 ], [ %157, %155 ]
  %160 = phi i32 [ %30, %104 ], [ %156, %155 ]
  %161 = load ptr, ptr %7, align 8, !tbaa !37
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !8
  %165 = load ptr, ptr %8, align 8, !tbaa !45
  %166 = add i32 %159, 1
  store i32 %166, ptr %9, align 4, !tbaa !120
  %167 = zext i32 %159 to i64
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 %167
  store i8 0, ptr %168, align 1, !tbaa !8
  %169 = load ptr, ptr %8, align 8, !tbaa !45
  %170 = load i32, ptr %9, align 4, !tbaa !120
  %171 = add i32 %170, 1
  store i32 %171, ptr %9, align 4, !tbaa !120
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds nuw i8, ptr %169, i64 %172
  store i8 0, ptr %173, align 1, !tbaa !8
  %174 = load ptr, ptr %8, align 8, !tbaa !45
  %175 = load i32, ptr %9, align 4, !tbaa !120
  %176 = add i32 %175, 1
  store i32 %176, ptr %9, align 4, !tbaa !120
  %177 = zext i32 %175 to i64
  %178 = getelementptr inbounds nuw i8, ptr %174, i64 %177
  store i8 %164, ptr %178, align 1, !tbaa !8
  %179 = zext i8 %164 to i64, !nosanitize !54
  %180 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %179
  %181 = load i16, ptr %180, align 4, !tbaa !8
  %182 = add i16 %181, 1
  store i16 %182, ptr %180, align 4, !tbaa !8
  %183 = load i32, ptr %9, align 4, !tbaa !120
  %184 = load i32, ptr %11, align 8, !tbaa !46
  %185 = icmp eq i32 %183, %184
  %186 = load i32, ptr %3, align 4, !tbaa !66
  %187 = add i32 %186, -1
  store i32 %187, ptr %3, align 4, !tbaa !66
  %188 = load i32, ptr %6, align 4, !tbaa !64
  %189 = add i32 %188, 1
  store i32 %189, ptr %6, align 4, !tbaa !64
  br i1 %185, label %190, label %154

190:                                              ; preds = %141, %158
  %191 = phi i32 [ %153, %141 ], [ %189, %158 ]
  %192 = load i64, ptr %14, align 8, !tbaa !65
  %193 = icmp sgt i64 %192, -1
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load ptr, ptr %7, align 8, !tbaa !37
  %196 = and i64 %192, 4294967295
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 %196
  br label %198

198:                                              ; preds = %190, %194
  %199 = phi ptr [ %197, %194 ], [ null, %190 ]
  %200 = zext i32 %191 to i64
  %201 = sub nsw i64 %200, %192
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %199, i64 noundef %201, i32 noundef 0) #13
  %202 = load i32, ptr %6, align 4, !tbaa !64
  %203 = zext i32 %202 to i64
  store i64 %203, ptr %14, align 8, !tbaa !65
  %204 = load ptr, ptr %0, align 8, !tbaa !19
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 56
  %206 = load ptr, ptr %205, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %206) #13
  %207 = getelementptr inbounds nuw i8, ptr %206, i64 40
  %208 = load i64, ptr %207, align 8, !tbaa !88
  %209 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %210 = load i32, ptr %209, align 8, !tbaa !99
  %211 = zext i32 %210 to i64
  %212 = tail call i64 @llvm.umin.i64(i64 %208, i64 %211)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %235, label %214

214:                                              ; preds = %198
  %215 = trunc nuw i64 %212 to i32
  %216 = getelementptr inbounds nuw i8, ptr %204, i64 24
  %217 = load ptr, ptr %216, align 8, !tbaa !98
  %218 = getelementptr inbounds nuw i8, ptr %206, i64 32
  %219 = load ptr, ptr %218, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %217, ptr align 1 %219, i64 %212, i1 false)
  %220 = load ptr, ptr %216, align 8, !tbaa !98
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 %212
  store ptr %221, ptr %216, align 8, !tbaa !98
  %222 = load ptr, ptr %218, align 8, !tbaa !89
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 %212
  store ptr %223, ptr %218, align 8, !tbaa !89
  %224 = getelementptr inbounds nuw i8, ptr %204, i64 40
  %225 = load i64, ptr %224, align 8, !tbaa !100
  %226 = add i64 %225, %212
  store i64 %226, ptr %224, align 8, !tbaa !100
  %227 = load i32, ptr %209, align 8, !tbaa !99
  %228 = sub i32 %227, %215
  store i32 %228, ptr %209, align 8, !tbaa !99
  %229 = load i64, ptr %207, align 8, !tbaa !88
  %230 = sub i64 %229, %212
  store i64 %230, ptr %207, align 8, !tbaa !88
  %231 = icmp eq i64 %229, %212
  br i1 %231, label %232, label %235

232:                                              ; preds = %214
  %233 = getelementptr inbounds nuw i8, ptr %206, i64 16
  %234 = load ptr, ptr %233, align 8, !tbaa !42
  store ptr %234, ptr %218, align 8, !tbaa !89
  br label %235

235:                                              ; preds = %198, %214, %232
  %236 = load ptr, ptr %0, align 8, !tbaa !19
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 32
  %238 = load i32, ptr %237, align 8, !tbaa !99
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %348, label %154

240:                                              ; preds = %24
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 0, ptr %241, align 4, !tbaa !67
  %242 = icmp eq i32 %1, 4
  br i1 %242, label %243, label %294

243:                                              ; preds = %240
  %244 = load i64, ptr %14, align 8, !tbaa !65
  %245 = icmp sgt i64 %244, -1
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load ptr, ptr %7, align 8, !tbaa !37
  %248 = and i64 %244, 4294967295
  %249 = getelementptr inbounds nuw i8, ptr %247, i64 %248
  br label %250

250:                                              ; preds = %243, %246
  %251 = phi ptr [ %249, %246 ], [ null, %243 ]
  %252 = load i32, ptr %6, align 4, !tbaa !64
  %253 = zext i32 %252 to i64
  %254 = sub nsw i64 %253, %244
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %251, i64 noundef %254, i32 noundef 1) #13
  %255 = load i32, ptr %6, align 4, !tbaa !64
  %256 = zext i32 %255 to i64
  store i64 %256, ptr %14, align 8, !tbaa !65
  %257 = load ptr, ptr %0, align 8, !tbaa !19
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 56
  %259 = load ptr, ptr %258, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %259) #13
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 40
  %261 = load i64, ptr %260, align 8, !tbaa !88
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %263 = load i32, ptr %262, align 8, !tbaa !99
  %264 = zext i32 %263 to i64
  %265 = tail call i64 @llvm.umin.i64(i64 %261, i64 %264)
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %288, label %267

267:                                              ; preds = %250
  %268 = trunc nuw i64 %265 to i32
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 24
  %270 = load ptr, ptr %269, align 8, !tbaa !98
  %271 = getelementptr inbounds nuw i8, ptr %259, i64 32
  %272 = load ptr, ptr %271, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %270, ptr align 1 %272, i64 %265, i1 false)
  %273 = load ptr, ptr %269, align 8, !tbaa !98
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 %265
  store ptr %274, ptr %269, align 8, !tbaa !98
  %275 = load ptr, ptr %271, align 8, !tbaa !89
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 %265
  store ptr %276, ptr %271, align 8, !tbaa !89
  %277 = getelementptr inbounds nuw i8, ptr %257, i64 40
  %278 = load i64, ptr %277, align 8, !tbaa !100
  %279 = add i64 %278, %265
  store i64 %279, ptr %277, align 8, !tbaa !100
  %280 = load i32, ptr %262, align 8, !tbaa !99
  %281 = sub i32 %280, %268
  store i32 %281, ptr %262, align 8, !tbaa !99
  %282 = load i64, ptr %260, align 8, !tbaa !88
  %283 = sub i64 %282, %265
  store i64 %283, ptr %260, align 8, !tbaa !88
  %284 = icmp eq i64 %282, %265
  br i1 %284, label %285, label %288

285:                                              ; preds = %267
  %286 = getelementptr inbounds nuw i8, ptr %259, i64 16
  %287 = load ptr, ptr %286, align 8, !tbaa !42
  store ptr %287, ptr %271, align 8, !tbaa !89
  br label %288

288:                                              ; preds = %250, %267, %285
  %289 = load ptr, ptr %0, align 8, !tbaa !19
  %290 = getelementptr inbounds nuw i8, ptr %289, i64 32
  %291 = load i32, ptr %290, align 8, !tbaa !99
  %292 = icmp eq i32 %291, 0
  %293 = select i1 %292, i32 2, i32 3
  br label %348

294:                                              ; preds = %240
  %295 = load i32, ptr %9, align 4, !tbaa !120
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %347, label %297

297:                                              ; preds = %294
  %298 = load i64, ptr %14, align 8, !tbaa !65
  %299 = icmp sgt i64 %298, -1
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load ptr, ptr %7, align 8, !tbaa !37
  %302 = and i64 %298, 4294967295
  %303 = getelementptr inbounds nuw i8, ptr %301, i64 %302
  br label %304

304:                                              ; preds = %297, %300
  %305 = phi ptr [ %303, %300 ], [ null, %297 ]
  %306 = load i32, ptr %6, align 4, !tbaa !64
  %307 = zext i32 %306 to i64
  %308 = sub nsw i64 %307, %298
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %305, i64 noundef %308, i32 noundef 0) #13
  %309 = load i32, ptr %6, align 4, !tbaa !64
  %310 = zext i32 %309 to i64
  store i64 %310, ptr %14, align 8, !tbaa !65
  %311 = load ptr, ptr %0, align 8, !tbaa !19
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 56
  %313 = load ptr, ptr %312, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %313) #13
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 40
  %315 = load i64, ptr %314, align 8, !tbaa !88
  %316 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %317 = load i32, ptr %316, align 8, !tbaa !99
  %318 = zext i32 %317 to i64
  %319 = tail call i64 @llvm.umin.i64(i64 %315, i64 %318)
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %342, label %321

321:                                              ; preds = %304
  %322 = trunc nuw i64 %319 to i32
  %323 = getelementptr inbounds nuw i8, ptr %311, i64 24
  %324 = load ptr, ptr %323, align 8, !tbaa !98
  %325 = getelementptr inbounds nuw i8, ptr %313, i64 32
  %326 = load ptr, ptr %325, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %324, ptr align 1 %326, i64 %319, i1 false)
  %327 = load ptr, ptr %323, align 8, !tbaa !98
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 %319
  store ptr %328, ptr %323, align 8, !tbaa !98
  %329 = load ptr, ptr %325, align 8, !tbaa !89
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 %319
  store ptr %330, ptr %325, align 8, !tbaa !89
  %331 = getelementptr inbounds nuw i8, ptr %311, i64 40
  %332 = load i64, ptr %331, align 8, !tbaa !100
  %333 = add i64 %332, %319
  store i64 %333, ptr %331, align 8, !tbaa !100
  %334 = load i32, ptr %316, align 8, !tbaa !99
  %335 = sub i32 %334, %322
  store i32 %335, ptr %316, align 8, !tbaa !99
  %336 = load i64, ptr %314, align 8, !tbaa !88
  %337 = sub i64 %336, %319
  store i64 %337, ptr %314, align 8, !tbaa !88
  %338 = icmp eq i64 %336, %319
  br i1 %338, label %339, label %342

339:                                              ; preds = %321
  %340 = getelementptr inbounds nuw i8, ptr %313, i64 16
  %341 = load ptr, ptr %340, align 8, !tbaa !42
  store ptr %341, ptr %325, align 8, !tbaa !89
  br label %342

342:                                              ; preds = %304, %321, %339
  %343 = load ptr, ptr %0, align 8, !tbaa !19
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 32
  %345 = load i32, ptr %344, align 8, !tbaa !99
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %342, %294
  br label %348

348:                                              ; preds = %235, %20, %342, %288, %347
  %349 = phi i32 [ 1, %347 ], [ %293, %288 ], [ 0, %342 ], [ 0, %20 ], [ 0, %235 ]
  ret i32 %349
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #2

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @deflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %127, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %127, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %127, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %127, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %127

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %127 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp eq ptr %0, null
  br i1 %23, label %127, label %24

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %127, label %31

31:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, i8 0, i64 5968, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %32, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, ptr noundef nonnull align 8 dereferenceable(5968) %14, i64 5968, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !19
  %33 = load ptr, ptr %25, align 8, !tbaa !15
  %34 = load ptr, ptr %27, align 8, !tbaa !16
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 80
  %36 = load i32, ptr %35, align 8, !tbaa !31
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #13
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !37
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !31
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #13
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !38
  %44 = load ptr, ptr %25, align 8, !tbaa !15
  %45 = load ptr, ptr %27, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !34
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #13
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !39
  %50 = load ptr, ptr %25, align 8, !tbaa !15
  %51 = load ptr, ptr %27, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !41
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #13
  %55 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %54, ptr %55, align 8, !tbaa !42
  %56 = load ptr, ptr %38, align 8, !tbaa !37
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %31
  %59 = load ptr, ptr %43, align 8, !tbaa !38
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %49, align 8, !tbaa !39
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %54, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %58, %31
  %67 = tail call i32 @deflateEnd(ptr noundef nonnull %0)
  br label %127

68:                                               ; preds = %61
  %69 = getelementptr inbounds nuw i8, ptr %14, i64 96
  %70 = load ptr, ptr %69, align 8, !tbaa !37
  %71 = getelementptr inbounds nuw i8, ptr %14, i64 5952
  %72 = load i64, ptr %71, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr align 1 %70, i64 %72, i1 false)
  %73 = load ptr, ptr %43, align 8, !tbaa !38
  %74 = getelementptr inbounds nuw i8, ptr %14, i64 112
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  %76 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  %77 = load i32, ptr %76, align 8, !tbaa !52
  %78 = icmp eq i32 %77, 0
  %79 = load i32, ptr %35, align 8, !tbaa !31
  br i1 %78, label %80, label %87

80:                                               ; preds = %68
  %81 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %82 = load i32, ptr %81, align 4, !tbaa !64
  %83 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  %84 = load i32, ptr %83, align 4, !tbaa !67
  %85 = sub i32 %82, %84
  %86 = icmp ugt i32 %85, %79
  br i1 %86, label %87, label %88

87:                                               ; preds = %80, %68
  br label %88

88:                                               ; preds = %80, %87
  %89 = phi i32 [ %79, %87 ], [ %85, %80 ]
  %90 = zext i32 %89 to i64
  %91 = shl nuw nsw i64 %90, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %73, ptr align 2 %75, i64 %91, i1 false)
  %92 = load ptr, ptr %49, align 8, !tbaa !39
  %93 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %94 = load ptr, ptr %93, align 8, !tbaa !39
  %95 = load i32, ptr %46, align 4, !tbaa !34
  %96 = zext i32 %95 to i64
  %97 = shl nuw nsw i64 %96, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %92, ptr align 2 %94, i64 %97, i1 false)
  %98 = load ptr, ptr %55, align 8, !tbaa !42
  %99 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %100 = load ptr, ptr %99, align 8, !tbaa !89
  %101 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %102 = load ptr, ptr %101, align 8, !tbaa !42
  %103 = ptrtoint ptr %100 to i64
  %104 = ptrtoint ptr %102 to i64
  %105 = sub i64 %103, %104
  %106 = getelementptr inbounds i8, ptr %98, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %106, ptr %107, align 8, !tbaa !89
  %108 = load ptr, ptr %99, align 8, !tbaa !89
  %109 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %110 = load i64, ptr %109, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %106, ptr align 1 %108, i64 %110, i1 false)
  %111 = load ptr, ptr %55, align 8, !tbaa !42
  %112 = load i32, ptr %52, align 8, !tbaa !41
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 %113
  %115 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  store ptr %114, ptr %115, align 8, !tbaa !45
  %116 = getelementptr inbounds nuw i8, ptr %14, i64 5888
  %117 = load ptr, ptr %116, align 8, !tbaa !45
  %118 = getelementptr inbounds nuw i8, ptr %14, i64 5900
  %119 = load i32, ptr %118, align 4, !tbaa !120
  %120 = zext i32 %119 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %114, ptr align 1 %117, i64 %120, i1 false)
  %121 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %122 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %121, ptr %122, align 8, !tbaa !122
  %123 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %124 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %123, ptr %124, align 8, !tbaa !123
  %125 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %126 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %125, ptr %126, align 8, !tbaa !124
  br label %127

127:                                              ; preds = %12, %16, %19, %4, %8, %2, %24, %22, %88, %66
  %128 = phi i32 [ 0, %88 ], [ -2, %22 ], [ -4, %66 ], [ -4, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %24

24:                                               ; preds = %201, %2
  %25 = load i32, ptr %3, align 4, !tbaa !66
  %26 = icmp ult i32 %25, 262
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %28 = load i32, ptr %3, align 4, !tbaa !66
  %29 = icmp ult i32 %28, 262
  %30 = and i1 %4, %29
  br i1 %30, label %378, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %270, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %28, 2
  br i1 %34, label %35, label %68

35:                                               ; preds = %24, %33
  %36 = load i32, ptr %5, align 8, !tbaa !71
  %37 = load i32, ptr %6, align 8, !tbaa !36
  %38 = shl i32 %36, %37
  %39 = load ptr, ptr %7, align 8, !tbaa !37
  %40 = load i32, ptr %8, align 4, !tbaa !64
  %41 = add i32 %40, 2
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %39, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !8
  %45 = zext i8 %44 to i32
  %46 = xor i32 %38, %45
  %47 = load i32, ptr %9, align 4, !tbaa !35
  %48 = and i32 %46, %47
  store i32 %48, ptr %5, align 8, !tbaa !71
  %49 = load ptr, ptr %10, align 8, !tbaa !39
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds nuw [2 x i8], ptr %49, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !51
  %53 = load ptr, ptr %11, align 8, !tbaa !38
  %54 = load i32, ptr %12, align 8, !tbaa !32
  %55 = and i32 %54, %40
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds nuw [2 x i8], ptr %53, i64 %56
  store i16 %52, ptr %57, align 2, !tbaa !51
  %58 = zext i16 %52 to i32
  %59 = trunc i32 %40 to i16
  store i16 %59, ptr %51, align 2, !tbaa !51
  %60 = icmp eq i16 %52, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %35
  %62 = sub i32 %40, %58
  %63 = load i32, ptr %13, align 8, !tbaa !31
  %64 = add i32 %63, -262
  %65 = icmp ugt i32 %62, %64
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %58)
  store i32 %67, ptr %14, align 8, !tbaa !69
  br label %70

68:                                               ; preds = %35, %61, %33
  %69 = load i32, ptr %14, align 8, !tbaa !69
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %69, %68 ], [ %67, %66 ]
  %72 = icmp ugt i32 %71, 2
  br i1 %72, label %73, label %169

73:                                               ; preds = %70
  %74 = trunc i32 %71 to i8
  %75 = add i8 %74, -3
  %76 = load i32, ptr %8, align 4, !tbaa !64
  %77 = load i32, ptr %19, align 8, !tbaa !125
  %78 = sub i32 %76, %77
  %79 = trunc i32 %78 to i16
  %80 = trunc i32 %78 to i8
  %81 = load ptr, ptr %15, align 8, !tbaa !45
  %82 = load i32, ptr %16, align 4, !tbaa !120
  %83 = add i32 %82, 1
  store i32 %83, ptr %16, align 4, !tbaa !120
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds nuw i8, ptr %81, i64 %84
  store i8 %80, ptr %85, align 1, !tbaa !8
  %86 = lshr i32 %78, 8
  %87 = trunc i32 %86 to i8
  %88 = load ptr, ptr %15, align 8, !tbaa !45
  %89 = load i32, ptr %16, align 4, !tbaa !120
  %90 = add i32 %89, 1
  store i32 %90, ptr %16, align 4, !tbaa !120
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds nuw i8, ptr %88, i64 %91
  store i8 %87, ptr %92, align 1, !tbaa !8
  %93 = load ptr, ptr %15, align 8, !tbaa !45
  %94 = load i32, ptr %16, align 4, !tbaa !120
  %95 = add i32 %94, 1
  store i32 %95, ptr %16, align 4, !tbaa !120
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 %96
  store i8 %75, ptr %97, align 1, !tbaa !8
  %98 = add i16 %79, -1
  %99 = zext i8 %75 to i64
  %100 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !8
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %102
  %104 = load i16, ptr %103, align 4, !tbaa !8
  %105 = add i16 %104, 1
  store i16 %105, ptr %103, align 4, !tbaa !8
  %106 = icmp ult i16 %98, 256
  br i1 %106, label %108, label %111

107:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 18) #14, !nosanitize !54
  unreachable, !nosanitize !54

108:                                              ; preds = %73
  %109 = zext nneg i16 %98 to i64
  %110 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %109
  br label %116

111:                                              ; preds = %73
  %112 = lshr i16 %98, 7
  %113 = zext nneg i16 %112 to i64
  %114 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %113
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 256
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi ptr [ %110, %108 ], [ %115, %111 ]
  %118 = load i8, ptr %117, align 1, !tbaa !8
  %119 = icmp ult i8 %118, 61
  br i1 %119, label %120, label %107, !prof !53, !nosanitize !54

120:                                              ; preds = %116
  %121 = zext nneg i8 %118 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %121
  %123 = load i16, ptr %122, align 4, !tbaa !8
  %124 = add i16 %123, 1
  store i16 %124, ptr %122, align 4, !tbaa !8
  %125 = load i32, ptr %16, align 4, !tbaa !120
  %126 = load i32, ptr %18, align 8, !tbaa !46
  %127 = icmp eq i32 %125, %126
  %128 = load i32, ptr %14, align 8, !tbaa !69
  %129 = load i32, ptr %3, align 4, !tbaa !66
  %130 = sub i32 %129, %128
  store i32 %130, ptr %3, align 4, !tbaa !66
  %131 = load i32, ptr %22, align 8, !tbaa !57
  %132 = icmp ule i32 %128, %131
  %133 = icmp ugt i32 %130, 2
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %202

135:                                              ; preds = %120
  %136 = add i32 %128, -1
  store i32 %136, ptr %14, align 8, !tbaa !69
  %137 = load i32, ptr %6, align 8, !tbaa !36
  %138 = load ptr, ptr %7, align 8, !tbaa !37
  %139 = load i32, ptr %9, align 4, !tbaa !35
  %140 = load ptr, ptr %10, align 8, !tbaa !39
  %141 = load ptr, ptr %11, align 8, !tbaa !38
  %142 = load i32, ptr %12, align 8, !tbaa !32
  %143 = load i32, ptr %8, align 4, !tbaa !64
  %144 = load i32, ptr %5, align 8, !tbaa !71
  br label %145

145:                                              ; preds = %145, %135
  %146 = phi i32 [ %165, %145 ], [ %136, %135 ]
  %147 = phi i32 [ %157, %145 ], [ %144, %135 ]
  %148 = phi i32 [ %149, %145 ], [ %143, %135 ]
  %149 = add i32 %148, 1
  store i32 %149, ptr %8, align 4, !tbaa !64
  %150 = shl i32 %147, %137
  %151 = add i32 %148, 3
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds nuw i8, ptr %138, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !8
  %155 = zext i8 %154 to i32
  %156 = xor i32 %150, %155
  %157 = and i32 %156, %139
  store i32 %157, ptr %5, align 8, !tbaa !71
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds nuw [2 x i8], ptr %140, i64 %158
  %160 = load i16, ptr %159, align 2, !tbaa !51
  %161 = and i32 %142, %149
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds nuw [2 x i8], ptr %141, i64 %162
  store i16 %160, ptr %163, align 2, !tbaa !51
  %164 = trunc i32 %149 to i16
  store i16 %164, ptr %159, align 2, !tbaa !51
  %165 = add i32 %146, -1
  store i32 %165, ptr %14, align 8, !tbaa !69
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %145, !llvm.loop !126

167:                                              ; preds = %145
  %168 = add i32 %148, 2
  store i32 %168, ptr %8, align 4, !tbaa !64
  br i1 %127, label %220, label %201

169:                                              ; preds = %70
  %170 = load ptr, ptr %7, align 8, !tbaa !37
  %171 = load i32, ptr %8, align 4, !tbaa !64
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds nuw i8, ptr %170, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !8
  %175 = load ptr, ptr %15, align 8, !tbaa !45
  %176 = load i32, ptr %16, align 4, !tbaa !120
  %177 = add i32 %176, 1
  store i32 %177, ptr %16, align 4, !tbaa !120
  %178 = zext i32 %176 to i64
  %179 = getelementptr inbounds nuw i8, ptr %175, i64 %178
  store i8 0, ptr %179, align 1, !tbaa !8
  %180 = load ptr, ptr %15, align 8, !tbaa !45
  %181 = load i32, ptr %16, align 4, !tbaa !120
  %182 = add i32 %181, 1
  store i32 %182, ptr %16, align 4, !tbaa !120
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds nuw i8, ptr %180, i64 %183
  store i8 0, ptr %184, align 1, !tbaa !8
  %185 = load ptr, ptr %15, align 8, !tbaa !45
  %186 = load i32, ptr %16, align 4, !tbaa !120
  %187 = add i32 %186, 1
  store i32 %187, ptr %16, align 4, !tbaa !120
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds nuw i8, ptr %185, i64 %188
  store i8 %174, ptr %189, align 1, !tbaa !8
  %190 = zext i8 %174 to i64, !nosanitize !54
  %191 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %190
  %192 = load i16, ptr %191, align 4, !tbaa !8
  %193 = add i16 %192, 1
  store i16 %193, ptr %191, align 4, !tbaa !8
  %194 = load i32, ptr %16, align 4, !tbaa !120
  %195 = load i32, ptr %18, align 8, !tbaa !46
  %196 = icmp eq i32 %194, %195
  %197 = load i32, ptr %3, align 4, !tbaa !66
  %198 = add i32 %197, -1
  store i32 %198, ptr %3, align 4, !tbaa !66
  %199 = load i32, ptr %8, align 4, !tbaa !64
  %200 = add i32 %199, 1
  store i32 %200, ptr %8, align 4, !tbaa !64
  br i1 %196, label %220, label %201

201:                                              ; preds = %169, %167, %265, %202
  br label %24

202:                                              ; preds = %120
  %203 = load i32, ptr %8, align 4, !tbaa !64
  %204 = add i32 %203, %128
  store i32 %204, ptr %8, align 4, !tbaa !64
  store i32 0, ptr %14, align 8, !tbaa !69
  %205 = load ptr, ptr %7, align 8, !tbaa !37
  %206 = zext i32 %204 to i64
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !8
  %209 = zext i8 %208 to i32
  store i32 %209, ptr %5, align 8, !tbaa !71
  %210 = load i32, ptr %6, align 8, !tbaa !36
  %211 = shl i32 %209, %210
  %212 = add i32 %204, 1
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds nuw i8, ptr %205, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !8
  %216 = zext i8 %215 to i32
  %217 = xor i32 %211, %216
  %218 = load i32, ptr %9, align 4, !tbaa !35
  %219 = and i32 %217, %218
  store i32 %219, ptr %5, align 8, !tbaa !71
  br i1 %127, label %220, label %201

220:                                              ; preds = %169, %167, %202
  %221 = phi i32 [ %200, %169 ], [ %168, %167 ], [ %204, %202 ]
  %222 = load i64, ptr %23, align 8, !tbaa !65
  %223 = icmp sgt i64 %222, -1
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load ptr, ptr %7, align 8, !tbaa !37
  %226 = and i64 %222, 4294967295
  %227 = getelementptr inbounds nuw i8, ptr %225, i64 %226
  br label %228

228:                                              ; preds = %220, %224
  %229 = phi ptr [ %227, %224 ], [ null, %220 ]
  %230 = zext i32 %221 to i64
  %231 = sub nsw i64 %230, %222
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %229, i64 noundef %231, i32 noundef 0) #13
  %232 = load i32, ptr %8, align 4, !tbaa !64
  %233 = zext i32 %232 to i64
  store i64 %233, ptr %23, align 8, !tbaa !65
  %234 = load ptr, ptr %0, align 8, !tbaa !19
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 56
  %236 = load ptr, ptr %235, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %236) #13
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 40
  %238 = load i64, ptr %237, align 8, !tbaa !88
  %239 = getelementptr inbounds nuw i8, ptr %234, i64 32
  %240 = load i32, ptr %239, align 8, !tbaa !99
  %241 = zext i32 %240 to i64
  %242 = tail call i64 @llvm.umin.i64(i64 %238, i64 %241)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %265, label %244

244:                                              ; preds = %228
  %245 = trunc nuw i64 %242 to i32
  %246 = getelementptr inbounds nuw i8, ptr %234, i64 24
  %247 = load ptr, ptr %246, align 8, !tbaa !98
  %248 = getelementptr inbounds nuw i8, ptr %236, i64 32
  %249 = load ptr, ptr %248, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %247, ptr align 1 %249, i64 %242, i1 false)
  %250 = load ptr, ptr %246, align 8, !tbaa !98
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 %242
  store ptr %251, ptr %246, align 8, !tbaa !98
  %252 = load ptr, ptr %248, align 8, !tbaa !89
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 %242
  store ptr %253, ptr %248, align 8, !tbaa !89
  %254 = getelementptr inbounds nuw i8, ptr %234, i64 40
  %255 = load i64, ptr %254, align 8, !tbaa !100
  %256 = add i64 %255, %242
  store i64 %256, ptr %254, align 8, !tbaa !100
  %257 = load i32, ptr %239, align 8, !tbaa !99
  %258 = sub i32 %257, %245
  store i32 %258, ptr %239, align 8, !tbaa !99
  %259 = load i64, ptr %237, align 8, !tbaa !88
  %260 = sub i64 %259, %242
  store i64 %260, ptr %237, align 8, !tbaa !88
  %261 = icmp eq i64 %259, %242
  br i1 %261, label %262, label %265

262:                                              ; preds = %244
  %263 = getelementptr inbounds nuw i8, ptr %236, i64 16
  %264 = load ptr, ptr %263, align 8, !tbaa !42
  store ptr %264, ptr %248, align 8, !tbaa !89
  br label %265

265:                                              ; preds = %228, %244, %262
  %266 = load ptr, ptr %0, align 8, !tbaa !19
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 32
  %268 = load i32, ptr %267, align 8, !tbaa !99
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %378, label %201

270:                                              ; preds = %31
  %271 = load i32, ptr %8, align 4, !tbaa !64
  %272 = tail call i32 @llvm.umin.i32(i32 %271, i32 2)
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %272, ptr %273, align 4, !tbaa !67
  %274 = icmp eq i32 %1, 4
  br i1 %274, label %275, label %325

275:                                              ; preds = %270
  %276 = load i64, ptr %23, align 8, !tbaa !65
  %277 = icmp sgt i64 %276, -1
  br i1 %277, label %278, label %282

278:                                              ; preds = %275
  %279 = load ptr, ptr %7, align 8, !tbaa !37
  %280 = and i64 %276, 4294967295
  %281 = getelementptr inbounds nuw i8, ptr %279, i64 %280
  br label %282

282:                                              ; preds = %275, %278
  %283 = phi ptr [ %281, %278 ], [ null, %275 ]
  %284 = zext i32 %271 to i64
  %285 = sub nsw i64 %284, %276
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %283, i64 noundef %285, i32 noundef 1) #13
  %286 = load i32, ptr %8, align 4, !tbaa !64
  %287 = zext i32 %286 to i64
  store i64 %287, ptr %23, align 8, !tbaa !65
  %288 = load ptr, ptr %0, align 8, !tbaa !19
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 56
  %290 = load ptr, ptr %289, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %290) #13
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 40
  %292 = load i64, ptr %291, align 8, !tbaa !88
  %293 = getelementptr inbounds nuw i8, ptr %288, i64 32
  %294 = load i32, ptr %293, align 8, !tbaa !99
  %295 = zext i32 %294 to i64
  %296 = tail call i64 @llvm.umin.i64(i64 %292, i64 %295)
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %319, label %298

298:                                              ; preds = %282
  %299 = trunc nuw i64 %296 to i32
  %300 = getelementptr inbounds nuw i8, ptr %288, i64 24
  %301 = load ptr, ptr %300, align 8, !tbaa !98
  %302 = getelementptr inbounds nuw i8, ptr %290, i64 32
  %303 = load ptr, ptr %302, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %301, ptr align 1 %303, i64 %296, i1 false)
  %304 = load ptr, ptr %300, align 8, !tbaa !98
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 %296
  store ptr %305, ptr %300, align 8, !tbaa !98
  %306 = load ptr, ptr %302, align 8, !tbaa !89
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %296
  store ptr %307, ptr %302, align 8, !tbaa !89
  %308 = getelementptr inbounds nuw i8, ptr %288, i64 40
  %309 = load i64, ptr %308, align 8, !tbaa !100
  %310 = add i64 %309, %296
  store i64 %310, ptr %308, align 8, !tbaa !100
  %311 = load i32, ptr %293, align 8, !tbaa !99
  %312 = sub i32 %311, %299
  store i32 %312, ptr %293, align 8, !tbaa !99
  %313 = load i64, ptr %291, align 8, !tbaa !88
  %314 = sub i64 %313, %296
  store i64 %314, ptr %291, align 8, !tbaa !88
  %315 = icmp eq i64 %313, %296
  br i1 %315, label %316, label %319

316:                                              ; preds = %298
  %317 = getelementptr inbounds nuw i8, ptr %290, i64 16
  %318 = load ptr, ptr %317, align 8, !tbaa !42
  store ptr %318, ptr %302, align 8, !tbaa !89
  br label %319

319:                                              ; preds = %282, %298, %316
  %320 = load ptr, ptr %0, align 8, !tbaa !19
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 32
  %322 = load i32, ptr %321, align 8, !tbaa !99
  %323 = icmp eq i32 %322, 0
  %324 = select i1 %323, i32 2, i32 3
  br label %378

325:                                              ; preds = %270
  %326 = load i32, ptr %16, align 4, !tbaa !120
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %377, label %328

328:                                              ; preds = %325
  %329 = load i64, ptr %23, align 8, !tbaa !65
  %330 = icmp sgt i64 %329, -1
  br i1 %330, label %331, label %335

331:                                              ; preds = %328
  %332 = load ptr, ptr %7, align 8, !tbaa !37
  %333 = and i64 %329, 4294967295
  %334 = getelementptr inbounds nuw i8, ptr %332, i64 %333
  br label %335

335:                                              ; preds = %328, %331
  %336 = phi ptr [ %334, %331 ], [ null, %328 ]
  %337 = zext i32 %271 to i64
  %338 = sub nsw i64 %337, %329
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %336, i64 noundef %338, i32 noundef 0) #13
  %339 = load i32, ptr %8, align 4, !tbaa !64
  %340 = zext i32 %339 to i64
  store i64 %340, ptr %23, align 8, !tbaa !65
  %341 = load ptr, ptr %0, align 8, !tbaa !19
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 56
  %343 = load ptr, ptr %342, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %343) #13
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 40
  %345 = load i64, ptr %344, align 8, !tbaa !88
  %346 = getelementptr inbounds nuw i8, ptr %341, i64 32
  %347 = load i32, ptr %346, align 8, !tbaa !99
  %348 = zext i32 %347 to i64
  %349 = tail call i64 @llvm.umin.i64(i64 %345, i64 %348)
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %372, label %351

351:                                              ; preds = %335
  %352 = trunc nuw i64 %349 to i32
  %353 = getelementptr inbounds nuw i8, ptr %341, i64 24
  %354 = load ptr, ptr %353, align 8, !tbaa !98
  %355 = getelementptr inbounds nuw i8, ptr %343, i64 32
  %356 = load ptr, ptr %355, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %354, ptr align 1 %356, i64 %349, i1 false)
  %357 = load ptr, ptr %353, align 8, !tbaa !98
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 %349
  store ptr %358, ptr %353, align 8, !tbaa !98
  %359 = load ptr, ptr %355, align 8, !tbaa !89
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 %349
  store ptr %360, ptr %355, align 8, !tbaa !89
  %361 = getelementptr inbounds nuw i8, ptr %341, i64 40
  %362 = load i64, ptr %361, align 8, !tbaa !100
  %363 = add i64 %362, %349
  store i64 %363, ptr %361, align 8, !tbaa !100
  %364 = load i32, ptr %346, align 8, !tbaa !99
  %365 = sub i32 %364, %352
  store i32 %365, ptr %346, align 8, !tbaa !99
  %366 = load i64, ptr %344, align 8, !tbaa !88
  %367 = sub i64 %366, %349
  store i64 %367, ptr %344, align 8, !tbaa !88
  %368 = icmp eq i64 %366, %349
  br i1 %368, label %369, label %372

369:                                              ; preds = %351
  %370 = getelementptr inbounds nuw i8, ptr %343, i64 16
  %371 = load ptr, ptr %370, align 8, !tbaa !42
  store ptr %371, ptr %355, align 8, !tbaa !89
  br label %372

372:                                              ; preds = %335, %351, %369
  %373 = load ptr, ptr %0, align 8, !tbaa !19
  %374 = getelementptr inbounds nuw i8, ptr %373, i64 32
  %375 = load i32, ptr %374, align 8, !tbaa !99
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %372, %325
  br label %378

378:                                              ; preds = %265, %27, %372, %319, %377
  %379 = phi i32 [ 1, %377 ], [ %324, %319 ], [ 0, %372 ], [ 0, %27 ], [ 0, %265 ]
  ret i32 %379
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %28

28:                                               ; preds = %202, %2
  %29 = load i32, ptr %3, align 4, !tbaa !66
  %30 = icmp ult i32 %29, 262
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %5, align 8, !tbaa !69
  %33 = load i32, ptr %7, align 8, !tbaa !125
  br label %45

34:                                               ; preds = %28
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %35 = load i32, ptr %3, align 4, !tbaa !66
  %36 = icmp ult i32 %35, 262
  %37 = and i1 %4, %36
  br i1 %37, label %480, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %343, label %40

40:                                               ; preds = %38
  %41 = icmp ugt i32 %35, 2
  %42 = load i32, ptr %5, align 8, !tbaa !69
  %43 = load i32, ptr %7, align 8, !tbaa !125
  br i1 %41, label %45, label %44

44:                                               ; preds = %40
  store i32 %42, ptr %6, align 8, !tbaa !68
  store i32 %43, ptr %8, align 4, !tbaa !127
  store i32 2, ptr %5, align 8, !tbaa !69
  br label %98

45:                                               ; preds = %31, %40
  %46 = phi i32 [ %33, %31 ], [ %43, %40 ]
  %47 = phi i32 [ %32, %31 ], [ %42, %40 ]
  %48 = load i32, ptr %9, align 8, !tbaa !71
  %49 = load i32, ptr %10, align 8, !tbaa !36
  %50 = shl i32 %48, %49
  %51 = load ptr, ptr %11, align 8, !tbaa !37
  %52 = load i32, ptr %12, align 4, !tbaa !64
  %53 = add i32 %52, 2
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !8
  %57 = zext i8 %56 to i32
  %58 = xor i32 %50, %57
  %59 = load i32, ptr %13, align 4, !tbaa !35
  %60 = and i32 %58, %59
  store i32 %60, ptr %9, align 8, !tbaa !71
  %61 = load ptr, ptr %14, align 8, !tbaa !39
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !51
  %65 = load ptr, ptr %15, align 8, !tbaa !38
  %66 = load i32, ptr %16, align 8, !tbaa !32
  %67 = and i32 %66, %52
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds nuw [2 x i8], ptr %65, i64 %68
  store i16 %64, ptr %69, align 2, !tbaa !51
  %70 = zext i16 %64 to i32
  %71 = trunc i32 %52 to i16
  store i16 %71, ptr %63, align 2, !tbaa !51
  store i32 %47, ptr %6, align 8, !tbaa !68
  store i32 %46, ptr %8, align 4, !tbaa !127
  store i32 2, ptr %5, align 8, !tbaa !69
  %72 = icmp eq i16 %64, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %45
  %74 = load i32, ptr %17, align 8, !tbaa !57
  %75 = icmp ult i32 %47, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = sub i32 %52, %70
  %78 = load i32, ptr %18, align 8, !tbaa !31
  %79 = add i32 %78, -262
  %80 = icmp ugt i32 %77, %79
  br i1 %80, label %95, label %81

81:                                               ; preds = %76
  %82 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %70)
  store i32 %82, ptr %5, align 8, !tbaa !69
  %83 = icmp ult i32 %82, 6
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32, ptr %19, align 8, !tbaa !48
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %82, 3
  br i1 %88, label %89, label %95

89:                                               ; preds = %87
  %90 = load i32, ptr %12, align 4, !tbaa !64
  %91 = load i32, ptr %7, align 8, !tbaa !125
  %92 = sub i32 %90, %91
  %93 = icmp ugt i32 %92, 4096
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %84
  store i32 2, ptr %5, align 8, !tbaa !69
  br label %95

95:                                               ; preds = %73, %76, %94, %89, %87, %81
  %96 = phi i32 [ 2, %73 ], [ 2, %76 ], [ 2, %94 ], [ 3, %89 ], [ %82, %87 ], [ %82, %81 ]
  %97 = load i32, ptr %6, align 8, !tbaa !68
  br label %98

98:                                               ; preds = %95, %44, %45
  %99 = phi i32 [ %97, %95 ], [ %42, %44 ], [ %47, %45 ]
  %100 = phi i32 [ %96, %95 ], [ 2, %44 ], [ 2, %45 ]
  %101 = icmp ult i32 %99, 3
  %102 = icmp ugt i32 %100, %99
  %103 = or i1 %101, %102
  br i1 %103, label %252, label %104

104:                                              ; preds = %98
  %105 = load i32, ptr %12, align 4, !tbaa !64
  %106 = load i32, ptr %3, align 4, !tbaa !66
  %107 = add i32 %105, -3
  %108 = add i32 %107, %106
  %109 = trunc i32 %99 to i8
  %110 = add i8 %109, -3
  %111 = load i32, ptr %8, align 4, !tbaa !127
  %112 = xor i32 %111, -1
  %113 = add i32 %105, %112
  %114 = trunc i32 %113 to i16
  %115 = trunc i32 %113 to i8
  %116 = load ptr, ptr %20, align 8, !tbaa !45
  %117 = load i32, ptr %21, align 4, !tbaa !120
  %118 = add i32 %117, 1
  store i32 %118, ptr %21, align 4, !tbaa !120
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds nuw i8, ptr %116, i64 %119
  store i8 %115, ptr %120, align 1, !tbaa !8
  %121 = lshr i32 %113, 8
  %122 = trunc i32 %121 to i8
  %123 = load ptr, ptr %20, align 8, !tbaa !45
  %124 = load i32, ptr %21, align 4, !tbaa !120
  %125 = add i32 %124, 1
  store i32 %125, ptr %21, align 4, !tbaa !120
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds nuw i8, ptr %123, i64 %126
  store i8 %122, ptr %127, align 1, !tbaa !8
  %128 = load ptr, ptr %20, align 8, !tbaa !45
  %129 = load i32, ptr %21, align 4, !tbaa !120
  %130 = add i32 %129, 1
  store i32 %130, ptr %21, align 4, !tbaa !120
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds nuw i8, ptr %128, i64 %131
  store i8 %110, ptr %132, align 1, !tbaa !8
  %133 = add i16 %114, -1
  %134 = zext i8 %110 to i64
  %135 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !8
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %137
  %139 = load i16, ptr %138, align 4, !tbaa !8
  %140 = add i16 %139, 1
  store i16 %140, ptr %138, align 4, !tbaa !8
  %141 = icmp ult i16 %133, 256
  br i1 %141, label %143, label %146

142:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 18) #14, !nosanitize !54
  unreachable, !nosanitize !54

143:                                              ; preds = %104
  %144 = zext nneg i16 %133 to i64
  %145 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %144
  br label %151

146:                                              ; preds = %104
  %147 = lshr i16 %133, 7
  %148 = zext nneg i16 %147 to i64
  %149 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %148
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 256
  br label %151

151:                                              ; preds = %146, %143
  %152 = phi ptr [ %145, %143 ], [ %150, %146 ]
  %153 = load i8, ptr %152, align 1, !tbaa !8
  %154 = icmp ult i8 %153, 61
  br i1 %154, label %155, label %142, !prof !53, !nosanitize !54

155:                                              ; preds = %151
  %156 = zext nneg i8 %153 to i64
  %157 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %156
  %158 = load i16, ptr %157, align 4, !tbaa !8
  %159 = add i16 %158, 1
  store i16 %159, ptr %157, align 4, !tbaa !8
  %160 = load i32, ptr %21, align 4, !tbaa !120
  %161 = load i32, ptr %24, align 8, !tbaa !46
  %162 = load i32, ptr %6, align 8, !tbaa !68
  %163 = load i32, ptr %3, align 4, !tbaa !66
  %164 = sub i32 %163, %162
  %165 = add i32 %164, 1
  store i32 %165, ptr %3, align 4, !tbaa !66
  %166 = add i32 %162, -2
  store i32 %166, ptr %6, align 8, !tbaa !68
  %167 = load i32, ptr %12, align 4, !tbaa !64
  br label %168

168:                                              ; preds = %196, %155
  %169 = phi i32 [ %197, %196 ], [ %166, %155 ]
  %170 = phi i32 [ %171, %196 ], [ %167, %155 ]
  %171 = add i32 %170, 1
  store i32 %171, ptr %12, align 4, !tbaa !64
  %172 = icmp ugt i32 %171, %108
  br i1 %172, label %196, label %173

173:                                              ; preds = %168
  %174 = load i32, ptr %9, align 8, !tbaa !71
  %175 = load i32, ptr %10, align 8, !tbaa !36
  %176 = shl i32 %174, %175
  %177 = load ptr, ptr %11, align 8, !tbaa !37
  %178 = add i32 %170, 3
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds nuw i8, ptr %177, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !8
  %182 = zext i8 %181 to i32
  %183 = xor i32 %176, %182
  %184 = load i32, ptr %13, align 4, !tbaa !35
  %185 = and i32 %183, %184
  store i32 %185, ptr %9, align 8, !tbaa !71
  %186 = load ptr, ptr %14, align 8, !tbaa !39
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds nuw [2 x i8], ptr %186, i64 %187
  %189 = load i16, ptr %188, align 2, !tbaa !51
  %190 = load ptr, ptr %15, align 8, !tbaa !38
  %191 = load i32, ptr %16, align 8, !tbaa !32
  %192 = and i32 %191, %171
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds nuw [2 x i8], ptr %190, i64 %193
  store i16 %189, ptr %194, align 2, !tbaa !51
  %195 = trunc i32 %171 to i16
  store i16 %195, ptr %188, align 2, !tbaa !51
  br label %196

196:                                              ; preds = %168, %173
  %197 = add i32 %169, -1
  store i32 %197, ptr %6, align 8, !tbaa !68
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %168, !llvm.loop !128

199:                                              ; preds = %196
  %200 = icmp eq i32 %160, %161
  store i32 0, ptr %25, align 8, !tbaa !70
  store i32 2, ptr %5, align 8, !tbaa !69
  %201 = add i32 %170, 2
  store i32 %201, ptr %12, align 4, !tbaa !64
  br i1 %200, label %203, label %202

202:                                              ; preds = %199, %247, %338, %329
  br label %28

203:                                              ; preds = %199
  %204 = load i64, ptr %26, align 8, !tbaa !65
  %205 = icmp sgt i64 %204, -1
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load ptr, ptr %11, align 8, !tbaa !37
  %208 = and i64 %204, 4294967295
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 %208
  br label %210

210:                                              ; preds = %203, %206
  %211 = phi ptr [ %209, %206 ], [ null, %203 ]
  %212 = zext i32 %201 to i64
  %213 = sub nsw i64 %212, %204
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %211, i64 noundef %213, i32 noundef 0) #13
  %214 = load i32, ptr %12, align 4, !tbaa !64
  %215 = zext i32 %214 to i64
  store i64 %215, ptr %26, align 8, !tbaa !65
  %216 = load ptr, ptr %0, align 8, !tbaa !19
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 56
  %218 = load ptr, ptr %217, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %218) #13
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 40
  %220 = load i64, ptr %219, align 8, !tbaa !88
  %221 = getelementptr inbounds nuw i8, ptr %216, i64 32
  %222 = load i32, ptr %221, align 8, !tbaa !99
  %223 = zext i32 %222 to i64
  %224 = tail call i64 @llvm.umin.i64(i64 %220, i64 %223)
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %247, label %226

226:                                              ; preds = %210
  %227 = trunc nuw i64 %224 to i32
  %228 = getelementptr inbounds nuw i8, ptr %216, i64 24
  %229 = load ptr, ptr %228, align 8, !tbaa !98
  %230 = getelementptr inbounds nuw i8, ptr %218, i64 32
  %231 = load ptr, ptr %230, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %229, ptr align 1 %231, i64 %224, i1 false)
  %232 = load ptr, ptr %228, align 8, !tbaa !98
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 %224
  store ptr %233, ptr %228, align 8, !tbaa !98
  %234 = load ptr, ptr %230, align 8, !tbaa !89
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 %224
  store ptr %235, ptr %230, align 8, !tbaa !89
  %236 = getelementptr inbounds nuw i8, ptr %216, i64 40
  %237 = load i64, ptr %236, align 8, !tbaa !100
  %238 = add i64 %237, %224
  store i64 %238, ptr %236, align 8, !tbaa !100
  %239 = load i32, ptr %221, align 8, !tbaa !99
  %240 = sub i32 %239, %227
  store i32 %240, ptr %221, align 8, !tbaa !99
  %241 = load i64, ptr %219, align 8, !tbaa !88
  %242 = sub i64 %241, %224
  store i64 %242, ptr %219, align 8, !tbaa !88
  %243 = icmp eq i64 %241, %224
  br i1 %243, label %244, label %247

244:                                              ; preds = %226
  %245 = getelementptr inbounds nuw i8, ptr %218, i64 16
  %246 = load ptr, ptr %245, align 8, !tbaa !42
  store ptr %246, ptr %230, align 8, !tbaa !89
  br label %247

247:                                              ; preds = %210, %226, %244
  %248 = load ptr, ptr %0, align 8, !tbaa !19
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 32
  %250 = load i32, ptr %249, align 8, !tbaa !99
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %480, label %202

252:                                              ; preds = %98
  %253 = load i32, ptr %25, align 8, !tbaa !70
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %338, label %255

255:                                              ; preds = %252
  %256 = load ptr, ptr %11, align 8, !tbaa !37
  %257 = load i32, ptr %12, align 4, !tbaa !64
  %258 = add i32 %257, -1
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds nuw i8, ptr %256, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !8
  %262 = load ptr, ptr %20, align 8, !tbaa !45
  %263 = load i32, ptr %21, align 4, !tbaa !120
  %264 = add i32 %263, 1
  store i32 %264, ptr %21, align 4, !tbaa !120
  %265 = zext i32 %263 to i64
  %266 = getelementptr inbounds nuw i8, ptr %262, i64 %265
  store i8 0, ptr %266, align 1, !tbaa !8
  %267 = load ptr, ptr %20, align 8, !tbaa !45
  %268 = load i32, ptr %21, align 4, !tbaa !120
  %269 = add i32 %268, 1
  store i32 %269, ptr %21, align 4, !tbaa !120
  %270 = zext i32 %268 to i64
  %271 = getelementptr inbounds nuw i8, ptr %267, i64 %270
  store i8 0, ptr %271, align 1, !tbaa !8
  %272 = load ptr, ptr %20, align 8, !tbaa !45
  %273 = load i32, ptr %21, align 4, !tbaa !120
  %274 = add i32 %273, 1
  store i32 %274, ptr %21, align 4, !tbaa !120
  %275 = zext i32 %273 to i64
  %276 = getelementptr inbounds nuw i8, ptr %272, i64 %275
  store i8 %261, ptr %276, align 1, !tbaa !8
  %277 = zext i8 %261 to i64, !nosanitize !54
  %278 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %277
  %279 = load i16, ptr %278, align 4, !tbaa !8
  %280 = add i16 %279, 1
  store i16 %280, ptr %278, align 4, !tbaa !8
  %281 = load i32, ptr %21, align 4, !tbaa !120
  %282 = load i32, ptr %24, align 8, !tbaa !46
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %329

284:                                              ; preds = %255
  %285 = load i64, ptr %26, align 8, !tbaa !65
  %286 = icmp sgt i64 %285, -1
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load ptr, ptr %11, align 8, !tbaa !37
  %289 = and i64 %285, 4294967295
  %290 = getelementptr inbounds nuw i8, ptr %288, i64 %289
  br label %291

291:                                              ; preds = %284, %287
  %292 = phi ptr [ %290, %287 ], [ null, %284 ]
  %293 = load i32, ptr %12, align 4, !tbaa !64
  %294 = zext i32 %293 to i64
  %295 = sub nsw i64 %294, %285
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %292, i64 noundef %295, i32 noundef 0) #13
  %296 = load i32, ptr %12, align 4, !tbaa !64
  %297 = zext i32 %296 to i64
  store i64 %297, ptr %26, align 8, !tbaa !65
  %298 = load ptr, ptr %0, align 8, !tbaa !19
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 56
  %300 = load ptr, ptr %299, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %300) #13
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 40
  %302 = load i64, ptr %301, align 8, !tbaa !88
  %303 = getelementptr inbounds nuw i8, ptr %298, i64 32
  %304 = load i32, ptr %303, align 8, !tbaa !99
  %305 = zext i32 %304 to i64
  %306 = tail call i64 @llvm.umin.i64(i64 %302, i64 %305)
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %329, label %308

308:                                              ; preds = %291
  %309 = trunc nuw i64 %306 to i32
  %310 = getelementptr inbounds nuw i8, ptr %298, i64 24
  %311 = load ptr, ptr %310, align 8, !tbaa !98
  %312 = getelementptr inbounds nuw i8, ptr %300, i64 32
  %313 = load ptr, ptr %312, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %311, ptr align 1 %313, i64 %306, i1 false)
  %314 = load ptr, ptr %310, align 8, !tbaa !98
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 %306
  store ptr %315, ptr %310, align 8, !tbaa !98
  %316 = load ptr, ptr %312, align 8, !tbaa !89
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 %306
  store ptr %317, ptr %312, align 8, !tbaa !89
  %318 = getelementptr inbounds nuw i8, ptr %298, i64 40
  %319 = load i64, ptr %318, align 8, !tbaa !100
  %320 = add i64 %319, %306
  store i64 %320, ptr %318, align 8, !tbaa !100
  %321 = load i32, ptr %303, align 8, !tbaa !99
  %322 = sub i32 %321, %309
  store i32 %322, ptr %303, align 8, !tbaa !99
  %323 = load i64, ptr %301, align 8, !tbaa !88
  %324 = sub i64 %323, %306
  store i64 %324, ptr %301, align 8, !tbaa !88
  %325 = icmp eq i64 %323, %306
  br i1 %325, label %326, label %329

326:                                              ; preds = %308
  %327 = getelementptr inbounds nuw i8, ptr %300, i64 16
  %328 = load ptr, ptr %327, align 8, !tbaa !42
  store ptr %328, ptr %312, align 8, !tbaa !89
  br label %329

329:                                              ; preds = %326, %308, %291, %255
  %330 = load i32, ptr %12, align 4, !tbaa !64
  %331 = add i32 %330, 1
  store i32 %331, ptr %12, align 4, !tbaa !64
  %332 = load i32, ptr %3, align 4, !tbaa !66
  %333 = add i32 %332, -1
  store i32 %333, ptr %3, align 4, !tbaa !66
  %334 = load ptr, ptr %0, align 8, !tbaa !19
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 32
  %336 = load i32, ptr %335, align 8, !tbaa !99
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %480, label %202

338:                                              ; preds = %252
  store i32 1, ptr %25, align 8, !tbaa !70
  %339 = load i32, ptr %12, align 4, !tbaa !64
  %340 = add i32 %339, 1
  store i32 %340, ptr %12, align 4, !tbaa !64
  %341 = load i32, ptr %3, align 4, !tbaa !66
  %342 = add i32 %341, -1
  store i32 %342, ptr %3, align 4, !tbaa !66
  br label %202

343:                                              ; preds = %38
  %344 = load i32, ptr %25, align 8, !tbaa !70
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %372, label %346

346:                                              ; preds = %343
  %347 = load ptr, ptr %11, align 8, !tbaa !37
  %348 = load i32, ptr %12, align 4, !tbaa !64
  %349 = add i32 %348, -1
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds nuw i8, ptr %347, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !8
  %353 = load ptr, ptr %20, align 8, !tbaa !45
  %354 = load i32, ptr %21, align 4, !tbaa !120
  %355 = add i32 %354, 1
  store i32 %355, ptr %21, align 4, !tbaa !120
  %356 = zext i32 %354 to i64
  %357 = getelementptr inbounds nuw i8, ptr %353, i64 %356
  store i8 0, ptr %357, align 1, !tbaa !8
  %358 = load ptr, ptr %20, align 8, !tbaa !45
  %359 = load i32, ptr %21, align 4, !tbaa !120
  %360 = add i32 %359, 1
  store i32 %360, ptr %21, align 4, !tbaa !120
  %361 = zext i32 %359 to i64
  %362 = getelementptr inbounds nuw i8, ptr %358, i64 %361
  store i8 0, ptr %362, align 1, !tbaa !8
  %363 = load ptr, ptr %20, align 8, !tbaa !45
  %364 = load i32, ptr %21, align 4, !tbaa !120
  %365 = add i32 %364, 1
  store i32 %365, ptr %21, align 4, !tbaa !120
  %366 = zext i32 %364 to i64
  %367 = getelementptr inbounds nuw i8, ptr %363, i64 %366
  store i8 %352, ptr %367, align 1, !tbaa !8
  %368 = zext i8 %352 to i64, !nosanitize !54
  %369 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %368
  %370 = load i16, ptr %369, align 4, !tbaa !8
  %371 = add i16 %370, 1
  store i16 %371, ptr %369, align 4, !tbaa !8
  store i32 0, ptr %25, align 8, !tbaa !70
  br label %372

372:                                              ; preds = %346, %343
  %373 = load i32, ptr %12, align 4, !tbaa !64
  %374 = tail call i32 @llvm.umin.i32(i32 %373, i32 2)
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %374, ptr %375, align 4, !tbaa !67
  %376 = icmp eq i32 %1, 4
  br i1 %376, label %377, label %427

377:                                              ; preds = %372
  %378 = load i64, ptr %26, align 8, !tbaa !65
  %379 = icmp sgt i64 %378, -1
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = load ptr, ptr %11, align 8, !tbaa !37
  %382 = and i64 %378, 4294967295
  %383 = getelementptr inbounds nuw i8, ptr %381, i64 %382
  br label %384

384:                                              ; preds = %377, %380
  %385 = phi ptr [ %383, %380 ], [ null, %377 ]
  %386 = zext i32 %373 to i64
  %387 = sub nsw i64 %386, %378
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %385, i64 noundef %387, i32 noundef 1) #13
  %388 = load i32, ptr %12, align 4, !tbaa !64
  %389 = zext i32 %388 to i64
  store i64 %389, ptr %26, align 8, !tbaa !65
  %390 = load ptr, ptr %0, align 8, !tbaa !19
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 56
  %392 = load ptr, ptr %391, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %392) #13
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 40
  %394 = load i64, ptr %393, align 8, !tbaa !88
  %395 = getelementptr inbounds nuw i8, ptr %390, i64 32
  %396 = load i32, ptr %395, align 8, !tbaa !99
  %397 = zext i32 %396 to i64
  %398 = tail call i64 @llvm.umin.i64(i64 %394, i64 %397)
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %421, label %400

400:                                              ; preds = %384
  %401 = trunc nuw i64 %398 to i32
  %402 = getelementptr inbounds nuw i8, ptr %390, i64 24
  %403 = load ptr, ptr %402, align 8, !tbaa !98
  %404 = getelementptr inbounds nuw i8, ptr %392, i64 32
  %405 = load ptr, ptr %404, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %403, ptr align 1 %405, i64 %398, i1 false)
  %406 = load ptr, ptr %402, align 8, !tbaa !98
  %407 = getelementptr inbounds nuw i8, ptr %406, i64 %398
  store ptr %407, ptr %402, align 8, !tbaa !98
  %408 = load ptr, ptr %404, align 8, !tbaa !89
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %398
  store ptr %409, ptr %404, align 8, !tbaa !89
  %410 = getelementptr inbounds nuw i8, ptr %390, i64 40
  %411 = load i64, ptr %410, align 8, !tbaa !100
  %412 = add i64 %411, %398
  store i64 %412, ptr %410, align 8, !tbaa !100
  %413 = load i32, ptr %395, align 8, !tbaa !99
  %414 = sub i32 %413, %401
  store i32 %414, ptr %395, align 8, !tbaa !99
  %415 = load i64, ptr %393, align 8, !tbaa !88
  %416 = sub i64 %415, %398
  store i64 %416, ptr %393, align 8, !tbaa !88
  %417 = icmp eq i64 %415, %398
  br i1 %417, label %418, label %421

418:                                              ; preds = %400
  %419 = getelementptr inbounds nuw i8, ptr %392, i64 16
  %420 = load ptr, ptr %419, align 8, !tbaa !42
  store ptr %420, ptr %404, align 8, !tbaa !89
  br label %421

421:                                              ; preds = %384, %400, %418
  %422 = load ptr, ptr %0, align 8, !tbaa !19
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 32
  %424 = load i32, ptr %423, align 8, !tbaa !99
  %425 = icmp eq i32 %424, 0
  %426 = select i1 %425, i32 2, i32 3
  br label %480

427:                                              ; preds = %372
  %428 = load i32, ptr %21, align 4, !tbaa !120
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %479, label %430

430:                                              ; preds = %427
  %431 = load i64, ptr %26, align 8, !tbaa !65
  %432 = icmp sgt i64 %431, -1
  br i1 %432, label %433, label %437

433:                                              ; preds = %430
  %434 = load ptr, ptr %11, align 8, !tbaa !37
  %435 = and i64 %431, 4294967295
  %436 = getelementptr inbounds nuw i8, ptr %434, i64 %435
  br label %437

437:                                              ; preds = %430, %433
  %438 = phi ptr [ %436, %433 ], [ null, %430 ]
  %439 = zext i32 %373 to i64
  %440 = sub nsw i64 %439, %431
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %438, i64 noundef %440, i32 noundef 0) #13
  %441 = load i32, ptr %12, align 4, !tbaa !64
  %442 = zext i32 %441 to i64
  store i64 %442, ptr %26, align 8, !tbaa !65
  %443 = load ptr, ptr %0, align 8, !tbaa !19
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 56
  %445 = load ptr, ptr %444, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %445) #13
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 40
  %447 = load i64, ptr %446, align 8, !tbaa !88
  %448 = getelementptr inbounds nuw i8, ptr %443, i64 32
  %449 = load i32, ptr %448, align 8, !tbaa !99
  %450 = zext i32 %449 to i64
  %451 = tail call i64 @llvm.umin.i64(i64 %447, i64 %450)
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %474, label %453

453:                                              ; preds = %437
  %454 = trunc nuw i64 %451 to i32
  %455 = getelementptr inbounds nuw i8, ptr %443, i64 24
  %456 = load ptr, ptr %455, align 8, !tbaa !98
  %457 = getelementptr inbounds nuw i8, ptr %445, i64 32
  %458 = load ptr, ptr %457, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %456, ptr align 1 %458, i64 %451, i1 false)
  %459 = load ptr, ptr %455, align 8, !tbaa !98
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 %451
  store ptr %460, ptr %455, align 8, !tbaa !98
  %461 = load ptr, ptr %457, align 8, !tbaa !89
  %462 = getelementptr inbounds nuw i8, ptr %461, i64 %451
  store ptr %462, ptr %457, align 8, !tbaa !89
  %463 = getelementptr inbounds nuw i8, ptr %443, i64 40
  %464 = load i64, ptr %463, align 8, !tbaa !100
  %465 = add i64 %464, %451
  store i64 %465, ptr %463, align 8, !tbaa !100
  %466 = load i32, ptr %448, align 8, !tbaa !99
  %467 = sub i32 %466, %454
  store i32 %467, ptr %448, align 8, !tbaa !99
  %468 = load i64, ptr %446, align 8, !tbaa !88
  %469 = sub i64 %468, %451
  store i64 %469, ptr %446, align 8, !tbaa !88
  %470 = icmp eq i64 %468, %451
  br i1 %470, label %471, label %474

471:                                              ; preds = %453
  %472 = getelementptr inbounds nuw i8, ptr %445, i64 16
  %473 = load ptr, ptr %472, align 8, !tbaa !42
  store ptr %473, ptr %457, align 8, !tbaa !89
  br label %474

474:                                              ; preds = %437, %453, %471
  %475 = load ptr, ptr %0, align 8, !tbaa !19
  %476 = getelementptr inbounds nuw i8, ptr %475, i64 32
  %477 = load i32, ptr %476, align 8, !tbaa !99
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %480, label %479

479:                                              ; preds = %474, %427
  br label %480

480:                                              ; preds = %329, %247, %34, %474, %421, %479
  %481 = phi i32 [ 0, %474 ], [ %426, %421 ], [ 1, %479 ], [ 0, %34 ], [ 0, %247 ], [ 0, %329 ]
  ret i32 %481
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @longest_match(ptr noundef captures(none) %0, i32 noundef range(i32 1, 65536) %1) unnamed_addr #9 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 188
  %4 = load i32, ptr %3, align 4, !tbaa !63
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %16 = load i32, ptr %15, align 8, !tbaa !31
  %17 = add i32 %16, -262
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %17)
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %22 = load i32, ptr %21, align 8, !tbaa !32
  %23 = getelementptr inbounds nuw i8, ptr %10, i64 258
  %24 = sext i32 %12 to i64
  %25 = getelementptr i8, ptr %10, i64 %24
  %26 = getelementptr i8, ptr %25, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !8
  %28 = load i8, ptr %25, align 1, !tbaa !8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %30 = load i32, ptr %29, align 4, !tbaa !59
  %31 = icmp ult i32 %12, %30
  %32 = lshr i32 %4, 2
  %33 = select i1 %31, i32 %4, i32 %32
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %35 = load i32, ptr %34, align 4, !tbaa !66
  %36 = tail call i32 @llvm.umin.i32(i32 %14, i32 %35)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %38 = getelementptr inbounds nuw i8, ptr %10, i64 1
  %39 = ptrtoint ptr %23 to i64
  br label %40

40:                                               ; preds = %155, %2
  %41 = phi i32 [ %12, %2 ], [ %156, %155 ]
  %42 = phi i32 [ %33, %2 ], [ %165, %155 ]
  %43 = phi i32 [ %1, %2 ], [ %163, %155 ]
  %44 = phi i8 [ %27, %2 ], [ %157, %155 ]
  %45 = phi i8 [ %28, %2 ], [ %158, %155 ]
  %46 = zext nneg i32 %43 to i64
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 %46
  %48 = sext i32 %41 to i64
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !8
  %51 = icmp eq i8 %50, %45
  br i1 %51, label %52, label %155

52:                                               ; preds = %40
  %53 = getelementptr i8, ptr %49, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !8
  %55 = icmp eq i8 %54, %44
  br i1 %55, label %56, label %155

56:                                               ; preds = %52
  %57 = load i8, ptr %47, align 1, !tbaa !8
  %58 = load i8, ptr %10, align 1, !tbaa !8
  %59 = icmp eq i8 %57, %58
  br i1 %59, label %60, label %155

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %47, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !8
  %63 = load i8, ptr %38, align 1, !tbaa !8
  %64 = icmp eq i8 %62, %63
  br i1 %64, label %65, label %155

65:                                               ; preds = %60
  %66 = getelementptr inbounds nuw i8, ptr %47, i64 2
  br label %67

67:                                               ; preds = %112, %65
  %68 = phi ptr [ %66, %65 ], [ %116, %112 ]
  %69 = phi i64 [ 2, %65 ], [ %113, %112 ]
  %70 = getelementptr inbounds nuw i8, ptr %10, i64 %69
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !8
  %73 = getelementptr inbounds nuw i8, ptr %68, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !8
  %75 = icmp eq i8 %72, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %67
  %77 = getelementptr inbounds nuw i8, ptr %70, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !8
  %79 = getelementptr inbounds nuw i8, ptr %68, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !8
  %81 = icmp eq i8 %78, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %76
  %83 = getelementptr inbounds nuw i8, ptr %70, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !8
  %85 = getelementptr inbounds nuw i8, ptr %68, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !8
  %87 = icmp eq i8 %84, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %82
  %89 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %90 = load i8, ptr %89, align 1, !tbaa !8
  %91 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %92 = load i8, ptr %91, align 1, !tbaa !8
  %93 = icmp eq i8 %90, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %88
  %95 = getelementptr inbounds nuw i8, ptr %70, i64 5
  %96 = load i8, ptr %95, align 1, !tbaa !8
  %97 = getelementptr inbounds nuw i8, ptr %68, i64 5
  %98 = load i8, ptr %97, align 1, !tbaa !8
  %99 = icmp eq i8 %96, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %94
  %101 = getelementptr inbounds nuw i8, ptr %70, i64 6
  %102 = load i8, ptr %101, align 1, !tbaa !8
  %103 = getelementptr inbounds nuw i8, ptr %68, i64 6
  %104 = load i8, ptr %103, align 1, !tbaa !8
  %105 = icmp eq i8 %102, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %100
  %107 = getelementptr inbounds nuw i8, ptr %70, i64 7
  %108 = load i8, ptr %107, align 1, !tbaa !8
  %109 = getelementptr inbounds nuw i8, ptr %68, i64 7
  %110 = load i8, ptr %109, align 1, !tbaa !8
  %111 = icmp eq i8 %108, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = add nuw nsw i64 %69, 8
  %114 = getelementptr inbounds nuw i8, ptr %10, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !8
  %116 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %117 = load i8, ptr %116, align 1, !tbaa !8
  %118 = icmp eq i8 %115, %117
  %119 = icmp samesign ult i64 %69, 250
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %67, label %135, !llvm.loop !129

121:                                              ; preds = %67
  %122 = getelementptr inbounds nuw i8, ptr %70, i64 1
  br label %137

123:                                              ; preds = %76
  %124 = getelementptr inbounds nuw i8, ptr %70, i64 2
  br label %137

125:                                              ; preds = %82
  %126 = getelementptr inbounds nuw i8, ptr %70, i64 3
  br label %137

127:                                              ; preds = %88
  %128 = getelementptr inbounds nuw i8, ptr %70, i64 4
  br label %137

129:                                              ; preds = %94
  %130 = getelementptr inbounds nuw i8, ptr %70, i64 5
  br label %137

131:                                              ; preds = %100
  %132 = getelementptr inbounds nuw i8, ptr %70, i64 6
  br label %137

133:                                              ; preds = %106
  %134 = getelementptr inbounds nuw i8, ptr %70, i64 7
  br label %137

135:                                              ; preds = %112
  %136 = getelementptr inbounds nuw i8, ptr %10, i64 %113
  br label %137

137:                                              ; preds = %135, %133, %131, %129, %127, %125, %123, %121
  %138 = phi ptr [ %124, %123 ], [ %126, %125 ], [ %122, %121 ], [ %134, %133 ], [ %132, %131 ], [ %130, %129 ], [ %128, %127 ], [ %136, %135 ]
  %139 = ptrtoint ptr %138 to i64
  %140 = sub i64 %139, %39
  %141 = trunc i64 %140 to i32
  %142 = add i32 %141, 258
  %143 = icmp sgt i32 %142, %41
  br i1 %143, label %144, label %155

144:                                              ; preds = %137
  store i32 %43, ptr %37, align 8, !tbaa !125
  %145 = icmp slt i32 %142, %36
  br i1 %145, label %146, label %168

146:                                              ; preds = %144
  %147 = shl i64 %140, 32
  %148 = add i64 %147, 1103806595072
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds i8, ptr %10, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !8
  %152 = sext i32 %142 to i64
  %153 = getelementptr inbounds i8, ptr %10, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !8
  br label %155

155:                                              ; preds = %137, %146, %40, %52, %56, %60
  %156 = phi i32 [ %41, %40 ], [ %41, %52 ], [ %41, %56 ], [ %41, %60 ], [ %142, %146 ], [ %41, %137 ]
  %157 = phi i8 [ %44, %40 ], [ %44, %52 ], [ %44, %56 ], [ %44, %60 ], [ %151, %146 ], [ %44, %137 ]
  %158 = phi i8 [ %45, %40 ], [ %45, %52 ], [ %45, %56 ], [ %45, %60 ], [ %154, %146 ], [ %45, %137 ]
  %159 = and i32 %43, %22
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !51
  %163 = zext i16 %162 to i32
  %164 = icmp uge i32 %18, %163
  %165 = add i32 %42, -1
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %168, label %40, !llvm.loop !130

168:                                              ; preds = %155, %144
  %169 = phi i32 [ %142, %144 ], [ %156, %155 ]
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 %35)
  ret i32 %170
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nomerge noreturn nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !11, i64 48}
!10 = !{!"z_stream_s", !11, i64 0, !5, i64 8, !13, i64 16, !11, i64 24, !5, i64 32, !13, i64 40, !11, i64 48, !14, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!15 = !{!10, !12, i64 64}
!16 = !{!10, !12, i64 80}
!17 = !{!10, !12, i64 72}
!18 = !{!10, !14, i64 56}
!19 = !{!20, !21, i64 0}
!20 = !{!"internal_state", !21, i64 0, !5, i64 8, !11, i64 16, !13, i64 24, !11, i64 32, !13, i64 40, !5, i64 48, !22, i64 56, !13, i64 64, !6, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !11, i64 96, !13, i64 104, !23, i64 112, !23, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !13, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !24, i64 2904, !24, i64 2928, !24, i64 2952, !6, i64 2976, !6, i64 3008, !5, i64 5300, !5, i64 5304, !6, i64 5308, !11, i64 5888, !5, i64 5896, !5, i64 5900, !5, i64 5904, !13, i64 5912, !13, i64 5920, !5, i64 5928, !5, i64 5932, !27, i64 5936, !5, i64 5940, !5, i64 5944, !13, i64 5952, !5, i64 5960}
!21 = !{!"p1 _ZTS10z_stream_s", !12, i64 0}
!22 = !{!"p1 _ZTS11gz_header_s", !12, i64 0}
!23 = !{!"p1 short", !12, i64 0}
!24 = !{!"tree_desc_s", !25, i64 0, !5, i64 8, !26, i64 16}
!25 = !{!"p1 _ZTS9ct_data_s", !12, i64 0}
!26 = !{!"p1 _ZTS18static_tree_desc_s", !12, i64 0}
!27 = !{!"short", !6, i64 0}
!28 = !{!20, !5, i64 8}
!29 = !{!20, !5, i64 48}
!30 = !{!20, !5, i64 84}
!31 = !{!20, !5, i64 80}
!32 = !{!20, !5, i64 88}
!33 = !{!20, !5, i64 136}
!34 = !{!20, !5, i64 132}
!35 = !{!20, !5, i64 140}
!36 = !{!20, !5, i64 144}
!37 = !{!20, !11, i64 96}
!38 = !{!20, !23, i64 112}
!39 = !{!20, !23, i64 120}
!40 = !{!20, !13, i64 5952}
!41 = !{!20, !5, i64 5896}
!42 = !{!20, !11, i64 16}
!43 = !{!20, !13, i64 24}
!44 = !{!11, !11, i64 0}
!45 = !{!20, !11, i64 5888}
!46 = !{!20, !5, i64 5904}
!47 = !{!20, !5, i64 196}
!48 = !{!20, !5, i64 200}
!49 = !{!20, !6, i64 72}
!50 = !{!20, !13, i64 104}
!51 = !{!27, !27, i64 0}
!52 = !{!20, !5, i64 5960}
!53 = !{!"branch_weights", i32 1048575, i32 1}
!54 = !{}
!55 = !{!56, !27, i64 2}
!56 = !{!"config_s", !27, i64 0, !27, i64 2, !27, i64 4, !27, i64 6, !12, i64 8}
!57 = !{!20, !5, i64 192}
!58 = !{!56, !27, i64 0}
!59 = !{!20, !5, i64 204}
!60 = !{!56, !27, i64 4}
!61 = !{!20, !5, i64 208}
!62 = !{!56, !27, i64 6}
!63 = !{!20, !5, i64 188}
!64 = !{!20, !5, i64 172}
!65 = !{!20, !13, i64 152}
!66 = !{!20, !5, i64 180}
!67 = !{!20, !5, i64 5932}
!68 = !{!20, !5, i64 184}
!69 = !{!20, !5, i64 160}
!70 = !{!20, !5, i64 168}
!71 = !{!20, !5, i64 128}
!72 = !{!10, !13, i64 96}
!73 = !{!10, !5, i64 8}
!74 = !{!10, !11, i64 0}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = distinct !{!81, !76, !80, !79}
!82 = distinct !{!82, !76, !79, !80}
!83 = distinct !{!83, !76, !80, !79}
!84 = !{!10, !13, i64 16}
!85 = distinct !{!85, !76}
!86 = distinct !{!86, !76}
!87 = !{!10, !5, i64 88}
!88 = !{!20, !13, i64 40}
!89 = !{!20, !11, i64 32}
!90 = !{!20, !5, i64 76}
!91 = !{!20, !22, i64 56}
!92 = !{!20, !5, i64 5940}
!93 = !{!20, !5, i64 5944}
!94 = !{!20, !27, i64 5936}
!95 = distinct !{!95, !76}
!96 = !{!56, !12, i64 8}
!97 = !{!20, !5, i64 5928}
!98 = !{!10, !11, i64 24}
!99 = !{!10, !5, i64 32}
!100 = !{!10, !13, i64 40}
!101 = !{!102, !5, i64 0}
!102 = !{!"gz_header_s", !5, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!103 = !{!102, !5, i64 68}
!104 = !{!102, !11, i64 24}
!105 = !{!102, !11, i64 40}
!106 = !{!102, !11, i64 56}
!107 = !{!102, !13, i64 8}
!108 = !{!102, !5, i64 20}
!109 = !{!102, !5, i64 32}
!110 = !{!20, !13, i64 64}
!111 = distinct !{!111, !76, !112}
!112 = !{!"llvm.loop.peeled.count", i32 1}
!113 = distinct !{!113, !76}
!114 = distinct !{!114, !76}
!115 = distinct !{!115, !76, !79, !80}
!116 = distinct !{!116, !76, !80, !79}
!117 = distinct !{!117, !76, !79, !80}
!118 = distinct !{!118, !76, !80, !79}
!119 = distinct !{!119, !76}
!120 = !{!20, !5, i64 5900}
!121 = distinct !{!121, !76}
!122 = !{!20, !25, i64 2904}
!123 = !{!20, !25, i64 2928}
!124 = !{!20, !25, i64 2952}
!125 = !{!20, !5, i64 176}
!126 = distinct !{!126, !76}
!127 = !{!20, !5, i64 164}
!128 = distinct !{!128, !76}
!129 = distinct !{!129, !76}
!130 = distinct !{!130, !76}
