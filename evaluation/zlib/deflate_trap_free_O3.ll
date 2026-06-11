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
  br i1 %9, label %146, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp eq i8 %11, 49
  br i1 %12, label %13, label %146

13:                                               ; preds = %10
  %14 = icmp sgt i32 %7, -1
  br i1 %14, label %16, label %15, !prof !9, !nosanitize !10

15:                                               ; preds = %13
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

16:                                               ; preds = %13
  %17 = icmp eq i32 %7, 112
  br i1 %17, label %18, label %146

18:                                               ; preds = %16
  %19 = icmp eq ptr %0, null
  br i1 %19, label %146, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %21, align 8, !tbaa !11
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  store ptr @zcalloc, ptr %22, align 8, !tbaa !17
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %26, align 8, !tbaa !18
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi ptr [ @zcalloc, %25 ], [ %23, %20 ]
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store ptr @zcfree, ptr %29, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %32, %27
  %34 = icmp eq i32 %1, -1
  %35 = select i1 %34, i32 6, i32 %1
  %36 = icmp slt i32 %3, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = icmp samesign ult i32 %3, -15
  br i1 %38, label %146, label %39

39:                                               ; preds = %37
  %40 = sub nsw i32 0, %3
  br label %45

41:                                               ; preds = %33
  %42 = icmp samesign ugt i32 %3, 15
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = add nsw i32 %3, -16
  br label %45

45:                                               ; preds = %41, %43, %39
  %46 = phi i32 [ %40, %39 ], [ %44, %43 ], [ %3, %41 ]
  %47 = phi i1 [ true, %39 ], [ true, %43 ], [ false, %41 ]
  %48 = phi i32 [ 0, %39 ], [ 2, %43 ], [ 1, %41 ]
  %49 = add i32 %4, -10
  %50 = icmp ult i32 %49, -9
  %51 = icmp ne i32 %2, 8
  %52 = or i1 %51, %50
  %53 = add nsw i32 %46, -16
  %54 = icmp ult i32 %53, -8
  %55 = select i1 %52, i1 true, i1 %54
  %56 = icmp ugt i32 %35, 9
  %57 = or i1 %56, %55
  %58 = icmp ugt i32 %5, 4
  %59 = or i1 %58, %57
  br i1 %59, label %146, label %60

60:                                               ; preds = %45
  %61 = icmp eq i32 %46, 8
  %62 = and i1 %61, %47
  br i1 %62, label %146, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %65 = load ptr, ptr %64, align 8, !tbaa !18
  %66 = tail call ptr %28(ptr noundef %65, i32 noundef 1, i32 noundef 5968) #13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %146, label %68

68:                                               ; preds = %63
  %69 = select i1 %61, i32 9, i32 %46
  %70 = getelementptr inbounds nuw i8, ptr %66, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %70, i8 0, i64 5960, i1 false)
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %66, ptr %71, align 8, !tbaa !20
  store ptr %0, ptr %66, align 8, !tbaa !21
  %72 = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i32 42, ptr %72, align 8, !tbaa !30
  %73 = getelementptr inbounds nuw i8, ptr %66, i64 48
  store i32 %48, ptr %73, align 8, !tbaa !31
  %74 = getelementptr inbounds nuw i8, ptr %66, i64 84
  store i32 %69, ptr %74, align 4, !tbaa !32
  %75 = shl nuw nsw i32 1, %69
  %76 = getelementptr inbounds nuw i8, ptr %66, i64 80
  store i32 %75, ptr %76, align 8, !tbaa !33
  %77 = add nsw i32 %75, -1
  %78 = getelementptr inbounds nuw i8, ptr %66, i64 88
  store i32 %77, ptr %78, align 8, !tbaa !34
  %79 = add nuw nsw i32 %4, 7
  %80 = getelementptr inbounds nuw i8, ptr %66, i64 136
  store i32 %79, ptr %80, align 8, !tbaa !35
  %81 = shl nuw nsw i32 128, %4
  %82 = getelementptr inbounds nuw i8, ptr %66, i64 132
  store i32 %81, ptr %82, align 4, !tbaa !36
  %83 = add nsw i32 %81, -1
  %84 = getelementptr inbounds nuw i8, ptr %66, i64 140
  store i32 %83, ptr %84, align 4, !tbaa !37
  %85 = trunc nuw nsw i32 %4 to i8
  %86 = add nuw nsw i8 %85, 9
  %87 = udiv i8 %86, 3
  %88 = zext nneg i8 %87 to i32
  %89 = getelementptr inbounds nuw i8, ptr %66, i64 144
  store i32 %88, ptr %89, align 8, !tbaa !38
  %90 = load ptr, ptr %22, align 8, !tbaa !17
  %91 = load ptr, ptr %64, align 8, !tbaa !18
  %92 = tail call ptr %90(ptr noundef %91, i32 noundef %75, i32 noundef 2) #13
  %93 = getelementptr inbounds nuw i8, ptr %66, i64 96
  store ptr %92, ptr %93, align 8, !tbaa !39
  %94 = load ptr, ptr %22, align 8, !tbaa !17
  %95 = load ptr, ptr %64, align 8, !tbaa !18
  %96 = load i32, ptr %76, align 8, !tbaa !33
  %97 = tail call ptr %94(ptr noundef %95, i32 noundef %96, i32 noundef 2) #13
  %98 = getelementptr inbounds nuw i8, ptr %66, i64 112
  store ptr %97, ptr %98, align 8, !tbaa !40
  %99 = load ptr, ptr %22, align 8, !tbaa !17
  %100 = load ptr, ptr %64, align 8, !tbaa !18
  %101 = load i32, ptr %82, align 4, !tbaa !36
  %102 = tail call ptr %99(ptr noundef %100, i32 noundef %101, i32 noundef 2) #13
  %103 = getelementptr inbounds nuw i8, ptr %66, i64 120
  store ptr %102, ptr %103, align 8, !tbaa !41
  %104 = getelementptr inbounds nuw i8, ptr %66, i64 5952
  store i64 0, ptr %104, align 8, !tbaa !42
  %105 = shl nuw nsw i32 64, %4
  %106 = getelementptr inbounds nuw i8, ptr %66, i64 5896
  store i32 %105, ptr %106, align 8, !tbaa !43
  %107 = load ptr, ptr %22, align 8, !tbaa !17
  %108 = load ptr, ptr %64, align 8, !tbaa !18
  %109 = tail call ptr %107(ptr noundef %108, i32 noundef %105, i32 noundef 4) #13
  %110 = getelementptr inbounds nuw i8, ptr %66, i64 16
  store ptr %109, ptr %110, align 8, !tbaa !44
  %111 = load i32, ptr %106, align 8, !tbaa !43
  %112 = zext i32 %111 to i64
  %113 = shl nuw nsw i64 %112, 2
  %114 = getelementptr inbounds nuw i8, ptr %66, i64 24
  store i64 %113, ptr %114, align 8, !tbaa !45
  %115 = load ptr, ptr %93, align 8, !tbaa !39
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %68
  %118 = load ptr, ptr %98, align 8, !tbaa !40
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %103, align 8, !tbaa !41
  %122 = icmp eq ptr %121, null
  %123 = icmp eq ptr %109, null
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120, %117, %68
  store i32 666, ptr %72, align 8, !tbaa !30
  %126 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !46
  store ptr %126, ptr %21, align 8, !tbaa !11
  %127 = tail call i32 @deflateEnd(ptr noundef nonnull %0)
  br label %146

128:                                              ; preds = %120
  %129 = getelementptr inbounds nuw i8, ptr %109, i64 %112
  %130 = getelementptr inbounds nuw i8, ptr %66, i64 5888
  store ptr %129, ptr %130, align 8, !tbaa !47
  %131 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %111, i32 1), !nosanitize !10
  %132 = extractvalue { i32, i1 } %131, 1, !nosanitize !10
  br i1 %132, label %133, label %134, !prof !48, !nosanitize !10

133:                                              ; preds = %128
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

134:                                              ; preds = %128
  %135 = extractvalue { i32, i1 } %131, 0, !nosanitize !10
  %136 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %135, i32 3), !nosanitize !10
  %137 = extractvalue { i32, i1 } %136, 1, !nosanitize !10
  br i1 %137, label %138, label %139, !prof !48, !nosanitize !10

138:                                              ; preds = %134
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !10
  unreachable, !nosanitize !10

139:                                              ; preds = %134
  %140 = extractvalue { i32, i1 } %136, 0, !nosanitize !10
  %141 = getelementptr inbounds nuw i8, ptr %66, i64 5904
  store i32 %140, ptr %141, align 8, !tbaa !49
  %142 = getelementptr inbounds nuw i8, ptr %66, i64 196
  store i32 %35, ptr %142, align 4, !tbaa !50
  %143 = getelementptr inbounds nuw i8, ptr %66, i64 200
  store i32 %5, ptr %143, align 8, !tbaa !51
  %144 = getelementptr inbounds nuw i8, ptr %66, i64 72
  store i8 8, ptr %144, align 8, !tbaa !52
  %145 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %146

146:                                              ; preds = %63, %45, %60, %37, %18, %8, %10, %16, %139, %125
  %147 = phi i32 [ %145, %139 ], [ -6, %8 ], [ -2, %18 ], [ -2, %37 ], [ -2, %45 ], [ -4, %125 ], [ -6, %16 ], [ -6, %10 ], [ -2, %60 ], [ -4, %63 ]
  ret i32 %147
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #1

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, 1) i32 @deflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !21
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !30
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
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #13
  %28 = load ptr, ptr %12, align 8, !tbaa !20
  %29 = load ptr, ptr %8, align 8, !tbaa !19
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi ptr [ %29, %25 ], [ %9, %21 ]
  %32 = phi ptr [ %28, %25 ], [ %13, %21 ]
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 120
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %38 = load ptr, ptr %37, align 8, !tbaa !18
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #13
  %39 = load ptr, ptr %12, align 8, !tbaa !20
  %40 = load ptr, ptr %8, align 8, !tbaa !19
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi ptr [ %40, %36 ], [ %31, %30 ]
  %43 = phi ptr [ %39, %36 ], [ %32, %30 ]
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !40
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %49 = load ptr, ptr %48, align 8, !tbaa !18
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #13
  %50 = load ptr, ptr %12, align 8, !tbaa !20
  %51 = load ptr, ptr %8, align 8, !tbaa !19
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi ptr [ %51, %47 ], [ %42, %41 ]
  %54 = phi ptr [ %50, %47 ], [ %43, %41 ]
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %60 = load ptr, ptr %59, align 8, !tbaa !18
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #13
  %61 = load ptr, ptr %8, align 8, !tbaa !19
  %62 = load ptr, ptr %12, align 8, !tbaa !20
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !18
  tail call void %65(ptr noundef %67, ptr noundef %64) #13
  store ptr null, ptr %12, align 8, !tbaa !20
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %11, %15, %18, %3, %7, %1, %63
  %71 = phi i32 [ %69, %63 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = tail call i32 @deflateResetKeep(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %52

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 80
  %8 = load i32, ptr %7, align 8, !tbaa !33
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 1
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 %10, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 132
  %13 = load i32, ptr %12, align 4, !tbaa !36
  %14 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %13, i32 1), !nosanitize !10
  %15 = extractvalue { i32, i1 } %14, 1, !nosanitize !10
  br i1 %15, label %16, label %17, !prof !48, !nosanitize !10

16:                                               ; preds = %4
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

17:                                               ; preds = %4
  %18 = extractvalue { i32, i1 } %14, 0, !nosanitize !10
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 120
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %21
  store i16 0, ptr %22, align 2, !tbaa !54
  %23 = shl nuw nsw i64 %21, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %20, i8 0, i64 %23, i1 false)
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 5960
  store i32 0, ptr %24, align 8, !tbaa !55
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 196
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 2
  %30 = load i16, ptr %29, align 2, !tbaa !56
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 192
  store i32 %31, ptr %32, align 8, !tbaa !58
  %33 = load i16, ptr %28, align 16, !tbaa !59
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 204
  store i32 %34, ptr %35, align 4, !tbaa !60
  %36 = getelementptr inbounds nuw i8, ptr %28, i64 4
  %37 = load i16, ptr %36, align 4, !tbaa !61
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 %38, ptr %39, align 8, !tbaa !62
  %40 = getelementptr inbounds nuw i8, ptr %28, i64 6
  %41 = load i16, ptr %40, align 2, !tbaa !63
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds nuw i8, ptr %6, i64 188
  store i32 %42, ptr %43, align 4, !tbaa !64
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 0, ptr %44, align 4, !tbaa !65
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 0, ptr %45, align 8, !tbaa !66
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i32 0, ptr %46, align 4, !tbaa !67
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 5932
  store i32 0, ptr %47, align 4, !tbaa !68
  %48 = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 2, ptr %48, align 8, !tbaa !69
  %49 = getelementptr inbounds nuw i8, ptr %6, i64 160
  store i32 2, ptr %49, align 8, !tbaa !70
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 168
  store i32 0, ptr %50, align 8, !tbaa !71
  %51 = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i32 0, ptr %51, align 8, !tbaa !72
  br label %52

52:                                               ; preds = %17, %1
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %159, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %159, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %159, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %159, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !21
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %159

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !30
  switch i32 %22, label %159 [
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
  br i1 %24, label %159, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !31
  switch i32 %27, label %34 [
    i32 2, label %159
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %159

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !67
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %159

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !67
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %159

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !31
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !33
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %79, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !73
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #13
  store i64 %45, ptr %43, align 8, !tbaa !73
  store i32 0, ptr %26, align 8, !tbaa !31
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %47 = load i32, ptr %46, align 8, !tbaa !33
  %48 = icmp ult i32 %2, %47
  br i1 %48, label %79, label %69

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %53 = load i32, ptr %52, align 4, !tbaa !36
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 1), !nosanitize !10
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !10
  br i1 %55, label %56, label %57, !prof !48, !nosanitize !10

56:                                               ; preds = %51
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !10
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !54
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %60, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !55
  %65 = getelementptr inbounds nuw i8, ptr %15, i64 172
  store i32 0, ptr %65, align 4, !tbaa !65
  %66 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %66, align 8, !tbaa !66
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 0, ptr %67, align 4, !tbaa !68
  %68 = load i32, ptr %39, align 8, !tbaa !33
  br label %69

69:                                               ; preds = %42, %57, %49
  %70 = phi ptr [ %35, %57 ], [ %35, %49 ], [ %31, %42 ]
  %71 = phi i32 [ %68, %57 ], [ %40, %49 ], [ %47, %42 ]
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %71), !nosanitize !10
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !10
  br i1 %73, label %74, label %75, !prof !48, !nosanitize !10

74:                                               ; preds = %69
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

75:                                               ; preds = %69
  %76 = extractvalue { i32, i1 } %72, 0, !nosanitize !10
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 %77
  br label %79

79:                                               ; preds = %42, %75, %38
  %80 = phi ptr [ %70, %75 ], [ %35, %38 ], [ %31, %42 ]
  %81 = phi i32 [ %71, %75 ], [ %2, %38 ], [ %2, %42 ]
  %82 = phi ptr [ %78, %75 ], [ %1, %38 ], [ %1, %42 ]
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %84 = load i32, ptr %83, align 8, !tbaa !74
  %85 = load ptr, ptr %0, align 8, !tbaa !75
  store i32 %81, ptr %83, align 8, !tbaa !74
  store ptr %82, ptr %0, align 8, !tbaa !75
  tail call fastcc void @fill_window(ptr noundef nonnull %15)
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %87 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %89 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %90 = getelementptr inbounds nuw i8, ptr %15, i64 140
  %91 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %92 = getelementptr inbounds nuw i8, ptr %15, i64 112
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %94 = load i32, ptr %80, align 4, !tbaa !67
  %95 = icmp ugt i32 %94, 2
  br i1 %95, label %96, label %145

96:                                               ; preds = %79, %142
  %97 = phi i32 [ %143, %142 ], [ %94, %79 ]
  %98 = load i32, ptr %88, align 8, !tbaa !38
  %99 = freeze i32 %98
  %100 = icmp ult i32 %99, 32
  %101 = sub nuw nsw i32 31, %99
  br i1 %100, label %102, label %112, !prof !9

102:                                              ; preds = %96
  %103 = load i32, ptr %87, align 8, !tbaa !72
  %104 = load i32, ptr %86, align 4, !tbaa !65
  %105 = add i32 %97, -2
  br label %106

106:                                              ; preds = %102, %117
  %107 = phi i32 [ %128, %117 ], [ %103, %102 ]
  %108 = phi i32 [ %139, %117 ], [ %104, %102 ]
  %109 = phi i32 [ %140, %117 ], [ %105, %102 ]
  %110 = lshr i32 %107, %101
  %111 = icmp ult i32 %110, 2
  br i1 %111, label %113, label %112, !prof !9, !nosanitize !10

112:                                              ; preds = %96, %106
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

113:                                              ; preds = %106
  %114 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %108, i32 3), !nosanitize !10
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !10
  br i1 %115, label %116, label %117, !prof !48, !nosanitize !10

116:                                              ; preds = %113
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

117:                                              ; preds = %113
  %118 = load ptr, ptr %89, align 8, !tbaa !39
  %119 = shl i32 %107, %99
  %120 = extractvalue { i32, i1 } %114, 0, !nosanitize !10
  %121 = add i32 %120, -1
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds nuw i8, ptr %118, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !8
  %125 = zext i8 %124 to i32
  %126 = xor i32 %119, %125
  %127 = load i32, ptr %90, align 4, !tbaa !37
  %128 = and i32 %126, %127
  store i32 %128, ptr %87, align 8, !tbaa !72
  %129 = load ptr, ptr %91, align 8, !tbaa !41
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds nuw [2 x i8], ptr %129, i64 %130
  %132 = load i16, ptr %131, align 2, !tbaa !54
  %133 = load ptr, ptr %92, align 8, !tbaa !40
  %134 = load i32, ptr %93, align 8, !tbaa !34
  %135 = and i32 %134, %108
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds nuw [2 x i8], ptr %133, i64 %136
  store i16 %132, ptr %137, align 2, !tbaa !54
  %138 = trunc i32 %108 to i16
  store i16 %138, ptr %131, align 2, !tbaa !54
  %139 = add nuw i32 %108, 1
  %140 = add i32 %109, -1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %106, !llvm.loop !76

142:                                              ; preds = %117
  store i32 %139, ptr %86, align 4, !tbaa !65
  store i32 2, ptr %80, align 4, !tbaa !67
  tail call fastcc void @fill_window(ptr noundef nonnull %15)
  %143 = load i32, ptr %80, align 4, !tbaa !67
  %144 = icmp ugt i32 %143, 2
  br i1 %144, label %96, label %145, !llvm.loop !78

145:                                              ; preds = %142, %79
  %146 = phi i32 [ %94, %79 ], [ %143, %142 ]
  %147 = load i32, ptr %86, align 4, !tbaa !65
  %148 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %147, i32 %146), !nosanitize !10
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !10
  br i1 %149, label %150, label %151, !prof !48, !nosanitize !10

150:                                              ; preds = %145
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

151:                                              ; preds = %145
  %152 = extractvalue { i32, i1 } %148, 0, !nosanitize !10
  store i32 %152, ptr %86, align 4, !tbaa !65
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 %153, ptr %154, align 8, !tbaa !66
  %155 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 %146, ptr %155, align 4, !tbaa !68
  store i32 0, ptr %80, align 4, !tbaa !67
  %156 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %156, align 8, !tbaa !69
  %157 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %157, align 8, !tbaa !70
  %158 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %158, align 8, !tbaa !71
  store ptr %85, ptr %0, align 8, !tbaa !75
  store i32 %84, ptr %83, align 8, !tbaa !74
  store i32 %27, ptr %26, align 8, !tbaa !31
  br label %159

159:                                              ; preds = %25, %13, %17, %20, %5, %9, %3, %34, %28, %30, %23, %151
  %160 = phi i32 [ 0, %151 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %160
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !33
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 176
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
  %20 = load i32, ptr %5, align 4, !tbaa !67
  br label %21

21:                                               ; preds = %313, %1
  %22 = phi i32 [ %229, %313 ], [ %20, %1 ]
  %23 = load i64, ptr %4, align 8, !tbaa !53
  %24 = zext i32 %22 to i64
  %25 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %23, i64 %24), !nosanitize !10
  %26 = extractvalue { i64, i1 } %25, 1, !nosanitize !10
  br i1 %26, label %27, label %28, !prof !48, !nosanitize !10

27:                                               ; preds = %21
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

28:                                               ; preds = %21
  %29 = extractvalue { i64, i1 } %25, 0, !nosanitize !10
  %30 = load i32, ptr %6, align 4, !tbaa !65
  %31 = zext i32 %30 to i64
  %32 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %29, i64 %31), !nosanitize !10
  %33 = extractvalue { i64, i1 } %32, 1, !nosanitize !10
  br i1 %33, label %34, label %35, !prof !48, !nosanitize !10

34:                                               ; preds = %28
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

35:                                               ; preds = %28
  %36 = extractvalue { i64, i1 } %32, 0, !nosanitize !10
  %37 = trunc i64 %36 to i32
  %38 = load i32, ptr %2, align 8, !tbaa !33
  %39 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %38, i32 262), !nosanitize !10
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !10
  br i1 %40, label %41, label %42, !prof !48, !nosanitize !10

41:                                               ; preds = %35
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

42:                                               ; preds = %35
  %43 = extractvalue { i32, i1 } %39, 0, !nosanitize !10
  %44 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3, i32 %43), !nosanitize !10
  %45 = extractvalue { i32, i1 } %44, 1, !nosanitize !10
  br i1 %45, label %46, label %47, !prof !48, !nosanitize !10

46:                                               ; preds = %42
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

47:                                               ; preds = %42
  %48 = extractvalue { i32, i1 } %44, 0, !nosanitize !10
  %49 = icmp ult i32 %30, %48
  br i1 %49, label %176, label %50

50:                                               ; preds = %47
  %51 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %3, i32 %37), !nosanitize !10
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !10
  br i1 %52, label %53, label %54, !prof !48, !nosanitize !10

53:                                               ; preds = %50
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

54:                                               ; preds = %50
  %55 = extractvalue { i32, i1 } %51, 0, !nosanitize !10
  %56 = load ptr, ptr %8, align 8, !tbaa !39
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 %7
  %58 = zext i32 %55 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %57, i64 %58, i1 false)
  %59 = load i32, ptr %9, align 8, !tbaa !79
  %60 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 %3), !nosanitize !10
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !10
  br i1 %61, label %62, label %63, !prof !48, !nosanitize !10

62:                                               ; preds = %54
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

63:                                               ; preds = %54
  %64 = extractvalue { i32, i1 } %60, 0, !nosanitize !10
  store i32 %64, ptr %9, align 8, !tbaa !79
  %65 = load i32, ptr %6, align 4, !tbaa !65
  %66 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %65, i32 %3), !nosanitize !10
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !10
  br i1 %67, label %68, label %69, !prof !48, !nosanitize !10

68:                                               ; preds = %69, %63
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

69:                                               ; preds = %63
  %70 = extractvalue { i32, i1 } %66, 0, !nosanitize !10
  store i32 %70, ptr %6, align 4, !tbaa !65
  %71 = load i64, ptr %10, align 8, !tbaa !66
  %72 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %71, i64 %7), !nosanitize !10
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !10
  br i1 %73, label %68, label %74, !prof !48, !nosanitize !10

74:                                               ; preds = %69
  %75 = extractvalue { i64, i1 } %72, 0, !nosanitize !10
  store i64 %75, ptr %10, align 8, !tbaa !66
  %76 = load i32, ptr %11, align 4, !tbaa !68
  %77 = icmp ugt i32 %76, %70
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 %70, ptr %11, align 4, !tbaa !68
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, ptr %2, align 8, !tbaa !33
  %81 = load i32, ptr %12, align 4, !tbaa !36
  %82 = load ptr, ptr %13, align 8, !tbaa !41
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds nuw [2 x i8], ptr %82, i64 %83
  %85 = icmp eq i32 %81, 0
  br i1 %85, label %112, label %86, !prof !48, !nosanitize !10

86:                                               ; preds = %79
  %87 = icmp ult i32 %81, 8
  br i1 %87, label %109, label %88

88:                                               ; preds = %86
  %89 = and i64 %83, 4294967288
  %90 = mul nsw i64 %89, -2
  %91 = getelementptr i8, ptr %84, i64 %90
  %92 = trunc nuw i64 %89 to i32
  %93 = sub i32 %81, %92
  %94 = insertelement <8 x i32> poison, i32 %80, i64 0
  %95 = shufflevector <8 x i32> %94, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %96

96:                                               ; preds = %96, %88
  %97 = phi i64 [ 0, %88 ], [ %105, %96 ]
  %98 = mul i64 %97, -2
  %99 = getelementptr i8, ptr %84, i64 %98
  %100 = getelementptr inbounds i8, ptr %99, i64 -16
  %101 = load <8 x i16>, ptr %100, align 2, !tbaa !54
  %102 = zext <8 x i16> %101 to <8 x i32>
  %103 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %102, <8 x i32> %95)
  %104 = trunc nuw <8 x i32> %103 to <8 x i16>
  store <8 x i16> %104, ptr %100, align 2, !tbaa !54
  %105 = add nuw i64 %97, 8
  %106 = icmp eq i64 %105, %89
  br i1 %106, label %107, label %96, !llvm.loop !80

107:                                              ; preds = %96
  %108 = icmp eq i64 %89, %83
  br i1 %108, label %128, label %109

109:                                              ; preds = %86, %107
  %110 = phi ptr [ %84, %86 ], [ %91, %107 ]
  %111 = phi i32 [ %81, %86 ], [ %93, %107 ]
  br label %118

112:                                              ; preds = %79
  %113 = getelementptr inbounds i8, ptr %84, i64 -2
  %114 = load i16, ptr %113, align 2, !tbaa !54
  %115 = zext i16 %114 to i32
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %115, i32 %80)
  %117 = trunc nuw i32 %116 to i16
  store i16 %117, ptr %113, align 2, !tbaa !54
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

118:                                              ; preds = %109, %118
  %119 = phi ptr [ %121, %118 ], [ %110, %109 ]
  %120 = phi i32 [ %126, %118 ], [ %111, %109 ]
  %121 = getelementptr inbounds i8, ptr %119, i64 -2
  %122 = load i16, ptr %121, align 2, !tbaa !54
  %123 = zext i16 %122 to i32
  %124 = tail call i32 @llvm.usub.sat.i32(i32 %123, i32 %80)
  %125 = trunc nuw i32 %124 to i16
  store i16 %125, ptr %121, align 2, !tbaa !54
  %126 = add i32 %120, -1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %118, !llvm.loop !83

128:                                              ; preds = %118, %107
  %129 = icmp eq i32 %80, 0
  br i1 %129, label %130, label %131, !prof !48, !nosanitize !10

130:                                              ; preds = %128
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

131:                                              ; preds = %128
  %132 = load ptr, ptr %14, align 8, !tbaa !40
  %133 = zext i32 %80 to i64
  %134 = getelementptr inbounds nuw [2 x i8], ptr %132, i64 %133
  %135 = icmp ult i32 %80, 8
  br i1 %135, label %157, label %136

136:                                              ; preds = %131
  %137 = and i64 %133, 4294967288
  %138 = mul nsw i64 %137, -2
  %139 = getelementptr i8, ptr %134, i64 %138
  %140 = trunc nuw i64 %137 to i32
  %141 = sub i32 %80, %140
  %142 = insertelement <8 x i32> poison, i32 %80, i64 0
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %144

144:                                              ; preds = %144, %136
  %145 = phi i64 [ 0, %136 ], [ %153, %144 ]
  %146 = mul i64 %145, -2
  %147 = getelementptr i8, ptr %134, i64 %146
  %148 = getelementptr inbounds i8, ptr %147, i64 -16
  %149 = load <8 x i16>, ptr %148, align 2, !tbaa !54
  %150 = zext <8 x i16> %149 to <8 x i32>
  %151 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %150, <8 x i32> %143)
  %152 = trunc nuw <8 x i32> %151 to <8 x i16>
  store <8 x i16> %152, ptr %148, align 2, !tbaa !54
  %153 = add nuw i64 %145, 8
  %154 = icmp eq i64 %153, %137
  br i1 %154, label %155, label %144, !llvm.loop !84

155:                                              ; preds = %144
  %156 = icmp eq i64 %137, %133
  br i1 %156, label %170, label %157

157:                                              ; preds = %131, %155
  %158 = phi ptr [ %134, %131 ], [ %139, %155 ]
  %159 = phi i32 [ %80, %131 ], [ %141, %155 ]
  br label %160

160:                                              ; preds = %157, %160
  %161 = phi ptr [ %163, %160 ], [ %158, %157 ]
  %162 = phi i32 [ %168, %160 ], [ %159, %157 ]
  %163 = getelementptr inbounds i8, ptr %161, i64 -2
  %164 = load i16, ptr %163, align 2, !tbaa !54
  %165 = zext i16 %164 to i32
  %166 = tail call i32 @llvm.usub.sat.i32(i32 %165, i32 %80)
  %167 = trunc nuw i32 %166 to i16
  store i16 %167, ptr %163, align 2, !tbaa !54
  %168 = add i32 %162, -1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %160, !llvm.loop !85

170:                                              ; preds = %160, %155
  store i32 1, ptr %15, align 8, !tbaa !55
  %171 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %37, i32 %3), !nosanitize !10
  %172 = extractvalue { i32, i1 } %171, 1, !nosanitize !10
  br i1 %172, label %173, label %174, !prof !48, !nosanitize !10

173:                                              ; preds = %170
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

174:                                              ; preds = %170
  %175 = extractvalue { i32, i1 } %171, 0, !nosanitize !10
  br label %176

176:                                              ; preds = %174, %47
  %177 = phi i32 [ %70, %174 ], [ %30, %47 ]
  %178 = phi i32 [ %175, %174 ], [ %37, %47 ]
  %179 = load ptr, ptr %0, align 8, !tbaa !21
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 8
  %181 = load i32, ptr %180, align 8, !tbaa !74
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %318, label %183

183:                                              ; preds = %176
  %184 = load ptr, ptr %8, align 8, !tbaa !39
  %185 = zext i32 %177 to i64
  %186 = getelementptr inbounds nuw i8, ptr %184, i64 %185
  %187 = load i32, ptr %5, align 4, !tbaa !67
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds nuw i8, ptr %186, i64 %188
  %190 = tail call i32 @llvm.umin.i32(i32 %181, i32 %178)
  %191 = icmp eq i32 %178, 0
  br i1 %191, label %223, label %192

192:                                              ; preds = %183
  %193 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %190), !nosanitize !10
  %194 = extractvalue { i32, i1 } %193, 1, !nosanitize !10
  br i1 %194, label %195, label %196, !prof !48, !nosanitize !10

195:                                              ; preds = %192
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

196:                                              ; preds = %192
  %197 = extractvalue { i32, i1 } %193, 0, !nosanitize !10
  store i32 %197, ptr %180, align 8, !tbaa !74
  %198 = load ptr, ptr %179, align 8, !tbaa !75
  %199 = zext i32 %190 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %189, ptr align 1 %198, i64 %199, i1 false)
  %200 = getelementptr inbounds nuw i8, ptr %179, i64 56
  %201 = load ptr, ptr %200, align 8, !tbaa !20
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 48
  %203 = load i32, ptr %202, align 8, !tbaa !31
  switch i32 %203, label %212 [
    i32 1, label %204
    i32 2, label %208
  ]

204:                                              ; preds = %196
  %205 = getelementptr inbounds nuw i8, ptr %179, i64 96
  %206 = load i64, ptr %205, align 8, !tbaa !73
  %207 = tail call i64 @adler32(i64 noundef %206, ptr noundef %189, i32 noundef %190) #13
  store i64 %207, ptr %205, align 8, !tbaa !73
  br label %212

208:                                              ; preds = %196
  %209 = getelementptr inbounds nuw i8, ptr %179, i64 96
  %210 = load i64, ptr %209, align 8, !tbaa !73
  %211 = tail call i64 @crc32(i64 noundef %210, ptr noundef %189, i32 noundef %190) #13
  store i64 %211, ptr %209, align 8, !tbaa !73
  br label %212

212:                                              ; preds = %208, %204, %196
  %213 = load ptr, ptr %179, align 8, !tbaa !75
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 %199
  store ptr %214, ptr %179, align 8, !tbaa !75
  %215 = getelementptr inbounds nuw i8, ptr %179, i64 16
  %216 = load i64, ptr %215, align 8, !tbaa !86
  %217 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %216, i64 %199), !nosanitize !10
  %218 = extractvalue { i64, i1 } %217, 1, !nosanitize !10
  br i1 %218, label %219, label %220, !prof !48, !nosanitize !10

219:                                              ; preds = %212
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

220:                                              ; preds = %212
  %221 = extractvalue { i64, i1 } %217, 0, !nosanitize !10
  store i64 %221, ptr %215, align 8, !tbaa !86
  %222 = load i32, ptr %5, align 4, !tbaa !67
  br label %223

223:                                              ; preds = %183, %220
  %224 = phi i32 [ %187, %183 ], [ %222, %220 ]
  %225 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %190), !nosanitize !10
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !10
  br i1 %226, label %227, label %228, !prof !48, !nosanitize !10

227:                                              ; preds = %223
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

228:                                              ; preds = %223
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !10
  store i32 %229, ptr %5, align 4, !tbaa !67
  %230 = load i32, ptr %11, align 4, !tbaa !68
  %231 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %230), !nosanitize !10
  %232 = extractvalue { i32, i1 } %231, 1, !nosanitize !10
  br i1 %232, label %233, label %234, !prof !48, !nosanitize !10

233:                                              ; preds = %228
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

234:                                              ; preds = %228
  %235 = extractvalue { i32, i1 } %231, 0, !nosanitize !10
  %236 = icmp ugt i32 %235, 2
  br i1 %236, label %237, label %311

237:                                              ; preds = %234
  %238 = load i32, ptr %6, align 4, !tbaa !65
  %239 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %238, i32 %230), !nosanitize !10
  %240 = extractvalue { i32, i1 } %239, 0, !nosanitize !10
  %241 = extractvalue { i32, i1 } %239, 1, !nosanitize !10
  br i1 %241, label %242, label %243, !prof !48, !nosanitize !10

242:                                              ; preds = %237
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

243:                                              ; preds = %237
  %244 = load ptr, ptr %8, align 8, !tbaa !39
  %245 = zext i32 %240 to i64
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !8
  %248 = zext i8 %247 to i32
  store i32 %248, ptr %16, align 8, !tbaa !72
  %249 = load i32, ptr %17, align 8, !tbaa !38
  %250 = icmp ult i32 %249, 32
  %251 = sub nuw nsw i32 31, %249
  %252 = lshr i32 %248, %251
  %253 = icmp samesign ult i32 %252, 2
  %254 = select i1 %250, i1 %253, i1 false
  br i1 %254, label %256, label %255, !prof !9, !nosanitize !10

255:                                              ; preds = %243
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

256:                                              ; preds = %243
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 1), !nosanitize !10
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !10
  br i1 %258, label %259, label %260, !prof !48, !nosanitize !10

259:                                              ; preds = %256
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

260:                                              ; preds = %256
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !10
  %262 = shl i32 %248, %249
  %263 = zext i32 %261 to i64
  %264 = getelementptr inbounds nuw i8, ptr %244, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !8
  %266 = zext i8 %265 to i32
  %267 = xor i32 %262, %266
  %268 = load i32, ptr %18, align 4, !tbaa !37
  %269 = and i32 %267, %268
  store i32 %269, ptr %16, align 8, !tbaa !72
  br label %270

270:                                              ; preds = %307, %260
  %271 = phi i32 [ %269, %260 ], [ %292, %307 ]
  %272 = phi i32 [ %230, %260 ], [ %303, %307 ]
  %273 = phi i32 [ %240, %260 ], [ %308, %307 ]
  %274 = icmp eq i32 %272, 0
  br i1 %274, label %311, label %275

275:                                              ; preds = %270
  %276 = lshr i32 %271, %251
  %277 = icmp ult i32 %276, 2
  br i1 %277, label %279, label %278, !prof !9, !nosanitize !10

278:                                              ; preds = %275
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

279:                                              ; preds = %275
  %280 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %273, i32 3), !nosanitize !10
  %281 = extractvalue { i32, i1 } %280, 1, !nosanitize !10
  br i1 %281, label %282, label %283, !prof !48, !nosanitize !10

282:                                              ; preds = %279
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

283:                                              ; preds = %279
  %284 = shl i32 %271, %249
  %285 = extractvalue { i32, i1 } %280, 0, !nosanitize !10
  %286 = add i32 %285, -1
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds nuw i8, ptr %244, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !8
  %290 = zext i8 %289 to i32
  %291 = xor i32 %284, %290
  %292 = and i32 %291, %268
  store i32 %292, ptr %16, align 8, !tbaa !72
  %293 = load ptr, ptr %13, align 8, !tbaa !41
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds nuw [2 x i8], ptr %293, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !54
  %297 = load ptr, ptr %14, align 8, !tbaa !40
  %298 = load i32, ptr %19, align 8, !tbaa !34
  %299 = and i32 %298, %273
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds nuw [2 x i8], ptr %297, i64 %300
  store i16 %296, ptr %301, align 2, !tbaa !54
  %302 = trunc i32 %273 to i16
  store i16 %302, ptr %295, align 2, !tbaa !54
  %303 = add i32 %272, -1
  store i32 %303, ptr %11, align 4, !tbaa !68
  %304 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %303), !nosanitize !10
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !10
  br i1 %305, label %306, label %307, !prof !48, !nosanitize !10

306:                                              ; preds = %283
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

307:                                              ; preds = %283
  %308 = add nuw i32 %273, 1
  %309 = extractvalue { i32, i1 } %304, 0, !nosanitize !10
  %310 = icmp ult i32 %309, 3
  br i1 %310, label %311, label %270, !llvm.loop !87

311:                                              ; preds = %270, %307, %234
  %312 = icmp ult i32 %229, 262
  br i1 %312, label %313, label %318

313:                                              ; preds = %311
  %314 = load ptr, ptr %0, align 8, !tbaa !21
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 8
  %316 = load i32, ptr %315, align 8, !tbaa !74
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %21, !llvm.loop !88

318:                                              ; preds = %311, %176, %313
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %320 = load i64, ptr %319, align 8, !tbaa !42
  %321 = load i64, ptr %4, align 8, !tbaa !53
  %322 = icmp ult i64 %320, %321
  br i1 %322, label %323, label %362

323:                                              ; preds = %318
  %324 = load i32, ptr %6, align 4, !tbaa !65
  %325 = zext i32 %324 to i64
  %326 = load i32, ptr %5, align 4, !tbaa !67
  %327 = zext i32 %326 to i64
  %328 = add nuw nsw i64 %327, %325
  %329 = icmp ult i64 %320, %328
  br i1 %329, label %330, label %340

330:                                              ; preds = %323
  %331 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %321, i64 %328), !nosanitize !10
  %332 = extractvalue { i64, i1 } %331, 1, !nosanitize !10
  br i1 %332, label %333, label %334, !prof !48, !nosanitize !10

333:                                              ; preds = %330
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

334:                                              ; preds = %330
  %335 = extractvalue { i64, i1 } %331, 0, !nosanitize !10
  %336 = tail call i64 @llvm.umin.i64(i64 %335, i64 258)
  %337 = load ptr, ptr %8, align 8, !tbaa !39
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 %328
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %338, i8 0, i64 %336, i1 false)
  %339 = add nuw nsw i64 %336, %328
  br label %360

340:                                              ; preds = %323
  %341 = add nuw nsw i64 %328, 258
  %342 = icmp ult i64 %320, %341
  br i1 %342, label %343, label %362

343:                                              ; preds = %340
  %344 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %321, i64 %320), !nosanitize !10
  %345 = extractvalue { i64, i1 } %344, 1, !nosanitize !10
  br i1 %345, label %346, label %347, !prof !48, !nosanitize !10

346:                                              ; preds = %343
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

347:                                              ; preds = %343
  %348 = sub nuw nsw i64 %341, %320
  %349 = extractvalue { i64, i1 } %344, 0, !nosanitize !10
  %350 = tail call i64 @llvm.umin.i64(i64 %348, i64 %349)
  %351 = load ptr, ptr %8, align 8, !tbaa !39
  %352 = getelementptr inbounds nuw i8, ptr %351, i64 %320
  %353 = and i64 %350, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %352, i8 0, i64 %353, i1 false)
  %354 = load i64, ptr %319, align 8, !tbaa !42
  %355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %354, i64 %350), !nosanitize !10
  %356 = extractvalue { i64, i1 } %355, 1, !nosanitize !10
  br i1 %356, label %357, label %358, !prof !48, !nosanitize !10

357:                                              ; preds = %347
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

358:                                              ; preds = %347
  %359 = extractvalue { i64, i1 } %355, 0, !nosanitize !10
  br label %360

360:                                              ; preds = %358, %334
  %361 = phi i64 [ %339, %334 ], [ %359, %358 ]
  store i64 %361, ptr %319, align 8, !tbaa !42
  br label %362

362:                                              ; preds = %360, %340, %318
  ret void
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !21
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !30
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
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %27 = load i32, ptr %26, align 4, !tbaa !67
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %25, i32 %27), !nosanitize !10
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !10
  br i1 %29, label %30, label %31, !prof !48, !nosanitize !10

30:                                               ; preds = %23
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

31:                                               ; preds = %23
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !10
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %34 = load i32, ptr %33, align 8, !tbaa !33
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %34)
  %36 = icmp ne ptr %1, null
  %37 = icmp ne i32 %35, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = zext i32 %25 to i64
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  %44 = zext i32 %27 to i64
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  %46 = zext i32 %35 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %48, i64 %46, i1 false)
  br label %49

49:                                               ; preds = %39, %31
  %50 = icmp eq ptr %2, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  store i32 %35, ptr %2, align 4, !tbaa !4
  br label %52

52:                                               ; preds = %13, %17, %20, %5, %9, %3, %49, %51
  %53 = phi i32 [ 0, %49 ], [ 0, %51 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !21
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !30
  switch i32 %20, label %50 [
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
  store i64 0, ptr %23, align 8, !tbaa !86
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !89
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !90
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !91
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !31
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !10
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !10
  br i1 %34, label %35, label %36, !prof !48, !nosanitize !10

35:                                               ; preds = %32
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 13) #14, !nosanitize !10
  unreachable, !nosanitize !10

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !10
  store i32 %37, ptr %29, align 8, !tbaa !31
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !30
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !73
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !92
  tail call void @_tr_init(ptr noundef nonnull %13) #13
  br label %50

50:                                               ; preds = %11, %15, %18, %3, %7, %1, %46
  %51 = phi i32 [ 0, %46 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %51
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_tr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !21
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !30
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
  %24 = load i32, ptr %23, align 8, !tbaa !31
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %1, ptr %27, align 8, !tbaa !93
  br label %28

28:                                               ; preds = %12, %16, %19, %4, %8, %2, %22, %26
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @deflatePending(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !21
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !30
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
  %27 = load i32, ptr %26, align 4, !tbaa !94
  store i32 %27, ptr %2, align 4, !tbaa !4
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %32 = load i64, ptr %31, align 8, !tbaa !90
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
define dso_local range(i32 -2, 1) i32 @deflateUsed(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !21
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !30
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
  %26 = load i32, ptr %25, align 8, !tbaa !95
  store i32 %26, ptr %1, align 4, !tbaa !4
  br label %27

27:                                               ; preds = %12, %16, %19, %4, %8, %2, %22, %24
  %28 = phi i32 [ 0, %22 ], [ 0, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %65, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !21
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !30
  switch i32 %22, label %65 [
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
  br i1 %24, label %65, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5888
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %65, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 5936
  br label %36

35:                                               ; preds = %47, %43
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #14, !nosanitize !10
  unreachable, !nosanitize !10

36:                                               ; preds = %32, %56
  %37 = phi i32 [ %62, %56 ], [ %1, %32 ]
  %38 = phi i32 [ %63, %56 ], [ %2, %32 ]
  %39 = load i32, ptr %33, align 4, !tbaa !94
  %40 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %39), !nosanitize !10
  %41 = extractvalue { i32, i1 } %40, 1, !nosanitize !10
  br i1 %41, label %42, label %43, !prof !48, !nosanitize !10

42:                                               ; preds = %36
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !10
  unreachable, !nosanitize !10

43:                                               ; preds = %36
  %44 = extractvalue { i32, i1 } %40, 0, !nosanitize !10
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 %37)
  %46 = icmp ult i32 %45, 31
  br i1 %46, label %47, label %35, !prof !9, !nosanitize !10

47:                                               ; preds = %43
  %48 = shl nsw i32 -1, %45
  %49 = xor i32 %48, -1
  %50 = and i32 %38, %49
  %51 = icmp ult i32 %39, 32
  %52 = sub nuw nsw i32 31, %39
  %53 = lshr i32 %50, %52
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %51, i1 %54, i1 false
  br i1 %55, label %56, label %35, !prof !9, !nosanitize !10

56:                                               ; preds = %47
  %57 = shl i32 %50, %39
  %58 = load i16, ptr %34, align 8, !tbaa !96
  %59 = trunc i32 %57 to i16
  %60 = or i16 %58, %59
  store i16 %60, ptr %34, align 8, !tbaa !96
  %61 = add nuw nsw i32 %45, %39
  store i32 %61, ptr %33, align 4, !tbaa !94
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #13
  %62 = sub i32 %37, %45
  %63 = ashr i32 %38, %45
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %36, !llvm.loop !97

65:                                               ; preds = %56, %13, %17, %20, %5, %9, %3, %23, %25
  %66 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %56 ]
  ret i32 %66
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %119, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %119, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %119, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %119, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !21
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %119

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !30
  switch i32 %22, label %119 [
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
  br i1 %28, label %119, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %32 = load i32, ptr %31, align 8, !tbaa !51
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !50
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = zext nneg i32 %25 to i64
  %41 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8, !tbaa !98
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %76, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !92
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %76, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @deflate(ptr noundef nonnull %0, i32 noundef 5)
  %51 = icmp eq i32 %50, -2
  br i1 %51, label %119, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %54 = load i32, ptr %53, align 8, !tbaa !74
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %119

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %58 = load i32, ptr %57, align 4, !tbaa !65
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %61 = load i64, ptr %60, align 8, !tbaa !66
  %62 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %59, i64 %61), !nosanitize !10
  %63 = extractvalue { i64, i1 } %62, 1, !nosanitize !10
  br i1 %63, label %64, label %65, !prof !48, !nosanitize !10

64:                                               ; preds = %56
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !10
  unreachable, !nosanitize !10

65:                                               ; preds = %56
  %66 = extractvalue { i64, i1 } %62, 0, !nosanitize !10
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %68 = load i32, ptr %67, align 4, !tbaa !67
  %69 = zext i32 %68 to i64
  %70 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %66, i64 %69), !nosanitize !10
  %71 = extractvalue { i64, i1 } %70, 1, !nosanitize !10
  br i1 %71, label %72, label %73, !prof !48, !nosanitize !10

72:                                               ; preds = %65
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !10
  unreachable, !nosanitize !10

73:                                               ; preds = %65
  %74 = extractvalue { i64, i1 } %70, 0, !nosanitize !10
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %73, %45, %34
  %77 = load i32, ptr %30, align 4, !tbaa !50
  %78 = icmp eq i32 %77, %25
  br i1 %78, label %118, label %79

79:                                               ; preds = %76
  %80 = icmp eq i32 %77, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %79
  %82 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %83 = load i32, ptr %82, align 8, !tbaa !99
  switch i32 %83, label %85 [
    i32 0, label %100
    i32 1, label %84
  ]

84:                                               ; preds = %81
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %99

85:                                               ; preds = %81
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %87 = load i32, ptr %86, align 4, !tbaa !36
  %88 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %87, i32 1), !nosanitize !10
  %89 = extractvalue { i32, i1 } %88, 1, !nosanitize !10
  br i1 %89, label %90, label %91, !prof !48, !nosanitize !10

90:                                               ; preds = %85
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

91:                                               ; preds = %85
  %92 = extractvalue { i32, i1 } %88, 0, !nosanitize !10
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %94 = load ptr, ptr %93, align 8, !tbaa !41
  %95 = zext i32 %92 to i64
  %96 = getelementptr inbounds nuw [2 x i8], ptr %94, i64 %95
  store i16 0, ptr %96, align 2, !tbaa !54
  %97 = shl nuw nsw i64 %95, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %94, i8 0, i64 %97, i1 false)
  %98 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %98, align 8, !tbaa !55
  br label %99

99:                                               ; preds = %84, %91
  store i32 0, ptr %82, align 8, !tbaa !99
  br label %100

100:                                              ; preds = %81, %99, %79
  store i32 %25, ptr %30, align 4, !tbaa !50
  %101 = zext nneg i32 %25 to i64
  %102 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %101
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 2
  %104 = load i16, ptr %103, align 2, !tbaa !56
  %105 = zext i16 %104 to i32
  %106 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %105, ptr %106, align 8, !tbaa !58
  %107 = load i16, ptr %102, align 16, !tbaa !59
  %108 = zext i16 %107 to i32
  %109 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %108, ptr %109, align 4, !tbaa !60
  %110 = getelementptr inbounds nuw i8, ptr %102, i64 4
  %111 = load i16, ptr %110, align 4, !tbaa !61
  %112 = zext i16 %111 to i32
  %113 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %112, ptr %113, align 8, !tbaa !62
  %114 = getelementptr inbounds nuw i8, ptr %102, i64 6
  %115 = load i16, ptr %114, align 2, !tbaa !63
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %116, ptr %117, align 4, !tbaa !64
  br label %118

118:                                              ; preds = %100, %76
  store i32 %2, ptr %31, align 8, !tbaa !51
  br label %119

119:                                              ; preds = %49, %52, %13, %17, %20, %5, %9, %3, %23, %73, %118
  %120 = phi i32 [ -5, %73 ], [ -2, %13 ], [ 0, %118 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %49 ], [ -5, %52 ]
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1210, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1210, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1210, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1210, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !21
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1210

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !30
  switch i32 %21, label %1210 [
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
  br i1 %23, label %1210, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !100
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !74
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !75
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %28
  %36 = icmp eq i32 %21, 666
  %37 = icmp ne i32 %1, 4
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32, %24
  %40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !46
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %40, ptr %41, align 8, !tbaa !11
  br label %1210

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !101
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !11
  br label %1210

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !92
  store i32 %1, ptr %50, align 4, !tbaa !92
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !90
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #13
  %56 = load i64, ptr %52, align 8, !tbaa !90
  %57 = load i32, ptr %43, align 8, !tbaa !101
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = trunc nuw i64 %59 to i32
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %25, align 8, !tbaa !100
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !100
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !100
  %68 = load ptr, ptr %64, align 8, !tbaa !91
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !91
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !102
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 %59), !nosanitize !10
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !10
  br i1 %73, label %74, label %75, !prof !48, !nosanitize !10

74:                                               ; preds = %62
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !10
  store i64 %76, ptr %70, align 8, !tbaa !102
  %77 = load i32, ptr %43, align 8, !tbaa !101
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !10
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !10
  br i1 %79, label %80, label %81, !prof !48, !nosanitize !10

80:                                               ; preds = %75
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !10
  store i32 %82, ptr %43, align 8, !tbaa !101
  %83 = load i64, ptr %52, align 8, !tbaa !90
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !10
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !10
  br i1 %85, label %86, label %87, !prof !48, !nosanitize !10

86:                                               ; preds = %81
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !10
  store i64 %88, ptr %52, align 8, !tbaa !90
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !44
  store ptr %92, ptr %64, align 8, !tbaa !91
  br label %93

93:                                               ; preds = %87, %90, %55
  %94 = phi i64 [ %56, %55 ], [ 0, %90 ], [ %88, %87 ]
  %95 = phi i32 [ %57, %55 ], [ %82, %90 ], [ %82, %87 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %20, align 8, !tbaa !30
  br label %123

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

100:                                              ; preds = %49
  br i1 %31, label %102, label %123

101:                                              ; preds = %102
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 12) #14, !nosanitize !10
  unreachable, !nosanitize !10

102:                                              ; preds = %100
  %103 = shl nuw nsw i32 %1, 1
  %104 = icmp eq i32 %1, 5
  %105 = select i1 %104, i32 -9, i32 0
  %106 = add nsw i32 %105, %103
  %107 = add i32 %51, 1073741824
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %110, label %101, !prof !9, !nosanitize !10

109:                                              ; preds = %110
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !10
  unreachable, !nosanitize !10

110:                                              ; preds = %102
  %111 = shl nsw i32 %51, 1
  %112 = icmp sgt i32 %51, 4
  %113 = select i1 %112, i32 9, i32 0
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %111, i32 %113), !nosanitize !10
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !10
  br i1 %115, label %109, label %116, !prof !48, !nosanitize !10

116:                                              ; preds = %110
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !10
  %118 = icmp sle i32 %106, %117
  %119 = and i1 %37, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %121, ptr %122, align 8, !tbaa !11
  br label %1210

123:                                              ; preds = %97, %100, %116
  %124 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %116 ]
  %125 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %116 ]
  switch i32 %125, label %247 [
    i32 666, label %126
    i32 42, label %132
  ]

126:                                              ; preds = %123
  %127 = load i32, ptr %29, align 8, !tbaa !74
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %990, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %130, ptr %131, align 8, !tbaa !11
  br label %1210

132:                                              ; preds = %123
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %134 = load i32, ptr %133, align 8, !tbaa !31
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 113, ptr %20, align 8, !tbaa !30
  br label %987

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !32
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 8), !nosanitize !10
  %141 = extractvalue { i32, i1 } %140, 0, !nosanitize !10
  %142 = extractvalue { i32, i1 } %140, 1, !nosanitize !10
  br i1 %142, label %143, label %144, !prof !48, !nosanitize !10

143:                                              ; preds = %137
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

144:                                              ; preds = %137
  %145 = icmp ult i32 %141, 268435456
  br i1 %145, label %147, label %146, !prof !9, !nosanitize !10

146:                                              ; preds = %144
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

147:                                              ; preds = %144
  %148 = shl i32 %141, 12
  %149 = icmp samesign ult i32 %141, 1048576
  br i1 %149, label %151, label %150, !prof !9, !nosanitize !10

150:                                              ; preds = %147
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

151:                                              ; preds = %147
  %152 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %153 = load i32, ptr %152, align 8, !tbaa !51
  %154 = icmp sgt i32 %153, 1
  br i1 %154, label %164, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %157 = load i32, ptr %156, align 4, !tbaa !50
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = icmp samesign ult i32 %157, 6
  br i1 %160, label %164, label %161

161:                                              ; preds = %159
  %162 = icmp eq i32 %157, 6
  %163 = select i1 %162, i32 128, i32 192
  br label %164

164:                                              ; preds = %151, %155, %159, %161
  %165 = phi i32 [ 64, %159 ], [ 0, %155 ], [ %163, %161 ], [ 0, %151 ]
  %166 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %167 = or disjoint i32 %165, %148
  %168 = load i32, ptr %166, align 4, !tbaa !65
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 2048, i32 2080
  %171 = or disjoint i32 %170, %167
  %172 = urem i32 %171, 31
  %173 = or disjoint i32 %172, %171
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !10
  %175 = extractvalue { i64, i1 } %174, 1, !nosanitize !10
  br i1 %175, label %176, label %177, !prof !48, !nosanitize !10

176:                                              ; preds = %164
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

177:                                              ; preds = %164
  %178 = extractvalue { i64, i1 } %174, 0, !nosanitize !10
  %179 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %180 = load ptr, ptr %179, align 8, !tbaa !44
  %181 = lshr i32 %171, 8
  %182 = trunc i32 %181 to i8
  store i64 %178, ptr %52, align 8, !tbaa !90
  %183 = getelementptr inbounds nuw i8, ptr %180, i64 %124
  store i8 %182, ptr %183, align 1, !tbaa !8
  %184 = load i64, ptr %52, align 8, !tbaa !90
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 1), !nosanitize !10
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !10
  br i1 %186, label %187, label %188, !prof !48, !nosanitize !10

187:                                              ; preds = %177
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

188:                                              ; preds = %177
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !10
  %190 = load ptr, ptr %179, align 8, !tbaa !44
  %191 = trunc i32 %173 to i8
  %192 = xor i8 %191, 31
  store i64 %189, ptr %52, align 8, !tbaa !90
  %193 = getelementptr inbounds nuw i8, ptr %190, i64 %184
  store i8 %192, ptr %193, align 1, !tbaa !8
  %194 = load i32, ptr %166, align 4, !tbaa !65
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %239, label %196

196:                                              ; preds = %188
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %198 = load i64, ptr %197, align 8, !tbaa !73
  %199 = lshr i64 %198, 16
  %200 = load i64, ptr %52, align 8, !tbaa !90
  %201 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %200, i64 1), !nosanitize !10
  %202 = extractvalue { i64, i1 } %201, 1, !nosanitize !10
  br i1 %202, label %203, label %204, !prof !48, !nosanitize !10

203:                                              ; preds = %196
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

204:                                              ; preds = %196
  %205 = extractvalue { i64, i1 } %201, 0, !nosanitize !10
  %206 = load ptr, ptr %179, align 8, !tbaa !44
  %207 = lshr i64 %198, 24
  %208 = trunc i64 %207 to i8
  store i64 %205, ptr %52, align 8, !tbaa !90
  %209 = getelementptr inbounds nuw i8, ptr %206, i64 %200
  store i8 %208, ptr %209, align 1, !tbaa !8
  %210 = load i64, ptr %52, align 8, !tbaa !90
  %211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %210, i64 1), !nosanitize !10
  %212 = extractvalue { i64, i1 } %211, 1, !nosanitize !10
  br i1 %212, label %213, label %214, !prof !48, !nosanitize !10

213:                                              ; preds = %204
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

214:                                              ; preds = %204
  %215 = extractvalue { i64, i1 } %211, 0, !nosanitize !10
  %216 = load ptr, ptr %179, align 8, !tbaa !44
  %217 = trunc i64 %199 to i8
  store i64 %215, ptr %52, align 8, !tbaa !90
  %218 = getelementptr inbounds nuw i8, ptr %216, i64 %210
  store i8 %217, ptr %218, align 1, !tbaa !8
  %219 = load i64, ptr %197, align 8, !tbaa !73
  %220 = trunc i64 %219 to i8
  %221 = load i64, ptr %52, align 8, !tbaa !90
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 1), !nosanitize !10
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !10
  br i1 %223, label %224, label %225, !prof !48, !nosanitize !10

224:                                              ; preds = %214
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

225:                                              ; preds = %214
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !10
  %227 = load ptr, ptr %179, align 8, !tbaa !44
  %228 = lshr i64 %219, 8
  %229 = trunc i64 %228 to i8
  store i64 %226, ptr %52, align 8, !tbaa !90
  %230 = getelementptr inbounds nuw i8, ptr %227, i64 %221
  store i8 %229, ptr %230, align 1, !tbaa !8
  %231 = load i64, ptr %52, align 8, !tbaa !90
  %232 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %231, i64 1), !nosanitize !10
  %233 = extractvalue { i64, i1 } %232, 1, !nosanitize !10
  br i1 %233, label %234, label %235, !prof !48, !nosanitize !10

234:                                              ; preds = %225
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

235:                                              ; preds = %225
  %236 = extractvalue { i64, i1 } %232, 0, !nosanitize !10
  %237 = load ptr, ptr %179, align 8, !tbaa !44
  store i64 %236, ptr %52, align 8, !tbaa !90
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 %231
  store i8 %220, ptr %238, align 1, !tbaa !8
  br label %239

239:                                              ; preds = %235, %188
  %240 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %240, ptr %241, align 8, !tbaa !73
  store i32 113, ptr %20, align 8, !tbaa !30
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %242 = load i64, ptr %52, align 8, !tbaa !90
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i32, ptr %20, align 8, !tbaa !30
  br label %247

246:                                              ; preds = %239
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

247:                                              ; preds = %123, %244
  %248 = phi i32 [ %245, %244 ], [ %125, %123 ]
  %249 = icmp eq i32 %248, 57
  br i1 %249, label %250, label %509

250:                                              ; preds = %247
  %251 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %251, ptr %252, align 8, !tbaa !73
  %253 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %254 = load i64, ptr %52, align 8, !tbaa !90
  %255 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %254, i64 1), !nosanitize !10
  %256 = extractvalue { i64, i1 } %255, 1, !nosanitize !10
  br i1 %256, label %257, label %258, !prof !48, !nosanitize !10

257:                                              ; preds = %250
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

258:                                              ; preds = %250
  %259 = extractvalue { i64, i1 } %255, 0, !nosanitize !10
  %260 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %259, ptr %52, align 8, !tbaa !90
  %261 = getelementptr inbounds nuw i8, ptr %260, i64 %254
  store i8 31, ptr %261, align 1, !tbaa !8
  %262 = load i64, ptr %52, align 8, !tbaa !90
  %263 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %262, i64 1), !nosanitize !10
  %264 = extractvalue { i64, i1 } %263, 1, !nosanitize !10
  br i1 %264, label %265, label %266, !prof !48, !nosanitize !10

265:                                              ; preds = %258
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

266:                                              ; preds = %258
  %267 = extractvalue { i64, i1 } %263, 0, !nosanitize !10
  %268 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %267, ptr %52, align 8, !tbaa !90
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 %262
  store i8 -117, ptr %269, align 1, !tbaa !8
  %270 = load i64, ptr %52, align 8, !tbaa !90
  %271 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 1), !nosanitize !10
  %272 = extractvalue { i64, i1 } %271, 1, !nosanitize !10
  br i1 %272, label %273, label %274, !prof !48, !nosanitize !10

273:                                              ; preds = %266
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

274:                                              ; preds = %266
  %275 = extractvalue { i64, i1 } %271, 0, !nosanitize !10
  %276 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %275, ptr %52, align 8, !tbaa !90
  %277 = getelementptr inbounds nuw i8, ptr %276, i64 %270
  store i8 8, ptr %277, align 1, !tbaa !8
  %278 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %279 = load ptr, ptr %278, align 8, !tbaa !93
  %280 = icmp eq ptr %279, null
  %281 = load i64, ptr %52, align 8, !tbaa !90
  %282 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %281, i64 1), !nosanitize !10
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !10
  br i1 %280, label %284, label %353

284:                                              ; preds = %274
  br i1 %283, label %285, label %286, !prof !48, !nosanitize !10

285:                                              ; preds = %284
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

286:                                              ; preds = %284
  %287 = extractvalue { i64, i1 } %282, 0, !nosanitize !10
  %288 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %287, ptr %52, align 8, !tbaa !90
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 %281
  store i8 0, ptr %289, align 1, !tbaa !8
  %290 = load i64, ptr %52, align 8, !tbaa !90
  %291 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %290, i64 1), !nosanitize !10
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !10
  br i1 %292, label %293, label %294, !prof !48, !nosanitize !10

293:                                              ; preds = %286
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

294:                                              ; preds = %286
  %295 = extractvalue { i64, i1 } %291, 0, !nosanitize !10
  %296 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %295, ptr %52, align 8, !tbaa !90
  %297 = getelementptr inbounds nuw i8, ptr %296, i64 %290
  store i8 0, ptr %297, align 1, !tbaa !8
  %298 = load i64, ptr %52, align 8, !tbaa !90
  %299 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %298, i64 1), !nosanitize !10
  %300 = extractvalue { i64, i1 } %299, 1, !nosanitize !10
  br i1 %300, label %301, label %302, !prof !48, !nosanitize !10

301:                                              ; preds = %294
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

302:                                              ; preds = %294
  %303 = extractvalue { i64, i1 } %299, 0, !nosanitize !10
  %304 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %303, ptr %52, align 8, !tbaa !90
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 %298
  store i8 0, ptr %305, align 1, !tbaa !8
  %306 = load i64, ptr %52, align 8, !tbaa !90
  %307 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %306, i64 1), !nosanitize !10
  %308 = extractvalue { i64, i1 } %307, 1, !nosanitize !10
  br i1 %308, label %309, label %310, !prof !48, !nosanitize !10

309:                                              ; preds = %302
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

310:                                              ; preds = %302
  %311 = extractvalue { i64, i1 } %307, 0, !nosanitize !10
  %312 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %311, ptr %52, align 8, !tbaa !90
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 %306
  store i8 0, ptr %313, align 1, !tbaa !8
  %314 = load i64, ptr %52, align 8, !tbaa !90
  %315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %314, i64 1), !nosanitize !10
  %316 = extractvalue { i64, i1 } %315, 1, !nosanitize !10
  br i1 %316, label %317, label %318, !prof !48, !nosanitize !10

317:                                              ; preds = %310
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

318:                                              ; preds = %310
  %319 = extractvalue { i64, i1 } %315, 0, !nosanitize !10
  %320 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %319, ptr %52, align 8, !tbaa !90
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 %314
  store i8 0, ptr %321, align 1, !tbaa !8
  %322 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %323 = load i32, ptr %322, align 4, !tbaa !50
  %324 = icmp eq i32 %323, 9
  br i1 %324, label %332, label %325

325:                                              ; preds = %318
  %326 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %327 = load i32, ptr %326, align 8, !tbaa !51
  %328 = icmp sgt i32 %327, 1
  %329 = icmp slt i32 %323, 2
  %330 = or i1 %329, %328
  %331 = select i1 %330, i8 4, i8 0
  br label %332

332:                                              ; preds = %318, %325
  %333 = phi i8 [ %331, %325 ], [ 2, %318 ]
  %334 = load i64, ptr %52, align 8, !tbaa !90
  %335 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %334, i64 1), !nosanitize !10
  %336 = extractvalue { i64, i1 } %335, 1, !nosanitize !10
  br i1 %336, label %337, label %338, !prof !48, !nosanitize !10

337:                                              ; preds = %332
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

338:                                              ; preds = %332
  %339 = extractvalue { i64, i1 } %335, 0, !nosanitize !10
  %340 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %339, ptr %52, align 8, !tbaa !90
  %341 = getelementptr inbounds nuw i8, ptr %340, i64 %334
  store i8 %333, ptr %341, align 1, !tbaa !8
  %342 = load i64, ptr %52, align 8, !tbaa !90
  %343 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %342, i64 1), !nosanitize !10
  %344 = extractvalue { i64, i1 } %343, 1, !nosanitize !10
  br i1 %344, label %345, label %346, !prof !48, !nosanitize !10

345:                                              ; preds = %338
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

346:                                              ; preds = %338
  %347 = extractvalue { i64, i1 } %343, 0, !nosanitize !10
  %348 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %347, ptr %52, align 8, !tbaa !90
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 %342
  store i8 3, ptr %349, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !30
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %350 = load i64, ptr %52, align 8, !tbaa !90
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %507, label %352

352:                                              ; preds = %346
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

353:                                              ; preds = %274
  br i1 %283, label %354, label %355, !prof !48, !nosanitize !10

354:                                              ; preds = %353
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

355:                                              ; preds = %353
  %356 = extractvalue { i64, i1 } %282, 0, !nosanitize !10
  %357 = load ptr, ptr %253, align 8, !tbaa !44
  %358 = getelementptr inbounds nuw i8, ptr %279, i64 56
  %359 = load ptr, ptr %358, align 8, !tbaa !103
  %360 = icmp eq ptr %359, null
  %361 = getelementptr inbounds nuw i8, ptr %279, i64 40
  %362 = load ptr, ptr %361, align 8, !tbaa !105
  %363 = icmp eq ptr %362, null
  %364 = getelementptr inbounds nuw i8, ptr %279, i64 24
  %365 = load ptr, ptr %364, align 8, !tbaa !106
  %366 = icmp eq ptr %365, null
  %367 = load i32, ptr %279, align 8, !tbaa !107
  %368 = icmp ne i32 %367, 0
  %369 = getelementptr inbounds nuw i8, ptr %279, i64 68
  %370 = load i32, ptr %369, align 4, !tbaa !108
  %371 = icmp eq i32 %370, 0
  %372 = select i1 %371, i8 0, i8 2
  %373 = zext i1 %368 to i8
  %374 = select i1 %366, i8 0, i8 4
  %375 = select i1 %363, i8 0, i8 8
  %376 = select i1 %360, i8 0, i8 16
  %377 = or disjoint i8 %375, %376
  %378 = or disjoint i8 %377, %374
  %379 = or disjoint i8 %378, %373
  %380 = or disjoint i8 %379, %372
  store i64 %356, ptr %52, align 8, !tbaa !90
  %381 = getelementptr inbounds nuw i8, ptr %357, i64 %281
  store i8 %380, ptr %381, align 1, !tbaa !8
  %382 = load i64, ptr %52, align 8, !tbaa !90
  %383 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %382, i64 1), !nosanitize !10
  %384 = extractvalue { i64, i1 } %383, 1, !nosanitize !10
  br i1 %384, label %385, label %386, !prof !48, !nosanitize !10

385:                                              ; preds = %355
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

386:                                              ; preds = %355
  %387 = extractvalue { i64, i1 } %383, 0, !nosanitize !10
  %388 = load ptr, ptr %253, align 8, !tbaa !44
  %389 = load ptr, ptr %278, align 8, !tbaa !93
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 8
  %391 = load i64, ptr %390, align 8, !tbaa !109
  %392 = trunc i64 %391 to i8
  store i64 %387, ptr %52, align 8, !tbaa !90
  %393 = getelementptr inbounds nuw i8, ptr %388, i64 %382
  store i8 %392, ptr %393, align 1, !tbaa !8
  %394 = load i64, ptr %52, align 8, !tbaa !90
  %395 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %394, i64 1), !nosanitize !10
  %396 = extractvalue { i64, i1 } %395, 1, !nosanitize !10
  br i1 %396, label %397, label %398, !prof !48, !nosanitize !10

397:                                              ; preds = %386
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

398:                                              ; preds = %386
  %399 = extractvalue { i64, i1 } %395, 0, !nosanitize !10
  %400 = load ptr, ptr %253, align 8, !tbaa !44
  %401 = load ptr, ptr %278, align 8, !tbaa !93
  %402 = getelementptr inbounds nuw i8, ptr %401, i64 8
  %403 = load i64, ptr %402, align 8, !tbaa !109
  %404 = lshr i64 %403, 8
  %405 = trunc i64 %404 to i8
  store i64 %399, ptr %52, align 8, !tbaa !90
  %406 = getelementptr inbounds nuw i8, ptr %400, i64 %394
  store i8 %405, ptr %406, align 1, !tbaa !8
  %407 = load i64, ptr %52, align 8, !tbaa !90
  %408 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %407, i64 1), !nosanitize !10
  %409 = extractvalue { i64, i1 } %408, 1, !nosanitize !10
  br i1 %409, label %410, label %411, !prof !48, !nosanitize !10

410:                                              ; preds = %398
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

411:                                              ; preds = %398
  %412 = extractvalue { i64, i1 } %408, 0, !nosanitize !10
  %413 = load ptr, ptr %253, align 8, !tbaa !44
  %414 = load ptr, ptr %278, align 8, !tbaa !93
  %415 = getelementptr inbounds nuw i8, ptr %414, i64 8
  %416 = load i64, ptr %415, align 8, !tbaa !109
  %417 = lshr i64 %416, 16
  %418 = trunc i64 %417 to i8
  store i64 %412, ptr %52, align 8, !tbaa !90
  %419 = getelementptr inbounds nuw i8, ptr %413, i64 %407
  store i8 %418, ptr %419, align 1, !tbaa !8
  %420 = load i64, ptr %52, align 8, !tbaa !90
  %421 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %420, i64 1), !nosanitize !10
  %422 = extractvalue { i64, i1 } %421, 1, !nosanitize !10
  br i1 %422, label %423, label %424, !prof !48, !nosanitize !10

423:                                              ; preds = %411
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

424:                                              ; preds = %411
  %425 = extractvalue { i64, i1 } %421, 0, !nosanitize !10
  %426 = load ptr, ptr %253, align 8, !tbaa !44
  %427 = load ptr, ptr %278, align 8, !tbaa !93
  %428 = getelementptr inbounds nuw i8, ptr %427, i64 8
  %429 = load i64, ptr %428, align 8, !tbaa !109
  %430 = lshr i64 %429, 24
  %431 = trunc i64 %430 to i8
  store i64 %425, ptr %52, align 8, !tbaa !90
  %432 = getelementptr inbounds nuw i8, ptr %426, i64 %420
  store i8 %431, ptr %432, align 1, !tbaa !8
  %433 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %434 = load i32, ptr %433, align 4, !tbaa !50
  %435 = icmp eq i32 %434, 9
  br i1 %435, label %443, label %436

436:                                              ; preds = %424
  %437 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %438 = load i32, ptr %437, align 8, !tbaa !51
  %439 = icmp sgt i32 %438, 1
  %440 = icmp slt i32 %434, 2
  %441 = or i1 %440, %439
  %442 = select i1 %441, i8 4, i8 0
  br label %443

443:                                              ; preds = %424, %436
  %444 = phi i8 [ %442, %436 ], [ 2, %424 ]
  %445 = load i64, ptr %52, align 8, !tbaa !90
  %446 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %445, i64 1), !nosanitize !10
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !10
  br i1 %447, label %448, label %449, !prof !48, !nosanitize !10

448:                                              ; preds = %443
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

449:                                              ; preds = %443
  %450 = extractvalue { i64, i1 } %446, 0, !nosanitize !10
  %451 = load ptr, ptr %253, align 8, !tbaa !44
  store i64 %450, ptr %52, align 8, !tbaa !90
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 %445
  store i8 %444, ptr %452, align 1, !tbaa !8
  %453 = load i64, ptr %52, align 8, !tbaa !90
  %454 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %453, i64 1), !nosanitize !10
  %455 = extractvalue { i64, i1 } %454, 1, !nosanitize !10
  br i1 %455, label %456, label %457, !prof !48, !nosanitize !10

456:                                              ; preds = %449
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

457:                                              ; preds = %449
  %458 = extractvalue { i64, i1 } %454, 0, !nosanitize !10
  %459 = load ptr, ptr %253, align 8, !tbaa !44
  %460 = load ptr, ptr %278, align 8, !tbaa !93
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 20
  %462 = load i32, ptr %461, align 4, !tbaa !110
  %463 = trunc i32 %462 to i8
  store i64 %458, ptr %52, align 8, !tbaa !90
  %464 = getelementptr inbounds nuw i8, ptr %459, i64 %453
  store i8 %463, ptr %464, align 1, !tbaa !8
  %465 = load ptr, ptr %278, align 8, !tbaa !93
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 24
  %467 = load ptr, ptr %466, align 8, !tbaa !106
  %468 = icmp eq ptr %467, null
  br i1 %468, label %495, label %469

469:                                              ; preds = %457
  %470 = load i64, ptr %52, align 8, !tbaa !90
  %471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 1), !nosanitize !10
  %472 = extractvalue { i64, i1 } %471, 1, !nosanitize !10
  br i1 %472, label %473, label %474, !prof !48, !nosanitize !10

473:                                              ; preds = %469
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

474:                                              ; preds = %469
  %475 = extractvalue { i64, i1 } %471, 0, !nosanitize !10
  %476 = load ptr, ptr %253, align 8, !tbaa !44
  %477 = getelementptr inbounds nuw i8, ptr %465, i64 32
  %478 = load i32, ptr %477, align 8, !tbaa !111
  %479 = trunc i32 %478 to i8
  store i64 %475, ptr %52, align 8, !tbaa !90
  %480 = getelementptr inbounds nuw i8, ptr %476, i64 %470
  store i8 %479, ptr %480, align 1, !tbaa !8
  %481 = load i64, ptr %52, align 8, !tbaa !90
  %482 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %481, i64 1), !nosanitize !10
  %483 = extractvalue { i64, i1 } %482, 1, !nosanitize !10
  br i1 %483, label %484, label %485, !prof !48, !nosanitize !10

484:                                              ; preds = %474
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

485:                                              ; preds = %474
  %486 = extractvalue { i64, i1 } %482, 0, !nosanitize !10
  %487 = load ptr, ptr %253, align 8, !tbaa !44
  %488 = load ptr, ptr %278, align 8, !tbaa !93
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 32
  %490 = load i32, ptr %489, align 8, !tbaa !111
  %491 = lshr i32 %490, 8
  %492 = trunc i32 %491 to i8
  store i64 %486, ptr %52, align 8, !tbaa !90
  %493 = getelementptr inbounds nuw i8, ptr %487, i64 %481
  store i8 %492, ptr %493, align 1, !tbaa !8
  %494 = load ptr, ptr %278, align 8, !tbaa !93
  br label %495

495:                                              ; preds = %485, %457
  %496 = phi ptr [ %494, %485 ], [ %465, %457 ]
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 68
  %498 = load i32, ptr %497, align 4, !tbaa !108
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %505, label %500

500:                                              ; preds = %495
  %501 = load i64, ptr %252, align 8, !tbaa !73
  %502 = load ptr, ptr %253, align 8, !tbaa !44
  %503 = load i64, ptr %52, align 8, !tbaa !90
  %504 = tail call i64 @crc32_z(i64 noundef %501, ptr noundef %502, i64 noundef %503) #13
  store i64 %504, ptr %252, align 8, !tbaa !73
  br label %505

505:                                              ; preds = %500, %495
  %506 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %506, align 8, !tbaa !112
  store i32 69, ptr %20, align 8, !tbaa !30
  br label %511

507:                                              ; preds = %346
  %508 = load i32, ptr %20, align 8, !tbaa !30
  br label %509

509:                                              ; preds = %507, %247
  %510 = phi i32 [ %508, %507 ], [ %248, %247 ]
  switch i32 %510, label %987 [
    i32 69, label %511
    i32 73, label %719
    i32 91, label %831
    i32 103, label %942
  ]

511:                                              ; preds = %509, %505
  %512 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %513 = load ptr, ptr %512, align 8, !tbaa !93
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 24
  %515 = load ptr, ptr %514, align 8, !tbaa !106
  %516 = icmp eq ptr %515, null
  br i1 %516, label %718, label %517

517:                                              ; preds = %511
  %518 = getelementptr inbounds nuw i8, ptr %513, i64 32
  %519 = load i32, ptr %518, align 8, !tbaa !111
  %520 = and i32 %519, 65535
  %521 = zext nneg i32 %520 to i64
  %522 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %523 = load i64, ptr %522, align 8, !tbaa !112
  %524 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %521, i64 %523), !nosanitize !10
  %525 = extractvalue { i64, i1 } %524, 1, !nosanitize !10
  br i1 %525, label %526, label %527, !prof !48, !nosanitize !10

526:                                              ; preds = %517
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

527:                                              ; preds = %517
  %528 = load i64, ptr %52, align 8, !tbaa !90
  %529 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %530 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %533 = extractvalue { i64, i1 } %524, 0
  %534 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %528, i64 %533), !nosanitize !10
  %535 = extractvalue { i64, i1 } %534, 1, !nosanitize !10
  br i1 %535, label %608, label %536, !prof !48, !nosanitize !10

536:                                              ; preds = %527
  %537 = extractvalue { i64, i1 } %534, 0, !nosanitize !10
  %538 = load i64, ptr %529, align 8, !tbaa !45
  %539 = icmp ugt i64 %537, %538
  br i1 %539, label %540, label %691

540:                                              ; preds = %536
  %541 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %538, i64 %528), !nosanitize !10
  %542 = extractvalue { i64, i1 } %541, 0, !nosanitize !10
  %543 = extractvalue { i64, i1 } %541, 1, !nosanitize !10
  br i1 %543, label %614, label %544, !prof !48, !nosanitize !10

544:                                              ; preds = %540
  %545 = load ptr, ptr %530, align 8, !tbaa !44
  %546 = getelementptr inbounds nuw i8, ptr %545, i64 %528
  %547 = getelementptr inbounds nuw i8, ptr %515, i64 %523
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %546, ptr nonnull align 1 %547, i64 %542, i1 false)
  %548 = load i64, ptr %529, align 8, !tbaa !45
  store i64 %548, ptr %52, align 8, !tbaa !90
  %549 = load ptr, ptr %512, align 8, !tbaa !93
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 68
  %551 = load i32, ptr %550, align 4, !tbaa !108
  %552 = icmp ne i32 %551, 0
  %553 = icmp ugt i64 %548, %528
  %554 = select i1 %552, i1 %553, i1 false
  br i1 %554, label %555, label %561

555:                                              ; preds = %544
  %556 = sub nuw i64 %548, %528
  %557 = load ptr, ptr %530, align 8, !tbaa !44
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 %528
  %559 = load i64, ptr %531, align 8, !tbaa !73
  %560 = tail call i64 @crc32_z(i64 noundef %559, ptr noundef %558, i64 noundef %556) #13
  store i64 %560, ptr %531, align 8, !tbaa !73
  br label %561

561:                                              ; preds = %555, %544
  %562 = load i64, ptr %522, align 8, !tbaa !112
  %563 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %562, i64 %542), !nosanitize !10
  %564 = extractvalue { i64, i1 } %563, 1, !nosanitize !10
  br i1 %564, label %637, label %565, !prof !48, !nosanitize !10

565:                                              ; preds = %561
  %566 = extractvalue { i64, i1 } %563, 0, !nosanitize !10
  store i64 %566, ptr %522, align 8, !tbaa !112
  %567 = load ptr, ptr %13, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %567) #13
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 40
  %569 = load i64, ptr %568, align 8, !tbaa !90
  %570 = load i32, ptr %43, align 8, !tbaa !101
  %571 = zext i32 %570 to i64
  %572 = tail call i64 @llvm.umin.i64(i64 %569, i64 %571)
  %573 = trunc nuw i64 %572 to i32
  %574 = icmp eq i64 %572, 0
  br i1 %574, label %602, label %575

575:                                              ; preds = %565
  %576 = load ptr, ptr %25, align 8, !tbaa !100
  %577 = getelementptr inbounds nuw i8, ptr %567, i64 32
  %578 = load ptr, ptr %577, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %576, ptr align 1 %578, i64 %572, i1 false)
  %579 = load ptr, ptr %25, align 8, !tbaa !100
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 %572
  store ptr %580, ptr %25, align 8, !tbaa !100
  %581 = load ptr, ptr %577, align 8, !tbaa !91
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 %572
  store ptr %582, ptr %577, align 8, !tbaa !91
  %583 = load i64, ptr %532, align 8, !tbaa !102
  %584 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %583, i64 %572), !nosanitize !10
  %585 = extractvalue { i64, i1 } %584, 1, !nosanitize !10
  br i1 %585, label %659, label %586, !prof !48, !nosanitize !10

586:                                              ; preds = %575
  %587 = extractvalue { i64, i1 } %584, 0, !nosanitize !10
  store i64 %587, ptr %532, align 8, !tbaa !102
  %588 = load i32, ptr %43, align 8, !tbaa !101
  %589 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %588, i32 %573), !nosanitize !10
  %590 = extractvalue { i32, i1 } %589, 1, !nosanitize !10
  br i1 %590, label %665, label %591, !prof !48, !nosanitize !10

591:                                              ; preds = %586
  %592 = extractvalue { i32, i1 } %589, 0, !nosanitize !10
  store i32 %592, ptr %43, align 8, !tbaa !101
  %593 = load i64, ptr %568, align 8, !tbaa !90
  %594 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %593, i64 %572), !nosanitize !10
  %595 = extractvalue { i64, i1 } %594, 1, !nosanitize !10
  br i1 %595, label %671, label %596, !prof !48, !nosanitize !10

596:                                              ; preds = %591
  %597 = extractvalue { i64, i1 } %594, 0, !nosanitize !10
  store i64 %597, ptr %568, align 8, !tbaa !90
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %596
  %600 = getelementptr inbounds nuw i8, ptr %567, i64 16
  %601 = load ptr, ptr %600, align 8, !tbaa !44
  store ptr %601, ptr %577, align 8, !tbaa !91
  br label %602

602:                                              ; preds = %599, %596, %565
  %603 = load i64, ptr %52, align 8, !tbaa !90
  %604 = icmp eq i64 %603, 0
  br i1 %604, label %605, label %681

605:                                              ; preds = %602
  %606 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %533, i64 %542), !nosanitize !10
  %607 = extractvalue { i64, i1 } %606, 1, !nosanitize !10
  br i1 %607, label %685, label %609, !prof !48, !nosanitize !10

608:                                              ; preds = %527
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

609:                                              ; preds = %605, %682
  %610 = phi { i64, i1 } [ %683, %682 ], [ %606, %605 ]
  %611 = extractvalue { i64, i1 } %610, 0
  %612 = load i64, ptr %529, align 8, !tbaa !45
  %613 = icmp ugt i64 %611, %612
  br i1 %613, label %615, label %686

614:                                              ; preds = %540
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

615:                                              ; preds = %609
  %616 = load ptr, ptr %530, align 8, !tbaa !44
  %617 = load ptr, ptr %512, align 8, !tbaa !93
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 24
  %619 = load ptr, ptr %618, align 8, !tbaa !106
  %620 = load i64, ptr %522, align 8, !tbaa !112
  %621 = getelementptr inbounds nuw i8, ptr %619, i64 %620
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %616, ptr align 1 %621, i64 %612, i1 false)
  %622 = load i64, ptr %529, align 8, !tbaa !45
  store i64 %622, ptr %52, align 8, !tbaa !90
  %623 = load ptr, ptr %512, align 8, !tbaa !93
  %624 = getelementptr inbounds nuw i8, ptr %623, i64 68
  %625 = load i32, ptr %624, align 4, !tbaa !108
  %626 = icmp ne i32 %625, 0
  %627 = icmp ne i64 %622, 0
  %628 = select i1 %626, i1 %627, i1 false
  br i1 %628, label %629, label %633

629:                                              ; preds = %615
  %630 = load ptr, ptr %530, align 8, !tbaa !44
  %631 = load i64, ptr %531, align 8, !tbaa !73
  %632 = tail call i64 @crc32_z(i64 noundef %631, ptr noundef %630, i64 noundef %622) #13
  store i64 %632, ptr %531, align 8, !tbaa !73
  br label %633

633:                                              ; preds = %629, %615
  %634 = load i64, ptr %522, align 8, !tbaa !112
  %635 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %634, i64 %612), !nosanitize !10
  %636 = extractvalue { i64, i1 } %635, 1, !nosanitize !10
  br i1 %636, label %637, label %638, !prof !48, !nosanitize !10

637:                                              ; preds = %633, %561
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

638:                                              ; preds = %633
  %639 = extractvalue { i64, i1 } %635, 0, !nosanitize !10
  store i64 %639, ptr %522, align 8, !tbaa !112
  %640 = load ptr, ptr %13, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %640) #13
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 40
  %642 = load i64, ptr %641, align 8, !tbaa !90
  %643 = load i32, ptr %43, align 8, !tbaa !101
  %644 = zext i32 %643 to i64
  %645 = tail call i64 @llvm.umin.i64(i64 %642, i64 %644)
  %646 = trunc nuw i64 %645 to i32
  %647 = icmp eq i64 %645, 0
  br i1 %647, label %678, label %648

648:                                              ; preds = %638
  %649 = load ptr, ptr %25, align 8, !tbaa !100
  %650 = getelementptr inbounds nuw i8, ptr %640, i64 32
  %651 = load ptr, ptr %650, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %649, ptr align 1 %651, i64 %645, i1 false)
  %652 = load ptr, ptr %25, align 8, !tbaa !100
  %653 = getelementptr inbounds nuw i8, ptr %652, i64 %645
  store ptr %653, ptr %25, align 8, !tbaa !100
  %654 = load ptr, ptr %650, align 8, !tbaa !91
  %655 = getelementptr inbounds nuw i8, ptr %654, i64 %645
  store ptr %655, ptr %650, align 8, !tbaa !91
  %656 = load i64, ptr %532, align 8, !tbaa !102
  %657 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %656, i64 %645), !nosanitize !10
  %658 = extractvalue { i64, i1 } %657, 1, !nosanitize !10
  br i1 %658, label %659, label %660, !prof !48, !nosanitize !10

659:                                              ; preds = %648, %575
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

660:                                              ; preds = %648
  %661 = extractvalue { i64, i1 } %657, 0, !nosanitize !10
  store i64 %661, ptr %532, align 8, !tbaa !102
  %662 = load i32, ptr %43, align 8, !tbaa !101
  %663 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %662, i32 %646), !nosanitize !10
  %664 = extractvalue { i32, i1 } %663, 1, !nosanitize !10
  br i1 %664, label %665, label %666, !prof !48, !nosanitize !10

665:                                              ; preds = %660, %586
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

666:                                              ; preds = %660
  %667 = extractvalue { i32, i1 } %663, 0, !nosanitize !10
  store i32 %667, ptr %43, align 8, !tbaa !101
  %668 = load i64, ptr %641, align 8, !tbaa !90
  %669 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %668, i64 %645), !nosanitize !10
  %670 = extractvalue { i64, i1 } %669, 1, !nosanitize !10
  br i1 %670, label %671, label %672, !prof !48, !nosanitize !10

671:                                              ; preds = %666, %591
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

672:                                              ; preds = %666
  %673 = extractvalue { i64, i1 } %669, 0, !nosanitize !10
  store i64 %673, ptr %641, align 8, !tbaa !90
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %675, label %678

675:                                              ; preds = %672
  %676 = getelementptr inbounds nuw i8, ptr %640, i64 16
  %677 = load ptr, ptr %676, align 8, !tbaa !44
  store ptr %677, ptr %650, align 8, !tbaa !91
  br label %678

678:                                              ; preds = %638, %672, %675
  %679 = load i64, ptr %52, align 8, !tbaa !90
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %682, label %681

681:                                              ; preds = %678, %602
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

682:                                              ; preds = %678
  %683 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %611, i64 %612), !nosanitize !10
  %684 = extractvalue { i64, i1 } %683, 1, !nosanitize !10
  br i1 %684, label %685, label %609, !prof !48, !llvm.loop !113, !nosanitize !10

685:                                              ; preds = %682, %605
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

686:                                              ; preds = %609
  %687 = load ptr, ptr %512, align 8, !tbaa !93
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 24
  %689 = load ptr, ptr %688, align 8, !tbaa !106
  %690 = load i64, ptr %522, align 8, !tbaa !112
  br label %691

691:                                              ; preds = %686, %536
  %692 = phi i64 [ %523, %536 ], [ %690, %686 ]
  %693 = phi ptr [ %515, %536 ], [ %689, %686 ]
  %694 = phi i64 [ %528, %536 ], [ 0, %686 ]
  %695 = phi i64 [ %533, %536 ], [ %611, %686 ]
  %696 = load ptr, ptr %530, align 8, !tbaa !44
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 %694
  %698 = getelementptr inbounds nuw i8, ptr %693, i64 %692
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %697, ptr align 1 %698, i64 %695, i1 false)
  %699 = load i64, ptr %52, align 8, !tbaa !90
  %700 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %699, i64 %695), !nosanitize !10
  %701 = extractvalue { i64, i1 } %700, 0, !nosanitize !10
  %702 = extractvalue { i64, i1 } %700, 1, !nosanitize !10
  br i1 %702, label %703, label %704, !prof !48, !nosanitize !10

703:                                              ; preds = %691
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

704:                                              ; preds = %691
  store i64 %701, ptr %52, align 8, !tbaa !90
  %705 = load ptr, ptr %512, align 8, !tbaa !93
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 68
  %707 = load i32, ptr %706, align 4, !tbaa !108
  %708 = icmp ne i32 %707, 0
  %709 = icmp ugt i64 %701, %694
  %710 = select i1 %708, i1 %709, i1 false
  br i1 %710, label %711, label %717

711:                                              ; preds = %704
  %712 = sub nuw i64 %701, %694
  %713 = load ptr, ptr %530, align 8, !tbaa !44
  %714 = getelementptr inbounds nuw i8, ptr %713, i64 %694
  %715 = load i64, ptr %531, align 8, !tbaa !73
  %716 = tail call i64 @crc32_z(i64 noundef %715, ptr noundef %714, i64 noundef %712) #13
  store i64 %716, ptr %531, align 8, !tbaa !73
  br label %717

717:                                              ; preds = %711, %704
  store i64 0, ptr %522, align 8, !tbaa !112
  br label %718

718:                                              ; preds = %511, %717
  store i32 73, ptr %20, align 8, !tbaa !30
  br label %719

719:                                              ; preds = %509, %718
  %720 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %721 = load ptr, ptr %720, align 8, !tbaa !93
  %722 = getelementptr inbounds nuw i8, ptr %721, i64 40
  %723 = load ptr, ptr %722, align 8, !tbaa !105
  %724 = icmp eq ptr %723, null
  br i1 %724, label %830, label %725

725:                                              ; preds = %719
  %726 = load i64, ptr %52, align 8, !tbaa !90
  %727 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %728 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %729 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %730 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %731 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %732

732:                                              ; preds = %808, %725
  %733 = phi i64 [ %726, %725 ], [ %795, %808 ]
  %734 = load i64, ptr %52, align 8, !tbaa !90
  %735 = load i64, ptr %727, align 8, !tbaa !45
  %736 = icmp eq i64 %734, %735
  br i1 %736, label %737, label %793

737:                                              ; preds = %732
  %738 = load ptr, ptr %720, align 8, !tbaa !93
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 68
  %740 = load i32, ptr %739, align 4, !tbaa !108
  %741 = icmp ne i32 %740, 0
  %742 = icmp ugt i64 %734, %733
  %743 = select i1 %741, i1 %742, i1 false
  br i1 %743, label %744, label %750

744:                                              ; preds = %737
  %745 = sub nuw i64 %734, %733
  %746 = load ptr, ptr %728, align 8, !tbaa !44
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 %733
  %748 = load i64, ptr %729, align 8, !tbaa !73
  %749 = tail call i64 @crc32_z(i64 noundef %748, ptr noundef %747, i64 noundef %745) #13
  store i64 %749, ptr %729, align 8, !tbaa !73
  br label %750

750:                                              ; preds = %744, %737
  %751 = load ptr, ptr %13, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %751) #13
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 40
  %753 = load i64, ptr %752, align 8, !tbaa !90
  %754 = load i32, ptr %43, align 8, !tbaa !101
  %755 = zext i32 %754 to i64
  %756 = tail call i64 @llvm.umin.i64(i64 %753, i64 %755)
  %757 = trunc nuw i64 %756 to i32
  %758 = icmp eq i64 %756, 0
  br i1 %758, label %789, label %759

759:                                              ; preds = %750
  %760 = load ptr, ptr %25, align 8, !tbaa !100
  %761 = getelementptr inbounds nuw i8, ptr %751, i64 32
  %762 = load ptr, ptr %761, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %760, ptr align 1 %762, i64 %756, i1 false)
  %763 = load ptr, ptr %25, align 8, !tbaa !100
  %764 = getelementptr inbounds nuw i8, ptr %763, i64 %756
  store ptr %764, ptr %25, align 8, !tbaa !100
  %765 = load ptr, ptr %761, align 8, !tbaa !91
  %766 = getelementptr inbounds nuw i8, ptr %765, i64 %756
  store ptr %766, ptr %761, align 8, !tbaa !91
  %767 = load i64, ptr %730, align 8, !tbaa !102
  %768 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %767, i64 %756), !nosanitize !10
  %769 = extractvalue { i64, i1 } %768, 1, !nosanitize !10
  br i1 %769, label %770, label %771, !prof !48, !nosanitize !10

770:                                              ; preds = %759
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

771:                                              ; preds = %759
  %772 = extractvalue { i64, i1 } %768, 0, !nosanitize !10
  store i64 %772, ptr %730, align 8, !tbaa !102
  %773 = load i32, ptr %43, align 8, !tbaa !101
  %774 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %773, i32 %757), !nosanitize !10
  %775 = extractvalue { i32, i1 } %774, 1, !nosanitize !10
  br i1 %775, label %776, label %777, !prof !48, !nosanitize !10

776:                                              ; preds = %771
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

777:                                              ; preds = %771
  %778 = extractvalue { i32, i1 } %774, 0, !nosanitize !10
  store i32 %778, ptr %43, align 8, !tbaa !101
  %779 = load i64, ptr %752, align 8, !tbaa !90
  %780 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %779, i64 %756), !nosanitize !10
  %781 = extractvalue { i64, i1 } %780, 1, !nosanitize !10
  br i1 %781, label %782, label %783, !prof !48, !nosanitize !10

782:                                              ; preds = %777
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

783:                                              ; preds = %777
  %784 = extractvalue { i64, i1 } %780, 0, !nosanitize !10
  store i64 %784, ptr %752, align 8, !tbaa !90
  %785 = icmp eq i64 %784, 0
  br i1 %785, label %786, label %789

786:                                              ; preds = %783
  %787 = getelementptr inbounds nuw i8, ptr %751, i64 16
  %788 = load ptr, ptr %787, align 8, !tbaa !44
  store ptr %788, ptr %761, align 8, !tbaa !91
  br label %789

789:                                              ; preds = %750, %783, %786
  %790 = load i64, ptr %52, align 8, !tbaa !90
  %791 = icmp eq i64 %790, 0
  br i1 %791, label %793, label %792

792:                                              ; preds = %789
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

793:                                              ; preds = %789, %732
  %794 = phi i64 [ %734, %732 ], [ 0, %789 ]
  %795 = phi i64 [ %733, %732 ], [ 0, %789 ]
  %796 = load i64, ptr %731, align 8, !tbaa !112
  %797 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %796, i64 1), !nosanitize !10
  %798 = extractvalue { i64, i1 } %797, 1, !nosanitize !10
  br i1 %798, label %799, label %800, !prof !48, !nosanitize !10

799:                                              ; preds = %793
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

800:                                              ; preds = %793
  %801 = extractvalue { i64, i1 } %797, 0, !nosanitize !10
  %802 = load ptr, ptr %720, align 8, !tbaa !93
  %803 = getelementptr inbounds nuw i8, ptr %802, i64 40
  %804 = load ptr, ptr %803, align 8, !tbaa !105
  store i64 %801, ptr %731, align 8, !tbaa !112
  %805 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %794, i64 1), !nosanitize !10
  %806 = extractvalue { i64, i1 } %805, 1, !nosanitize !10
  br i1 %806, label %807, label %808, !prof !48, !nosanitize !10

807:                                              ; preds = %800
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

808:                                              ; preds = %800
  %809 = extractvalue { i64, i1 } %805, 0, !nosanitize !10
  %810 = load ptr, ptr %728, align 8, !tbaa !44
  %811 = getelementptr inbounds nuw i8, ptr %804, i64 %796
  %812 = load i8, ptr %811, align 1, !tbaa !8
  store i64 %809, ptr %52, align 8, !tbaa !90
  %813 = getelementptr inbounds nuw i8, ptr %810, i64 %794
  store i8 %812, ptr %813, align 1, !tbaa !8
  %814 = icmp eq i8 %812, 0
  br i1 %814, label %815, label %732, !llvm.loop !116

815:                                              ; preds = %808
  %816 = load ptr, ptr %720, align 8, !tbaa !93
  %817 = getelementptr inbounds nuw i8, ptr %816, i64 68
  %818 = load i32, ptr %817, align 4, !tbaa !108
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %829, label %820

820:                                              ; preds = %815
  %821 = load i64, ptr %52, align 8, !tbaa !90
  %822 = icmp ugt i64 %821, %795
  br i1 %822, label %823, label %829

823:                                              ; preds = %820
  %824 = sub nuw i64 %821, %795
  %825 = load ptr, ptr %728, align 8, !tbaa !44
  %826 = getelementptr inbounds nuw i8, ptr %825, i64 %795
  %827 = load i64, ptr %729, align 8, !tbaa !73
  %828 = tail call i64 @crc32_z(i64 noundef %827, ptr noundef %826, i64 noundef %824) #13
  store i64 %828, ptr %729, align 8, !tbaa !73
  br label %829

829:                                              ; preds = %815, %820, %823
  store i64 0, ptr %731, align 8, !tbaa !112
  br label %830

830:                                              ; preds = %719, %829
  store i32 91, ptr %20, align 8, !tbaa !30
  br label %831

831:                                              ; preds = %509, %830
  %832 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %833 = load ptr, ptr %832, align 8, !tbaa !93
  %834 = getelementptr inbounds nuw i8, ptr %833, i64 56
  %835 = load ptr, ptr %834, align 8, !tbaa !103
  %836 = icmp eq ptr %835, null
  br i1 %836, label %941, label %837

837:                                              ; preds = %831
  %838 = load i64, ptr %52, align 8, !tbaa !90
  %839 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %840 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %841 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %842 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %843 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %844

844:                                              ; preds = %920, %837
  %845 = phi i64 [ %838, %837 ], [ %907, %920 ]
  %846 = load i64, ptr %52, align 8, !tbaa !90
  %847 = load i64, ptr %839, align 8, !tbaa !45
  %848 = icmp eq i64 %846, %847
  br i1 %848, label %849, label %905

849:                                              ; preds = %844
  %850 = load ptr, ptr %832, align 8, !tbaa !93
  %851 = getelementptr inbounds nuw i8, ptr %850, i64 68
  %852 = load i32, ptr %851, align 4, !tbaa !108
  %853 = icmp ne i32 %852, 0
  %854 = icmp ugt i64 %846, %845
  %855 = select i1 %853, i1 %854, i1 false
  br i1 %855, label %856, label %862

856:                                              ; preds = %849
  %857 = sub nuw i64 %846, %845
  %858 = load ptr, ptr %840, align 8, !tbaa !44
  %859 = getelementptr inbounds nuw i8, ptr %858, i64 %845
  %860 = load i64, ptr %841, align 8, !tbaa !73
  %861 = tail call i64 @crc32_z(i64 noundef %860, ptr noundef %859, i64 noundef %857) #13
  store i64 %861, ptr %841, align 8, !tbaa !73
  br label %862

862:                                              ; preds = %856, %849
  %863 = load ptr, ptr %13, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %863) #13
  %864 = getelementptr inbounds nuw i8, ptr %863, i64 40
  %865 = load i64, ptr %864, align 8, !tbaa !90
  %866 = load i32, ptr %43, align 8, !tbaa !101
  %867 = zext i32 %866 to i64
  %868 = tail call i64 @llvm.umin.i64(i64 %865, i64 %867)
  %869 = trunc nuw i64 %868 to i32
  %870 = icmp eq i64 %868, 0
  br i1 %870, label %901, label %871

871:                                              ; preds = %862
  %872 = load ptr, ptr %25, align 8, !tbaa !100
  %873 = getelementptr inbounds nuw i8, ptr %863, i64 32
  %874 = load ptr, ptr %873, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %872, ptr align 1 %874, i64 %868, i1 false)
  %875 = load ptr, ptr %25, align 8, !tbaa !100
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 %868
  store ptr %876, ptr %25, align 8, !tbaa !100
  %877 = load ptr, ptr %873, align 8, !tbaa !91
  %878 = getelementptr inbounds nuw i8, ptr %877, i64 %868
  store ptr %878, ptr %873, align 8, !tbaa !91
  %879 = load i64, ptr %842, align 8, !tbaa !102
  %880 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %879, i64 %868), !nosanitize !10
  %881 = extractvalue { i64, i1 } %880, 1, !nosanitize !10
  br i1 %881, label %882, label %883, !prof !48, !nosanitize !10

882:                                              ; preds = %871
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

883:                                              ; preds = %871
  %884 = extractvalue { i64, i1 } %880, 0, !nosanitize !10
  store i64 %884, ptr %842, align 8, !tbaa !102
  %885 = load i32, ptr %43, align 8, !tbaa !101
  %886 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %885, i32 %869), !nosanitize !10
  %887 = extractvalue { i32, i1 } %886, 1, !nosanitize !10
  br i1 %887, label %888, label %889, !prof !48, !nosanitize !10

888:                                              ; preds = %883
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

889:                                              ; preds = %883
  %890 = extractvalue { i32, i1 } %886, 0, !nosanitize !10
  store i32 %890, ptr %43, align 8, !tbaa !101
  %891 = load i64, ptr %864, align 8, !tbaa !90
  %892 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %891, i64 %868), !nosanitize !10
  %893 = extractvalue { i64, i1 } %892, 1, !nosanitize !10
  br i1 %893, label %894, label %895, !prof !48, !nosanitize !10

894:                                              ; preds = %889
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

895:                                              ; preds = %889
  %896 = extractvalue { i64, i1 } %892, 0, !nosanitize !10
  store i64 %896, ptr %864, align 8, !tbaa !90
  %897 = icmp eq i64 %896, 0
  br i1 %897, label %898, label %901

898:                                              ; preds = %895
  %899 = getelementptr inbounds nuw i8, ptr %863, i64 16
  %900 = load ptr, ptr %899, align 8, !tbaa !44
  store ptr %900, ptr %873, align 8, !tbaa !91
  br label %901

901:                                              ; preds = %862, %895, %898
  %902 = load i64, ptr %52, align 8, !tbaa !90
  %903 = icmp eq i64 %902, 0
  br i1 %903, label %905, label %904

904:                                              ; preds = %901
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

905:                                              ; preds = %901, %844
  %906 = phi i64 [ %846, %844 ], [ 0, %901 ]
  %907 = phi i64 [ %845, %844 ], [ 0, %901 ]
  %908 = load i64, ptr %843, align 8, !tbaa !112
  %909 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %908, i64 1), !nosanitize !10
  %910 = extractvalue { i64, i1 } %909, 1, !nosanitize !10
  br i1 %910, label %911, label %912, !prof !48, !nosanitize !10

911:                                              ; preds = %905
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

912:                                              ; preds = %905
  %913 = extractvalue { i64, i1 } %909, 0, !nosanitize !10
  %914 = load ptr, ptr %832, align 8, !tbaa !93
  %915 = getelementptr inbounds nuw i8, ptr %914, i64 56
  %916 = load ptr, ptr %915, align 8, !tbaa !103
  store i64 %913, ptr %843, align 8, !tbaa !112
  %917 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %906, i64 1), !nosanitize !10
  %918 = extractvalue { i64, i1 } %917, 1, !nosanitize !10
  br i1 %918, label %919, label %920, !prof !48, !nosanitize !10

919:                                              ; preds = %912
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

920:                                              ; preds = %912
  %921 = extractvalue { i64, i1 } %917, 0, !nosanitize !10
  %922 = load ptr, ptr %840, align 8, !tbaa !44
  %923 = getelementptr inbounds nuw i8, ptr %916, i64 %908
  %924 = load i8, ptr %923, align 1, !tbaa !8
  store i64 %921, ptr %52, align 8, !tbaa !90
  %925 = getelementptr inbounds nuw i8, ptr %922, i64 %906
  store i8 %924, ptr %925, align 1, !tbaa !8
  %926 = icmp eq i8 %924, 0
  br i1 %926, label %927, label %844, !llvm.loop !117

927:                                              ; preds = %920
  %928 = load ptr, ptr %832, align 8, !tbaa !93
  %929 = getelementptr inbounds nuw i8, ptr %928, i64 68
  %930 = load i32, ptr %929, align 4, !tbaa !108
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %941, label %932

932:                                              ; preds = %927
  %933 = load i64, ptr %52, align 8, !tbaa !90
  %934 = icmp ugt i64 %933, %907
  br i1 %934, label %935, label %941

935:                                              ; preds = %932
  %936 = sub nuw i64 %933, %907
  %937 = load ptr, ptr %840, align 8, !tbaa !44
  %938 = getelementptr inbounds nuw i8, ptr %937, i64 %907
  %939 = load i64, ptr %841, align 8, !tbaa !73
  %940 = tail call i64 @crc32_z(i64 noundef %939, ptr noundef %938, i64 noundef %936) #13
  store i64 %940, ptr %841, align 8, !tbaa !73
  br label %941

941:                                              ; preds = %831, %927, %932, %935
  store i32 103, ptr %20, align 8, !tbaa !30
  br label %942

942:                                              ; preds = %509, %941
  %943 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %944 = load ptr, ptr %943, align 8, !tbaa !93
  %945 = getelementptr inbounds nuw i8, ptr %944, i64 68
  %946 = load i32, ptr %945, align 4, !tbaa !108
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %983, label %948

948:                                              ; preds = %942
  %949 = load i64, ptr %52, align 8, !tbaa !90
  %950 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %949, i64 2), !nosanitize !10
  %951 = extractvalue { i64, i1 } %950, 1, !nosanitize !10
  br i1 %951, label %952, label %953, !prof !48, !nosanitize !10

952:                                              ; preds = %948
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

953:                                              ; preds = %948
  %954 = extractvalue { i64, i1 } %950, 0, !nosanitize !10
  %955 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %956 = load i64, ptr %955, align 8, !tbaa !45
  %957 = icmp ugt i64 %954, %956
  br i1 %957, label %958, label %962

958:                                              ; preds = %953
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %959 = load i64, ptr %52, align 8, !tbaa !90
  %960 = icmp eq i64 %959, 0
  br i1 %960, label %962, label %961

961:                                              ; preds = %958
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

962:                                              ; preds = %958, %953
  %963 = phi i64 [ 0, %958 ], [ %949, %953 ]
  %964 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %965 = add nuw i64 %963, 1
  %966 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %967 = load ptr, ptr %966, align 8, !tbaa !44
  %968 = load i64, ptr %964, align 8, !tbaa !73
  %969 = trunc i64 %968 to i8
  store i64 %965, ptr %52, align 8, !tbaa !90
  %970 = getelementptr inbounds nuw i8, ptr %967, i64 %963
  store i8 %969, ptr %970, align 1, !tbaa !8
  %971 = load i64, ptr %52, align 8, !tbaa !90
  %972 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %971, i64 1), !nosanitize !10
  %973 = extractvalue { i64, i1 } %972, 1, !nosanitize !10
  br i1 %973, label %974, label %975, !prof !48, !nosanitize !10

974:                                              ; preds = %962
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

975:                                              ; preds = %962
  %976 = extractvalue { i64, i1 } %972, 0, !nosanitize !10
  %977 = load ptr, ptr %966, align 8, !tbaa !44
  %978 = load i64, ptr %964, align 8, !tbaa !73
  %979 = lshr i64 %978, 8
  %980 = trunc i64 %979 to i8
  store i64 %976, ptr %52, align 8, !tbaa !90
  %981 = getelementptr inbounds nuw i8, ptr %977, i64 %971
  store i8 %980, ptr %981, align 1, !tbaa !8
  %982 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %982, ptr %964, align 8, !tbaa !73
  br label %983

983:                                              ; preds = %975, %942
  store i32 113, ptr %20, align 8, !tbaa !30
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %984 = load i64, ptr %52, align 8, !tbaa !90
  %985 = icmp eq i64 %984, 0
  br i1 %985, label %987, label %986

986:                                              ; preds = %983
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

987:                                              ; preds = %509, %136, %983
  %988 = load i32, ptr %29, align 8, !tbaa !74
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %990, label %999

990:                                              ; preds = %126, %987
  %991 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %992 = load i32, ptr %991, align 4, !tbaa !67
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %999

994:                                              ; preds = %990
  %995 = icmp eq i32 %1, 0
  br i1 %995, label %1210, label %996

996:                                              ; preds = %994
  %997 = load i32, ptr %20, align 8, !tbaa !30
  %998 = icmp eq i32 %997, 666
  br i1 %998, label %1061, label %999

999:                                              ; preds = %996, %990, %987
  %1000 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %1001 = load i32, ptr %1000, align 4, !tbaa !50
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1003, label %1005

1003:                                             ; preds = %999
  %1004 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1018

1005:                                             ; preds = %999
  %1006 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %1007 = load i32, ptr %1006, align 8, !tbaa !51
  switch i32 %1007, label %1012 [
    i32 2, label %1008
    i32 3, label %1010
  ]

1008:                                             ; preds = %1005
  %1009 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1018

1010:                                             ; preds = %1005
  %1011 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1018

1012:                                             ; preds = %1005
  %1013 = sext i32 %1001 to i64
  %1014 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1013
  %1015 = getelementptr inbounds nuw i8, ptr %1014, i64 8
  %1016 = load ptr, ptr %1015, align 8, !tbaa !98
  %1017 = tail call i32 %1016(ptr noundef nonnull %14, i32 noundef %1) #13
  br label %1018

1018:                                             ; preds = %1008, %1012, %1010, %1003
  %1019 = phi i32 [ %1004, %1003 ], [ %1009, %1008 ], [ %1011, %1010 ], [ %1017, %1012 ]
  %1020 = and i32 %1019, -2
  %1021 = icmp eq i32 %1020, 2
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1018
  store i32 666, ptr %20, align 8, !tbaa !30
  br label %1023

1023:                                             ; preds = %1018, %1022
  %1024 = and i32 %1019, -3
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1030

1026:                                             ; preds = %1023
  %1027 = load i32, ptr %43, align 8, !tbaa !101
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1210

1029:                                             ; preds = %1026
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

1030:                                             ; preds = %1023
  %1031 = icmp eq i32 %1019, 1
  br i1 %1031, label %1032, label %1061

1032:                                             ; preds = %1030
  switch i32 %1, label %1034 [
    i32 1, label %1033
    i32 5, label %1057
  ]

1033:                                             ; preds = %1032
  tail call void @_tr_align(ptr noundef nonnull %14) #13
  br label %1057

1034:                                             ; preds = %1032
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #13
  %1035 = icmp eq i32 %1, 3
  br i1 %1035, label %1036, label %1057

1036:                                             ; preds = %1034
  %1037 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1038 = load i32, ptr %1037, align 4, !tbaa !36
  %1039 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1038, i32 1), !nosanitize !10
  %1040 = extractvalue { i32, i1 } %1039, 1, !nosanitize !10
  br i1 %1040, label %1041, label %1042, !prof !48, !nosanitize !10

1041:                                             ; preds = %1036
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

1042:                                             ; preds = %1036
  %1043 = extractvalue { i32, i1 } %1039, 0, !nosanitize !10
  %1044 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1045 = load ptr, ptr %1044, align 8, !tbaa !41
  %1046 = zext i32 %1043 to i64
  %1047 = getelementptr inbounds nuw [2 x i8], ptr %1045, i64 %1046
  store i16 0, ptr %1047, align 2, !tbaa !54
  %1048 = shl nuw nsw i64 %1046, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1045, i8 0, i64 %1048, i1 false)
  %1049 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1049, align 8, !tbaa !55
  %1050 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1051 = load i32, ptr %1050, align 4, !tbaa !67
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1053, label %1057

1053:                                             ; preds = %1042
  %1054 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1054, align 4, !tbaa !65
  %1055 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1055, align 8, !tbaa !66
  %1056 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1056, align 4, !tbaa !68
  br label %1057

1057:                                             ; preds = %1032, %1042, %1053, %1034, %1033
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1058 = load i32, ptr %43, align 8, !tbaa !101
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1060, label %1061

1060:                                             ; preds = %1057
  store i32 -1, ptr %50, align 4, !tbaa !92
  br label %1210

1061:                                             ; preds = %1057, %1030, %996
  br i1 %37, label %1210, label %1062

1062:                                             ; preds = %1061
  %1063 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1064 = load i32, ptr %1063, align 8, !tbaa !31
  %1065 = icmp slt i32 %1064, 1
  br i1 %1065, label %1210, label %1066

1066:                                             ; preds = %1062
  %1067 = icmp eq i32 %1064, 2
  %1068 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1067, label %1069, label %1158

1069:                                             ; preds = %1066
  %1070 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1071 = load i64, ptr %52, align 8, !tbaa !90
  %1072 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1071, i64 1), !nosanitize !10
  %1073 = extractvalue { i64, i1 } %1072, 1, !nosanitize !10
  br i1 %1073, label %1074, label %1075, !prof !48, !nosanitize !10

1074:                                             ; preds = %1069
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1075:                                             ; preds = %1069
  %1076 = extractvalue { i64, i1 } %1072, 0, !nosanitize !10
  %1077 = load ptr, ptr %1070, align 8, !tbaa !44
  %1078 = load i64, ptr %1068, align 8, !tbaa !73
  %1079 = trunc i64 %1078 to i8
  store i64 %1076, ptr %52, align 8, !tbaa !90
  %1080 = getelementptr inbounds nuw i8, ptr %1077, i64 %1071
  store i8 %1079, ptr %1080, align 1, !tbaa !8
  %1081 = load i64, ptr %52, align 8, !tbaa !90
  %1082 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1081, i64 1), !nosanitize !10
  %1083 = extractvalue { i64, i1 } %1082, 1, !nosanitize !10
  br i1 %1083, label %1084, label %1085, !prof !48, !nosanitize !10

1084:                                             ; preds = %1075
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1085:                                             ; preds = %1075
  %1086 = extractvalue { i64, i1 } %1082, 0, !nosanitize !10
  %1087 = load ptr, ptr %1070, align 8, !tbaa !44
  %1088 = load i64, ptr %1068, align 8, !tbaa !73
  %1089 = lshr i64 %1088, 8
  %1090 = trunc i64 %1089 to i8
  store i64 %1086, ptr %52, align 8, !tbaa !90
  %1091 = getelementptr inbounds nuw i8, ptr %1087, i64 %1081
  store i8 %1090, ptr %1091, align 1, !tbaa !8
  %1092 = load i64, ptr %52, align 8, !tbaa !90
  %1093 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1092, i64 1), !nosanitize !10
  %1094 = extractvalue { i64, i1 } %1093, 1, !nosanitize !10
  br i1 %1094, label %1095, label %1096, !prof !48, !nosanitize !10

1095:                                             ; preds = %1085
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1096:                                             ; preds = %1085
  %1097 = extractvalue { i64, i1 } %1093, 0, !nosanitize !10
  %1098 = load ptr, ptr %1070, align 8, !tbaa !44
  %1099 = load i64, ptr %1068, align 8, !tbaa !73
  %1100 = lshr i64 %1099, 16
  %1101 = trunc i64 %1100 to i8
  store i64 %1097, ptr %52, align 8, !tbaa !90
  %1102 = getelementptr inbounds nuw i8, ptr %1098, i64 %1092
  store i8 %1101, ptr %1102, align 1, !tbaa !8
  %1103 = load i64, ptr %52, align 8, !tbaa !90
  %1104 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1103, i64 1), !nosanitize !10
  %1105 = extractvalue { i64, i1 } %1104, 1, !nosanitize !10
  br i1 %1105, label %1106, label %1107, !prof !48, !nosanitize !10

1106:                                             ; preds = %1096
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1107:                                             ; preds = %1096
  %1108 = extractvalue { i64, i1 } %1104, 0, !nosanitize !10
  %1109 = load ptr, ptr %1070, align 8, !tbaa !44
  %1110 = load i64, ptr %1068, align 8, !tbaa !73
  %1111 = lshr i64 %1110, 24
  %1112 = trunc i64 %1111 to i8
  store i64 %1108, ptr %52, align 8, !tbaa !90
  %1113 = getelementptr inbounds nuw i8, ptr %1109, i64 %1103
  store i8 %1112, ptr %1113, align 1, !tbaa !8
  %1114 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1115 = load i64, ptr %52, align 8, !tbaa !90
  %1116 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1115, i64 1), !nosanitize !10
  %1117 = extractvalue { i64, i1 } %1116, 1, !nosanitize !10
  br i1 %1117, label %1118, label %1119, !prof !48, !nosanitize !10

1118:                                             ; preds = %1107
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1119:                                             ; preds = %1107
  %1120 = extractvalue { i64, i1 } %1116, 0, !nosanitize !10
  %1121 = load ptr, ptr %1070, align 8, !tbaa !44
  %1122 = load i64, ptr %1114, align 8, !tbaa !86
  %1123 = trunc i64 %1122 to i8
  store i64 %1120, ptr %52, align 8, !tbaa !90
  %1124 = getelementptr inbounds nuw i8, ptr %1121, i64 %1115
  store i8 %1123, ptr %1124, align 1, !tbaa !8
  %1125 = load i64, ptr %52, align 8, !tbaa !90
  %1126 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1125, i64 1), !nosanitize !10
  %1127 = extractvalue { i64, i1 } %1126, 1, !nosanitize !10
  br i1 %1127, label %1128, label %1129, !prof !48, !nosanitize !10

1128:                                             ; preds = %1119
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1129:                                             ; preds = %1119
  %1130 = extractvalue { i64, i1 } %1126, 0, !nosanitize !10
  %1131 = load ptr, ptr %1070, align 8, !tbaa !44
  %1132 = load i64, ptr %1114, align 8, !tbaa !86
  %1133 = lshr i64 %1132, 8
  %1134 = trunc i64 %1133 to i8
  store i64 %1130, ptr %52, align 8, !tbaa !90
  %1135 = getelementptr inbounds nuw i8, ptr %1131, i64 %1125
  store i8 %1134, ptr %1135, align 1, !tbaa !8
  %1136 = load i64, ptr %52, align 8, !tbaa !90
  %1137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1136, i64 1), !nosanitize !10
  %1138 = extractvalue { i64, i1 } %1137, 1, !nosanitize !10
  br i1 %1138, label %1139, label %1140, !prof !48, !nosanitize !10

1139:                                             ; preds = %1129
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1140:                                             ; preds = %1129
  %1141 = extractvalue { i64, i1 } %1137, 0, !nosanitize !10
  %1142 = load ptr, ptr %1070, align 8, !tbaa !44
  %1143 = load i64, ptr %1114, align 8, !tbaa !86
  %1144 = lshr i64 %1143, 16
  %1145 = trunc i64 %1144 to i8
  store i64 %1141, ptr %52, align 8, !tbaa !90
  %1146 = getelementptr inbounds nuw i8, ptr %1142, i64 %1136
  store i8 %1145, ptr %1146, align 1, !tbaa !8
  %1147 = load i64, ptr %52, align 8, !tbaa !90
  %1148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1147, i64 1), !nosanitize !10
  %1149 = extractvalue { i64, i1 } %1148, 1, !nosanitize !10
  br i1 %1149, label %1150, label %1151, !prof !48, !nosanitize !10

1150:                                             ; preds = %1140
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1151:                                             ; preds = %1140
  %1152 = extractvalue { i64, i1 } %1148, 0, !nosanitize !10
  %1153 = load ptr, ptr %1070, align 8, !tbaa !44
  %1154 = load i64, ptr %1114, align 8, !tbaa !86
  %1155 = lshr i64 %1154, 24
  %1156 = trunc i64 %1155 to i8
  store i64 %1152, ptr %52, align 8, !tbaa !90
  %1157 = getelementptr inbounds nuw i8, ptr %1153, i64 %1147
  store i8 %1156, ptr %1157, align 1, !tbaa !8
  br label %1201

1158:                                             ; preds = %1066
  %1159 = load i64, ptr %1068, align 8, !tbaa !73
  %1160 = lshr i64 %1159, 16
  %1161 = load i64, ptr %52, align 8, !tbaa !90
  %1162 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1161, i64 1), !nosanitize !10
  %1163 = extractvalue { i64, i1 } %1162, 1, !nosanitize !10
  br i1 %1163, label %1164, label %1165, !prof !48, !nosanitize !10

1164:                                             ; preds = %1158
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1165:                                             ; preds = %1158
  %1166 = extractvalue { i64, i1 } %1162, 0, !nosanitize !10
  %1167 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1168 = load ptr, ptr %1167, align 8, !tbaa !44
  %1169 = lshr i64 %1159, 24
  %1170 = trunc i64 %1169 to i8
  store i64 %1166, ptr %52, align 8, !tbaa !90
  %1171 = getelementptr inbounds nuw i8, ptr %1168, i64 %1161
  store i8 %1170, ptr %1171, align 1, !tbaa !8
  %1172 = load i64, ptr %52, align 8, !tbaa !90
  %1173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1172, i64 1), !nosanitize !10
  %1174 = extractvalue { i64, i1 } %1173, 1, !nosanitize !10
  br i1 %1174, label %1175, label %1176, !prof !48, !nosanitize !10

1175:                                             ; preds = %1165
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1176:                                             ; preds = %1165
  %1177 = extractvalue { i64, i1 } %1173, 0, !nosanitize !10
  %1178 = load ptr, ptr %1167, align 8, !tbaa !44
  %1179 = trunc i64 %1160 to i8
  store i64 %1177, ptr %52, align 8, !tbaa !90
  %1180 = getelementptr inbounds nuw i8, ptr %1178, i64 %1172
  store i8 %1179, ptr %1180, align 1, !tbaa !8
  %1181 = load i64, ptr %1068, align 8, !tbaa !73
  %1182 = trunc i64 %1181 to i8
  %1183 = load i64, ptr %52, align 8, !tbaa !90
  %1184 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1183, i64 1), !nosanitize !10
  %1185 = extractvalue { i64, i1 } %1184, 1, !nosanitize !10
  br i1 %1185, label %1186, label %1187, !prof !48, !nosanitize !10

1186:                                             ; preds = %1176
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1187:                                             ; preds = %1176
  %1188 = extractvalue { i64, i1 } %1184, 0, !nosanitize !10
  %1189 = load ptr, ptr %1167, align 8, !tbaa !44
  %1190 = lshr i64 %1181, 8
  %1191 = trunc i64 %1190 to i8
  store i64 %1188, ptr %52, align 8, !tbaa !90
  %1192 = getelementptr inbounds nuw i8, ptr %1189, i64 %1183
  store i8 %1191, ptr %1192, align 1, !tbaa !8
  %1193 = load i64, ptr %52, align 8, !tbaa !90
  %1194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1193, i64 1), !nosanitize !10
  %1195 = extractvalue { i64, i1 } %1194, 1, !nosanitize !10
  br i1 %1195, label %1196, label %1197, !prof !48, !nosanitize !10

1196:                                             ; preds = %1187
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

1197:                                             ; preds = %1187
  %1198 = extractvalue { i64, i1 } %1194, 0, !nosanitize !10
  %1199 = load ptr, ptr %1167, align 8, !tbaa !44
  store i64 %1198, ptr %52, align 8, !tbaa !90
  %1200 = getelementptr inbounds nuw i8, ptr %1199, i64 %1193
  store i8 %1182, ptr %1200, align 1, !tbaa !8
  br label %1201

1201:                                             ; preds = %1197, %1151
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1202 = load i32, ptr %1063, align 8, !tbaa !31
  %1203 = icmp sgt i32 %1202, 0
  br i1 %1203, label %1204, label %1206

1204:                                             ; preds = %1201
  %1205 = sub nsw i32 0, %1202
  store i32 %1205, ptr %1063, align 8, !tbaa !31
  br label %1206

1206:                                             ; preds = %1204, %1201
  %1207 = load i64, ptr %52, align 8, !tbaa !90
  %1208 = icmp eq i64 %1207, 0
  %1209 = zext i1 %1208 to i32
  br label %1210

1210:                                             ; preds = %994, %12, %16, %19, %4, %8, %2, %681, %246, %1026, %1060, %1029, %1062, %1061, %904, %792, %22, %1206, %986, %961, %352, %129, %120, %99, %46, %39
  %1211 = phi i32 [ -5, %120 ], [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %129 ], [ 0, %352 ], [ 0, %961 ], [ 0, %986 ], [ -2, %22 ], [ 0, %1061 ], [ %1209, %1206 ], [ 1, %1062 ], [ 0, %904 ], [ 0, %792 ], [ 0, %681 ], [ 0, %246 ], [ 0, %1029 ], [ 0, %1060 ], [ 0, %1026 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %994 ]
  ret i32 %1211
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !33
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %37, label %11, !prof !48, !nosanitize !10

11:                                               ; preds = %1
  %12 = icmp ult i32 %5, 8
  br i1 %12, label %34, label %13

13:                                               ; preds = %11
  %14 = and i64 %8, 4294967288
  %15 = mul nsw i64 %14, -2
  %16 = getelementptr i8, ptr %9, i64 %15
  %17 = trunc nuw i64 %14 to i32
  %18 = sub i32 %5, %17
  %19 = insertelement <8 x i32> poison, i32 %3, i64 0
  %20 = shufflevector <8 x i32> %19, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %21, %13
  %22 = phi i64 [ 0, %13 ], [ %30, %21 ]
  %23 = mul i64 %22, -2
  %24 = getelementptr i8, ptr %9, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -16
  %26 = load <8 x i16>, ptr %25, align 2, !tbaa !54
  %27 = zext <8 x i16> %26 to <8 x i32>
  %28 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %27, <8 x i32> %20)
  %29 = trunc nuw <8 x i32> %28 to <8 x i16>
  store <8 x i16> %29, ptr %25, align 2, !tbaa !54
  %30 = add nuw i64 %22, 8
  %31 = icmp eq i64 %30, %14
  br i1 %31, label %32, label %21, !llvm.loop !118

32:                                               ; preds = %21
  %33 = icmp eq i64 %14, %8
  br i1 %33, label %53, label %34

34:                                               ; preds = %11, %32
  %35 = phi ptr [ %9, %11 ], [ %16, %32 ]
  %36 = phi i32 [ %5, %11 ], [ %18, %32 ]
  br label %43

37:                                               ; preds = %1
  %38 = getelementptr inbounds i8, ptr %9, i64 -2
  %39 = load i16, ptr %38, align 2, !tbaa !54
  %40 = zext i16 %39 to i32
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %40, i32 %3)
  %42 = trunc nuw i32 %41 to i16
  store i16 %42, ptr %38, align 2, !tbaa !54
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

43:                                               ; preds = %34, %43
  %44 = phi ptr [ %46, %43 ], [ %35, %34 ]
  %45 = phi i32 [ %51, %43 ], [ %36, %34 ]
  %46 = getelementptr inbounds i8, ptr %44, i64 -2
  %47 = load i16, ptr %46, align 2, !tbaa !54
  %48 = zext i16 %47 to i32
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %3)
  %50 = trunc nuw i32 %49 to i16
  store i16 %50, ptr %46, align 2, !tbaa !54
  %51 = add i32 %45, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %43, !llvm.loop !119

53:                                               ; preds = %43, %32
  %54 = icmp eq i32 %3, 0
  br i1 %54, label %55, label %56, !prof !48, !nosanitize !10

55:                                               ; preds = %53
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

56:                                               ; preds = %53
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %58 = load ptr, ptr %57, align 8, !tbaa !40
  %59 = zext i32 %3 to i64
  %60 = getelementptr inbounds nuw [2 x i8], ptr %58, i64 %59
  %61 = icmp ult i32 %3, 8
  br i1 %61, label %83, label %62

62:                                               ; preds = %56
  %63 = and i64 %59, 4294967288
  %64 = mul nsw i64 %63, -2
  %65 = getelementptr i8, ptr %60, i64 %64
  %66 = trunc nuw i64 %63 to i32
  %67 = sub i32 %3, %66
  %68 = insertelement <8 x i32> poison, i32 %3, i64 0
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %70

70:                                               ; preds = %70, %62
  %71 = phi i64 [ 0, %62 ], [ %79, %70 ]
  %72 = mul i64 %71, -2
  %73 = getelementptr i8, ptr %60, i64 %72
  %74 = getelementptr inbounds i8, ptr %73, i64 -16
  %75 = load <8 x i16>, ptr %74, align 2, !tbaa !54
  %76 = zext <8 x i16> %75 to <8 x i32>
  %77 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %76, <8 x i32> %69)
  %78 = trunc nuw <8 x i32> %77 to <8 x i16>
  store <8 x i16> %78, ptr %74, align 2, !tbaa !54
  %79 = add nuw i64 %71, 8
  %80 = icmp eq i64 %79, %63
  br i1 %80, label %81, label %70, !llvm.loop !120

81:                                               ; preds = %70
  %82 = icmp eq i64 %63, %59
  br i1 %82, label %96, label %83

83:                                               ; preds = %56, %81
  %84 = phi ptr [ %60, %56 ], [ %65, %81 ]
  %85 = phi i32 [ %3, %56 ], [ %67, %81 ]
  br label %86

86:                                               ; preds = %83, %86
  %87 = phi ptr [ %89, %86 ], [ %84, %83 ]
  %88 = phi i32 [ %94, %86 ], [ %85, %83 ]
  %89 = getelementptr inbounds i8, ptr %87, i64 -2
  %90 = load i16, ptr %89, align 2, !tbaa !54
  %91 = zext i16 %90 to i32
  %92 = tail call i32 @llvm.usub.sat.i32(i32 %91, i32 %3)
  %93 = trunc nuw i32 %92 to i16
  store i16 %93, ptr %89, align 2, !tbaa !54
  %94 = add i32 %88, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %86, !llvm.loop !121

96:                                               ; preds = %86, %81
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %97, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !21
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %24 = load i32, ptr %23, align 8, !tbaa !30
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
  store i32 %1, ptr %26, align 4, !tbaa !60
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 192
  store i32 %2, ptr %27, align 8, !tbaa !58
  %28 = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i32 %3, ptr %28, align 8, !tbaa !62
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i32 %4, ptr %29, align 4, !tbaa !64
  br label %30

30:                                               ; preds = %15, %19, %22, %7, %11, %5, %25
  %31 = phi i32 [ 0, %25 ], [ -2, %5 ], [ -2, %11 ], [ -2, %7 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !10
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !10
  br i1 %5, label %6, label %7, !prof !48, !nosanitize !10

6:                                                ; preds = %2
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !10
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !10
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !10
  br i1 %11, label %12, label %13, !prof !48, !nosanitize !10

12:                                               ; preds = %7
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !10
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !10
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !10
  br i1 %17, label %18, label %19, !prof !48, !nosanitize !10

18:                                               ; preds = %13
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !10
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !10
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !10
  br i1 %22, label %23, label %24, !prof !48, !nosanitize !10

23:                                               ; preds = %19
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !10
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !10
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !10
  br i1 %30, label %31, label %32, !prof !48, !nosanitize !10

31:                                               ; preds = %24
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !10
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !10
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !10
  br i1 %36, label %37, label %38, !prof !48, !nosanitize !10

37:                                               ; preds = %32
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !10
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !10
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !10
  br i1 %42, label %43, label %44, !prof !48, !nosanitize !10

43:                                               ; preds = %38
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !10
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !10
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !10
  br i1 %47, label %48, label %49, !prof !48, !nosanitize !10

48:                                               ; preds = %44
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !10
  %51 = icmp ult i64 %50, %1
  %52 = select i1 %51, i64 -1, i64 %50
  %53 = icmp eq ptr %0, null
  br i1 %53, label %72, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %56 = load ptr, ptr %55, align 8, !tbaa !17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %60 = load ptr, ptr %59, align 8, !tbaa !19
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %64 = load ptr, ptr %63, align 8, !tbaa !20
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !21
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !30
  switch i32 %71, label %72 [
    i32 42, label %78
    i32 57, label %78
    i32 69, label %78
    i32 73, label %78
    i32 91, label %78
    i32 103, label %78
    i32 113, label %78
    i32 666, label %78
  ]

72:                                               ; preds = %49, %58, %54, %69, %66, %62
  %73 = tail call i64 @llvm.umax.i64(i64 %27, i64 %52)
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !10
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !10
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !10
  br i1 %76, label %77, label %216, !prof !48, !nosanitize !10

77:                                               ; preds = %72
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !31
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !10
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !10
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !10
  br i1 %85, label %86, label %87, !prof !48, !nosanitize !10

86:                                               ; preds = %82
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 13) #14, !nosanitize !10
  unreachable, !nosanitize !10

87:                                               ; preds = %78, %82
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %161 [
    i32 0, label %162
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !65
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %162

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !93
  %97 = icmp eq ptr %96, null
  br i1 %97, label %162, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !106
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !111
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !10
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !10
  br i1 %106, label %107, label %108, !prof !48, !nosanitize !10

107:                                              ; preds = %102
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !10
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !105
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %112
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !10
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !10
  br i1 %119, label %124, label %125, !prof !122, !nosanitize !10

120:                                              ; preds = %125
  %121 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !10
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !10
  br i1 %123, label %124, label %125, !prof !123, !llvm.loop !124, !nosanitize !10

124:                                              ; preds = %120, %117
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

125:                                              ; preds = %117, %120
  %126 = phi { i64, i1 } [ %122, %120 ], [ %118, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !10
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %120, !llvm.loop !124

131:                                              ; preds = %125, %112
  %132 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %133 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %134 = load ptr, ptr %133, align 8, !tbaa !103
  %135 = icmp eq ptr %134, null
  br i1 %135, label %150, label %136

136:                                              ; preds = %131
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 1), !nosanitize !10
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !10
  br i1 %138, label %143, label %144, !prof !122, !nosanitize !10

139:                                              ; preds = %144
  %140 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 1), !nosanitize !10
  %142 = extractvalue { i64, i1 } %141, 1, !nosanitize !10
  br i1 %142, label %143, label %144, !prof !123, !llvm.loop !125, !nosanitize !10

143:                                              ; preds = %139, %136
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

144:                                              ; preds = %136, %139
  %145 = phi { i64, i1 } [ %141, %139 ], [ %137, %136 ]
  %146 = phi ptr [ %140, %139 ], [ %134, %136 ]
  %147 = extractvalue { i64, i1 } %145, 0, !nosanitize !10
  %148 = load i8, ptr %146, align 1, !tbaa !8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %139, !llvm.loop !125

150:                                              ; preds = %144, %131
  %151 = phi i64 [ %132, %131 ], [ %147, %144 ]
  %152 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %153 = load i32, ptr %152, align 4, !tbaa !108
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %151, i64 2), !nosanitize !10
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !10
  br i1 %157, label %158, label %159, !prof !48, !nosanitize !10

158:                                              ; preds = %155
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

159:                                              ; preds = %155
  %160 = extractvalue { i64, i1 } %156, 0, !nosanitize !10
  br label %162

161:                                              ; preds = %87
  br label %162

162:                                              ; preds = %150, %159, %87, %94, %161, %89
  %163 = phi i64 [ 18, %161 ], [ 18, %94 ], [ %93, %89 ], [ 0, %87 ], [ %160, %159 ], [ %151, %150 ]
  %164 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %165 = load i32, ptr %164, align 4, !tbaa !32
  %166 = icmp eq i32 %165, 15
  %167 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %168 = load i32, ptr %167, align 8, !tbaa !35
  %169 = icmp eq i32 %168, 15
  %170 = select i1 %166, i1 %169, i1 false
  br i1 %170, label %184, label %171

171:                                              ; preds = %162
  %172 = icmp ugt i32 %165, %168
  br i1 %172, label %177, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %175 = load i32, ptr %174, align 4, !tbaa !50
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173, %171
  br label %178

178:                                              ; preds = %173, %177
  %179 = phi i64 [ %52, %177 ], [ %27, %173 ]
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %163), !nosanitize !10
  %181 = extractvalue { i64, i1 } %180, 0, !nosanitize !10
  %182 = extractvalue { i64, i1 } %180, 1, !nosanitize !10
  br i1 %182, label %183, label %216, !prof !48, !nosanitize !10

183:                                              ; preds = %178
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

184:                                              ; preds = %162
  %185 = lshr i64 %1, 12
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %185), !nosanitize !10
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !10
  br i1 %187, label %188, label %189, !prof !48, !nosanitize !10

188:                                              ; preds = %184
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

189:                                              ; preds = %184
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !10
  %191 = lshr i64 %1, 14
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %191), !nosanitize !10
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !10
  br i1 %193, label %194, label %195, !prof !48, !nosanitize !10

194:                                              ; preds = %189
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

195:                                              ; preds = %189
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !10
  %197 = lshr i64 %1, 25
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 %197), !nosanitize !10
  %199 = extractvalue { i64, i1 } %198, 1, !nosanitize !10
  br i1 %199, label %200, label %201, !prof !48, !nosanitize !10

200:                                              ; preds = %195
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

201:                                              ; preds = %195
  %202 = extractvalue { i64, i1 } %198, 0, !nosanitize !10
  %203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 13), !nosanitize !10
  %204 = extractvalue { i64, i1 } %203, 1, !nosanitize !10
  br i1 %204, label %205, label %206, !prof !48, !nosanitize !10

205:                                              ; preds = %201
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

206:                                              ; preds = %201
  %207 = extractvalue { i64, i1 } %203, 0, !nosanitize !10
  %208 = add i64 %207, -6
  %209 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %163), !nosanitize !10
  %210 = extractvalue { i64, i1 } %209, 1, !nosanitize !10
  br i1 %210, label %211, label %212, !prof !48, !nosanitize !10

211:                                              ; preds = %206
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

212:                                              ; preds = %206
  %213 = extractvalue { i64, i1 } %209, 0, !nosanitize !10
  %214 = icmp ult i64 %213, %1
  %215 = select i1 %214, i64 -1, i64 %213
  br label %216

216:                                              ; preds = %178, %72, %212
  %217 = phi i64 [ %215, %212 ], [ %75, %72 ], [ %181, %178 ]
  ret i64 %217
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = tail call i64 @deflateBound_z(ptr noundef %0, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %3) #13
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !100
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !100
  %19 = load ptr, ptr %15, align 8, !tbaa !91
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !91
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !102
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !10
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !10
  br i1 %24, label %25, label %26, !prof !48, !nosanitize !10

25:                                               ; preds = %12
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !10
  store i64 %27, ptr %21, align 8, !tbaa !102
  %28 = load i32, ptr %6, align 8, !tbaa !101
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !10
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !10
  br i1 %30, label %31, label %32, !prof !48, !nosanitize !10

31:                                               ; preds = %26
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !10
  store i32 %33, ptr %6, align 8, !tbaa !101
  %34 = load i64, ptr %4, align 8, !tbaa !90
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !10
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !10
  br i1 %36, label %37, label %38, !prof !48, !nosanitize !10

37:                                               ; preds = %32
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !10
  store i64 %39, ptr %4, align 8, !tbaa !90
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  store ptr %43, ptr %15, align 8, !tbaa !91
  br label %44

44:                                               ; preds = %38, %41, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !45
  %5 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 5), !nosanitize !10
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !10
  br i1 %6, label %7, label %8, !prof !48, !nosanitize !10

7:                                                ; preds = %2
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !10
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %11 = load i32, ptr %10, align 8, !tbaa !33
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %12)
  %14 = trunc nuw i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !21
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !74
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %21 = icmp ne i32 %1, 4
  %22 = icmp eq i32 %1, 0
  %23 = icmp eq i32 %1, 4
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %27

27:                                               ; preds = %273, %8
  %28 = load i32, ptr %18, align 4, !tbaa !94
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !10
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !10
  br i1 %30, label %31, label %32, !prof !48, !nosanitize !10

31:                                               ; preds = %27
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !10
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !21
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !101
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %277, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !65
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %20, align 8, !tbaa !66
  %44 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !10
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !10
  br i1 %45, label %46, label %47, !prof !48, !nosanitize !10

46:                                               ; preds = %39
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

47:                                               ; preds = %39
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !10
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !74
  %52 = and i64 %48, 4294967295
  %53 = zext i32 %51 to i64
  %54 = add nuw nsw i64 %52, %53
  %55 = icmp samesign ult i64 %54, 65535
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !10
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !10
  br i1 %58, label %59, label %60, !prof !48, !nosanitize !10

59:                                               ; preds = %56
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

60:                                               ; preds = %56
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !10
  br label %62

62:                                               ; preds = %60, %47
  %63 = phi i32 [ %61, %60 ], [ 65535, %47 ]
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 %40)
  %65 = icmp ult i32 %64, %14
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = icmp eq i32 %64, 0
  %68 = and i1 %21, %67
  %69 = or i1 %22, %68
  br i1 %69, label %277, label %70

70:                                               ; preds = %66
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !10
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !10
  br i1 %72, label %73, label %74, !prof !48, !nosanitize !10

73:                                               ; preds = %70
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !10
  %76 = icmp eq i32 %64, %75
  br i1 %76, label %77, label %277

77:                                               ; preds = %74, %62
  br i1 %23, label %78, label %86

78:                                               ; preds = %77
  %79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !10
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !10
  br i1 %80, label %81, label %82, !prof !48, !nosanitize !10

81:                                               ; preds = %78
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !10
  %84 = icmp eq i32 %64, %83
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ 0, %77 ], [ %85, %82 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %87) #13
  %88 = load i64, ptr %25, align 8, !tbaa !90
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 4), !nosanitize !10
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !10
  br i1 %90, label %91, label %92, !prof !48, !nosanitize !10

91:                                               ; preds = %86
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !10
  %94 = load ptr, ptr %24, align 8, !tbaa !44
  %95 = trunc i32 %64 to i8
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %95, ptr %96, align 1, !tbaa !8
  %97 = load i64, ptr %25, align 8, !tbaa !90
  %98 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %97, i64 3), !nosanitize !10
  %99 = extractvalue { i64, i1 } %98, 1, !nosanitize !10
  br i1 %99, label %100, label %101, !prof !48, !nosanitize !10

100:                                              ; preds = %92
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

101:                                              ; preds = %92
  %102 = extractvalue { i64, i1 } %98, 0, !nosanitize !10
  %103 = load ptr, ptr %24, align 8, !tbaa !44
  %104 = lshr i32 %64, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 %102
  store i8 %105, ptr %106, align 1, !tbaa !8
  %107 = load i64, ptr %25, align 8, !tbaa !90
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 2), !nosanitize !10
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !10
  br i1 %109, label %110, label %111, !prof !48, !nosanitize !10

110:                                              ; preds = %101
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

111:                                              ; preds = %101
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !10
  %113 = load ptr, ptr %24, align 8, !tbaa !44
  %114 = xor i32 %64, -1
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 %112
  store i8 %115, ptr %116, align 1, !tbaa !8
  %117 = load i64, ptr %25, align 8, !tbaa !90
  %118 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %117, i64 1), !nosanitize !10
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !10
  br i1 %119, label %120, label %121, !prof !48, !nosanitize !10

120:                                              ; preds = %111
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

121:                                              ; preds = %111
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !10
  %123 = load ptr, ptr %24, align 8, !tbaa !44
  %124 = lshr i32 %114, 8
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 %122
  store i8 %125, ptr %126, align 1, !tbaa !8
  %127 = load ptr, ptr %0, align 8, !tbaa !21
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %129) #13
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 40
  %131 = load i64, ptr %130, align 8, !tbaa !90
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %133 = load i32, ptr %132, align 8, !tbaa !101
  %134 = zext i32 %133 to i64
  %135 = tail call i64 @llvm.umin.i64(i64 %131, i64 %134)
  %136 = trunc nuw i64 %135 to i32
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %121
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !100
  %141 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %142 = load ptr, ptr %141, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %142, i64 %135, i1 false)
  %143 = load ptr, ptr %139, align 8, !tbaa !100
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 %135
  store ptr %144, ptr %139, align 8, !tbaa !100
  %145 = load ptr, ptr %141, align 8, !tbaa !91
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 %135
  store ptr %146, ptr %141, align 8, !tbaa !91
  %147 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %148 = load i64, ptr %147, align 8, !tbaa !102
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %135), !nosanitize !10
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !10
  br i1 %150, label %151, label %152, !prof !48, !nosanitize !10

151:                                              ; preds = %138
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

152:                                              ; preds = %138
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !10
  store i64 %153, ptr %147, align 8, !tbaa !102
  %154 = load i32, ptr %132, align 8, !tbaa !101
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %136), !nosanitize !10
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !10
  br i1 %156, label %157, label %158, !prof !48, !nosanitize !10

157:                                              ; preds = %152
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

158:                                              ; preds = %152
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !10
  store i32 %159, ptr %132, align 8, !tbaa !101
  %160 = load i64, ptr %130, align 8, !tbaa !90
  %161 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %160, i64 %135), !nosanitize !10
  %162 = extractvalue { i64, i1 } %161, 1, !nosanitize !10
  br i1 %162, label %163, label %164, !prof !48, !nosanitize !10

163:                                              ; preds = %158
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

164:                                              ; preds = %158
  %165 = extractvalue { i64, i1 } %161, 0, !nosanitize !10
  store i64 %165, ptr %130, align 8, !tbaa !90
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !44
  store ptr %169, ptr %141, align 8, !tbaa !91
  br label %170

170:                                              ; preds = %121, %164, %167
  %171 = icmp eq i32 %49, 0
  br i1 %171, label %209, label %172

172:                                              ; preds = %170
  %173 = tail call i32 @llvm.umin.i32(i32 %64, i32 %49)
  %174 = load ptr, ptr %0, align 8, !tbaa !21
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %176 = load ptr, ptr %175, align 8, !tbaa !100
  %177 = load ptr, ptr %26, align 8, !tbaa !39
  %178 = load i64, ptr %20, align 8, !tbaa !66
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  %180 = zext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %179, i64 %180, i1 false)
  %181 = load ptr, ptr %0, align 8, !tbaa !21
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !100
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %180
  store ptr %184, ptr %182, align 8, !tbaa !100
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !101
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %173), !nosanitize !10
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !10
  br i1 %188, label %189, label %190, !prof !48, !nosanitize !10

189:                                              ; preds = %172
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

190:                                              ; preds = %172
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !10
  store i32 %191, ptr %185, align 8, !tbaa !101
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %193 = load i64, ptr %192, align 8, !tbaa !102
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %180), !nosanitize !10
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !10
  br i1 %195, label %196, label %197, !prof !48, !nosanitize !10

196:                                              ; preds = %197, %190
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

197:                                              ; preds = %190
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !10
  store i64 %198, ptr %192, align 8, !tbaa !102
  %199 = load i64, ptr %20, align 8, !tbaa !66
  %200 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %199, i64 %180), !nosanitize !10
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !10
  br i1 %201, label %196, label %202, !prof !48, !nosanitize !10

202:                                              ; preds = %197
  %203 = extractvalue { i64, i1 } %200, 0, !nosanitize !10
  store i64 %203, ptr %20, align 8, !tbaa !66
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 %173), !nosanitize !10
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !10
  br i1 %205, label %206, label %207, !prof !48, !nosanitize !10

206:                                              ; preds = %202
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

207:                                              ; preds = %202
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !10
  br label %209

209:                                              ; preds = %207, %170
  %210 = phi i32 [ %208, %207 ], [ %64, %170 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %273, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %0, align 8, !tbaa !21
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 24
  %215 = load ptr, ptr %214, align 8, !tbaa !100
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %217 = load i32, ptr %216, align 8, !tbaa !74
  %218 = tail call i32 @llvm.umin.i32(i32 %217, i32 %210)
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %253, label %220

220:                                              ; preds = %212
  %221 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %217, i32 %218), !nosanitize !10
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !10
  br i1 %222, label %223, label %224, !prof !48, !nosanitize !10

223:                                              ; preds = %220
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

224:                                              ; preds = %220
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !10
  store i32 %225, ptr %216, align 8, !tbaa !74
  %226 = load ptr, ptr %213, align 8, !tbaa !75
  %227 = zext i32 %218 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %215, ptr align 1 %226, i64 %227, i1 false)
  %228 = getelementptr inbounds nuw i8, ptr %213, i64 56
  %229 = load ptr, ptr %228, align 8, !tbaa !20
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 48
  %231 = load i32, ptr %230, align 8, !tbaa !31
  switch i32 %231, label %240 [
    i32 1, label %232
    i32 2, label %236
  ]

232:                                              ; preds = %224
  %233 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %234 = load i64, ptr %233, align 8, !tbaa !73
  %235 = tail call i64 @adler32(i64 noundef %234, ptr noundef %215, i32 noundef %218) #13
  store i64 %235, ptr %233, align 8, !tbaa !73
  br label %240

236:                                              ; preds = %224
  %237 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !73
  %239 = tail call i64 @crc32(i64 noundef %238, ptr noundef %215, i32 noundef %218) #13
  store i64 %239, ptr %237, align 8, !tbaa !73
  br label %240

240:                                              ; preds = %236, %232, %224
  %241 = load ptr, ptr %213, align 8, !tbaa !75
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 %227
  store ptr %242, ptr %213, align 8, !tbaa !75
  %243 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %244 = load i64, ptr %243, align 8, !tbaa !86
  %245 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %244, i64 %227), !nosanitize !10
  %246 = extractvalue { i64, i1 } %245, 1, !nosanitize !10
  br i1 %246, label %247, label %248, !prof !48, !nosanitize !10

247:                                              ; preds = %240
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

248:                                              ; preds = %240
  %249 = extractvalue { i64, i1 } %245, 0, !nosanitize !10
  store i64 %249, ptr %243, align 8, !tbaa !86
  %250 = load ptr, ptr %0, align 8, !tbaa !21
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 24
  %252 = load ptr, ptr %251, align 8, !tbaa !100
  br label %253

253:                                              ; preds = %212, %248
  %254 = phi ptr [ %215, %212 ], [ %252, %248 ]
  %255 = phi ptr [ %213, %212 ], [ %250, %248 ]
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 24
  %257 = zext i32 %210 to i64
  %258 = getelementptr inbounds nuw i8, ptr %254, i64 %257
  store ptr %258, ptr %256, align 8, !tbaa !100
  %259 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %260 = load i32, ptr %259, align 8, !tbaa !101
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %210), !nosanitize !10
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !10
  br i1 %262, label %263, label %264, !prof !48, !nosanitize !10

263:                                              ; preds = %253
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

264:                                              ; preds = %253
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !10
  store i32 %265, ptr %259, align 8, !tbaa !101
  %266 = getelementptr inbounds nuw i8, ptr %255, i64 40
  %267 = load i64, ptr %266, align 8, !tbaa !102
  %268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 %257), !nosanitize !10
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !10
  br i1 %269, label %270, label %271, !prof !48, !nosanitize !10

270:                                              ; preds = %264
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

271:                                              ; preds = %264
  %272 = extractvalue { i64, i1 } %268, 0, !nosanitize !10
  store i64 %272, ptr %266, align 8, !tbaa !102
  br label %273

273:                                              ; preds = %209, %271
  %274 = icmp eq i32 %87, 0
  br i1 %274, label %27, label %275, !llvm.loop !126

275:                                              ; preds = %273
  %276 = load ptr, ptr %0, align 8, !tbaa !21
  br label %277, !llvm.loop !126

277:                                              ; preds = %74, %66, %32, %275
  %278 = phi ptr [ %276, %275 ], [ %35, %32 ], [ %35, %66 ], [ %35, %74 ]
  %279 = phi i1 [ false, %275 ], [ true, %32 ], [ true, %66 ], [ true, %74 ]
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 8
  %281 = load i32, ptr %280, align 8, !tbaa !74
  %282 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %281), !nosanitize !10
  %283 = extractvalue { i32, i1 } %282, 0, !nosanitize !10
  %284 = extractvalue { i32, i1 } %282, 1, !nosanitize !10
  br i1 %284, label %285, label %286, !prof !48, !nosanitize !10

285:                                              ; preds = %277
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

286:                                              ; preds = %277
  %287 = icmp eq i32 %283, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %286
  %289 = load i32, ptr %19, align 4, !tbaa !65
  %290 = zext i32 %289 to i64
  br label %368

291:                                              ; preds = %286
  %292 = load i32, ptr %10, align 8, !tbaa !33
  %293 = icmp ult i32 %283, %292
  br i1 %293, label %303, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %295, align 8, !tbaa !99
  %296 = load ptr, ptr %26, align 8, !tbaa !39
  %297 = load ptr, ptr %278, align 8, !tbaa !75
  %298 = zext i32 %292 to i64
  %299 = sub nsw i64 0, %298
  %300 = getelementptr inbounds i8, ptr %297, i64 %299
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %296, ptr align 1 %300, i64 %298, i1 false)
  %301 = load i32, ptr %10, align 8, !tbaa !33
  store i32 %301, ptr %19, align 4, !tbaa !65
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %301, ptr %302, align 4, !tbaa !68
  br label %365

303:                                              ; preds = %291
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %305 = load i64, ptr %304, align 8, !tbaa !53
  %306 = load i32, ptr %19, align 4, !tbaa !65
  %307 = zext i32 %306 to i64
  %308 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %305, i64 %307), !nosanitize !10
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !10
  br i1 %309, label %310, label %311, !prof !48, !nosanitize !10

310:                                              ; preds = %303
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

311:                                              ; preds = %303
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !10
  %313 = zext i32 %283 to i64
  %314 = icmp ugt i64 %312, %313
  br i1 %314, label %336, label %315

315:                                              ; preds = %311
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %306, i32 %292), !nosanitize !10
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !10
  br i1 %317, label %318, label %319, !prof !48, !nosanitize !10

318:                                              ; preds = %315
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

319:                                              ; preds = %315
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !10
  store i32 %320, ptr %19, align 4, !tbaa !65
  %321 = load ptr, ptr %26, align 8, !tbaa !39
  %322 = zext i32 %292 to i64
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  %324 = zext i32 %320 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr nonnull align 1 %323, i64 %324, i1 false)
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %326 = load i32, ptr %325, align 8, !tbaa !99
  %327 = icmp ult i32 %326, 2
  br i1 %327, label %328, label %330

328:                                              ; preds = %319
  %329 = add nuw nsw i32 %326, 1
  store i32 %329, ptr %325, align 8, !tbaa !99
  br label %330

330:                                              ; preds = %328, %319
  %331 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %332 = load i32, ptr %331, align 4, !tbaa !68
  %333 = load i32, ptr %19, align 4, !tbaa !65
  %334 = icmp ugt i32 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  store i32 %333, ptr %331, align 4, !tbaa !68
  br label %336

336:                                              ; preds = %330, %335, %311
  %337 = phi i32 [ %333, %330 ], [ %333, %335 ], [ %306, %311 ]
  %338 = load ptr, ptr %26, align 8, !tbaa !39
  %339 = zext i32 %337 to i64
  %340 = getelementptr inbounds nuw i8, ptr %338, i64 %339
  %341 = load ptr, ptr %0, align 8, !tbaa !21
  %342 = load ptr, ptr %341, align 8, !tbaa !75
  %343 = sub nsw i64 0, %313
  %344 = getelementptr inbounds i8, ptr %342, i64 %343
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %340, ptr nonnull align 1 %344, i64 %313, i1 false)
  %345 = load i32, ptr %19, align 4, !tbaa !65
  %346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 %283), !nosanitize !10
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !10
  br i1 %347, label %348, label %349, !prof !48, !nosanitize !10

348:                                              ; preds = %336
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

349:                                              ; preds = %336
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !10
  store i32 %350, ptr %19, align 4, !tbaa !65
  %351 = load i32, ptr %10, align 8, !tbaa !33
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %353 = load i32, ptr %352, align 4, !tbaa !68
  %354 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %351, i32 %353), !nosanitize !10
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !10
  br i1 %355, label %356, label %357, !prof !48, !nosanitize !10

356:                                              ; preds = %349
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

357:                                              ; preds = %349
  %358 = extractvalue { i32, i1 } %354, 0, !nosanitize !10
  %359 = tail call i32 @llvm.umin.i32(i32 %283, i32 %358)
  %360 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %353, i32 %359), !nosanitize !10
  %361 = extractvalue { i32, i1 } %360, 1, !nosanitize !10
  br i1 %361, label %362, label %363, !prof !48, !nosanitize !10

362:                                              ; preds = %357
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

363:                                              ; preds = %357
  %364 = extractvalue { i32, i1 } %360, 0, !nosanitize !10
  store i32 %364, ptr %352, align 4, !tbaa !68
  br label %365

365:                                              ; preds = %363, %294
  %366 = phi i32 [ %350, %363 ], [ %301, %294 ]
  %367 = zext i32 %366 to i64
  store i64 %367, ptr %20, align 8, !tbaa !66
  br label %368

368:                                              ; preds = %288, %365
  %369 = phi i64 [ %290, %288 ], [ %367, %365 ]
  %370 = phi i32 [ %289, %288 ], [ %366, %365 ]
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %372 = load i64, ptr %371, align 8, !tbaa !42
  %373 = icmp ult i64 %372, %369
  br i1 %373, label %374, label %375

374:                                              ; preds = %368
  store i64 %369, ptr %371, align 8, !tbaa !42
  br label %375

375:                                              ; preds = %374, %368
  br i1 %279, label %376, label %599

376:                                              ; preds = %375
  %377 = icmp ne i32 %1, 0
  switch i32 %1, label %378 [
    i32 4, label %386
    i32 0, label %386
  ]

378:                                              ; preds = %376
  %379 = load ptr, ptr %0, align 8, !tbaa !21
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 8
  %381 = load i32, ptr %380, align 8, !tbaa !74
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load i64, ptr %20, align 8, !tbaa !66
  %385 = icmp eq i64 %384, %369
  br i1 %385, label %602, label %386

386:                                              ; preds = %376, %376, %383, %378
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %388 = load i64, ptr %387, align 8, !tbaa !53
  %389 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %388, i64 %369), !nosanitize !10
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !10
  br i1 %390, label %391, label %392, !prof !48, !nosanitize !10

391:                                              ; preds = %386
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

392:                                              ; preds = %386
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !10
  %394 = trunc i64 %393 to i32
  %395 = load ptr, ptr %0, align 8, !tbaa !21
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i32, ptr %396, align 8, !tbaa !74
  %398 = icmp ugt i32 %397, %394
  br i1 %398, label %399, label %431

399:                                              ; preds = %392
  %400 = load i64, ptr %20, align 8, !tbaa !66
  %401 = load i32, ptr %10, align 8, !tbaa !33
  %402 = zext i32 %401 to i64
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %431, label %404

404:                                              ; preds = %399
  %405 = sub nsw i64 %400, %402
  store i64 %405, ptr %20, align 8, !tbaa !66
  %406 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %370, i32 %401), !nosanitize !10
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !10
  br i1 %407, label %408, label %409, !prof !48, !nosanitize !10

408:                                              ; preds = %404
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

409:                                              ; preds = %404
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !10
  store i32 %410, ptr %19, align 4, !tbaa !65
  %411 = load ptr, ptr %26, align 8, !tbaa !39
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 %402
  %413 = zext i32 %410 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %411, ptr align 1 %412, i64 %413, i1 false)
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %415 = load i32, ptr %414, align 8, !tbaa !99
  %416 = icmp ult i32 %415, 2
  br i1 %416, label %417, label %419

417:                                              ; preds = %409
  %418 = add nuw nsw i32 %415, 1
  store i32 %418, ptr %414, align 8, !tbaa !99
  br label %419

419:                                              ; preds = %417, %409
  %420 = load i32, ptr %10, align 8, !tbaa !33
  %421 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 %420), !nosanitize !10
  %422 = extractvalue { i32, i1 } %421, 0, !nosanitize !10
  %423 = extractvalue { i32, i1 } %421, 1, !nosanitize !10
  br i1 %423, label %424, label %425, !prof !48, !nosanitize !10

424:                                              ; preds = %419
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

425:                                              ; preds = %419
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %427 = load i32, ptr %426, align 4, !tbaa !68
  %428 = load i32, ptr %19, align 4, !tbaa !65
  %429 = icmp ugt i32 %427, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  store i32 %428, ptr %426, align 4, !tbaa !68
  br label %431

431:                                              ; preds = %425, %430, %399, %392
  %432 = phi i32 [ %428, %430 ], [ %428, %425 ], [ %370, %399 ], [ %370, %392 ]
  %433 = phi i32 [ %422, %430 ], [ %422, %425 ], [ %394, %399 ], [ %394, %392 ]
  %434 = load ptr, ptr %0, align 8, !tbaa !21
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = load i32, ptr %435, align 8, !tbaa !74
  %437 = tail call i32 @llvm.umin.i32(i32 %433, i32 %436)
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %492, label %439

439:                                              ; preds = %431
  %440 = load ptr, ptr %26, align 8, !tbaa !39
  %441 = zext i32 %432 to i64
  %442 = getelementptr inbounds nuw i8, ptr %440, i64 %441
  %443 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %436, i32 %437), !nosanitize !10
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !10
  br i1 %444, label %445, label %446, !prof !48, !nosanitize !10

445:                                              ; preds = %439
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

446:                                              ; preds = %439
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !10
  store i32 %447, ptr %435, align 8, !tbaa !74
  %448 = load ptr, ptr %434, align 8, !tbaa !75
  %449 = zext i32 %437 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %442, ptr align 1 %448, i64 %449, i1 false)
  %450 = getelementptr inbounds nuw i8, ptr %434, i64 56
  %451 = load ptr, ptr %450, align 8, !tbaa !20
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 48
  %453 = load i32, ptr %452, align 8, !tbaa !31
  switch i32 %453, label %462 [
    i32 1, label %454
    i32 2, label %458
  ]

454:                                              ; preds = %446
  %455 = getelementptr inbounds nuw i8, ptr %434, i64 96
  %456 = load i64, ptr %455, align 8, !tbaa !73
  %457 = tail call i64 @adler32(i64 noundef %456, ptr noundef %442, i32 noundef %437) #13
  store i64 %457, ptr %455, align 8, !tbaa !73
  br label %462

458:                                              ; preds = %446
  %459 = getelementptr inbounds nuw i8, ptr %434, i64 96
  %460 = load i64, ptr %459, align 8, !tbaa !73
  %461 = tail call i64 @crc32(i64 noundef %460, ptr noundef %442, i32 noundef %437) #13
  store i64 %461, ptr %459, align 8, !tbaa !73
  br label %462

462:                                              ; preds = %458, %454, %446
  %463 = load ptr, ptr %434, align 8, !tbaa !75
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 %449
  store ptr %464, ptr %434, align 8, !tbaa !75
  %465 = getelementptr inbounds nuw i8, ptr %434, i64 16
  %466 = load i64, ptr %465, align 8, !tbaa !86
  %467 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %466, i64 %449), !nosanitize !10
  %468 = extractvalue { i64, i1 } %467, 1, !nosanitize !10
  br i1 %468, label %469, label %470, !prof !48, !nosanitize !10

469:                                              ; preds = %462
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

470:                                              ; preds = %462
  %471 = extractvalue { i64, i1 } %467, 0, !nosanitize !10
  store i64 %471, ptr %465, align 8, !tbaa !86
  %472 = load i32, ptr %19, align 4, !tbaa !65
  %473 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %472, i32 %437), !nosanitize !10
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !10
  br i1 %474, label %475, label %476, !prof !48, !nosanitize !10

475:                                              ; preds = %470
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

476:                                              ; preds = %470
  %477 = extractvalue { i32, i1 } %473, 0, !nosanitize !10
  store i32 %477, ptr %19, align 4, !tbaa !65
  %478 = load i32, ptr %10, align 8, !tbaa !33
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %480 = load i32, ptr %479, align 4, !tbaa !68
  %481 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %478, i32 %480), !nosanitize !10
  %482 = extractvalue { i32, i1 } %481, 1, !nosanitize !10
  br i1 %482, label %483, label %484, !prof !48, !nosanitize !10

483:                                              ; preds = %476
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

484:                                              ; preds = %476
  %485 = extractvalue { i32, i1 } %481, 0, !nosanitize !10
  %486 = tail call i32 @llvm.umin.i32(i32 %437, i32 %485)
  %487 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %480, i32 %486), !nosanitize !10
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !10
  br i1 %488, label %489, label %490, !prof !48, !nosanitize !10

489:                                              ; preds = %484
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

490:                                              ; preds = %484
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !10
  store i32 %491, ptr %479, align 4, !tbaa !68
  br label %492

492:                                              ; preds = %490, %431
  %493 = phi i32 [ %477, %490 ], [ %432, %431 ]
  %494 = load i64, ptr %371, align 8, !tbaa !42
  %495 = zext i32 %493 to i64
  %496 = icmp ult i64 %494, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %492
  store i64 %495, ptr %371, align 8, !tbaa !42
  br label %498

498:                                              ; preds = %497, %492
  %499 = load i32, ptr %18, align 4, !tbaa !94
  %500 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %499, i32 42), !nosanitize !10
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !10
  br i1 %501, label %502, label %503, !prof !48, !nosanitize !10

502:                                              ; preds = %544, %498
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

503:                                              ; preds = %498
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !10
  %505 = lshr i32 %504, 3
  %506 = load i64, ptr %3, align 8, !tbaa !45
  %507 = zext nneg i32 %505 to i64
  %508 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %506, i64 %507), !nosanitize !10
  %509 = extractvalue { i64, i1 } %508, 1, !nosanitize !10
  br i1 %509, label %510, label %511, !prof !48, !nosanitize !10

510:                                              ; preds = %503
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

511:                                              ; preds = %503
  %512 = extractvalue { i64, i1 } %508, 0, !nosanitize !10
  %513 = tail call i64 @llvm.umin.i64(i64 %512, i64 65535)
  %514 = trunc nuw nsw i64 %513 to i32
  %515 = load i64, ptr %20, align 8, !tbaa !66
  %516 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %495, i64 %515), !nosanitize !10
  %517 = extractvalue { i64, i1 } %516, 1, !nosanitize !10
  br i1 %517, label %518, label %519, !prof !48, !nosanitize !10

518:                                              ; preds = %511
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

519:                                              ; preds = %511
  %520 = load i32, ptr %10, align 8, !tbaa !33
  %521 = tail call i32 @llvm.umin.i32(i32 %520, i32 %514)
  %522 = extractvalue { i64, i1 } %516, 0, !nosanitize !10
  %523 = trunc i64 %522 to i32
  %524 = icmp ugt i32 %521, %523
  br i1 %524, label %525, label %534

525:                                              ; preds = %519
  %526 = icmp ne i32 %523, 0
  %527 = or i1 %23, %526
  %528 = and i1 %377, %527
  br i1 %528, label %529, label %602

529:                                              ; preds = %525
  %530 = load ptr, ptr %0, align 8, !tbaa !21
  %531 = getelementptr inbounds nuw i8, ptr %530, i64 8
  %532 = load i32, ptr %531, align 8, !tbaa !74
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %602

534:                                              ; preds = %529, %519
  %535 = tail call i32 @llvm.umin.i32(i32 %514, i32 %523)
  br i1 %23, label %536, label %544

536:                                              ; preds = %534
  %537 = load ptr, ptr %0, align 8, !tbaa !21
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 8
  %539 = load i32, ptr %538, align 8, !tbaa !74
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %544

541:                                              ; preds = %536
  %542 = icmp uge i32 %514, %523
  %543 = zext i1 %542 to i32
  br label %544

544:                                              ; preds = %541, %536, %534
  %545 = phi i32 [ 0, %536 ], [ 0, %534 ], [ %543, %541 ]
  %546 = load ptr, ptr %26, align 8, !tbaa !39
  %547 = getelementptr inbounds i8, ptr %546, i64 %515
  %548 = zext nneg i32 %535 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %547, i64 noundef %548, i32 noundef %545) #13
  %549 = load i64, ptr %20, align 8, !tbaa !66
  %550 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %549, i64 %548), !nosanitize !10
  %551 = extractvalue { i64, i1 } %550, 1, !nosanitize !10
  br i1 %551, label %502, label %552, !prof !48, !nosanitize !10

552:                                              ; preds = %544
  %553 = extractvalue { i64, i1 } %550, 0, !nosanitize !10
  store i64 %553, ptr %20, align 8, !tbaa !66
  %554 = load ptr, ptr %0, align 8, !tbaa !21
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 56
  %556 = load ptr, ptr %555, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %556) #13
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !90
  %559 = getelementptr inbounds nuw i8, ptr %554, i64 32
  %560 = load i32, ptr %559, align 8, !tbaa !101
  %561 = zext i32 %560 to i64
  %562 = tail call i64 @llvm.umin.i64(i64 %558, i64 %561)
  %563 = trunc nuw i64 %562 to i32
  %564 = icmp eq i64 %562, 0
  br i1 %564, label %597, label %565

565:                                              ; preds = %552
  %566 = getelementptr inbounds nuw i8, ptr %554, i64 24
  %567 = load ptr, ptr %566, align 8, !tbaa !100
  %568 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %569 = load ptr, ptr %568, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %567, ptr align 1 %569, i64 %562, i1 false)
  %570 = load ptr, ptr %566, align 8, !tbaa !100
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %562
  store ptr %571, ptr %566, align 8, !tbaa !100
  %572 = load ptr, ptr %568, align 8, !tbaa !91
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 %562
  store ptr %573, ptr %568, align 8, !tbaa !91
  %574 = getelementptr inbounds nuw i8, ptr %554, i64 40
  %575 = load i64, ptr %574, align 8, !tbaa !102
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %562), !nosanitize !10
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !10
  br i1 %577, label %578, label %579, !prof !48, !nosanitize !10

578:                                              ; preds = %565
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

579:                                              ; preds = %565
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !10
  store i64 %580, ptr %574, align 8, !tbaa !102
  %581 = load i32, ptr %559, align 8, !tbaa !101
  %582 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %581, i32 %563), !nosanitize !10
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !10
  br i1 %583, label %584, label %585, !prof !48, !nosanitize !10

584:                                              ; preds = %579
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

585:                                              ; preds = %579
  %586 = extractvalue { i32, i1 } %582, 0, !nosanitize !10
  store i32 %586, ptr %559, align 8, !tbaa !101
  %587 = load i64, ptr %557, align 8, !tbaa !90
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %562), !nosanitize !10
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !10
  br i1 %589, label %590, label %591, !prof !48, !nosanitize !10

590:                                              ; preds = %585
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

591:                                              ; preds = %585
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !10
  store i64 %592, ptr %557, align 8, !tbaa !90
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %596 = load ptr, ptr %595, align 8, !tbaa !44
  store ptr %596, ptr %568, align 8, !tbaa !91
  br label %597

597:                                              ; preds = %594, %591, %552
  %598 = icmp eq i32 %545, 0
  br i1 %598, label %602, label %599

599:                                              ; preds = %597, %375
  %600 = phi i32 [ 3, %375 ], [ 2, %597 ]
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %601, align 8, !tbaa !95
  br label %602

602:                                              ; preds = %599, %529, %525, %597, %383
  %603 = phi i32 [ 0, %525 ], [ 1, %383 ], [ 0, %529 ], [ 0, %597 ], [ %600, %599 ]
  ret i32 %603
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

12:                                               ; preds = %139, %2
  %13 = load i32, ptr %3, align 4, !tbaa !67
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %16 = load i32, ptr %3, align 4, !tbaa !67
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %278, label %140

20:                                               ; preds = %12, %15
  store i32 0, ptr %4, align 8, !tbaa !70
  %21 = load ptr, ptr %5, align 8, !tbaa !39
  %22 = load i32, ptr %6, align 4, !tbaa !65
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !8
  %26 = load i32, ptr %8, align 4, !tbaa !127
  %27 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %26, i32 1), !nosanitize !10
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !10
  br i1 %28, label %29, label %30, !prof !48, !nosanitize !10

29:                                               ; preds = %20
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

30:                                               ; preds = %20
  %31 = extractvalue { i32, i1 } %27, 0, !nosanitize !10
  %32 = load ptr, ptr %7, align 8, !tbaa !47
  store i32 %31, ptr %8, align 4, !tbaa !127
  %33 = zext i32 %26 to i64
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !8
  %35 = load i32, ptr %8, align 4, !tbaa !127
  %36 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %35, i32 1), !nosanitize !10
  %37 = extractvalue { i32, i1 } %36, 1, !nosanitize !10
  br i1 %37, label %38, label %39, !prof !48, !nosanitize !10

38:                                               ; preds = %30
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

39:                                               ; preds = %30
  %40 = extractvalue { i32, i1 } %36, 0, !nosanitize !10
  %41 = load ptr, ptr %7, align 8, !tbaa !47
  store i32 %40, ptr %8, align 4, !tbaa !127
  %42 = zext i32 %35 to i64
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !8
  %44 = load i32, ptr %8, align 4, !tbaa !127
  %45 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 1), !nosanitize !10
  %46 = extractvalue { i32, i1 } %45, 1, !nosanitize !10
  br i1 %46, label %47, label %48, !prof !48, !nosanitize !10

47:                                               ; preds = %39
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

48:                                               ; preds = %39
  %49 = extractvalue { i32, i1 } %45, 0, !nosanitize !10
  %50 = load ptr, ptr %7, align 8, !tbaa !47
  store i32 %49, ptr %8, align 4, !tbaa !127
  %51 = zext i32 %44 to i64
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 %51
  store i8 %25, ptr %52, align 1, !tbaa !8
  %53 = zext i8 %25 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %53
  %55 = load i16, ptr %54, align 4, !tbaa !8
  %56 = icmp eq i16 %55, -1
  br i1 %56, label %57, label %58, !prof !48, !nosanitize !10

57:                                               ; preds = %48
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

58:                                               ; preds = %48
  %59 = add nuw i16 %55, 1
  store i16 %59, ptr %54, align 4, !tbaa !8
  %60 = load i32, ptr %8, align 4, !tbaa !127
  %61 = load i32, ptr %10, align 8, !tbaa !49
  %62 = icmp eq i32 %60, %61
  %63 = load i32, ptr %3, align 4, !tbaa !67
  %64 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %63, i32 1), !nosanitize !10
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !10
  br i1 %65, label %66, label %67, !prof !48, !nosanitize !10

66:                                               ; preds = %82, %58, %219, %150
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

67:                                               ; preds = %58
  %68 = extractvalue { i32, i1 } %64, 0, !nosanitize !10
  store i32 %68, ptr %3, align 4, !tbaa !67
  %69 = load i32, ptr %6, align 4, !tbaa !65
  %70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %69, i32 1), !nosanitize !10
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !10
  br i1 %71, label %72, label %73, !prof !48, !nosanitize !10

72:                                               ; preds = %67
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

73:                                               ; preds = %67
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !10
  store i32 %74, ptr %6, align 4, !tbaa !65
  br i1 %62, label %75, label %139

75:                                               ; preds = %73
  %76 = load i64, ptr %11, align 8, !tbaa !66
  %77 = icmp sgt i64 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load ptr, ptr %5, align 8, !tbaa !39
  %80 = and i64 %76, 4294967295
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 %80
  br label %82

82:                                               ; preds = %75, %78
  %83 = phi ptr [ %81, %78 ], [ null, %75 ]
  %84 = zext i32 %74 to i64
  %85 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %84, i64 %76), !nosanitize !10
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !10
  br i1 %86, label %66, label %87, !prof !48, !nosanitize !10

87:                                               ; preds = %82
  %88 = extractvalue { i64, i1 } %85, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %83, i64 noundef %88, i32 noundef 0) #13
  %89 = load i32, ptr %6, align 4, !tbaa !65
  %90 = zext i32 %89 to i64
  store i64 %90, ptr %11, align 8, !tbaa !66
  %91 = load ptr, ptr %0, align 8, !tbaa !21
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 56
  %93 = load ptr, ptr %92, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %93) #13
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 40
  %95 = load i64, ptr %94, align 8, !tbaa !90
  %96 = getelementptr inbounds nuw i8, ptr %91, i64 32
  %97 = load i32, ptr %96, align 8, !tbaa !101
  %98 = zext i32 %97 to i64
  %99 = tail call i64 @llvm.umin.i64(i64 %95, i64 %98)
  %100 = trunc nuw i64 %99 to i32
  %101 = icmp eq i64 %99, 0
  br i1 %101, label %134, label %102

102:                                              ; preds = %87
  %103 = getelementptr inbounds nuw i8, ptr %91, i64 24
  %104 = load ptr, ptr %103, align 8, !tbaa !100
  %105 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %106 = load ptr, ptr %105, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %104, ptr align 1 %106, i64 %99, i1 false)
  %107 = load ptr, ptr %103, align 8, !tbaa !100
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 %99
  store ptr %108, ptr %103, align 8, !tbaa !100
  %109 = load ptr, ptr %105, align 8, !tbaa !91
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 %99
  store ptr %110, ptr %105, align 8, !tbaa !91
  %111 = getelementptr inbounds nuw i8, ptr %91, i64 40
  %112 = load i64, ptr %111, align 8, !tbaa !102
  %113 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 %99), !nosanitize !10
  %114 = extractvalue { i64, i1 } %113, 1, !nosanitize !10
  br i1 %114, label %115, label %116, !prof !48, !nosanitize !10

115:                                              ; preds = %102
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

116:                                              ; preds = %102
  %117 = extractvalue { i64, i1 } %113, 0, !nosanitize !10
  store i64 %117, ptr %111, align 8, !tbaa !102
  %118 = load i32, ptr %96, align 8, !tbaa !101
  %119 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 %100), !nosanitize !10
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !10
  br i1 %120, label %121, label %122, !prof !48, !nosanitize !10

121:                                              ; preds = %116
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

122:                                              ; preds = %116
  %123 = extractvalue { i32, i1 } %119, 0, !nosanitize !10
  store i32 %123, ptr %96, align 8, !tbaa !101
  %124 = load i64, ptr %94, align 8, !tbaa !90
  %125 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %124, i64 %99), !nosanitize !10
  %126 = extractvalue { i64, i1 } %125, 1, !nosanitize !10
  br i1 %126, label %127, label %128, !prof !48, !nosanitize !10

127:                                              ; preds = %122
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

128:                                              ; preds = %122
  %129 = extractvalue { i64, i1 } %125, 0, !nosanitize !10
  store i64 %129, ptr %94, align 8, !tbaa !90
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %133 = load ptr, ptr %132, align 8, !tbaa !44
  store ptr %133, ptr %105, align 8, !tbaa !91
  br label %134

134:                                              ; preds = %87, %128, %131
  %135 = load ptr, ptr %0, align 8, !tbaa !21
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 32
  %137 = load i32, ptr %136, align 8, !tbaa !101
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %278, label %139

139:                                              ; preds = %134, %73
  br label %12

140:                                              ; preds = %18
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 0, ptr %141, align 4, !tbaa !68
  %142 = icmp eq i32 %1, 4
  br i1 %142, label %143, label %209

143:                                              ; preds = %140
  %144 = load i64, ptr %11, align 8, !tbaa !66
  %145 = icmp sgt i64 %144, -1
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load ptr, ptr %5, align 8, !tbaa !39
  %148 = and i64 %144, 4294967295
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 %148
  br label %150

150:                                              ; preds = %143, %146
  %151 = phi ptr [ %149, %146 ], [ null, %143 ]
  %152 = load i32, ptr %6, align 4, !tbaa !65
  %153 = zext i32 %152 to i64
  %154 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %153, i64 %144), !nosanitize !10
  %155 = extractvalue { i64, i1 } %154, 1, !nosanitize !10
  br i1 %155, label %66, label %156, !prof !48, !nosanitize !10

156:                                              ; preds = %150
  %157 = extractvalue { i64, i1 } %154, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %151, i64 noundef %157, i32 noundef 1) #13
  %158 = load i32, ptr %6, align 4, !tbaa !65
  %159 = zext i32 %158 to i64
  store i64 %159, ptr %11, align 8, !tbaa !66
  %160 = load ptr, ptr %0, align 8, !tbaa !21
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 56
  %162 = load ptr, ptr %161, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %162) #13
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 40
  %164 = load i64, ptr %163, align 8, !tbaa !90
  %165 = getelementptr inbounds nuw i8, ptr %160, i64 32
  %166 = load i32, ptr %165, align 8, !tbaa !101
  %167 = zext i32 %166 to i64
  %168 = tail call i64 @llvm.umin.i64(i64 %164, i64 %167)
  %169 = trunc nuw i64 %168 to i32
  %170 = icmp eq i64 %168, 0
  br i1 %170, label %203, label %171

171:                                              ; preds = %156
  %172 = getelementptr inbounds nuw i8, ptr %160, i64 24
  %173 = load ptr, ptr %172, align 8, !tbaa !100
  %174 = getelementptr inbounds nuw i8, ptr %162, i64 32
  %175 = load ptr, ptr %174, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %173, ptr align 1 %175, i64 %168, i1 false)
  %176 = load ptr, ptr %172, align 8, !tbaa !100
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 %168
  store ptr %177, ptr %172, align 8, !tbaa !100
  %178 = load ptr, ptr %174, align 8, !tbaa !91
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 %168
  store ptr %179, ptr %174, align 8, !tbaa !91
  %180 = getelementptr inbounds nuw i8, ptr %160, i64 40
  %181 = load i64, ptr %180, align 8, !tbaa !102
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %181, i64 %168), !nosanitize !10
  %183 = extractvalue { i64, i1 } %182, 1, !nosanitize !10
  br i1 %183, label %184, label %185, !prof !48, !nosanitize !10

184:                                              ; preds = %171
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

185:                                              ; preds = %171
  %186 = extractvalue { i64, i1 } %182, 0, !nosanitize !10
  store i64 %186, ptr %180, align 8, !tbaa !102
  %187 = load i32, ptr %165, align 8, !tbaa !101
  %188 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %187, i32 %169), !nosanitize !10
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !10
  br i1 %189, label %190, label %191, !prof !48, !nosanitize !10

190:                                              ; preds = %185
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

191:                                              ; preds = %185
  %192 = extractvalue { i32, i1 } %188, 0, !nosanitize !10
  store i32 %192, ptr %165, align 8, !tbaa !101
  %193 = load i64, ptr %163, align 8, !tbaa !90
  %194 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %193, i64 %168), !nosanitize !10
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !10
  br i1 %195, label %196, label %197, !prof !48, !nosanitize !10

196:                                              ; preds = %191
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

197:                                              ; preds = %191
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !10
  store i64 %198, ptr %163, align 8, !tbaa !90
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = getelementptr inbounds nuw i8, ptr %162, i64 16
  %202 = load ptr, ptr %201, align 8, !tbaa !44
  store ptr %202, ptr %174, align 8, !tbaa !91
  br label %203

203:                                              ; preds = %156, %197, %200
  %204 = load ptr, ptr %0, align 8, !tbaa !21
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %206 = load i32, ptr %205, align 8, !tbaa !101
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i32 2, i32 3
  br label %278

209:                                              ; preds = %140
  %210 = load i32, ptr %8, align 4, !tbaa !127
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %277, label %212

212:                                              ; preds = %209
  %213 = load i64, ptr %11, align 8, !tbaa !66
  %214 = icmp sgt i64 %213, -1
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load ptr, ptr %5, align 8, !tbaa !39
  %217 = and i64 %213, 4294967295
  %218 = getelementptr inbounds nuw i8, ptr %216, i64 %217
  br label %219

219:                                              ; preds = %212, %215
  %220 = phi ptr [ %218, %215 ], [ null, %212 ]
  %221 = load i32, ptr %6, align 4, !tbaa !65
  %222 = zext i32 %221 to i64
  %223 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %222, i64 %213), !nosanitize !10
  %224 = extractvalue { i64, i1 } %223, 1, !nosanitize !10
  br i1 %224, label %66, label %225, !prof !48, !nosanitize !10

225:                                              ; preds = %219
  %226 = extractvalue { i64, i1 } %223, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %220, i64 noundef %226, i32 noundef 0) #13
  %227 = load i32, ptr %6, align 4, !tbaa !65
  %228 = zext i32 %227 to i64
  store i64 %228, ptr %11, align 8, !tbaa !66
  %229 = load ptr, ptr %0, align 8, !tbaa !21
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 56
  %231 = load ptr, ptr %230, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %231) #13
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 40
  %233 = load i64, ptr %232, align 8, !tbaa !90
  %234 = getelementptr inbounds nuw i8, ptr %229, i64 32
  %235 = load i32, ptr %234, align 8, !tbaa !101
  %236 = zext i32 %235 to i64
  %237 = tail call i64 @llvm.umin.i64(i64 %233, i64 %236)
  %238 = trunc nuw i64 %237 to i32
  %239 = icmp eq i64 %237, 0
  br i1 %239, label %272, label %240

240:                                              ; preds = %225
  %241 = getelementptr inbounds nuw i8, ptr %229, i64 24
  %242 = load ptr, ptr %241, align 8, !tbaa !100
  %243 = getelementptr inbounds nuw i8, ptr %231, i64 32
  %244 = load ptr, ptr %243, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %242, ptr align 1 %244, i64 %237, i1 false)
  %245 = load ptr, ptr %241, align 8, !tbaa !100
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 %237
  store ptr %246, ptr %241, align 8, !tbaa !100
  %247 = load ptr, ptr %243, align 8, !tbaa !91
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 %237
  store ptr %248, ptr %243, align 8, !tbaa !91
  %249 = getelementptr inbounds nuw i8, ptr %229, i64 40
  %250 = load i64, ptr %249, align 8, !tbaa !102
  %251 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %250, i64 %237), !nosanitize !10
  %252 = extractvalue { i64, i1 } %251, 1, !nosanitize !10
  br i1 %252, label %253, label %254, !prof !48, !nosanitize !10

253:                                              ; preds = %240
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

254:                                              ; preds = %240
  %255 = extractvalue { i64, i1 } %251, 0, !nosanitize !10
  store i64 %255, ptr %249, align 8, !tbaa !102
  %256 = load i32, ptr %234, align 8, !tbaa !101
  %257 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %256, i32 %238), !nosanitize !10
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !10
  br i1 %258, label %259, label %260, !prof !48, !nosanitize !10

259:                                              ; preds = %254
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

260:                                              ; preds = %254
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !10
  store i32 %261, ptr %234, align 8, !tbaa !101
  %262 = load i64, ptr %232, align 8, !tbaa !90
  %263 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %262, i64 %237), !nosanitize !10
  %264 = extractvalue { i64, i1 } %263, 1, !nosanitize !10
  br i1 %264, label %265, label %266, !prof !48, !nosanitize !10

265:                                              ; preds = %260
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

266:                                              ; preds = %260
  %267 = extractvalue { i64, i1 } %263, 0, !nosanitize !10
  store i64 %267, ptr %232, align 8, !tbaa !90
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = getelementptr inbounds nuw i8, ptr %231, i64 16
  %271 = load ptr, ptr %270, align 8, !tbaa !44
  store ptr %271, ptr %243, align 8, !tbaa !91
  br label %272

272:                                              ; preds = %225, %266, %269
  %273 = load ptr, ptr %0, align 8, !tbaa !21
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 32
  %275 = load i32, ptr %274, align 8, !tbaa !101
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %209, %272
  br label %278

278:                                              ; preds = %134, %272, %203, %18, %277
  %279 = phi i32 [ 0, %18 ], [ %208, %203 ], [ 0, %272 ], [ 1, %277 ], [ 0, %134 ]
  ret i32 %279
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
  %12 = getelementptr i8, ptr %0, i64 1240
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %15

15:                                               ; preds = %181, %2
  %16 = load i32, ptr %3, align 4, !tbaa !67
  %17 = icmp ult i32 %16, 259
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  store i32 0, ptr %4, align 8, !tbaa !70
  %19 = load i32, ptr %6, align 4, !tbaa !65
  br label %29

20:                                               ; preds = %15
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %21 = load i32, ptr %3, align 4, !tbaa !67
  %22 = icmp ult i32 %21, 259
  %23 = and i1 %5, %22
  br i1 %23, label %443, label %24

24:                                               ; preds = %20
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %305, label %26

26:                                               ; preds = %24
  store i32 0, ptr %4, align 8, !tbaa !70
  %27 = icmp ugt i32 %21, 2
  %28 = load i32, ptr %6, align 4, !tbaa !65
  br i1 %27, label %29, label %182

29:                                               ; preds = %18, %26
  %30 = phi i32 [ %19, %18 ], [ %28, %26 ]
  %31 = phi i32 [ %16, %18 ], [ %21, %26 ]
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %182, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 8, !tbaa !39
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  %37 = getelementptr inbounds i8, ptr %36, i64 -1
  %38 = load i8, ptr %37, align 1, !tbaa !8
  %39 = load i8, ptr %36, align 1, !tbaa !8
  %40 = icmp eq i8 %38, %39
  br i1 %40, label %41, label %182

41:                                               ; preds = %33
  %42 = getelementptr inbounds nuw i8, ptr %36, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !8
  %44 = icmp eq i8 %38, %43
  br i1 %44, label %45, label %182

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %36, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !8
  %48 = icmp eq i8 %38, %47
  br i1 %48, label %49, label %182

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %36, i64 258
  br label %51

51:                                               ; preds = %81, %49
  %52 = phi i64 [ 2, %49 ], [ %82, %81 ]
  %53 = getelementptr inbounds nuw i8, ptr %36, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !8
  %56 = icmp eq i8 %38, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %51
  %58 = getelementptr inbounds nuw i8, ptr %53, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !8
  %60 = icmp eq i8 %38, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %53, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !8
  %64 = icmp eq i8 %38, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw i8, ptr %53, i64 4
  %67 = load i8, ptr %66, align 1, !tbaa !8
  %68 = icmp eq i8 %38, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %53, i64 5
  %71 = load i8, ptr %70, align 1, !tbaa !8
  %72 = icmp eq i8 %38, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %53, i64 6
  %75 = load i8, ptr %74, align 1, !tbaa !8
  %76 = icmp eq i8 %38, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %53, i64 7
  %79 = load i8, ptr %78, align 1, !tbaa !8
  %80 = icmp eq i8 %38, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = add nuw nsw i64 %52, 8
  %83 = getelementptr inbounds nuw i8, ptr %36, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !8
  %85 = icmp eq i8 %38, %84
  %86 = icmp samesign ult i64 %52, 250
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %51, label %102, !llvm.loop !128

88:                                               ; preds = %51
  %89 = getelementptr inbounds nuw i8, ptr %53, i64 1
  br label %104

90:                                               ; preds = %57
  %91 = getelementptr inbounds nuw i8, ptr %53, i64 2
  br label %104

92:                                               ; preds = %61
  %93 = getelementptr inbounds nuw i8, ptr %53, i64 3
  br label %104

94:                                               ; preds = %65
  %95 = getelementptr inbounds nuw i8, ptr %53, i64 4
  br label %104

96:                                               ; preds = %69
  %97 = getelementptr inbounds nuw i8, ptr %53, i64 5
  br label %104

98:                                               ; preds = %73
  %99 = getelementptr inbounds nuw i8, ptr %53, i64 6
  br label %104

100:                                              ; preds = %77
  %101 = getelementptr inbounds nuw i8, ptr %53, i64 7
  br label %104

102:                                              ; preds = %81
  %103 = getelementptr inbounds nuw i8, ptr %36, i64 %82
  br label %104

104:                                              ; preds = %102, %100, %98, %96, %94, %92, %90, %88
  %105 = phi ptr [ %91, %90 ], [ %93, %92 ], [ %89, %88 ], [ %101, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ], [ %103, %102 ]
  %106 = ptrtoint ptr %50 to i64
  %107 = ptrtoint ptr %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %109), !nosanitize !10
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !10
  br i1 %111, label %112, label %113, !prof !48, !nosanitize !10

112:                                              ; preds = %104
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

113:                                              ; preds = %104
  %114 = extractvalue { i32, i1 } %110, 0, !nosanitize !10
  %115 = tail call i32 @llvm.umin.i32(i32 %114, i32 %31)
  store i32 %115, ptr %4, align 8
  %116 = icmp ugt i32 %115, 2
  %117 = load i32, ptr %9, align 4, !tbaa !127
  br i1 %116, label %118, label %185

118:                                              ; preds = %113
  %119 = trunc i32 %115 to i8
  %120 = add i8 %119, -3
  %121 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %117, i32 1), !nosanitize !10
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !10
  br i1 %122, label %123, label %124, !prof !48, !nosanitize !10

123:                                              ; preds = %118
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

124:                                              ; preds = %118
  %125 = extractvalue { i32, i1 } %121, 0, !nosanitize !10
  %126 = load ptr, ptr %8, align 8, !tbaa !47
  store i32 %125, ptr %9, align 4, !tbaa !127
  %127 = zext i32 %117 to i64
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 %127
  store i8 1, ptr %128, align 1, !tbaa !8
  %129 = load i32, ptr %9, align 4, !tbaa !127
  %130 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %129, i32 1), !nosanitize !10
  %131 = extractvalue { i32, i1 } %130, 1, !nosanitize !10
  br i1 %131, label %132, label %133, !prof !48, !nosanitize !10

132:                                              ; preds = %124
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

133:                                              ; preds = %124
  %134 = extractvalue { i32, i1 } %130, 0, !nosanitize !10
  %135 = load ptr, ptr %8, align 8, !tbaa !47
  store i32 %134, ptr %9, align 4, !tbaa !127
  %136 = zext i32 %129 to i64
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 %136
  store i8 0, ptr %137, align 1, !tbaa !8
  %138 = load i32, ptr %9, align 4, !tbaa !127
  %139 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %138, i32 1), !nosanitize !10
  %140 = extractvalue { i32, i1 } %139, 1, !nosanitize !10
  br i1 %140, label %141, label %142, !prof !48, !nosanitize !10

141:                                              ; preds = %133
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

142:                                              ; preds = %133
  %143 = extractvalue { i32, i1 } %139, 0, !nosanitize !10
  %144 = load ptr, ptr %8, align 8, !tbaa !47
  store i32 %143, ptr %9, align 4, !tbaa !127
  %145 = zext i32 %138 to i64
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 %145
  store i8 %120, ptr %146, align 1, !tbaa !8
  %147 = zext i8 %120 to i64
  %148 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !8
  %150 = zext i8 %149 to i64
  %151 = getelementptr [4 x i8], ptr %12, i64 %150
  %152 = load i16, ptr %151, align 4, !tbaa !8
  %153 = icmp eq i16 %152, -1
  br i1 %153, label %154, label %155, !prof !48, !nosanitize !10

154:                                              ; preds = %142
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

155:                                              ; preds = %142
  %156 = add nuw i16 %152, 1
  store i16 %156, ptr %151, align 4, !tbaa !8
  %157 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %158
  %160 = load i16, ptr %159, align 4, !tbaa !8
  %161 = icmp eq i16 %160, -1
  br i1 %161, label %162, label %163, !prof !48, !nosanitize !10

162:                                              ; preds = %155
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

163:                                              ; preds = %155
  %164 = add nuw i16 %160, 1
  store i16 %164, ptr %159, align 4, !tbaa !8
  %165 = load i32, ptr %9, align 4, !tbaa !127
  %166 = load i32, ptr %11, align 8, !tbaa !49
  %167 = icmp eq i32 %165, %166
  %168 = load i32, ptr %4, align 8, !tbaa !70
  %169 = load i32, ptr %3, align 4, !tbaa !67
  %170 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %169, i32 %168), !nosanitize !10
  %171 = extractvalue { i32, i1 } %170, 1, !nosanitize !10
  br i1 %171, label %172, label %173, !prof !48, !nosanitize !10

172:                                              ; preds = %163
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

173:                                              ; preds = %163
  %174 = extractvalue { i32, i1 } %170, 0, !nosanitize !10
  store i32 %174, ptr %3, align 4, !tbaa !67
  %175 = load i32, ptr %6, align 4, !tbaa !65
  %176 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %175, i32 %168), !nosanitize !10
  %177 = extractvalue { i32, i1 } %176, 1, !nosanitize !10
  br i1 %177, label %178, label %179, !prof !48, !nosanitize !10

178:                                              ; preds = %173
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

179:                                              ; preds = %173
  %180 = extractvalue { i32, i1 } %176, 0, !nosanitize !10
  store i32 %180, ptr %6, align 4, !tbaa !65
  store i32 0, ptr %4, align 8, !tbaa !70
  br i1 %167, label %240, label %181

181:                                              ; preds = %179, %300, %238
  br label %15

182:                                              ; preds = %33, %41, %45, %29, %26
  %183 = phi i32 [ %28, %26 ], [ %30, %29 ], [ %30, %45 ], [ %30, %41 ], [ %30, %33 ]
  %184 = load i32, ptr %9, align 4, !tbaa !127
  br label %185

185:                                              ; preds = %182, %113
  %186 = phi i32 [ %117, %113 ], [ %184, %182 ]
  %187 = phi i32 [ %30, %113 ], [ %183, %182 ]
  %188 = load ptr, ptr %7, align 8, !tbaa !39
  %189 = zext i32 %187 to i64
  %190 = getelementptr inbounds nuw i8, ptr %188, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !8
  %192 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 1), !nosanitize !10
  %193 = extractvalue { i32, i1 } %192, 1, !nosanitize !10
  br i1 %193, label %194, label %195, !prof !48, !nosanitize !10

194:                                              ; preds = %185
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

195:                                              ; preds = %185
  %196 = extractvalue { i32, i1 } %192, 0, !nosanitize !10
  %197 = load ptr, ptr %8, align 8, !tbaa !47
  store i32 %196, ptr %9, align 4, !tbaa !127
  %198 = zext i32 %186 to i64
  %199 = getelementptr inbounds nuw i8, ptr %197, i64 %198
  store i8 0, ptr %199, align 1, !tbaa !8
  %200 = load i32, ptr %9, align 4, !tbaa !127
  %201 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %200, i32 1), !nosanitize !10
  %202 = extractvalue { i32, i1 } %201, 1, !nosanitize !10
  br i1 %202, label %203, label %204, !prof !48, !nosanitize !10

203:                                              ; preds = %195
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

204:                                              ; preds = %195
  %205 = extractvalue { i32, i1 } %201, 0, !nosanitize !10
  %206 = load ptr, ptr %8, align 8, !tbaa !47
  store i32 %205, ptr %9, align 4, !tbaa !127
  %207 = zext i32 %200 to i64
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 %207
  store i8 0, ptr %208, align 1, !tbaa !8
  %209 = load i32, ptr %9, align 4, !tbaa !127
  %210 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %209, i32 1), !nosanitize !10
  %211 = extractvalue { i32, i1 } %210, 1, !nosanitize !10
  br i1 %211, label %212, label %213, !prof !48, !nosanitize !10

212:                                              ; preds = %204
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

213:                                              ; preds = %204
  %214 = extractvalue { i32, i1 } %210, 0, !nosanitize !10
  %215 = load ptr, ptr %8, align 8, !tbaa !47
  store i32 %214, ptr %9, align 4, !tbaa !127
  %216 = zext i32 %209 to i64
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 %216
  store i8 %191, ptr %217, align 1, !tbaa !8
  %218 = zext i8 %191 to i64
  %219 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %218
  %220 = load i16, ptr %219, align 4, !tbaa !8
  %221 = icmp eq i16 %220, -1
  br i1 %221, label %222, label %223, !prof !48, !nosanitize !10

222:                                              ; preds = %213
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

223:                                              ; preds = %213
  %224 = add nuw i16 %220, 1
  store i16 %224, ptr %219, align 4, !tbaa !8
  %225 = load i32, ptr %9, align 4, !tbaa !127
  %226 = load i32, ptr %11, align 8, !tbaa !49
  %227 = icmp eq i32 %225, %226
  %228 = load i32, ptr %3, align 4, !tbaa !67
  %229 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %228, i32 1), !nosanitize !10
  %230 = extractvalue { i32, i1 } %229, 1, !nosanitize !10
  br i1 %230, label %231, label %232, !prof !48, !nosanitize !10

231:                                              ; preds = %248, %223, %384, %315
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

232:                                              ; preds = %223
  %233 = extractvalue { i32, i1 } %229, 0, !nosanitize !10
  store i32 %233, ptr %3, align 4, !tbaa !67
  %234 = load i32, ptr %6, align 4, !tbaa !65
  %235 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 1), !nosanitize !10
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !10
  br i1 %236, label %237, label %238, !prof !48, !nosanitize !10

237:                                              ; preds = %232
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

238:                                              ; preds = %232
  %239 = extractvalue { i32, i1 } %235, 0, !nosanitize !10
  store i32 %239, ptr %6, align 4, !tbaa !65
  br i1 %227, label %240, label %181

240:                                              ; preds = %179, %238
  %241 = phi i32 [ %180, %179 ], [ %239, %238 ]
  %242 = load i64, ptr %14, align 8, !tbaa !66
  %243 = icmp sgt i64 %242, -1
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load ptr, ptr %7, align 8, !tbaa !39
  %246 = and i64 %242, 4294967295
  %247 = getelementptr inbounds nuw i8, ptr %245, i64 %246
  br label %248

248:                                              ; preds = %240, %244
  %249 = phi ptr [ %247, %244 ], [ null, %240 ]
  %250 = zext i32 %241 to i64
  %251 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %250, i64 %242), !nosanitize !10
  %252 = extractvalue { i64, i1 } %251, 1, !nosanitize !10
  br i1 %252, label %231, label %253, !prof !48, !nosanitize !10

253:                                              ; preds = %248
  %254 = extractvalue { i64, i1 } %251, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %249, i64 noundef %254, i32 noundef 0) #13
  %255 = load i32, ptr %6, align 4, !tbaa !65
  %256 = zext i32 %255 to i64
  store i64 %256, ptr %14, align 8, !tbaa !66
  %257 = load ptr, ptr %0, align 8, !tbaa !21
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 56
  %259 = load ptr, ptr %258, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %259) #13
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 40
  %261 = load i64, ptr %260, align 8, !tbaa !90
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %263 = load i32, ptr %262, align 8, !tbaa !101
  %264 = zext i32 %263 to i64
  %265 = tail call i64 @llvm.umin.i64(i64 %261, i64 %264)
  %266 = trunc nuw i64 %265 to i32
  %267 = icmp eq i64 %265, 0
  br i1 %267, label %300, label %268

268:                                              ; preds = %253
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 24
  %270 = load ptr, ptr %269, align 8, !tbaa !100
  %271 = getelementptr inbounds nuw i8, ptr %259, i64 32
  %272 = load ptr, ptr %271, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %270, ptr align 1 %272, i64 %265, i1 false)
  %273 = load ptr, ptr %269, align 8, !tbaa !100
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 %265
  store ptr %274, ptr %269, align 8, !tbaa !100
  %275 = load ptr, ptr %271, align 8, !tbaa !91
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 %265
  store ptr %276, ptr %271, align 8, !tbaa !91
  %277 = getelementptr inbounds nuw i8, ptr %257, i64 40
  %278 = load i64, ptr %277, align 8, !tbaa !102
  %279 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %278, i64 %265), !nosanitize !10
  %280 = extractvalue { i64, i1 } %279, 1, !nosanitize !10
  br i1 %280, label %281, label %282, !prof !48, !nosanitize !10

281:                                              ; preds = %268
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

282:                                              ; preds = %268
  %283 = extractvalue { i64, i1 } %279, 0, !nosanitize !10
  store i64 %283, ptr %277, align 8, !tbaa !102
  %284 = load i32, ptr %262, align 8, !tbaa !101
  %285 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %284, i32 %266), !nosanitize !10
  %286 = extractvalue { i32, i1 } %285, 1, !nosanitize !10
  br i1 %286, label %287, label %288, !prof !48, !nosanitize !10

287:                                              ; preds = %282
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

288:                                              ; preds = %282
  %289 = extractvalue { i32, i1 } %285, 0, !nosanitize !10
  store i32 %289, ptr %262, align 8, !tbaa !101
  %290 = load i64, ptr %260, align 8, !tbaa !90
  %291 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %290, i64 %265), !nosanitize !10
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !10
  br i1 %292, label %293, label %294, !prof !48, !nosanitize !10

293:                                              ; preds = %288
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

294:                                              ; preds = %288
  %295 = extractvalue { i64, i1 } %291, 0, !nosanitize !10
  store i64 %295, ptr %260, align 8, !tbaa !90
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = getelementptr inbounds nuw i8, ptr %259, i64 16
  %299 = load ptr, ptr %298, align 8, !tbaa !44
  store ptr %299, ptr %271, align 8, !tbaa !91
  br label %300

300:                                              ; preds = %253, %294, %297
  %301 = load ptr, ptr %0, align 8, !tbaa !21
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 32
  %303 = load i32, ptr %302, align 8, !tbaa !101
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %443, label %181

305:                                              ; preds = %24
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 0, ptr %306, align 4, !tbaa !68
  %307 = icmp eq i32 %1, 4
  br i1 %307, label %308, label %374

308:                                              ; preds = %305
  %309 = load i64, ptr %14, align 8, !tbaa !66
  %310 = icmp sgt i64 %309, -1
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load ptr, ptr %7, align 8, !tbaa !39
  %313 = and i64 %309, 4294967295
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 %313
  br label %315

315:                                              ; preds = %308, %311
  %316 = phi ptr [ %314, %311 ], [ null, %308 ]
  %317 = load i32, ptr %6, align 4, !tbaa !65
  %318 = zext i32 %317 to i64
  %319 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %318, i64 %309), !nosanitize !10
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !10
  br i1 %320, label %231, label %321, !prof !48, !nosanitize !10

321:                                              ; preds = %315
  %322 = extractvalue { i64, i1 } %319, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %316, i64 noundef %322, i32 noundef 1) #13
  %323 = load i32, ptr %6, align 4, !tbaa !65
  %324 = zext i32 %323 to i64
  store i64 %324, ptr %14, align 8, !tbaa !66
  %325 = load ptr, ptr %0, align 8, !tbaa !21
  %326 = getelementptr inbounds nuw i8, ptr %325, i64 56
  %327 = load ptr, ptr %326, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %327) #13
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 40
  %329 = load i64, ptr %328, align 8, !tbaa !90
  %330 = getelementptr inbounds nuw i8, ptr %325, i64 32
  %331 = load i32, ptr %330, align 8, !tbaa !101
  %332 = zext i32 %331 to i64
  %333 = tail call i64 @llvm.umin.i64(i64 %329, i64 %332)
  %334 = trunc nuw i64 %333 to i32
  %335 = icmp eq i64 %333, 0
  br i1 %335, label %368, label %336

336:                                              ; preds = %321
  %337 = getelementptr inbounds nuw i8, ptr %325, i64 24
  %338 = load ptr, ptr %337, align 8, !tbaa !100
  %339 = getelementptr inbounds nuw i8, ptr %327, i64 32
  %340 = load ptr, ptr %339, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %338, ptr align 1 %340, i64 %333, i1 false)
  %341 = load ptr, ptr %337, align 8, !tbaa !100
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %333
  store ptr %342, ptr %337, align 8, !tbaa !100
  %343 = load ptr, ptr %339, align 8, !tbaa !91
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 %333
  store ptr %344, ptr %339, align 8, !tbaa !91
  %345 = getelementptr inbounds nuw i8, ptr %325, i64 40
  %346 = load i64, ptr %345, align 8, !tbaa !102
  %347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %346, i64 %333), !nosanitize !10
  %348 = extractvalue { i64, i1 } %347, 1, !nosanitize !10
  br i1 %348, label %349, label %350, !prof !48, !nosanitize !10

349:                                              ; preds = %336
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

350:                                              ; preds = %336
  %351 = extractvalue { i64, i1 } %347, 0, !nosanitize !10
  store i64 %351, ptr %345, align 8, !tbaa !102
  %352 = load i32, ptr %330, align 8, !tbaa !101
  %353 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %352, i32 %334), !nosanitize !10
  %354 = extractvalue { i32, i1 } %353, 1, !nosanitize !10
  br i1 %354, label %355, label %356, !prof !48, !nosanitize !10

355:                                              ; preds = %350
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

356:                                              ; preds = %350
  %357 = extractvalue { i32, i1 } %353, 0, !nosanitize !10
  store i32 %357, ptr %330, align 8, !tbaa !101
  %358 = load i64, ptr %328, align 8, !tbaa !90
  %359 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %358, i64 %333), !nosanitize !10
  %360 = extractvalue { i64, i1 } %359, 1, !nosanitize !10
  br i1 %360, label %361, label %362, !prof !48, !nosanitize !10

361:                                              ; preds = %356
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

362:                                              ; preds = %356
  %363 = extractvalue { i64, i1 } %359, 0, !nosanitize !10
  store i64 %363, ptr %328, align 8, !tbaa !90
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %362
  %366 = getelementptr inbounds nuw i8, ptr %327, i64 16
  %367 = load ptr, ptr %366, align 8, !tbaa !44
  store ptr %367, ptr %339, align 8, !tbaa !91
  br label %368

368:                                              ; preds = %321, %362, %365
  %369 = load ptr, ptr %0, align 8, !tbaa !21
  %370 = getelementptr inbounds nuw i8, ptr %369, i64 32
  %371 = load i32, ptr %370, align 8, !tbaa !101
  %372 = icmp eq i32 %371, 0
  %373 = select i1 %372, i32 2, i32 3
  br label %443

374:                                              ; preds = %305
  %375 = load i32, ptr %9, align 4, !tbaa !127
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %442, label %377

377:                                              ; preds = %374
  %378 = load i64, ptr %14, align 8, !tbaa !66
  %379 = icmp sgt i64 %378, -1
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = load ptr, ptr %7, align 8, !tbaa !39
  %382 = and i64 %378, 4294967295
  %383 = getelementptr inbounds nuw i8, ptr %381, i64 %382
  br label %384

384:                                              ; preds = %377, %380
  %385 = phi ptr [ %383, %380 ], [ null, %377 ]
  %386 = load i32, ptr %6, align 4, !tbaa !65
  %387 = zext i32 %386 to i64
  %388 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %387, i64 %378), !nosanitize !10
  %389 = extractvalue { i64, i1 } %388, 1, !nosanitize !10
  br i1 %389, label %231, label %390, !prof !48, !nosanitize !10

390:                                              ; preds = %384
  %391 = extractvalue { i64, i1 } %388, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %385, i64 noundef %391, i32 noundef 0) #13
  %392 = load i32, ptr %6, align 4, !tbaa !65
  %393 = zext i32 %392 to i64
  store i64 %393, ptr %14, align 8, !tbaa !66
  %394 = load ptr, ptr %0, align 8, !tbaa !21
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 56
  %396 = load ptr, ptr %395, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %396) #13
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 40
  %398 = load i64, ptr %397, align 8, !tbaa !90
  %399 = getelementptr inbounds nuw i8, ptr %394, i64 32
  %400 = load i32, ptr %399, align 8, !tbaa !101
  %401 = zext i32 %400 to i64
  %402 = tail call i64 @llvm.umin.i64(i64 %398, i64 %401)
  %403 = trunc nuw i64 %402 to i32
  %404 = icmp eq i64 %402, 0
  br i1 %404, label %437, label %405

405:                                              ; preds = %390
  %406 = getelementptr inbounds nuw i8, ptr %394, i64 24
  %407 = load ptr, ptr %406, align 8, !tbaa !100
  %408 = getelementptr inbounds nuw i8, ptr %396, i64 32
  %409 = load ptr, ptr %408, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %407, ptr align 1 %409, i64 %402, i1 false)
  %410 = load ptr, ptr %406, align 8, !tbaa !100
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 %402
  store ptr %411, ptr %406, align 8, !tbaa !100
  %412 = load ptr, ptr %408, align 8, !tbaa !91
  %413 = getelementptr inbounds nuw i8, ptr %412, i64 %402
  store ptr %413, ptr %408, align 8, !tbaa !91
  %414 = getelementptr inbounds nuw i8, ptr %394, i64 40
  %415 = load i64, ptr %414, align 8, !tbaa !102
  %416 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %415, i64 %402), !nosanitize !10
  %417 = extractvalue { i64, i1 } %416, 1, !nosanitize !10
  br i1 %417, label %418, label %419, !prof !48, !nosanitize !10

418:                                              ; preds = %405
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

419:                                              ; preds = %405
  %420 = extractvalue { i64, i1 } %416, 0, !nosanitize !10
  store i64 %420, ptr %414, align 8, !tbaa !102
  %421 = load i32, ptr %399, align 8, !tbaa !101
  %422 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %421, i32 %403), !nosanitize !10
  %423 = extractvalue { i32, i1 } %422, 1, !nosanitize !10
  br i1 %423, label %424, label %425, !prof !48, !nosanitize !10

424:                                              ; preds = %419
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

425:                                              ; preds = %419
  %426 = extractvalue { i32, i1 } %422, 0, !nosanitize !10
  store i32 %426, ptr %399, align 8, !tbaa !101
  %427 = load i64, ptr %397, align 8, !tbaa !90
  %428 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %427, i64 %402), !nosanitize !10
  %429 = extractvalue { i64, i1 } %428, 1, !nosanitize !10
  br i1 %429, label %430, label %431, !prof !48, !nosanitize !10

430:                                              ; preds = %425
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

431:                                              ; preds = %425
  %432 = extractvalue { i64, i1 } %428, 0, !nosanitize !10
  store i64 %432, ptr %397, align 8, !tbaa !90
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %431
  %435 = getelementptr inbounds nuw i8, ptr %396, i64 16
  %436 = load ptr, ptr %435, align 8, !tbaa !44
  store ptr %436, ptr %408, align 8, !tbaa !91
  br label %437

437:                                              ; preds = %390, %431, %434
  %438 = load ptr, ptr %0, align 8, !tbaa !21
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 32
  %440 = load i32, ptr %439, align 8, !tbaa !101
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %374, %437
  br label %443

443:                                              ; preds = %300, %20, %437, %368, %442
  %444 = phi i32 [ 1, %442 ], [ %373, %368 ], [ 0, %437 ], [ 0, %20 ], [ 0, %300 ]
  ret i32 %444
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #2

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @deflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %132, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %132, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %132, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %132, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !21
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %132

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !30
  switch i32 %21, label %132 [
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
  br i1 %23, label %132, label %24

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %132, label %31

31:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, i8 0, i64 5968, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %32, align 8, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, ptr noundef nonnull align 8 dereferenceable(5968) %14, i64 5968, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !21
  %33 = load ptr, ptr %25, align 8, !tbaa !17
  %34 = load ptr, ptr %27, align 8, !tbaa !18
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 80
  %36 = load i32, ptr %35, align 8, !tbaa !33
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #13
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !39
  %39 = load ptr, ptr %25, align 8, !tbaa !17
  %40 = load ptr, ptr %27, align 8, !tbaa !18
  %41 = load i32, ptr %35, align 8, !tbaa !33
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #13
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !40
  %44 = load ptr, ptr %25, align 8, !tbaa !17
  %45 = load ptr, ptr %27, align 8, !tbaa !18
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #13
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !41
  %50 = load ptr, ptr %25, align 8, !tbaa !17
  %51 = load ptr, ptr %27, align 8, !tbaa !18
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !43
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #13
  %55 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %54, ptr %55, align 8, !tbaa !44
  %56 = load ptr, ptr %38, align 8, !tbaa !39
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %31
  %59 = load ptr, ptr %43, align 8, !tbaa !40
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %49, align 8, !tbaa !41
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %54, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %58, %31
  %67 = tail call i32 @deflateEnd(ptr noundef nonnull %0)
  br label %132

68:                                               ; preds = %61
  %69 = getelementptr inbounds nuw i8, ptr %14, i64 96
  %70 = load ptr, ptr %69, align 8, !tbaa !39
  %71 = getelementptr inbounds nuw i8, ptr %14, i64 5952
  %72 = load i64, ptr %71, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr align 1 %70, i64 %72, i1 false)
  %73 = load ptr, ptr %43, align 8, !tbaa !40
  %74 = getelementptr inbounds nuw i8, ptr %14, i64 112
  %75 = load ptr, ptr %74, align 8, !tbaa !40
  %76 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  %77 = load i32, ptr %76, align 8, !tbaa !55
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %68
  %80 = load i32, ptr %35, align 8, !tbaa !33
  br label %93

81:                                               ; preds = %68
  %82 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %83 = load i32, ptr %82, align 4, !tbaa !65
  %84 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  %85 = load i32, ptr %84, align 4, !tbaa !68
  %86 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %85), !nosanitize !10
  %87 = extractvalue { i32, i1 } %86, 1, !nosanitize !10
  br i1 %87, label %88, label %89, !prof !48, !nosanitize !10

88:                                               ; preds = %81
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

89:                                               ; preds = %81
  %90 = extractvalue { i32, i1 } %86, 0, !nosanitize !10
  %91 = load i32, ptr %35, align 8, !tbaa !33
  %92 = tail call i32 @llvm.umin.i32(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %79
  %94 = phi i32 [ %92, %89 ], [ %80, %79 ]
  %95 = zext i32 %94 to i64
  %96 = shl nuw nsw i64 %95, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %73, ptr align 2 %75, i64 %96, i1 false)
  %97 = load i32, ptr %46, align 4, !tbaa !36
  %98 = zext i32 %97 to i64
  %99 = shl nuw nsw i64 %98, 1
  %100 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %101 = load ptr, ptr %100, align 8, !tbaa !41
  %102 = load ptr, ptr %49, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %102, ptr align 2 %101, i64 %99, i1 false)
  %103 = load ptr, ptr %55, align 8, !tbaa !44
  %104 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %105 = load ptr, ptr %104, align 8, !tbaa !91
  %106 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %107 = load ptr, ptr %106, align 8, !tbaa !44
  %108 = ptrtoint ptr %105 to i64
  %109 = ptrtoint ptr %107 to i64
  %110 = sub i64 %108, %109
  %111 = getelementptr inbounds i8, ptr %103, i64 %110
  %112 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %111, ptr %112, align 8, !tbaa !91
  %113 = load ptr, ptr %104, align 8, !tbaa !91
  %114 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %115 = load i64, ptr %114, align 8, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr align 1 %113, i64 %115, i1 false)
  %116 = load ptr, ptr %55, align 8, !tbaa !44
  %117 = load i32, ptr %52, align 8, !tbaa !43
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds nuw i8, ptr %116, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  store ptr %119, ptr %120, align 8, !tbaa !47
  %121 = getelementptr inbounds nuw i8, ptr %14, i64 5888
  %122 = load ptr, ptr %121, align 8, !tbaa !47
  %123 = getelementptr inbounds nuw i8, ptr %14, i64 5900
  %124 = load i32, ptr %123, align 4, !tbaa !127
  %125 = zext i32 %124 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %122, i64 %125, i1 false)
  %126 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %127 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %126, ptr %127, align 8, !tbaa !129
  %128 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %129 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %128, ptr %129, align 8, !tbaa !130
  %130 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %131 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %130, ptr %131, align 8, !tbaa !131
  br label %132

132:                                              ; preds = %12, %16, %19, %4, %8, %2, %24, %22, %93, %66
  %133 = phi i32 [ 0, %93 ], [ -2, %22 ], [ -4, %66 ], [ -4, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
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
  %20 = getelementptr i8, ptr %0, i64 1240
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %24

24:                                               ; preds = %312, %2
  %25 = load i32, ptr %3, align 4, !tbaa !67
  %26 = icmp ult i32 %25, 262
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %28 = load i32, ptr %3, align 4, !tbaa !67
  %29 = icmp ult i32 %28, 262
  %30 = and i1 %4, %29
  br i1 %30, label %526, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %388, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %28, 2
  br i1 %34, label %35, label %87

35:                                               ; preds = %24, %33
  %36 = load i32, ptr %5, align 8, !tbaa !72
  %37 = load i32, ptr %6, align 8, !tbaa !38
  %38 = icmp ult i32 %37, 32
  %39 = sub nuw nsw i32 31, %37
  %40 = lshr i32 %36, %39
  %41 = icmp ult i32 %40, 2
  %42 = select i1 %38, i1 %41, i1 false
  br i1 %42, label %44, label %43, !prof !9, !nosanitize !10

43:                                               ; preds = %35
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

44:                                               ; preds = %35
  %45 = load i32, ptr %7, align 4, !tbaa !65
  %46 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %45, i32 2), !nosanitize !10
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !10
  br i1 %47, label %48, label %49, !prof !48, !nosanitize !10

48:                                               ; preds = %44
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

49:                                               ; preds = %44
  %50 = extractvalue { i32, i1 } %46, 0, !nosanitize !10
  %51 = load ptr, ptr %8, align 8, !tbaa !39
  %52 = shl i32 %36, %37
  %53 = zext i32 %50 to i64
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !8
  %56 = zext i8 %55 to i32
  %57 = xor i32 %52, %56
  %58 = load i32, ptr %9, align 4, !tbaa !37
  %59 = and i32 %57, %58
  store i32 %59, ptr %5, align 8, !tbaa !72
  %60 = load ptr, ptr %10, align 8, !tbaa !41
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !54
  %64 = load ptr, ptr %11, align 8, !tbaa !40
  %65 = load i32, ptr %12, align 8, !tbaa !34
  %66 = and i32 %65, %45
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds nuw [2 x i8], ptr %64, i64 %67
  store i16 %63, ptr %68, align 2, !tbaa !54
  %69 = zext i16 %63 to i32
  %70 = trunc i32 %45 to i16
  store i16 %70, ptr %62, align 2, !tbaa !54
  %71 = icmp eq i16 %63, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %49
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %45, i32 %69), !nosanitize !10
  %74 = extractvalue { i32, i1 } %73, 0, !nosanitize !10
  %75 = extractvalue { i32, i1 } %73, 1, !nosanitize !10
  br i1 %75, label %76, label %77, !prof !48, !nosanitize !10

76:                                               ; preds = %72
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

77:                                               ; preds = %72
  %78 = load i32, ptr %13, align 8, !tbaa !33
  %79 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %78, i32 262), !nosanitize !10
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !10
  br i1 %80, label %81, label %82, !prof !48, !nosanitize !10

81:                                               ; preds = %77
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

82:                                               ; preds = %77
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !10
  %84 = icmp ugt i32 %74, %83
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %69)
  store i32 %86, ptr %14, align 8, !tbaa !70
  br label %89

87:                                               ; preds = %49, %82, %33
  %88 = load i32, ptr %14, align 8, !tbaa !70
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %88, %87 ], [ %86, %85 ]
  %91 = icmp ugt i32 %90, 2
  br i1 %91, label %92, label %257

92:                                               ; preds = %89
  %93 = trunc i32 %90 to i8
  %94 = add i8 %93, -3
  %95 = load i32, ptr %7, align 4, !tbaa !65
  %96 = load i32, ptr %19, align 8, !tbaa !79
  %97 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %96), !nosanitize !10
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !10
  br i1 %98, label %99, label %100, !prof !48, !nosanitize !10

99:                                               ; preds = %92
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

100:                                              ; preds = %92
  %101 = load i32, ptr %16, align 4, !tbaa !127
  %102 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %101, i32 1), !nosanitize !10
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !10
  br i1 %103, label %104, label %105, !prof !48, !nosanitize !10

104:                                              ; preds = %100
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

105:                                              ; preds = %100
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !10
  %107 = load ptr, ptr %15, align 8, !tbaa !47
  %108 = extractvalue { i32, i1 } %97, 0, !nosanitize !10
  %109 = trunc i32 %108 to i8
  store i32 %106, ptr %16, align 4, !tbaa !127
  %110 = zext i32 %101 to i64
  %111 = getelementptr inbounds nuw i8, ptr %107, i64 %110
  store i8 %109, ptr %111, align 1, !tbaa !8
  %112 = and i32 %108, 65535
  %113 = load i32, ptr %16, align 4, !tbaa !127
  %114 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %113, i32 1), !nosanitize !10
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !10
  br i1 %115, label %116, label %117, !prof !48, !nosanitize !10

116:                                              ; preds = %105
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

117:                                              ; preds = %105
  %118 = extractvalue { i32, i1 } %114, 0, !nosanitize !10
  %119 = load ptr, ptr %15, align 8, !tbaa !47
  %120 = lshr i32 %108, 8
  %121 = trunc i32 %120 to i8
  store i32 %118, ptr %16, align 4, !tbaa !127
  %122 = zext i32 %113 to i64
  %123 = getelementptr inbounds nuw i8, ptr %119, i64 %122
  store i8 %121, ptr %123, align 1, !tbaa !8
  %124 = load i32, ptr %16, align 4, !tbaa !127
  %125 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %124, i32 1), !nosanitize !10
  %126 = extractvalue { i32, i1 } %125, 1, !nosanitize !10
  br i1 %126, label %127, label %128, !prof !48, !nosanitize !10

127:                                              ; preds = %117
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

128:                                              ; preds = %117
  %129 = extractvalue { i32, i1 } %125, 0, !nosanitize !10
  %130 = load ptr, ptr %15, align 8, !tbaa !47
  store i32 %129, ptr %16, align 4, !tbaa !127
  %131 = zext i32 %124 to i64
  %132 = getelementptr inbounds nuw i8, ptr %130, i64 %131
  store i8 %94, ptr %132, align 1, !tbaa !8
  %133 = add nsw i32 %112, -1
  %134 = zext i32 %133 to i64
  %135 = and i32 %133, 65280
  %136 = icmp ult i32 %133, 65536
  br i1 %136, label %138, label %137, !prof !9, !nosanitize !10

137:                                              ; preds = %128
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

138:                                              ; preds = %128
  %139 = zext i8 %94 to i64
  %140 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !8
  %142 = zext i8 %141 to i64
  %143 = getelementptr [4 x i8], ptr %20, i64 %142
  %144 = load i16, ptr %143, align 4, !tbaa !8
  %145 = icmp eq i16 %144, -1
  br i1 %145, label %146, label %147, !prof !48, !nosanitize !10

146:                                              ; preds = %138
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

147:                                              ; preds = %138
  %148 = add nuw i16 %144, 1
  store i16 %148, ptr %143, align 4, !tbaa !8
  %149 = icmp eq i32 %135, 0
  %150 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %134
  %151 = lshr i32 %133, 7
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %152
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 256
  %155 = select i1 %149, ptr %150, ptr %154
  %156 = load i8, ptr %155, align 1, !tbaa !8
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %157
  %159 = load i16, ptr %158, align 4, !tbaa !8
  %160 = icmp eq i16 %159, -1
  br i1 %160, label %161, label %162, !prof !48, !nosanitize !10

161:                                              ; preds = %147
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

162:                                              ; preds = %147
  %163 = add nuw i16 %159, 1
  store i16 %163, ptr %158, align 4, !tbaa !8
  %164 = load i32, ptr %16, align 4, !tbaa !127
  %165 = load i32, ptr %18, align 8, !tbaa !49
  %166 = icmp eq i32 %164, %165
  %167 = load i32, ptr %14, align 8, !tbaa !70
  %168 = load i32, ptr %3, align 4, !tbaa !67
  %169 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %168, i32 %167), !nosanitize !10
  %170 = extractvalue { i32, i1 } %169, 1, !nosanitize !10
  br i1 %170, label %171, label %172, !prof !48, !nosanitize !10

171:                                              ; preds = %162
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

172:                                              ; preds = %162
  %173 = extractvalue { i32, i1 } %169, 0, !nosanitize !10
  store i32 %173, ptr %3, align 4, !tbaa !67
  %174 = load i32, ptr %22, align 8, !tbaa !58
  %175 = icmp ule i32 %167, %174
  %176 = icmp ugt i32 %173, 2
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %178, label %234

178:                                              ; preds = %172
  %179 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %167, i32 1), !nosanitize !10
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !10
  br i1 %180, label %181, label %182, !prof !48, !nosanitize !10

181:                                              ; preds = %178
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

182:                                              ; preds = %178
  %183 = extractvalue { i32, i1 } %179, 0, !nosanitize !10
  store i32 %183, ptr %14, align 8, !tbaa !70
  %184 = load i32, ptr %7, align 4, !tbaa !65
  br label %185

185:                                              ; preds = %229, %182
  %186 = phi i32 [ %230, %229 ], [ %183, %182 ]
  %187 = phi i32 [ %189, %229 ], [ %184, %182 ]
  %188 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 1), !nosanitize !10
  %189 = extractvalue { i32, i1 } %188, 0, !nosanitize !10
  %190 = extractvalue { i32, i1 } %188, 1, !nosanitize !10
  br i1 %190, label %191, label %192, !prof !48, !nosanitize !10

191:                                              ; preds = %185
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

192:                                              ; preds = %185
  store i32 %189, ptr %7, align 4, !tbaa !65
  %193 = load i32, ptr %5, align 8, !tbaa !72
  %194 = load i32, ptr %6, align 8, !tbaa !38
  %195 = icmp ult i32 %194, 32
  %196 = sub nuw nsw i32 31, %194
  %197 = lshr i32 %193, %196
  %198 = icmp ult i32 %197, 2
  %199 = select i1 %195, i1 %198, i1 false
  br i1 %199, label %201, label %200, !prof !9, !nosanitize !10

200:                                              ; preds = %192
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

201:                                              ; preds = %192
  %202 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %189, i32 2), !nosanitize !10
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !10
  br i1 %203, label %204, label %205, !prof !48, !nosanitize !10

204:                                              ; preds = %201
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

205:                                              ; preds = %201
  %206 = extractvalue { i32, i1 } %202, 0, !nosanitize !10
  %207 = load ptr, ptr %8, align 8, !tbaa !39
  %208 = shl i32 %193, %194
  %209 = zext i32 %206 to i64
  %210 = getelementptr inbounds nuw i8, ptr %207, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !8
  %212 = zext i8 %211 to i32
  %213 = xor i32 %208, %212
  %214 = load i32, ptr %9, align 4, !tbaa !37
  %215 = and i32 %213, %214
  store i32 %215, ptr %5, align 8, !tbaa !72
  %216 = load ptr, ptr %10, align 8, !tbaa !41
  %217 = zext i32 %215 to i64
  %218 = getelementptr inbounds nuw [2 x i8], ptr %216, i64 %217
  %219 = load i16, ptr %218, align 2, !tbaa !54
  %220 = load ptr, ptr %11, align 8, !tbaa !40
  %221 = load i32, ptr %12, align 8, !tbaa !34
  %222 = and i32 %221, %189
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds nuw [2 x i8], ptr %220, i64 %223
  store i16 %219, ptr %224, align 2, !tbaa !54
  %225 = trunc i32 %189 to i16
  store i16 %225, ptr %218, align 2, !tbaa !54
  %226 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 1), !nosanitize !10
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !10
  br i1 %227, label %228, label %229, !prof !48, !nosanitize !10

228:                                              ; preds = %205
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

229:                                              ; preds = %205
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !10
  store i32 %230, ptr %14, align 8, !tbaa !70
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %185, !llvm.loop !132

232:                                              ; preds = %229
  %233 = add nuw i32 %189, 1
  store i32 %233, ptr %7, align 4, !tbaa !65
  br i1 %166, label %323, label %312

234:                                              ; preds = %172
  %235 = load i32, ptr %7, align 4, !tbaa !65
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %235, i32 %167), !nosanitize !10
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !10
  br i1 %237, label %238, label %239, !prof !48, !nosanitize !10

238:                                              ; preds = %234
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

239:                                              ; preds = %234
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !10
  store i32 %240, ptr %7, align 4, !tbaa !65
  store i32 0, ptr %14, align 8, !tbaa !70
  %241 = load ptr, ptr %8, align 8, !tbaa !39
  %242 = zext i32 %240 to i64
  %243 = getelementptr inbounds nuw i8, ptr %241, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !8
  %245 = zext i8 %244 to i32
  store i32 %245, ptr %5, align 8, !tbaa !72
  %246 = load i32, ptr %6, align 8, !tbaa !38
  %247 = icmp ult i32 %246, 32
  %248 = sub nuw nsw i32 31, %246
  %249 = lshr i32 %245, %248
  %250 = icmp samesign ult i32 %249, 2
  %251 = select i1 %247, i1 %250, i1 false
  br i1 %251, label %253, label %252, !prof !9, !nosanitize !10

252:                                              ; preds = %239
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

253:                                              ; preds = %239
  %254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 1), !nosanitize !10
  %255 = extractvalue { i32, i1 } %254, 1, !nosanitize !10
  br i1 %255, label %256, label %313, !prof !48, !nosanitize !10

256:                                              ; preds = %253
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

257:                                              ; preds = %89
  %258 = load ptr, ptr %8, align 8, !tbaa !39
  %259 = load i32, ptr %7, align 4, !tbaa !65
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds nuw i8, ptr %258, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !8
  %263 = load i32, ptr %16, align 4, !tbaa !127
  %264 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %263, i32 1), !nosanitize !10
  %265 = extractvalue { i32, i1 } %264, 1, !nosanitize !10
  br i1 %265, label %266, label %267, !prof !48, !nosanitize !10

266:                                              ; preds = %257
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

267:                                              ; preds = %257
  %268 = extractvalue { i32, i1 } %264, 0, !nosanitize !10
  %269 = load ptr, ptr %15, align 8, !tbaa !47
  store i32 %268, ptr %16, align 4, !tbaa !127
  %270 = zext i32 %263 to i64
  %271 = getelementptr inbounds nuw i8, ptr %269, i64 %270
  store i8 0, ptr %271, align 1, !tbaa !8
  %272 = load i32, ptr %16, align 4, !tbaa !127
  %273 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %272, i32 1), !nosanitize !10
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !10
  br i1 %274, label %275, label %276, !prof !48, !nosanitize !10

275:                                              ; preds = %267
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

276:                                              ; preds = %267
  %277 = extractvalue { i32, i1 } %273, 0, !nosanitize !10
  %278 = load ptr, ptr %15, align 8, !tbaa !47
  store i32 %277, ptr %16, align 4, !tbaa !127
  %279 = zext i32 %272 to i64
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 %279
  store i8 0, ptr %280, align 1, !tbaa !8
  %281 = load i32, ptr %16, align 4, !tbaa !127
  %282 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %281, i32 1), !nosanitize !10
  %283 = extractvalue { i32, i1 } %282, 1, !nosanitize !10
  br i1 %283, label %284, label %285, !prof !48, !nosanitize !10

284:                                              ; preds = %276
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

285:                                              ; preds = %276
  %286 = extractvalue { i32, i1 } %282, 0, !nosanitize !10
  %287 = load ptr, ptr %15, align 8, !tbaa !47
  store i32 %286, ptr %16, align 4, !tbaa !127
  %288 = zext i32 %281 to i64
  %289 = getelementptr inbounds nuw i8, ptr %287, i64 %288
  store i8 %262, ptr %289, align 1, !tbaa !8
  %290 = zext i8 %262 to i64
  %291 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %290
  %292 = load i16, ptr %291, align 4, !tbaa !8
  %293 = icmp eq i16 %292, -1
  br i1 %293, label %294, label %295, !prof !48, !nosanitize !10

294:                                              ; preds = %285
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

295:                                              ; preds = %285
  %296 = add nuw i16 %292, 1
  store i16 %296, ptr %291, align 4, !tbaa !8
  %297 = load i32, ptr %16, align 4, !tbaa !127
  %298 = load i32, ptr %18, align 8, !tbaa !49
  %299 = icmp eq i32 %297, %298
  %300 = load i32, ptr %3, align 4, !tbaa !67
  %301 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %300, i32 1), !nosanitize !10
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !10
  br i1 %302, label %303, label %304, !prof !48, !nosanitize !10

303:                                              ; preds = %331, %295, %468, %400
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

304:                                              ; preds = %295
  %305 = extractvalue { i32, i1 } %301, 0, !nosanitize !10
  store i32 %305, ptr %3, align 4, !tbaa !67
  %306 = load i32, ptr %7, align 4, !tbaa !65
  %307 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %306, i32 1), !nosanitize !10
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !10
  br i1 %308, label %309, label %310, !prof !48, !nosanitize !10

309:                                              ; preds = %304
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

310:                                              ; preds = %304
  %311 = extractvalue { i32, i1 } %307, 0, !nosanitize !10
  store i32 %311, ptr %7, align 4, !tbaa !65
  br i1 %299, label %323, label %312

312:                                              ; preds = %310, %232, %383, %313
  br label %24

313:                                              ; preds = %253
  %314 = extractvalue { i32, i1 } %254, 0, !nosanitize !10
  %315 = shl i32 %245, %246
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds nuw i8, ptr %241, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !8
  %319 = zext i8 %318 to i32
  %320 = xor i32 %315, %319
  %321 = load i32, ptr %9, align 4, !tbaa !37
  %322 = and i32 %320, %321
  store i32 %322, ptr %5, align 8, !tbaa !72
  br i1 %166, label %323, label %312

323:                                              ; preds = %310, %232, %313
  %324 = phi i32 [ %311, %310 ], [ %233, %232 ], [ %240, %313 ]
  %325 = load i64, ptr %23, align 8, !tbaa !66
  %326 = icmp sgt i64 %325, -1
  br i1 %326, label %327, label %331

327:                                              ; preds = %323
  %328 = load ptr, ptr %8, align 8, !tbaa !39
  %329 = and i64 %325, 4294967295
  %330 = getelementptr inbounds nuw i8, ptr %328, i64 %329
  br label %331

331:                                              ; preds = %323, %327
  %332 = phi ptr [ %330, %327 ], [ null, %323 ]
  %333 = zext i32 %324 to i64
  %334 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %333, i64 %325), !nosanitize !10
  %335 = extractvalue { i64, i1 } %334, 1, !nosanitize !10
  br i1 %335, label %303, label %336, !prof !48, !nosanitize !10

336:                                              ; preds = %331
  %337 = extractvalue { i64, i1 } %334, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %332, i64 noundef %337, i32 noundef 0) #13
  %338 = load i32, ptr %7, align 4, !tbaa !65
  %339 = zext i32 %338 to i64
  store i64 %339, ptr %23, align 8, !tbaa !66
  %340 = load ptr, ptr %0, align 8, !tbaa !21
  %341 = getelementptr inbounds nuw i8, ptr %340, i64 56
  %342 = load ptr, ptr %341, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %342) #13
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 40
  %344 = load i64, ptr %343, align 8, !tbaa !90
  %345 = getelementptr inbounds nuw i8, ptr %340, i64 32
  %346 = load i32, ptr %345, align 8, !tbaa !101
  %347 = zext i32 %346 to i64
  %348 = tail call i64 @llvm.umin.i64(i64 %344, i64 %347)
  %349 = trunc nuw i64 %348 to i32
  %350 = icmp eq i64 %348, 0
  br i1 %350, label %383, label %351

351:                                              ; preds = %336
  %352 = getelementptr inbounds nuw i8, ptr %340, i64 24
  %353 = load ptr, ptr %352, align 8, !tbaa !100
  %354 = getelementptr inbounds nuw i8, ptr %342, i64 32
  %355 = load ptr, ptr %354, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %353, ptr align 1 %355, i64 %348, i1 false)
  %356 = load ptr, ptr %352, align 8, !tbaa !100
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 %348
  store ptr %357, ptr %352, align 8, !tbaa !100
  %358 = load ptr, ptr %354, align 8, !tbaa !91
  %359 = getelementptr inbounds nuw i8, ptr %358, i64 %348
  store ptr %359, ptr %354, align 8, !tbaa !91
  %360 = getelementptr inbounds nuw i8, ptr %340, i64 40
  %361 = load i64, ptr %360, align 8, !tbaa !102
  %362 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %361, i64 %348), !nosanitize !10
  %363 = extractvalue { i64, i1 } %362, 1, !nosanitize !10
  br i1 %363, label %364, label %365, !prof !48, !nosanitize !10

364:                                              ; preds = %351
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

365:                                              ; preds = %351
  %366 = extractvalue { i64, i1 } %362, 0, !nosanitize !10
  store i64 %366, ptr %360, align 8, !tbaa !102
  %367 = load i32, ptr %345, align 8, !tbaa !101
  %368 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %367, i32 %349), !nosanitize !10
  %369 = extractvalue { i32, i1 } %368, 1, !nosanitize !10
  br i1 %369, label %370, label %371, !prof !48, !nosanitize !10

370:                                              ; preds = %365
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

371:                                              ; preds = %365
  %372 = extractvalue { i32, i1 } %368, 0, !nosanitize !10
  store i32 %372, ptr %345, align 8, !tbaa !101
  %373 = load i64, ptr %343, align 8, !tbaa !90
  %374 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %373, i64 %348), !nosanitize !10
  %375 = extractvalue { i64, i1 } %374, 1, !nosanitize !10
  br i1 %375, label %376, label %377, !prof !48, !nosanitize !10

376:                                              ; preds = %371
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

377:                                              ; preds = %371
  %378 = extractvalue { i64, i1 } %374, 0, !nosanitize !10
  store i64 %378, ptr %343, align 8, !tbaa !90
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = getelementptr inbounds nuw i8, ptr %342, i64 16
  %382 = load ptr, ptr %381, align 8, !tbaa !44
  store ptr %382, ptr %354, align 8, !tbaa !91
  br label %383

383:                                              ; preds = %336, %377, %380
  %384 = load ptr, ptr %0, align 8, !tbaa !21
  %385 = getelementptr inbounds nuw i8, ptr %384, i64 32
  %386 = load i32, ptr %385, align 8, !tbaa !101
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %526, label %312

388:                                              ; preds = %31
  %389 = load i32, ptr %7, align 4, !tbaa !65
  %390 = tail call i32 @llvm.umin.i32(i32 %389, i32 2)
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %390, ptr %391, align 4, !tbaa !68
  %392 = icmp eq i32 %1, 4
  br i1 %392, label %393, label %458

393:                                              ; preds = %388
  %394 = load i64, ptr %23, align 8, !tbaa !66
  %395 = icmp sgt i64 %394, -1
  br i1 %395, label %396, label %400

396:                                              ; preds = %393
  %397 = load ptr, ptr %8, align 8, !tbaa !39
  %398 = and i64 %394, 4294967295
  %399 = getelementptr inbounds nuw i8, ptr %397, i64 %398
  br label %400

400:                                              ; preds = %393, %396
  %401 = phi ptr [ %399, %396 ], [ null, %393 ]
  %402 = zext i32 %389 to i64
  %403 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %402, i64 %394), !nosanitize !10
  %404 = extractvalue { i64, i1 } %403, 1, !nosanitize !10
  br i1 %404, label %303, label %405, !prof !48, !nosanitize !10

405:                                              ; preds = %400
  %406 = extractvalue { i64, i1 } %403, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %401, i64 noundef %406, i32 noundef 1) #13
  %407 = load i32, ptr %7, align 4, !tbaa !65
  %408 = zext i32 %407 to i64
  store i64 %408, ptr %23, align 8, !tbaa !66
  %409 = load ptr, ptr %0, align 8, !tbaa !21
  %410 = getelementptr inbounds nuw i8, ptr %409, i64 56
  %411 = load ptr, ptr %410, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %411) #13
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 40
  %413 = load i64, ptr %412, align 8, !tbaa !90
  %414 = getelementptr inbounds nuw i8, ptr %409, i64 32
  %415 = load i32, ptr %414, align 8, !tbaa !101
  %416 = zext i32 %415 to i64
  %417 = tail call i64 @llvm.umin.i64(i64 %413, i64 %416)
  %418 = trunc nuw i64 %417 to i32
  %419 = icmp eq i64 %417, 0
  br i1 %419, label %452, label %420

420:                                              ; preds = %405
  %421 = getelementptr inbounds nuw i8, ptr %409, i64 24
  %422 = load ptr, ptr %421, align 8, !tbaa !100
  %423 = getelementptr inbounds nuw i8, ptr %411, i64 32
  %424 = load ptr, ptr %423, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %422, ptr align 1 %424, i64 %417, i1 false)
  %425 = load ptr, ptr %421, align 8, !tbaa !100
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 %417
  store ptr %426, ptr %421, align 8, !tbaa !100
  %427 = load ptr, ptr %423, align 8, !tbaa !91
  %428 = getelementptr inbounds nuw i8, ptr %427, i64 %417
  store ptr %428, ptr %423, align 8, !tbaa !91
  %429 = getelementptr inbounds nuw i8, ptr %409, i64 40
  %430 = load i64, ptr %429, align 8, !tbaa !102
  %431 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %430, i64 %417), !nosanitize !10
  %432 = extractvalue { i64, i1 } %431, 1, !nosanitize !10
  br i1 %432, label %433, label %434, !prof !48, !nosanitize !10

433:                                              ; preds = %420
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

434:                                              ; preds = %420
  %435 = extractvalue { i64, i1 } %431, 0, !nosanitize !10
  store i64 %435, ptr %429, align 8, !tbaa !102
  %436 = load i32, ptr %414, align 8, !tbaa !101
  %437 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %436, i32 %418), !nosanitize !10
  %438 = extractvalue { i32, i1 } %437, 1, !nosanitize !10
  br i1 %438, label %439, label %440, !prof !48, !nosanitize !10

439:                                              ; preds = %434
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

440:                                              ; preds = %434
  %441 = extractvalue { i32, i1 } %437, 0, !nosanitize !10
  store i32 %441, ptr %414, align 8, !tbaa !101
  %442 = load i64, ptr %412, align 8, !tbaa !90
  %443 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %442, i64 %417), !nosanitize !10
  %444 = extractvalue { i64, i1 } %443, 1, !nosanitize !10
  br i1 %444, label %445, label %446, !prof !48, !nosanitize !10

445:                                              ; preds = %440
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

446:                                              ; preds = %440
  %447 = extractvalue { i64, i1 } %443, 0, !nosanitize !10
  store i64 %447, ptr %412, align 8, !tbaa !90
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %446
  %450 = getelementptr inbounds nuw i8, ptr %411, i64 16
  %451 = load ptr, ptr %450, align 8, !tbaa !44
  store ptr %451, ptr %423, align 8, !tbaa !91
  br label %452

452:                                              ; preds = %405, %446, %449
  %453 = load ptr, ptr %0, align 8, !tbaa !21
  %454 = getelementptr inbounds nuw i8, ptr %453, i64 32
  %455 = load i32, ptr %454, align 8, !tbaa !101
  %456 = icmp eq i32 %455, 0
  %457 = select i1 %456, i32 2, i32 3
  br label %526

458:                                              ; preds = %388
  %459 = load i32, ptr %16, align 4, !tbaa !127
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %525, label %461

461:                                              ; preds = %458
  %462 = load i64, ptr %23, align 8, !tbaa !66
  %463 = icmp sgt i64 %462, -1
  br i1 %463, label %464, label %468

464:                                              ; preds = %461
  %465 = load ptr, ptr %8, align 8, !tbaa !39
  %466 = and i64 %462, 4294967295
  %467 = getelementptr inbounds nuw i8, ptr %465, i64 %466
  br label %468

468:                                              ; preds = %461, %464
  %469 = phi ptr [ %467, %464 ], [ null, %461 ]
  %470 = zext i32 %389 to i64
  %471 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %470, i64 %462), !nosanitize !10
  %472 = extractvalue { i64, i1 } %471, 1, !nosanitize !10
  br i1 %472, label %303, label %473, !prof !48, !nosanitize !10

473:                                              ; preds = %468
  %474 = extractvalue { i64, i1 } %471, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %469, i64 noundef %474, i32 noundef 0) #13
  %475 = load i32, ptr %7, align 4, !tbaa !65
  %476 = zext i32 %475 to i64
  store i64 %476, ptr %23, align 8, !tbaa !66
  %477 = load ptr, ptr %0, align 8, !tbaa !21
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 56
  %479 = load ptr, ptr %478, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %479) #13
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 40
  %481 = load i64, ptr %480, align 8, !tbaa !90
  %482 = getelementptr inbounds nuw i8, ptr %477, i64 32
  %483 = load i32, ptr %482, align 8, !tbaa !101
  %484 = zext i32 %483 to i64
  %485 = tail call i64 @llvm.umin.i64(i64 %481, i64 %484)
  %486 = trunc nuw i64 %485 to i32
  %487 = icmp eq i64 %485, 0
  br i1 %487, label %520, label %488

488:                                              ; preds = %473
  %489 = getelementptr inbounds nuw i8, ptr %477, i64 24
  %490 = load ptr, ptr %489, align 8, !tbaa !100
  %491 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %492 = load ptr, ptr %491, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %490, ptr align 1 %492, i64 %485, i1 false)
  %493 = load ptr, ptr %489, align 8, !tbaa !100
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 %485
  store ptr %494, ptr %489, align 8, !tbaa !100
  %495 = load ptr, ptr %491, align 8, !tbaa !91
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 %485
  store ptr %496, ptr %491, align 8, !tbaa !91
  %497 = getelementptr inbounds nuw i8, ptr %477, i64 40
  %498 = load i64, ptr %497, align 8, !tbaa !102
  %499 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %498, i64 %485), !nosanitize !10
  %500 = extractvalue { i64, i1 } %499, 1, !nosanitize !10
  br i1 %500, label %501, label %502, !prof !48, !nosanitize !10

501:                                              ; preds = %488
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

502:                                              ; preds = %488
  %503 = extractvalue { i64, i1 } %499, 0, !nosanitize !10
  store i64 %503, ptr %497, align 8, !tbaa !102
  %504 = load i32, ptr %482, align 8, !tbaa !101
  %505 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %504, i32 %486), !nosanitize !10
  %506 = extractvalue { i32, i1 } %505, 1, !nosanitize !10
  br i1 %506, label %507, label %508, !prof !48, !nosanitize !10

507:                                              ; preds = %502
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

508:                                              ; preds = %502
  %509 = extractvalue { i32, i1 } %505, 0, !nosanitize !10
  store i32 %509, ptr %482, align 8, !tbaa !101
  %510 = load i64, ptr %480, align 8, !tbaa !90
  %511 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %510, i64 %485), !nosanitize !10
  %512 = extractvalue { i64, i1 } %511, 1, !nosanitize !10
  br i1 %512, label %513, label %514, !prof !48, !nosanitize !10

513:                                              ; preds = %508
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

514:                                              ; preds = %508
  %515 = extractvalue { i64, i1 } %511, 0, !nosanitize !10
  store i64 %515, ptr %480, align 8, !tbaa !90
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %514
  %518 = getelementptr inbounds nuw i8, ptr %479, i64 16
  %519 = load ptr, ptr %518, align 8, !tbaa !44
  store ptr %519, ptr %491, align 8, !tbaa !91
  br label %520

520:                                              ; preds = %473, %514, %517
  %521 = load ptr, ptr %0, align 8, !tbaa !21
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 32
  %523 = load i32, ptr %522, align 8, !tbaa !101
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %526, label %525

525:                                              ; preds = %458, %520
  br label %526

526:                                              ; preds = %383, %27, %520, %452, %525
  %527 = phi i32 [ 1, %525 ], [ %457, %452 ], [ 0, %520 ], [ 0, %27 ], [ 0, %383 ]
  ret i32 %527
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
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %22 = getelementptr i8, ptr %0, i64 1240
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %28

28:                                               ; preds = %289, %2
  %29 = load i32, ptr %3, align 4, !tbaa !67
  %30 = icmp ult i32 %29, 262
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %32 = load i32, ptr %3, align 4, !tbaa !67
  %33 = icmp ult i32 %32, 262
  %34 = and i1 %4, %33
  br i1 %34, label %681, label %35

35:                                               ; preds = %31
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %495, label %37

37:                                               ; preds = %35
  %38 = icmp ugt i32 %32, 2
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %5, align 8, !tbaa !70
  store i32 %40, ptr %6, align 8, !tbaa !69
  %41 = load i32, ptr %7, align 8, !tbaa !79
  store i32 %41, ptr %8, align 4, !tbaa !133
  store i32 2, ptr %5, align 8, !tbaa !70
  br label %118

42:                                               ; preds = %28, %37
  %43 = load i32, ptr %9, align 8, !tbaa !72
  %44 = load i32, ptr %10, align 8, !tbaa !38
  %45 = icmp ult i32 %44, 32
  %46 = sub nuw nsw i32 31, %44
  %47 = lshr i32 %43, %46
  %48 = icmp ult i32 %47, 2
  %49 = select i1 %45, i1 %48, i1 false
  br i1 %49, label %51, label %50, !prof !9, !nosanitize !10

50:                                               ; preds = %42
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

51:                                               ; preds = %42
  %52 = load i32, ptr %11, align 4, !tbaa !65
  %53 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %52, i32 2), !nosanitize !10
  %54 = extractvalue { i32, i1 } %53, 1, !nosanitize !10
  br i1 %54, label %55, label %56, !prof !48, !nosanitize !10

55:                                               ; preds = %51
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

56:                                               ; preds = %51
  %57 = extractvalue { i32, i1 } %53, 0, !nosanitize !10
  %58 = load ptr, ptr %12, align 8, !tbaa !39
  %59 = shl i32 %43, %44
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !8
  %63 = zext i8 %62 to i32
  %64 = xor i32 %59, %63
  %65 = load i32, ptr %13, align 4, !tbaa !37
  %66 = and i32 %64, %65
  store i32 %66, ptr %9, align 8, !tbaa !72
  %67 = load ptr, ptr %14, align 8, !tbaa !41
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds nuw [2 x i8], ptr %67, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !54
  %71 = load ptr, ptr %15, align 8, !tbaa !40
  %72 = load i32, ptr %16, align 8, !tbaa !34
  %73 = and i32 %72, %52
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds nuw [2 x i8], ptr %71, i64 %74
  store i16 %70, ptr %75, align 2, !tbaa !54
  %76 = zext i16 %70 to i32
  %77 = trunc i32 %52 to i16
  store i16 %77, ptr %69, align 2, !tbaa !54
  %78 = load i32, ptr %5, align 8, !tbaa !70
  store i32 %78, ptr %6, align 8, !tbaa !69
  %79 = load i32, ptr %7, align 8, !tbaa !79
  store i32 %79, ptr %8, align 4, !tbaa !133
  store i32 2, ptr %5, align 8, !tbaa !70
  %80 = icmp eq i16 %70, 0
  br i1 %80, label %118, label %81

81:                                               ; preds = %56
  %82 = load i32, ptr %17, align 8, !tbaa !58
  %83 = icmp ult i32 %78, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %81
  %85 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %52, i32 %76), !nosanitize !10
  %86 = extractvalue { i32, i1 } %85, 0, !nosanitize !10
  %87 = extractvalue { i32, i1 } %85, 1, !nosanitize !10
  br i1 %87, label %88, label %89, !prof !48, !nosanitize !10

88:                                               ; preds = %84
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

89:                                               ; preds = %84
  %90 = load i32, ptr %18, align 8, !tbaa !33
  %91 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %90, i32 262), !nosanitize !10
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !10
  br i1 %92, label %93, label %94, !prof !48, !nosanitize !10

93:                                               ; preds = %89
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

94:                                               ; preds = %89
  %95 = extractvalue { i32, i1 } %91, 0, !nosanitize !10
  %96 = icmp ugt i32 %86, %95
  br i1 %96, label %115, label %97

97:                                               ; preds = %94
  %98 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %76)
  store i32 %98, ptr %5, align 8, !tbaa !70
  %99 = icmp ult i32 %98, 6
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = load i32, ptr %19, align 8, !tbaa !51
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = icmp eq i32 %98, 3
  br i1 %104, label %105, label %115

105:                                              ; preds = %103
  %106 = load i32, ptr %11, align 4, !tbaa !65
  %107 = load i32, ptr %7, align 8, !tbaa !79
  %108 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %106, i32 %107), !nosanitize !10
  %109 = extractvalue { i32, i1 } %108, 1, !nosanitize !10
  br i1 %109, label %110, label %111, !prof !48, !nosanitize !10

110:                                              ; preds = %105
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

111:                                              ; preds = %105
  %112 = extractvalue { i32, i1 } %108, 0, !nosanitize !10
  %113 = icmp ugt i32 %112, 4096
  br i1 %113, label %114, label %115

114:                                              ; preds = %100, %111
  store i32 2, ptr %5, align 8, !tbaa !70
  br label %115

115:                                              ; preds = %81, %94, %114, %111, %103, %97
  %116 = phi i32 [ 2, %81 ], [ 2, %94 ], [ 2, %114 ], [ 3, %111 ], [ %98, %103 ], [ %98, %97 ]
  %117 = load i32, ptr %6, align 8, !tbaa !69
  br label %118

118:                                              ; preds = %115, %39, %56
  %119 = phi i32 [ %117, %115 ], [ %40, %39 ], [ %78, %56 ]
  %120 = phi i32 [ %116, %115 ], [ 2, %39 ], [ 2, %56 ]
  %121 = icmp ult i32 %119, 3
  %122 = icmp ugt i32 %120, %119
  %123 = or i1 %121, %122
  br i1 %123, label %354, label %124

124:                                              ; preds = %118
  %125 = load i32, ptr %11, align 4, !tbaa !65
  %126 = load i32, ptr %3, align 4, !tbaa !67
  %127 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %125, i32 %126), !nosanitize !10
  %128 = extractvalue { i32, i1 } %127, 1, !nosanitize !10
  br i1 %128, label %129, label %130, !prof !48, !nosanitize !10

129:                                              ; preds = %124
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

130:                                              ; preds = %124
  %131 = extractvalue { i32, i1 } %127, 0, !nosanitize !10
  %132 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %131, i32 3), !nosanitize !10
  %133 = extractvalue { i32, i1 } %132, 0, !nosanitize !10
  %134 = extractvalue { i32, i1 } %132, 1, !nosanitize !10
  br i1 %134, label %135, label %136, !prof !48, !nosanitize !10

135:                                              ; preds = %130
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

136:                                              ; preds = %130
  %137 = trunc i32 %119 to i8
  %138 = add i8 %137, -3
  %139 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %125, i32 1), !nosanitize !10
  %140 = extractvalue { i32, i1 } %139, 1, !nosanitize !10
  br i1 %140, label %141, label %142, !prof !48, !nosanitize !10

141:                                              ; preds = %136
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

142:                                              ; preds = %136
  %143 = extractvalue { i32, i1 } %139, 0, !nosanitize !10
  %144 = load i32, ptr %8, align 4, !tbaa !133
  %145 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %143, i32 %144), !nosanitize !10
  %146 = extractvalue { i32, i1 } %145, 1, !nosanitize !10
  br i1 %146, label %147, label %148, !prof !48, !nosanitize !10

147:                                              ; preds = %142
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

148:                                              ; preds = %142
  %149 = load i32, ptr %21, align 4, !tbaa !127
  %150 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %149, i32 1), !nosanitize !10
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !10
  br i1 %151, label %152, label %153, !prof !48, !nosanitize !10

152:                                              ; preds = %148
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

153:                                              ; preds = %148
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !10
  %155 = load ptr, ptr %20, align 8, !tbaa !47
  %156 = extractvalue { i32, i1 } %145, 0, !nosanitize !10
  %157 = trunc i32 %156 to i8
  store i32 %154, ptr %21, align 4, !tbaa !127
  %158 = zext i32 %149 to i64
  %159 = getelementptr inbounds nuw i8, ptr %155, i64 %158
  store i8 %157, ptr %159, align 1, !tbaa !8
  %160 = and i32 %156, 65535
  %161 = load i32, ptr %21, align 4, !tbaa !127
  %162 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %161, i32 1), !nosanitize !10
  %163 = extractvalue { i32, i1 } %162, 1, !nosanitize !10
  br i1 %163, label %164, label %165, !prof !48, !nosanitize !10

164:                                              ; preds = %153
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

165:                                              ; preds = %153
  %166 = extractvalue { i32, i1 } %162, 0, !nosanitize !10
  %167 = load ptr, ptr %20, align 8, !tbaa !47
  %168 = lshr i32 %156, 8
  %169 = trunc i32 %168 to i8
  store i32 %166, ptr %21, align 4, !tbaa !127
  %170 = zext i32 %161 to i64
  %171 = getelementptr inbounds nuw i8, ptr %167, i64 %170
  store i8 %169, ptr %171, align 1, !tbaa !8
  %172 = load i32, ptr %21, align 4, !tbaa !127
  %173 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %172, i32 1), !nosanitize !10
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !10
  br i1 %174, label %175, label %176, !prof !48, !nosanitize !10

175:                                              ; preds = %165
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

176:                                              ; preds = %165
  %177 = extractvalue { i32, i1 } %173, 0, !nosanitize !10
  %178 = load ptr, ptr %20, align 8, !tbaa !47
  store i32 %177, ptr %21, align 4, !tbaa !127
  %179 = zext i32 %172 to i64
  %180 = getelementptr inbounds nuw i8, ptr %178, i64 %179
  store i8 %138, ptr %180, align 1, !tbaa !8
  %181 = add nsw i32 %160, -1
  %182 = zext i32 %181 to i64
  %183 = and i32 %181, 65280
  %184 = icmp ult i32 %181, 65536
  br i1 %184, label %186, label %185, !prof !9, !nosanitize !10

185:                                              ; preds = %176
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

186:                                              ; preds = %176
  %187 = zext i8 %138 to i64
  %188 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !8
  %190 = zext i8 %189 to i64
  %191 = getelementptr [4 x i8], ptr %22, i64 %190
  %192 = load i16, ptr %191, align 4, !tbaa !8
  %193 = icmp eq i16 %192, -1
  br i1 %193, label %194, label %195, !prof !48, !nosanitize !10

194:                                              ; preds = %186
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

195:                                              ; preds = %186
  %196 = add nuw i16 %192, 1
  store i16 %196, ptr %191, align 4, !tbaa !8
  %197 = icmp eq i32 %183, 0
  %198 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %182
  %199 = lshr i32 %181, 7
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %200
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 256
  %203 = select i1 %197, ptr %198, ptr %202
  %204 = load i8, ptr %203, align 1, !tbaa !8
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %205
  %207 = load i16, ptr %206, align 4, !tbaa !8
  %208 = icmp eq i16 %207, -1
  br i1 %208, label %209, label %210, !prof !48, !nosanitize !10

209:                                              ; preds = %195
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

210:                                              ; preds = %195
  %211 = add nuw i16 %207, 1
  store i16 %211, ptr %206, align 4, !tbaa !8
  %212 = load i32, ptr %21, align 4, !tbaa !127
  %213 = load i32, ptr %24, align 8, !tbaa !49
  %214 = icmp eq i32 %212, %213
  %215 = load i32, ptr %6, align 8, !tbaa !69
  %216 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %215, i32 1), !nosanitize !10
  %217 = extractvalue { i32, i1 } %216, 1, !nosanitize !10
  br i1 %217, label %218, label %219, !prof !48, !nosanitize !10

218:                                              ; preds = %210
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

219:                                              ; preds = %210
  %220 = extractvalue { i32, i1 } %216, 0, !nosanitize !10
  %221 = load i32, ptr %3, align 4, !tbaa !67
  %222 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %221, i32 %220), !nosanitize !10
  %223 = extractvalue { i32, i1 } %222, 1, !nosanitize !10
  br i1 %223, label %224, label %225, !prof !48, !nosanitize !10

224:                                              ; preds = %219
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

225:                                              ; preds = %219
  %226 = extractvalue { i32, i1 } %222, 0, !nosanitize !10
  store i32 %226, ptr %3, align 4, !tbaa !67
  %227 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %215, i32 2), !nosanitize !10
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !10
  br i1 %228, label %229, label %230, !prof !48, !nosanitize !10

229:                                              ; preds = %225
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

230:                                              ; preds = %225
  %231 = extractvalue { i32, i1 } %227, 0, !nosanitize !10
  store i32 %231, ptr %6, align 8, !tbaa !69
  %232 = load i32, ptr %11, align 4, !tbaa !65
  br label %233

233:                                              ; preds = %280, %230
  %234 = phi i32 [ %281, %280 ], [ %231, %230 ]
  %235 = phi i32 [ %237, %280 ], [ %232, %230 ]
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %235, i32 1), !nosanitize !10
  %237 = extractvalue { i32, i1 } %236, 0, !nosanitize !10
  %238 = extractvalue { i32, i1 } %236, 1, !nosanitize !10
  br i1 %238, label %239, label %240, !prof !48, !nosanitize !10

239:                                              ; preds = %233
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

240:                                              ; preds = %233
  store i32 %237, ptr %11, align 4, !tbaa !65
  %241 = icmp ugt i32 %237, %133
  br i1 %241, label %276, label %242

242:                                              ; preds = %240
  %243 = load i32, ptr %9, align 8, !tbaa !72
  %244 = load i32, ptr %10, align 8, !tbaa !38
  %245 = icmp ult i32 %244, 32
  %246 = sub nuw nsw i32 31, %244
  %247 = lshr i32 %243, %246
  %248 = icmp ult i32 %247, 2
  %249 = select i1 %245, i1 %248, i1 false
  br i1 %249, label %251, label %250, !prof !9, !nosanitize !10

250:                                              ; preds = %242
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 20) #12, !nosanitize !10
  unreachable, !nosanitize !10

251:                                              ; preds = %242
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 2), !nosanitize !10
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !10
  br i1 %253, label %254, label %255, !prof !48, !nosanitize !10

254:                                              ; preds = %251
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

255:                                              ; preds = %251
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !10
  %257 = load ptr, ptr %12, align 8, !tbaa !39
  %258 = shl i32 %243, %244
  %259 = zext i32 %256 to i64
  %260 = getelementptr inbounds nuw i8, ptr %257, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !8
  %262 = zext i8 %261 to i32
  %263 = xor i32 %258, %262
  %264 = load i32, ptr %13, align 4, !tbaa !37
  %265 = and i32 %263, %264
  store i32 %265, ptr %9, align 8, !tbaa !72
  %266 = load ptr, ptr %14, align 8, !tbaa !41
  %267 = zext i32 %265 to i64
  %268 = getelementptr inbounds nuw [2 x i8], ptr %266, i64 %267
  %269 = load i16, ptr %268, align 2, !tbaa !54
  %270 = load ptr, ptr %15, align 8, !tbaa !40
  %271 = load i32, ptr %16, align 8, !tbaa !34
  %272 = and i32 %271, %237
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds nuw [2 x i8], ptr %270, i64 %273
  store i16 %269, ptr %274, align 2, !tbaa !54
  %275 = trunc i32 %237 to i16
  store i16 %275, ptr %268, align 2, !tbaa !54
  br label %276

276:                                              ; preds = %240, %255
  %277 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %234, i32 1), !nosanitize !10
  %278 = extractvalue { i32, i1 } %277, 1, !nosanitize !10
  br i1 %278, label %279, label %280, !prof !48, !nosanitize !10

279:                                              ; preds = %297, %276
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

280:                                              ; preds = %276
  %281 = extractvalue { i32, i1 } %277, 0, !nosanitize !10
  store i32 %281, ptr %6, align 8, !tbaa !69
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %233, !llvm.loop !134

283:                                              ; preds = %280
  store i32 0, ptr %25, align 8, !tbaa !71
  store i32 2, ptr %5, align 8, !tbaa !70
  %284 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 1), !nosanitize !10
  %285 = extractvalue { i32, i1 } %284, 1, !nosanitize !10
  br i1 %285, label %286, label %287, !prof !48, !nosanitize !10

286:                                              ; preds = %283
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

287:                                              ; preds = %283
  %288 = extractvalue { i32, i1 } %284, 0, !nosanitize !10
  store i32 %288, ptr %11, align 4, !tbaa !65
  br i1 %214, label %290, label %289

289:                                              ; preds = %287, %349, %493, %476
  br label %28

290:                                              ; preds = %287
  %291 = load i64, ptr %26, align 8, !tbaa !66
  %292 = icmp sgt i64 %291, -1
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = load ptr, ptr %12, align 8, !tbaa !39
  %295 = and i64 %291, 4294967295
  %296 = getelementptr inbounds nuw i8, ptr %294, i64 %295
  br label %297

297:                                              ; preds = %290, %293
  %298 = phi ptr [ %296, %293 ], [ null, %290 ]
  %299 = zext i32 %288 to i64
  %300 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %299, i64 %291), !nosanitize !10
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !10
  br i1 %301, label %279, label %302, !prof !48, !nosanitize !10

302:                                              ; preds = %297
  %303 = extractvalue { i64, i1 } %300, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %298, i64 noundef %303, i32 noundef 0) #13
  %304 = load i32, ptr %11, align 4, !tbaa !65
  %305 = zext i32 %304 to i64
  store i64 %305, ptr %26, align 8, !tbaa !66
  %306 = load ptr, ptr %0, align 8, !tbaa !21
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 56
  %308 = load ptr, ptr %307, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %308) #13
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 40
  %310 = load i64, ptr %309, align 8, !tbaa !90
  %311 = getelementptr inbounds nuw i8, ptr %306, i64 32
  %312 = load i32, ptr %311, align 8, !tbaa !101
  %313 = zext i32 %312 to i64
  %314 = tail call i64 @llvm.umin.i64(i64 %310, i64 %313)
  %315 = trunc nuw i64 %314 to i32
  %316 = icmp eq i64 %314, 0
  br i1 %316, label %349, label %317

317:                                              ; preds = %302
  %318 = getelementptr inbounds nuw i8, ptr %306, i64 24
  %319 = load ptr, ptr %318, align 8, !tbaa !100
  %320 = getelementptr inbounds nuw i8, ptr %308, i64 32
  %321 = load ptr, ptr %320, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %319, ptr align 1 %321, i64 %314, i1 false)
  %322 = load ptr, ptr %318, align 8, !tbaa !100
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 %314
  store ptr %323, ptr %318, align 8, !tbaa !100
  %324 = load ptr, ptr %320, align 8, !tbaa !91
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 %314
  store ptr %325, ptr %320, align 8, !tbaa !91
  %326 = getelementptr inbounds nuw i8, ptr %306, i64 40
  %327 = load i64, ptr %326, align 8, !tbaa !102
  %328 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %327, i64 %314), !nosanitize !10
  %329 = extractvalue { i64, i1 } %328, 1, !nosanitize !10
  br i1 %329, label %330, label %331, !prof !48, !nosanitize !10

330:                                              ; preds = %317
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

331:                                              ; preds = %317
  %332 = extractvalue { i64, i1 } %328, 0, !nosanitize !10
  store i64 %332, ptr %326, align 8, !tbaa !102
  %333 = load i32, ptr %311, align 8, !tbaa !101
  %334 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %333, i32 %315), !nosanitize !10
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !10
  br i1 %335, label %336, label %337, !prof !48, !nosanitize !10

336:                                              ; preds = %331
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

337:                                              ; preds = %331
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !10
  store i32 %338, ptr %311, align 8, !tbaa !101
  %339 = load i64, ptr %309, align 8, !tbaa !90
  %340 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %339, i64 %314), !nosanitize !10
  %341 = extractvalue { i64, i1 } %340, 1, !nosanitize !10
  br i1 %341, label %342, label %343, !prof !48, !nosanitize !10

342:                                              ; preds = %337
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

343:                                              ; preds = %337
  %344 = extractvalue { i64, i1 } %340, 0, !nosanitize !10
  store i64 %344, ptr %309, align 8, !tbaa !90
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = getelementptr inbounds nuw i8, ptr %308, i64 16
  %348 = load ptr, ptr %347, align 8, !tbaa !44
  store ptr %348, ptr %320, align 8, !tbaa !91
  br label %349

349:                                              ; preds = %302, %343, %346
  %350 = load ptr, ptr %0, align 8, !tbaa !21
  %351 = getelementptr inbounds nuw i8, ptr %350, i64 32
  %352 = load i32, ptr %351, align 8, !tbaa !101
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %681, label %289

354:                                              ; preds = %118
  %355 = load i32, ptr %25, align 8, !tbaa !71
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %482, label %357

357:                                              ; preds = %354
  %358 = load i32, ptr %11, align 4, !tbaa !65
  %359 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %358, i32 1), !nosanitize !10
  %360 = extractvalue { i32, i1 } %359, 1, !nosanitize !10
  br i1 %360, label %361, label %362, !prof !48, !nosanitize !10

361:                                              ; preds = %412, %357
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

362:                                              ; preds = %357
  %363 = extractvalue { i32, i1 } %359, 0, !nosanitize !10
  %364 = load ptr, ptr %12, align 8, !tbaa !39
  %365 = zext i32 %363 to i64
  %366 = getelementptr inbounds nuw i8, ptr %364, i64 %365
  %367 = load i8, ptr %366, align 1, !tbaa !8
  %368 = load i32, ptr %21, align 4, !tbaa !127
  %369 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %368, i32 1), !nosanitize !10
  %370 = extractvalue { i32, i1 } %369, 1, !nosanitize !10
  br i1 %370, label %371, label %372, !prof !48, !nosanitize !10

371:                                              ; preds = %362
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

372:                                              ; preds = %362
  %373 = extractvalue { i32, i1 } %369, 0, !nosanitize !10
  %374 = load ptr, ptr %20, align 8, !tbaa !47
  store i32 %373, ptr %21, align 4, !tbaa !127
  %375 = zext i32 %368 to i64
  %376 = getelementptr inbounds nuw i8, ptr %374, i64 %375
  store i8 0, ptr %376, align 1, !tbaa !8
  %377 = load i32, ptr %21, align 4, !tbaa !127
  %378 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 1), !nosanitize !10
  %379 = extractvalue { i32, i1 } %378, 1, !nosanitize !10
  br i1 %379, label %380, label %381, !prof !48, !nosanitize !10

380:                                              ; preds = %372
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

381:                                              ; preds = %372
  %382 = extractvalue { i32, i1 } %378, 0, !nosanitize !10
  %383 = load ptr, ptr %20, align 8, !tbaa !47
  store i32 %382, ptr %21, align 4, !tbaa !127
  %384 = zext i32 %377 to i64
  %385 = getelementptr inbounds nuw i8, ptr %383, i64 %384
  store i8 0, ptr %385, align 1, !tbaa !8
  %386 = load i32, ptr %21, align 4, !tbaa !127
  %387 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %386, i32 1), !nosanitize !10
  %388 = extractvalue { i32, i1 } %387, 1, !nosanitize !10
  br i1 %388, label %389, label %390, !prof !48, !nosanitize !10

389:                                              ; preds = %381
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

390:                                              ; preds = %381
  %391 = extractvalue { i32, i1 } %387, 0, !nosanitize !10
  %392 = load ptr, ptr %20, align 8, !tbaa !47
  store i32 %391, ptr %21, align 4, !tbaa !127
  %393 = zext i32 %386 to i64
  %394 = getelementptr inbounds nuw i8, ptr %392, i64 %393
  store i8 %367, ptr %394, align 1, !tbaa !8
  %395 = zext i8 %367 to i64
  %396 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %395
  %397 = load i16, ptr %396, align 4, !tbaa !8
  %398 = icmp eq i16 %397, -1
  br i1 %398, label %399, label %400, !prof !48, !nosanitize !10

399:                                              ; preds = %390
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

400:                                              ; preds = %390
  %401 = add nuw i16 %397, 1
  store i16 %401, ptr %396, align 4, !tbaa !8
  %402 = load i32, ptr %21, align 4, !tbaa !127
  %403 = load i32, ptr %24, align 8, !tbaa !49
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %465

405:                                              ; preds = %400
  %406 = load i64, ptr %26, align 8, !tbaa !66
  %407 = icmp sgt i64 %406, -1
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load ptr, ptr %12, align 8, !tbaa !39
  %410 = and i64 %406, 4294967295
  %411 = getelementptr inbounds nuw i8, ptr %409, i64 %410
  br label %412

412:                                              ; preds = %405, %408
  %413 = phi ptr [ %411, %408 ], [ null, %405 ]
  %414 = load i32, ptr %11, align 4, !tbaa !65
  %415 = zext i32 %414 to i64
  %416 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %415, i64 %406), !nosanitize !10
  %417 = extractvalue { i64, i1 } %416, 1, !nosanitize !10
  br i1 %417, label %361, label %418, !prof !48, !nosanitize !10

418:                                              ; preds = %412
  %419 = extractvalue { i64, i1 } %416, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %413, i64 noundef %419, i32 noundef 0) #13
  %420 = load i32, ptr %11, align 4, !tbaa !65
  %421 = zext i32 %420 to i64
  store i64 %421, ptr %26, align 8, !tbaa !66
  %422 = load ptr, ptr %0, align 8, !tbaa !21
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 56
  %424 = load ptr, ptr %423, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %424) #13
  %425 = getelementptr inbounds nuw i8, ptr %424, i64 40
  %426 = load i64, ptr %425, align 8, !tbaa !90
  %427 = getelementptr inbounds nuw i8, ptr %422, i64 32
  %428 = load i32, ptr %427, align 8, !tbaa !101
  %429 = zext i32 %428 to i64
  %430 = tail call i64 @llvm.umin.i64(i64 %426, i64 %429)
  %431 = trunc nuw i64 %430 to i32
  %432 = icmp eq i64 %430, 0
  br i1 %432, label %465, label %433

433:                                              ; preds = %418
  %434 = getelementptr inbounds nuw i8, ptr %422, i64 24
  %435 = load ptr, ptr %434, align 8, !tbaa !100
  %436 = getelementptr inbounds nuw i8, ptr %424, i64 32
  %437 = load ptr, ptr %436, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %435, ptr align 1 %437, i64 %430, i1 false)
  %438 = load ptr, ptr %434, align 8, !tbaa !100
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 %430
  store ptr %439, ptr %434, align 8, !tbaa !100
  %440 = load ptr, ptr %436, align 8, !tbaa !91
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 %430
  store ptr %441, ptr %436, align 8, !tbaa !91
  %442 = getelementptr inbounds nuw i8, ptr %422, i64 40
  %443 = load i64, ptr %442, align 8, !tbaa !102
  %444 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %443, i64 %430), !nosanitize !10
  %445 = extractvalue { i64, i1 } %444, 1, !nosanitize !10
  br i1 %445, label %446, label %447, !prof !48, !nosanitize !10

446:                                              ; preds = %433
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

447:                                              ; preds = %433
  %448 = extractvalue { i64, i1 } %444, 0, !nosanitize !10
  store i64 %448, ptr %442, align 8, !tbaa !102
  %449 = load i32, ptr %427, align 8, !tbaa !101
  %450 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %449, i32 %431), !nosanitize !10
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !10
  br i1 %451, label %452, label %453, !prof !48, !nosanitize !10

452:                                              ; preds = %447
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

453:                                              ; preds = %447
  %454 = extractvalue { i32, i1 } %450, 0, !nosanitize !10
  store i32 %454, ptr %427, align 8, !tbaa !101
  %455 = load i64, ptr %425, align 8, !tbaa !90
  %456 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %455, i64 %430), !nosanitize !10
  %457 = extractvalue { i64, i1 } %456, 1, !nosanitize !10
  br i1 %457, label %458, label %459, !prof !48, !nosanitize !10

458:                                              ; preds = %453
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

459:                                              ; preds = %453
  %460 = extractvalue { i64, i1 } %456, 0, !nosanitize !10
  store i64 %460, ptr %425, align 8, !tbaa !90
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %459
  %463 = getelementptr inbounds nuw i8, ptr %424, i64 16
  %464 = load ptr, ptr %463, align 8, !tbaa !44
  store ptr %464, ptr %436, align 8, !tbaa !91
  br label %465

465:                                              ; preds = %462, %459, %418, %400
  %466 = load i32, ptr %11, align 4, !tbaa !65
  %467 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %466, i32 1), !nosanitize !10
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !10
  br i1 %468, label %469, label %470, !prof !48, !nosanitize !10

469:                                              ; preds = %465
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

470:                                              ; preds = %465
  %471 = extractvalue { i32, i1 } %467, 0, !nosanitize !10
  store i32 %471, ptr %11, align 4, !tbaa !65
  %472 = load i32, ptr %3, align 4, !tbaa !67
  %473 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %472, i32 1), !nosanitize !10
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !10
  br i1 %474, label %475, label %476, !prof !48, !nosanitize !10

475:                                              ; preds = %470
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

476:                                              ; preds = %470
  %477 = extractvalue { i32, i1 } %473, 0, !nosanitize !10
  store i32 %477, ptr %3, align 4, !tbaa !67
  %478 = load ptr, ptr %0, align 8, !tbaa !21
  %479 = getelementptr inbounds nuw i8, ptr %478, i64 32
  %480 = load i32, ptr %479, align 8, !tbaa !101
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %681, label %289

482:                                              ; preds = %354
  store i32 1, ptr %25, align 8, !tbaa !71
  %483 = load i32, ptr %11, align 4, !tbaa !65
  %484 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %483, i32 1), !nosanitize !10
  %485 = extractvalue { i32, i1 } %484, 1, !nosanitize !10
  br i1 %485, label %486, label %487, !prof !48, !nosanitize !10

486:                                              ; preds = %482
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

487:                                              ; preds = %482
  %488 = extractvalue { i32, i1 } %484, 0, !nosanitize !10
  store i32 %488, ptr %11, align 4, !tbaa !65
  %489 = load i32, ptr %3, align 4, !tbaa !67
  %490 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %489, i32 1), !nosanitize !10
  %491 = extractvalue { i32, i1 } %490, 1, !nosanitize !10
  br i1 %491, label %492, label %493, !prof !48, !nosanitize !10

492:                                              ; preds = %487
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

493:                                              ; preds = %487
  %494 = extractvalue { i32, i1 } %490, 0, !nosanitize !10
  store i32 %494, ptr %3, align 4, !tbaa !67
  br label %289

495:                                              ; preds = %35
  %496 = load i32, ptr %25, align 8, !tbaa !71
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %543, label %498

498:                                              ; preds = %495
  %499 = load i32, ptr %11, align 4, !tbaa !65
  %500 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %499, i32 1), !nosanitize !10
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !10
  br i1 %501, label %502, label %503, !prof !48, !nosanitize !10

502:                                              ; preds = %623, %555, %498
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

503:                                              ; preds = %498
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !10
  %505 = load ptr, ptr %12, align 8, !tbaa !39
  %506 = zext i32 %504 to i64
  %507 = getelementptr inbounds nuw i8, ptr %505, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = load i32, ptr %21, align 4, !tbaa !127
  %510 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %509, i32 1), !nosanitize !10
  %511 = extractvalue { i32, i1 } %510, 1, !nosanitize !10
  br i1 %511, label %512, label %513, !prof !48, !nosanitize !10

512:                                              ; preds = %503
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

513:                                              ; preds = %503
  %514 = extractvalue { i32, i1 } %510, 0, !nosanitize !10
  %515 = load ptr, ptr %20, align 8, !tbaa !47
  store i32 %514, ptr %21, align 4, !tbaa !127
  %516 = zext i32 %509 to i64
  %517 = getelementptr inbounds nuw i8, ptr %515, i64 %516
  store i8 0, ptr %517, align 1, !tbaa !8
  %518 = load i32, ptr %21, align 4, !tbaa !127
  %519 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %518, i32 1), !nosanitize !10
  %520 = extractvalue { i32, i1 } %519, 1, !nosanitize !10
  br i1 %520, label %521, label %522, !prof !48, !nosanitize !10

521:                                              ; preds = %513
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

522:                                              ; preds = %513
  %523 = extractvalue { i32, i1 } %519, 0, !nosanitize !10
  %524 = load ptr, ptr %20, align 8, !tbaa !47
  store i32 %523, ptr %21, align 4, !tbaa !127
  %525 = zext i32 %518 to i64
  %526 = getelementptr inbounds nuw i8, ptr %524, i64 %525
  store i8 0, ptr %526, align 1, !tbaa !8
  %527 = load i32, ptr %21, align 4, !tbaa !127
  %528 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %527, i32 1), !nosanitize !10
  %529 = extractvalue { i32, i1 } %528, 1, !nosanitize !10
  br i1 %529, label %530, label %531, !prof !48, !nosanitize !10

530:                                              ; preds = %522
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

531:                                              ; preds = %522
  %532 = extractvalue { i32, i1 } %528, 0, !nosanitize !10
  %533 = load ptr, ptr %20, align 8, !tbaa !47
  store i32 %532, ptr %21, align 4, !tbaa !127
  %534 = zext i32 %527 to i64
  %535 = getelementptr inbounds nuw i8, ptr %533, i64 %534
  store i8 %508, ptr %535, align 1, !tbaa !8
  %536 = zext i8 %508 to i64
  %537 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %536
  %538 = load i16, ptr %537, align 4, !tbaa !8
  %539 = icmp eq i16 %538, -1
  br i1 %539, label %540, label %541, !prof !48, !nosanitize !10

540:                                              ; preds = %531
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 7) #12, !nosanitize !10
  unreachable, !nosanitize !10

541:                                              ; preds = %531
  %542 = add nuw i16 %538, 1
  store i16 %542, ptr %537, align 4, !tbaa !8
  store i32 0, ptr %25, align 8, !tbaa !71
  br label %543

543:                                              ; preds = %541, %495
  %544 = load i32, ptr %11, align 4, !tbaa !65
  %545 = tail call i32 @llvm.umin.i32(i32 %544, i32 2)
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %545, ptr %546, align 4, !tbaa !68
  %547 = icmp eq i32 %1, 4
  br i1 %547, label %548, label %613

548:                                              ; preds = %543
  %549 = load i64, ptr %26, align 8, !tbaa !66
  %550 = icmp sgt i64 %549, -1
  br i1 %550, label %551, label %555

551:                                              ; preds = %548
  %552 = load ptr, ptr %12, align 8, !tbaa !39
  %553 = and i64 %549, 4294967295
  %554 = getelementptr inbounds nuw i8, ptr %552, i64 %553
  br label %555

555:                                              ; preds = %548, %551
  %556 = phi ptr [ %554, %551 ], [ null, %548 ]
  %557 = zext i32 %544 to i64
  %558 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %557, i64 %549), !nosanitize !10
  %559 = extractvalue { i64, i1 } %558, 1, !nosanitize !10
  br i1 %559, label %502, label %560, !prof !48, !nosanitize !10

560:                                              ; preds = %555
  %561 = extractvalue { i64, i1 } %558, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %556, i64 noundef %561, i32 noundef 1) #13
  %562 = load i32, ptr %11, align 4, !tbaa !65
  %563 = zext i32 %562 to i64
  store i64 %563, ptr %26, align 8, !tbaa !66
  %564 = load ptr, ptr %0, align 8, !tbaa !21
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 56
  %566 = load ptr, ptr %565, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %566) #13
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 40
  %568 = load i64, ptr %567, align 8, !tbaa !90
  %569 = getelementptr inbounds nuw i8, ptr %564, i64 32
  %570 = load i32, ptr %569, align 8, !tbaa !101
  %571 = zext i32 %570 to i64
  %572 = tail call i64 @llvm.umin.i64(i64 %568, i64 %571)
  %573 = trunc nuw i64 %572 to i32
  %574 = icmp eq i64 %572, 0
  br i1 %574, label %607, label %575

575:                                              ; preds = %560
  %576 = getelementptr inbounds nuw i8, ptr %564, i64 24
  %577 = load ptr, ptr %576, align 8, !tbaa !100
  %578 = getelementptr inbounds nuw i8, ptr %566, i64 32
  %579 = load ptr, ptr %578, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %577, ptr align 1 %579, i64 %572, i1 false)
  %580 = load ptr, ptr %576, align 8, !tbaa !100
  %581 = getelementptr inbounds nuw i8, ptr %580, i64 %572
  store ptr %581, ptr %576, align 8, !tbaa !100
  %582 = load ptr, ptr %578, align 8, !tbaa !91
  %583 = getelementptr inbounds nuw i8, ptr %582, i64 %572
  store ptr %583, ptr %578, align 8, !tbaa !91
  %584 = getelementptr inbounds nuw i8, ptr %564, i64 40
  %585 = load i64, ptr %584, align 8, !tbaa !102
  %586 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %585, i64 %572), !nosanitize !10
  %587 = extractvalue { i64, i1 } %586, 1, !nosanitize !10
  br i1 %587, label %588, label %589, !prof !48, !nosanitize !10

588:                                              ; preds = %575
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

589:                                              ; preds = %575
  %590 = extractvalue { i64, i1 } %586, 0, !nosanitize !10
  store i64 %590, ptr %584, align 8, !tbaa !102
  %591 = load i32, ptr %569, align 8, !tbaa !101
  %592 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %591, i32 %573), !nosanitize !10
  %593 = extractvalue { i32, i1 } %592, 1, !nosanitize !10
  br i1 %593, label %594, label %595, !prof !48, !nosanitize !10

594:                                              ; preds = %589
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

595:                                              ; preds = %589
  %596 = extractvalue { i32, i1 } %592, 0, !nosanitize !10
  store i32 %596, ptr %569, align 8, !tbaa !101
  %597 = load i64, ptr %567, align 8, !tbaa !90
  %598 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %597, i64 %572), !nosanitize !10
  %599 = extractvalue { i64, i1 } %598, 1, !nosanitize !10
  br i1 %599, label %600, label %601, !prof !48, !nosanitize !10

600:                                              ; preds = %595
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

601:                                              ; preds = %595
  %602 = extractvalue { i64, i1 } %598, 0, !nosanitize !10
  store i64 %602, ptr %567, align 8, !tbaa !90
  %603 = icmp eq i64 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %601
  %605 = getelementptr inbounds nuw i8, ptr %566, i64 16
  %606 = load ptr, ptr %605, align 8, !tbaa !44
  store ptr %606, ptr %578, align 8, !tbaa !91
  br label %607

607:                                              ; preds = %560, %601, %604
  %608 = load ptr, ptr %0, align 8, !tbaa !21
  %609 = getelementptr inbounds nuw i8, ptr %608, i64 32
  %610 = load i32, ptr %609, align 8, !tbaa !101
  %611 = icmp eq i32 %610, 0
  %612 = select i1 %611, i32 2, i32 3
  br label %681

613:                                              ; preds = %543
  %614 = load i32, ptr %21, align 4, !tbaa !127
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %680, label %616

616:                                              ; preds = %613
  %617 = load i64, ptr %26, align 8, !tbaa !66
  %618 = icmp sgt i64 %617, -1
  br i1 %618, label %619, label %623

619:                                              ; preds = %616
  %620 = load ptr, ptr %12, align 8, !tbaa !39
  %621 = and i64 %617, 4294967295
  %622 = getelementptr inbounds nuw i8, ptr %620, i64 %621
  br label %623

623:                                              ; preds = %616, %619
  %624 = phi ptr [ %622, %619 ], [ null, %616 ]
  %625 = zext i32 %544 to i64
  %626 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %625, i64 %617), !nosanitize !10
  %627 = extractvalue { i64, i1 } %626, 1, !nosanitize !10
  br i1 %627, label %502, label %628, !prof !48, !nosanitize !10

628:                                              ; preds = %623
  %629 = extractvalue { i64, i1 } %626, 0, !nosanitize !10
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %624, i64 noundef %629, i32 noundef 0) #13
  %630 = load i32, ptr %11, align 4, !tbaa !65
  %631 = zext i32 %630 to i64
  store i64 %631, ptr %26, align 8, !tbaa !66
  %632 = load ptr, ptr %0, align 8, !tbaa !21
  %633 = getelementptr inbounds nuw i8, ptr %632, i64 56
  %634 = load ptr, ptr %633, align 8, !tbaa !20
  tail call void @_tr_flush_bits(ptr noundef %634) #13
  %635 = getelementptr inbounds nuw i8, ptr %634, i64 40
  %636 = load i64, ptr %635, align 8, !tbaa !90
  %637 = getelementptr inbounds nuw i8, ptr %632, i64 32
  %638 = load i32, ptr %637, align 8, !tbaa !101
  %639 = zext i32 %638 to i64
  %640 = tail call i64 @llvm.umin.i64(i64 %636, i64 %639)
  %641 = trunc nuw i64 %640 to i32
  %642 = icmp eq i64 %640, 0
  br i1 %642, label %675, label %643

643:                                              ; preds = %628
  %644 = getelementptr inbounds nuw i8, ptr %632, i64 24
  %645 = load ptr, ptr %644, align 8, !tbaa !100
  %646 = getelementptr inbounds nuw i8, ptr %634, i64 32
  %647 = load ptr, ptr %646, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %645, ptr align 1 %647, i64 %640, i1 false)
  %648 = load ptr, ptr %644, align 8, !tbaa !100
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 %640
  store ptr %649, ptr %644, align 8, !tbaa !100
  %650 = load ptr, ptr %646, align 8, !tbaa !91
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 %640
  store ptr %651, ptr %646, align 8, !tbaa !91
  %652 = getelementptr inbounds nuw i8, ptr %632, i64 40
  %653 = load i64, ptr %652, align 8, !tbaa !102
  %654 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %653, i64 %640), !nosanitize !10
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !10
  br i1 %655, label %656, label %657, !prof !48, !nosanitize !10

656:                                              ; preds = %643
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !10
  unreachable, !nosanitize !10

657:                                              ; preds = %643
  %658 = extractvalue { i64, i1 } %654, 0, !nosanitize !10
  store i64 %658, ptr %652, align 8, !tbaa !102
  %659 = load i32, ptr %637, align 8, !tbaa !101
  %660 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %659, i32 %641), !nosanitize !10
  %661 = extractvalue { i32, i1 } %660, 1, !nosanitize !10
  br i1 %661, label %662, label %663, !prof !48, !nosanitize !10

662:                                              ; preds = %657
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

663:                                              ; preds = %657
  %664 = extractvalue { i32, i1 } %660, 0, !nosanitize !10
  store i32 %664, ptr %637, align 8, !tbaa !101
  %665 = load i64, ptr %635, align 8, !tbaa !90
  %666 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %665, i64 %640), !nosanitize !10
  %667 = extractvalue { i64, i1 } %666, 1, !nosanitize !10
  br i1 %667, label %668, label %669, !prof !48, !nosanitize !10

668:                                              ; preds = %663
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

669:                                              ; preds = %663
  %670 = extractvalue { i64, i1 } %666, 0, !nosanitize !10
  store i64 %670, ptr %635, align 8, !tbaa !90
  %671 = icmp eq i64 %670, 0
  br i1 %671, label %672, label %675

672:                                              ; preds = %669
  %673 = getelementptr inbounds nuw i8, ptr %634, i64 16
  %674 = load ptr, ptr %673, align 8, !tbaa !44
  store ptr %674, ptr %646, align 8, !tbaa !91
  br label %675

675:                                              ; preds = %628, %669, %672
  %676 = load ptr, ptr %0, align 8, !tbaa !21
  %677 = getelementptr inbounds nuw i8, ptr %676, i64 32
  %678 = load i32, ptr %677, align 8, !tbaa !101
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %681, label %680

680:                                              ; preds = %613, %675
  br label %681

681:                                              ; preds = %476, %349, %31, %675, %607, %680
  %682 = phi i32 [ 0, %675 ], [ %612, %607 ], [ 1, %680 ], [ 0, %31 ], [ 0, %349 ], [ 0, %476 ]
  ret i32 %682
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc i32 @longest_match(ptr noundef captures(none) %0, i32 noundef range(i32 1, 65536) %1) unnamed_addr #10 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 188
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %12 = load i32, ptr %11, align 8, !tbaa !69
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %16 = load i32, ptr %15, align 8, !tbaa !33
  %17 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %16, i32 262), !nosanitize !10
  %18 = extractvalue { i32, i1 } %17, 1, !nosanitize !10
  br i1 %18, label %19, label %20, !prof !48, !nosanitize !10

19:                                               ; preds = %2
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

20:                                               ; preds = %2
  %21 = extractvalue { i32, i1 } %17, 0, !nosanitize !10
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %21)
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %26 = load i32, ptr %25, align 8, !tbaa !34
  %27 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 -1)
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !10
  br i1 %28, label %29, label %30, !prof !48, !nosanitize !10

29:                                               ; preds = %152, %62, %20
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

30:                                               ; preds = %20
  %31 = getelementptr inbounds nuw i8, ptr %10, i64 258
  %32 = extractvalue { i32, i1 } %27, 0, !nosanitize !10
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %10, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !8
  %36 = sext i32 %12 to i64
  %37 = getelementptr inbounds i8, ptr %10, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %40 = load i32, ptr %39, align 4, !tbaa !60
  %41 = icmp ult i32 %12, %40
  %42 = lshr i32 %4, 2
  %43 = select i1 %41, i32 %4, i32 %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %45 = load i32, ptr %44, align 4, !tbaa !67
  %46 = tail call i32 @llvm.umin.i32(i32 %14, i32 %45)
  %47 = getelementptr inbounds nuw i8, ptr %10, i64 1
  %48 = ptrtoint ptr %31 to i64
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %50

50:                                               ; preds = %184, %30
  %51 = phi i32 [ %12, %30 ], [ %171, %184 ]
  %52 = phi i32 [ %43, %30 ], [ %185, %184 ]
  %53 = phi i32 [ %1, %30 ], [ %178, %184 ]
  %54 = phi i8 [ %35, %30 ], [ %172, %184 ]
  %55 = phi i8 [ %38, %30 ], [ %173, %184 ]
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds nuw i8, ptr %6, i64 %56
  %58 = sext i32 %51 to i64
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !8
  %61 = icmp eq i8 %60, %55
  br i1 %61, label %62, label %170

62:                                               ; preds = %50
  %63 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %51, i32 -1)
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !10
  br i1 %64, label %29, label %65, !prof !48, !nosanitize !10

65:                                               ; preds = %62
  %66 = extractvalue { i32, i1 } %63, 0, !nosanitize !10
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %57, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !8
  %70 = icmp eq i8 %69, %54
  br i1 %70, label %71, label %170

71:                                               ; preds = %65
  %72 = load i8, ptr %57, align 1, !tbaa !8
  %73 = load i8, ptr %10, align 1, !tbaa !8
  %74 = icmp eq i8 %72, %73
  br i1 %74, label %75, label %170

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw i8, ptr %57, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !8
  %78 = load i8, ptr %47, align 1, !tbaa !8
  %79 = icmp eq i8 %77, %78
  br i1 %79, label %80, label %170

80:                                               ; preds = %75
  %81 = getelementptr inbounds nuw i8, ptr %57, i64 2
  br label %82

82:                                               ; preds = %127, %80
  %83 = phi ptr [ %81, %80 ], [ %131, %127 ]
  %84 = phi i64 [ 2, %80 ], [ %128, %127 ]
  %85 = getelementptr inbounds nuw i8, ptr %10, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !8
  %88 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !8
  %90 = icmp eq i8 %87, %89
  br i1 %90, label %91, label %136

91:                                               ; preds = %82
  %92 = getelementptr inbounds nuw i8, ptr %85, i64 2
  %93 = load i8, ptr %92, align 1, !tbaa !8
  %94 = getelementptr inbounds nuw i8, ptr %83, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !8
  %96 = icmp eq i8 %93, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw i8, ptr %85, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !8
  %100 = getelementptr inbounds nuw i8, ptr %83, i64 3
  %101 = load i8, ptr %100, align 1, !tbaa !8
  %102 = icmp eq i8 %99, %101
  br i1 %102, label %103, label %140

103:                                              ; preds = %97
  %104 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %105 = load i8, ptr %104, align 1, !tbaa !8
  %106 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %107 = load i8, ptr %106, align 1, !tbaa !8
  %108 = icmp eq i8 %105, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %103
  %110 = getelementptr inbounds nuw i8, ptr %85, i64 5
  %111 = load i8, ptr %110, align 1, !tbaa !8
  %112 = getelementptr inbounds nuw i8, ptr %83, i64 5
  %113 = load i8, ptr %112, align 1, !tbaa !8
  %114 = icmp eq i8 %111, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %109
  %116 = getelementptr inbounds nuw i8, ptr %85, i64 6
  %117 = load i8, ptr %116, align 1, !tbaa !8
  %118 = getelementptr inbounds nuw i8, ptr %83, i64 6
  %119 = load i8, ptr %118, align 1, !tbaa !8
  %120 = icmp eq i8 %117, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %115
  %122 = getelementptr inbounds nuw i8, ptr %85, i64 7
  %123 = load i8, ptr %122, align 1, !tbaa !8
  %124 = getelementptr inbounds nuw i8, ptr %83, i64 7
  %125 = load i8, ptr %124, align 1, !tbaa !8
  %126 = icmp eq i8 %123, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %121
  %128 = add nuw nsw i64 %84, 8
  %129 = getelementptr inbounds nuw i8, ptr %10, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !8
  %131 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %132 = load i8, ptr %131, align 1, !tbaa !8
  %133 = icmp eq i8 %130, %132
  %134 = icmp samesign ult i64 %84, 250
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %82, label %150, !llvm.loop !135

136:                                              ; preds = %82
  %137 = getelementptr inbounds nuw i8, ptr %85, i64 1
  br label %152

138:                                              ; preds = %91
  %139 = getelementptr inbounds nuw i8, ptr %85, i64 2
  br label %152

140:                                              ; preds = %97
  %141 = getelementptr inbounds nuw i8, ptr %85, i64 3
  br label %152

142:                                              ; preds = %103
  %143 = getelementptr inbounds nuw i8, ptr %85, i64 4
  br label %152

144:                                              ; preds = %109
  %145 = getelementptr inbounds nuw i8, ptr %85, i64 5
  br label %152

146:                                              ; preds = %115
  %147 = getelementptr inbounds nuw i8, ptr %85, i64 6
  br label %152

148:                                              ; preds = %121
  %149 = getelementptr inbounds nuw i8, ptr %85, i64 7
  br label %152

150:                                              ; preds = %127
  %151 = getelementptr inbounds nuw i8, ptr %10, i64 %128
  br label %152

152:                                              ; preds = %150, %148, %146, %144, %142, %140, %138, %136
  %153 = phi ptr [ %139, %138 ], [ %141, %140 ], [ %137, %136 ], [ %149, %148 ], [ %147, %146 ], [ %145, %144 ], [ %143, %142 ], [ %151, %150 ]
  %154 = ptrtoint ptr %153 to i64
  %155 = sub i64 %48, %154
  %156 = trunc i64 %155 to i32
  %157 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %156), !nosanitize !10
  %158 = extractvalue { i32, i1 } %157, 0, !nosanitize !10
  %159 = extractvalue { i32, i1 } %157, 1, !nosanitize !10
  br i1 %159, label %29, label %160, !prof !48, !nosanitize !10

160:                                              ; preds = %152
  %161 = icmp sgt i32 %158, %51
  br i1 %161, label %162, label %170

162:                                              ; preds = %160
  store i32 %53, ptr %49, align 8, !tbaa !79
  %163 = icmp slt i32 %158, %46
  br i1 %163, label %164, label %187

164:                                              ; preds = %162
  %165 = sext i32 %158 to i64
  %166 = getelementptr i8, ptr %10, i64 %165
  %167 = getelementptr i8, ptr %166, i64 -1
  %168 = load i8, ptr %167, align 1, !tbaa !8
  %169 = load i8, ptr %166, align 1, !tbaa !8
  br label %170

170:                                              ; preds = %160, %164, %50, %65, %71, %75
  %171 = phi i32 [ %51, %50 ], [ %51, %65 ], [ %51, %71 ], [ %51, %75 ], [ %158, %164 ], [ %51, %160 ]
  %172 = phi i8 [ %54, %50 ], [ %54, %65 ], [ %54, %71 ], [ %54, %75 ], [ %168, %164 ], [ %54, %160 ]
  %173 = phi i8 [ %55, %50 ], [ %55, %65 ], [ %55, %71 ], [ %55, %75 ], [ %169, %164 ], [ %55, %160 ]
  %174 = and i32 %53, %26
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds nuw [2 x i8], ptr %24, i64 %175
  %177 = load i16, ptr %176, align 2, !tbaa !54
  %178 = zext i16 %177 to i32
  %179 = icmp ult i32 %22, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %170
  %181 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %52, i32 1), !nosanitize !10
  %182 = extractvalue { i32, i1 } %181, 1, !nosanitize !10
  br i1 %182, label %183, label %184, !prof !48, !nosanitize !10

183:                                              ; preds = %180
; LIMIT STUDY: Oracle neutralized -> tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !10
  unreachable, !nosanitize !10

184:                                              ; preds = %180
  %185 = extractvalue { i32, i1 } %181, 0, !nosanitize !10
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %50, !llvm.loop !136

187:                                              ; preds = %170, %162, %184
  %188 = phi i32 [ %171, %184 ], [ %171, %170 ], [ %158, %162 ]
  %189 = tail call i32 @llvm.umin.i32(i32 %188, i32 %45)
  ret i32 %189
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nomerge noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

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
!9 = !{!"branch_weights", i32 1048575, i32 1}
!10 = !{}
!11 = !{!12, !13, i64 48}
!12 = !{!"z_stream_s", !13, i64 0, !5, i64 8, !15, i64 16, !13, i64 24, !5, i64 32, !15, i64 40, !13, i64 48, !16, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !5, i64 88, !15, i64 96, !15, i64 104}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"p1 _ZTS14internal_state", !14, i64 0}
!17 = !{!12, !14, i64 64}
!18 = !{!12, !14, i64 80}
!19 = !{!12, !14, i64 72}
!20 = !{!12, !16, i64 56}
!21 = !{!22, !23, i64 0}
!22 = !{!"internal_state", !23, i64 0, !5, i64 8, !13, i64 16, !15, i64 24, !13, i64 32, !15, i64 40, !5, i64 48, !24, i64 56, !15, i64 64, !6, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !13, i64 96, !15, i64 104, !25, i64 112, !25, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !15, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !26, i64 2904, !26, i64 2928, !26, i64 2952, !6, i64 2976, !6, i64 3008, !5, i64 5300, !5, i64 5304, !6, i64 5308, !13, i64 5888, !5, i64 5896, !5, i64 5900, !5, i64 5904, !15, i64 5912, !15, i64 5920, !5, i64 5928, !5, i64 5932, !29, i64 5936, !5, i64 5940, !5, i64 5944, !15, i64 5952, !5, i64 5960}
!23 = !{!"p1 _ZTS10z_stream_s", !14, i64 0}
!24 = !{!"p1 _ZTS11gz_header_s", !14, i64 0}
!25 = !{!"p1 short", !14, i64 0}
!26 = !{!"tree_desc_s", !27, i64 0, !5, i64 8, !28, i64 16}
!27 = !{!"p1 _ZTS9ct_data_s", !14, i64 0}
!28 = !{!"p1 _ZTS18static_tree_desc_s", !14, i64 0}
!29 = !{!"short", !6, i64 0}
!30 = !{!22, !5, i64 8}
!31 = !{!22, !5, i64 48}
!32 = !{!22, !5, i64 84}
!33 = !{!22, !5, i64 80}
!34 = !{!22, !5, i64 88}
!35 = !{!22, !5, i64 136}
!36 = !{!22, !5, i64 132}
!37 = !{!22, !5, i64 140}
!38 = !{!22, !5, i64 144}
!39 = !{!22, !13, i64 96}
!40 = !{!22, !25, i64 112}
!41 = !{!22, !25, i64 120}
!42 = !{!22, !15, i64 5952}
!43 = !{!22, !5, i64 5896}
!44 = !{!22, !13, i64 16}
!45 = !{!22, !15, i64 24}
!46 = !{!13, !13, i64 0}
!47 = !{!22, !13, i64 5888}
!48 = !{!"branch_weights", i32 1, i32 1048575}
!49 = !{!22, !5, i64 5904}
!50 = !{!22, !5, i64 196}
!51 = !{!22, !5, i64 200}
!52 = !{!22, !6, i64 72}
!53 = !{!22, !15, i64 104}
!54 = !{!29, !29, i64 0}
!55 = !{!22, !5, i64 5960}
!56 = !{!57, !29, i64 2}
!57 = !{!"config_s", !29, i64 0, !29, i64 2, !29, i64 4, !29, i64 6, !14, i64 8}
!58 = !{!22, !5, i64 192}
!59 = !{!57, !29, i64 0}
!60 = !{!22, !5, i64 204}
!61 = !{!57, !29, i64 4}
!62 = !{!22, !5, i64 208}
!63 = !{!57, !29, i64 6}
!64 = !{!22, !5, i64 188}
!65 = !{!22, !5, i64 172}
!66 = !{!22, !15, i64 152}
!67 = !{!22, !5, i64 180}
!68 = !{!22, !5, i64 5932}
!69 = !{!22, !5, i64 184}
!70 = !{!22, !5, i64 160}
!71 = !{!22, !5, i64 168}
!72 = !{!22, !5, i64 128}
!73 = !{!12, !15, i64 96}
!74 = !{!12, !5, i64 8}
!75 = !{!12, !13, i64 0}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = distinct !{!78, !77}
!79 = !{!22, !5, i64 176}
!80 = distinct !{!80, !77, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = distinct !{!83, !77, !82, !81}
!84 = distinct !{!84, !77, !81, !82}
!85 = distinct !{!85, !77, !82, !81}
!86 = !{!12, !15, i64 16}
!87 = distinct !{!87, !77}
!88 = distinct !{!88, !77}
!89 = !{!12, !5, i64 88}
!90 = !{!22, !15, i64 40}
!91 = !{!22, !13, i64 32}
!92 = !{!22, !5, i64 76}
!93 = !{!22, !24, i64 56}
!94 = !{!22, !5, i64 5940}
!95 = !{!22, !5, i64 5944}
!96 = !{!22, !29, i64 5936}
!97 = distinct !{!97, !77}
!98 = !{!57, !14, i64 8}
!99 = !{!22, !5, i64 5928}
!100 = !{!12, !13, i64 24}
!101 = !{!12, !5, i64 32}
!102 = !{!12, !15, i64 40}
!103 = !{!104, !13, i64 56}
!104 = !{!"gz_header_s", !5, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !13, i64 24, !5, i64 32, !5, i64 36, !13, i64 40, !5, i64 48, !13, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!105 = !{!104, !13, i64 40}
!106 = !{!104, !13, i64 24}
!107 = !{!104, !5, i64 0}
!108 = !{!104, !5, i64 68}
!109 = !{!104, !15, i64 8}
!110 = !{!104, !5, i64 20}
!111 = !{!104, !5, i64 32}
!112 = !{!22, !15, i64 64}
!113 = distinct !{!113, !77, !114, !115}
!114 = !{!"llvm.loop.peeled.count", i32 1}
!115 = !{!"llvm.loop.estimated_trip_count", i32 1048575}
!116 = distinct !{!116, !77}
!117 = distinct !{!117, !77}
!118 = distinct !{!118, !77, !81, !82}
!119 = distinct !{!119, !77, !82, !81}
!120 = distinct !{!120, !77, !81, !82}
!121 = distinct !{!121, !77, !82, !81}
!122 = !{!"branch_weights", i32 1, i32 127}
!123 = !{!"branch_weights", i32 127, i32 134217473}
!124 = distinct !{!124, !77}
!125 = distinct !{!125, !77}
!126 = distinct !{!126, !77}
!127 = !{!22, !5, i64 5900}
!128 = distinct !{!128, !77}
!129 = !{!22, !27, i64 2904}
!130 = !{!22, !27, i64 2928}
!131 = !{!22, !27, i64 2952}
!132 = distinct !{!132, !77}
!133 = !{!22, !5, i64 164}
!134 = distinct !{!134, !77}
!135 = distinct !{!135, !77}
!136 = distinct !{!136, !77}
