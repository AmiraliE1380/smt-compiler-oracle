; ModuleID = '../openssl/crypto/sha/sha256.c'
source_filename = "../openssl/crypto/sha/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K256 = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SHA224_Init(ptr noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %0, align 4, !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %3, align 4, !tbaa !4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 28, ptr %4, align 4, !tbaa !8
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SHA256_Init(ptr noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 4, !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %3, align 4, !tbaa !4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 32, ptr %4, align 4, !tbaa !8
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @ossl_sha256_192_init(ptr noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 4, !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %3, align 4, !tbaa !4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 24, ptr %4, align 4, !tbaa !8
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @SHA224_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %55, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %8, 3
  %10 = add i32 %7, %9
  %11 = icmp ult i32 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %13 = load i32, ptr %12, align 4, !tbaa !12
  br i1 %11, label %14, label %16, !prof !10

14:                                               ; preds = %5
  %15 = add i32 %13, 1
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %15, %14 ], [ %13, %5 ]
  %18 = lshr i64 %2, 29
  %19 = trunc i64 %18 to i32
  %20 = add i32 %17, %19
  store i32 %20, ptr %12, align 4, !tbaa !12
  store i32 %10, ptr %6, align 4, !tbaa !11
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = zext i32 %22 to i64
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %39, label %25, !prof !10

25:                                               ; preds = %16
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %27 = icmp ugt i64 %2, 63
  %28 = add nuw nsw i64 %2, %23
  %29 = icmp ugt i64 %28, 63
  %30 = select i1 %27, i1 true, i1 %29
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 %23
  br i1 %30, label %32, label %36

32:                                               ; preds = %25
  %33 = sub nsw i64 64, %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %1, i64 %33, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %26, i64 noundef 1)
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 %33
  %35 = sub i64 %2, %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %26, i8 0, i64 68, i1 false)
  br label %39

36:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %1, i64 %2, i1 false)
  %37 = load i32, ptr %21, align 4, !tbaa !13
  %38 = add i32 %37, %8
  store i32 %38, ptr %21, align 4, !tbaa !13
  br label %55

39:                                               ; preds = %32, %16
  %40 = phi i64 [ %35, %32 ], [ %2, %16 ]
  %41 = phi ptr [ %34, %32 ], [ %1, %16 ]
  %42 = lshr i64 %40, 6
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %41, i64 noundef %42)
  %45 = and i64 %40, -64
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 %45
  %47 = and i64 %40, 63
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i64 [ %47, %44 ], [ %40, %39 ]
  %50 = phi ptr [ %46, %44 ], [ %41, %39 ]
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = trunc i64 %49 to i32
  store i32 %54, ptr %21, align 4, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %53, ptr align 1 %50, i64 %49, i1 false)
  br label %55

55:                                               ; preds = %3, %36, %48, %52
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @SHA256_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %55, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %8, 3
  %10 = add i32 %7, %9
  %11 = icmp ult i32 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %13 = load i32, ptr %12, align 4, !tbaa !12
  br i1 %11, label %14, label %16, !prof !10

14:                                               ; preds = %5
  %15 = add i32 %13, 1
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %15, %14 ], [ %13, %5 ]
  %18 = lshr i64 %2, 29
  %19 = trunc i64 %18 to i32
  %20 = add i32 %17, %19
  store i32 %20, ptr %12, align 4, !tbaa !12
  store i32 %10, ptr %6, align 4, !tbaa !11
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = zext i32 %22 to i64
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %39, label %25, !prof !10

25:                                               ; preds = %16
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %27 = icmp ugt i64 %2, 63
  %28 = add nuw nsw i64 %2, %23
  %29 = icmp ugt i64 %28, 63
  %30 = select i1 %27, i1 true, i1 %29
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 %23
  br i1 %30, label %32, label %36

32:                                               ; preds = %25
  %33 = sub nsw i64 64, %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %1, i64 %33, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %26, i64 noundef 1)
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 %33
  %35 = sub i64 %2, %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %26, i8 0, i64 68, i1 false)
  br label %39

36:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %1, i64 %2, i1 false)
  %37 = load i32, ptr %21, align 4, !tbaa !13
  %38 = add i32 %37, %8
  store i32 %38, ptr %21, align 4, !tbaa !13
  br label %55

39:                                               ; preds = %32, %16
  %40 = phi i64 [ %35, %32 ], [ %2, %16 ]
  %41 = phi ptr [ %34, %32 ], [ %1, %16 ]
  %42 = lshr i64 %40, 6
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %41, i64 noundef %42)
  %45 = and i64 %40, -64
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 %45
  %47 = and i64 %40, 63
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i64 [ %47, %44 ], [ %40, %39 ]
  %50 = phi ptr [ %46, %44 ], [ %41, %39 ]
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = trunc i64 %49 to i32
  store i32 %54, ptr %21, align 4, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %53, ptr align 1 %50, i64 %49, i1 false)
  br label %55

55:                                               ; preds = %3, %36, %48, %52
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SHA224_Final(ptr noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call i32 @SHA256_Final(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SHA256_Final(ptr noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 %6
  store i8 -128, ptr %7, align 1, !tbaa !14
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp ugt i32 %5, 55
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  %12 = sub nsw i64 63, %6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 0, i64 %12, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i64 [ 0, %10 ], [ %8, %2 ]
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 %14
  %16 = sub nuw nsw i64 56, %14
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %15, i8 0, i64 %16, i1 false)
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !12
  %20 = lshr i32 %19, 24
  %21 = trunc nuw i32 %20 to i8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 %21, ptr %17, align 4, !tbaa !14
  %23 = lshr i32 %19, 16
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 %24, ptr %22, align 1, !tbaa !14
  %26 = lshr i32 %19, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 99
  store i8 %27, ptr %25, align 2, !tbaa !14
  %29 = trunc i32 %19 to i8
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 %29, ptr %28, align 1, !tbaa !14
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %32 = load i32, ptr %31, align 4, !tbaa !11
  %33 = lshr i32 %32, 24
  %34 = trunc nuw i32 %33 to i8
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 %34, ptr %30, align 4, !tbaa !14
  %36 = lshr i32 %32, 16
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 102
  store i8 %37, ptr %35, align 1, !tbaa !14
  %39 = lshr i32 %32, 8
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 103
  store i8 %40, ptr %38, align 2, !tbaa !14
  %42 = trunc i32 %32 to i8
  store i8 %42, ptr %41, align 1, !tbaa !14
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  store i32 0, ptr %4, align 4, !tbaa !13
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 64) #9
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 108
  %44 = load i32, ptr %43, align 4, !tbaa !8
  switch i32 %44, label %316 [
    i32 24, label %238
    i32 28, label %148
    i32 32, label %45
  ]

45:                                               ; preds = %13
  %46 = load i32, ptr %1, align 4, !tbaa !4
  %47 = lshr i32 %46, 24
  %48 = trunc nuw i32 %47 to i8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %48, ptr %0, align 1, !tbaa !14
  %50 = lshr i32 %46, 16
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %51, ptr %49, align 1, !tbaa !14
  %53 = lshr i32 %46, 8
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %54, ptr %52, align 1, !tbaa !14
  %56 = trunc i32 %46 to i8
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %56, ptr %55, align 1, !tbaa !14
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !4
  %60 = lshr i32 %59, 24
  %61 = trunc nuw i32 %60 to i8
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %61, ptr %57, align 1, !tbaa !14
  %63 = lshr i32 %59, 16
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %64, ptr %62, align 1, !tbaa !14
  %66 = lshr i32 %59, 8
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %67, ptr %65, align 1, !tbaa !14
  %69 = trunc i32 %59 to i8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %69, ptr %68, align 1, !tbaa !14
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %72 = load i32, ptr %71, align 4, !tbaa !4
  %73 = lshr i32 %72, 24
  %74 = trunc nuw i32 %73 to i8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %74, ptr %70, align 1, !tbaa !14
  %76 = lshr i32 %72, 16
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %77, ptr %75, align 1, !tbaa !14
  %79 = lshr i32 %72, 8
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %80, ptr %78, align 1, !tbaa !14
  %82 = trunc i32 %72 to i8
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %82, ptr %81, align 1, !tbaa !14
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %85 = load i32, ptr %84, align 4, !tbaa !4
  %86 = lshr i32 %85, 24
  %87 = trunc nuw i32 %86 to i8
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %87, ptr %83, align 1, !tbaa !14
  %89 = lshr i32 %85, 16
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %90, ptr %88, align 1, !tbaa !14
  %92 = lshr i32 %85, 8
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %93, ptr %91, align 1, !tbaa !14
  %95 = trunc i32 %85 to i8
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %95, ptr %94, align 1, !tbaa !14
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %98 = load i32, ptr %97, align 4, !tbaa !4
  %99 = lshr i32 %98, 24
  %100 = trunc nuw i32 %99 to i8
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %100, ptr %96, align 1, !tbaa !14
  %102 = lshr i32 %98, 16
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %103, ptr %101, align 1, !tbaa !14
  %105 = lshr i32 %98, 8
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %106, ptr %104, align 1, !tbaa !14
  %108 = trunc i32 %98 to i8
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %108, ptr %107, align 1, !tbaa !14
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %111 = load i32, ptr %110, align 4, !tbaa !4
  %112 = lshr i32 %111, 24
  %113 = trunc nuw i32 %112 to i8
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %113, ptr %109, align 1, !tbaa !14
  %115 = lshr i32 %111, 16
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %116, ptr %114, align 1, !tbaa !14
  %118 = lshr i32 %111, 8
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %119, ptr %117, align 1, !tbaa !14
  %121 = trunc i32 %111 to i8
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %121, ptr %120, align 1, !tbaa !14
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %124 = load i32, ptr %123, align 4, !tbaa !4
  %125 = lshr i32 %124, 24
  %126 = trunc nuw i32 %125 to i8
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %126, ptr %122, align 1, !tbaa !14
  %128 = lshr i32 %124, 16
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %129, ptr %127, align 1, !tbaa !14
  %131 = lshr i32 %124, 8
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %132, ptr %130, align 1, !tbaa !14
  %134 = trunc i32 %124 to i8
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %134, ptr %133, align 1, !tbaa !14
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %137 = load i32, ptr %136, align 4, !tbaa !4
  %138 = lshr i32 %137, 24
  %139 = trunc nuw i32 %138 to i8
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %139, ptr %135, align 1, !tbaa !14
  %141 = lshr i32 %137, 16
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %142, ptr %140, align 1, !tbaa !14
  %144 = lshr i32 %137, 8
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %145, ptr %143, align 1, !tbaa !14
  %147 = trunc i32 %137 to i8
  store i8 %147, ptr %146, align 1, !tbaa !14
  br label %446

148:                                              ; preds = %13
  %149 = load i32, ptr %1, align 4, !tbaa !4
  %150 = lshr i32 %149, 24
  %151 = trunc nuw i32 %150 to i8
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %151, ptr %0, align 1, !tbaa !14
  %153 = lshr i32 %149, 16
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %154, ptr %152, align 1, !tbaa !14
  %156 = lshr i32 %149, 8
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %157, ptr %155, align 1, !tbaa !14
  %159 = trunc i32 %149 to i8
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %159, ptr %158, align 1, !tbaa !14
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %162 = load i32, ptr %161, align 4, !tbaa !4
  %163 = lshr i32 %162, 24
  %164 = trunc nuw i32 %163 to i8
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %164, ptr %160, align 1, !tbaa !14
  %166 = lshr i32 %162, 16
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %167, ptr %165, align 1, !tbaa !14
  %169 = lshr i32 %162, 8
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %170, ptr %168, align 1, !tbaa !14
  %172 = trunc i32 %162 to i8
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %172, ptr %171, align 1, !tbaa !14
  %174 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %175 = load i32, ptr %174, align 4, !tbaa !4
  %176 = lshr i32 %175, 24
  %177 = trunc nuw i32 %176 to i8
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %177, ptr %173, align 1, !tbaa !14
  %179 = lshr i32 %175, 16
  %180 = trunc i32 %179 to i8
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %180, ptr %178, align 1, !tbaa !14
  %182 = lshr i32 %175, 8
  %183 = trunc i32 %182 to i8
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %183, ptr %181, align 1, !tbaa !14
  %185 = trunc i32 %175 to i8
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %185, ptr %184, align 1, !tbaa !14
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %188 = load i32, ptr %187, align 4, !tbaa !4
  %189 = lshr i32 %188, 24
  %190 = trunc nuw i32 %189 to i8
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %190, ptr %186, align 1, !tbaa !14
  %192 = lshr i32 %188, 16
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %193, ptr %191, align 1, !tbaa !14
  %195 = lshr i32 %188, 8
  %196 = trunc i32 %195 to i8
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %196, ptr %194, align 1, !tbaa !14
  %198 = trunc i32 %188 to i8
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %198, ptr %197, align 1, !tbaa !14
  %200 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %201 = load i32, ptr %200, align 4, !tbaa !4
  %202 = lshr i32 %201, 24
  %203 = trunc nuw i32 %202 to i8
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %203, ptr %199, align 1, !tbaa !14
  %205 = lshr i32 %201, 16
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %206, ptr %204, align 1, !tbaa !14
  %208 = lshr i32 %201, 8
  %209 = trunc i32 %208 to i8
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %209, ptr %207, align 1, !tbaa !14
  %211 = trunc i32 %201 to i8
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %211, ptr %210, align 1, !tbaa !14
  %213 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %214 = load i32, ptr %213, align 4, !tbaa !4
  %215 = lshr i32 %214, 24
  %216 = trunc nuw i32 %215 to i8
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %216, ptr %212, align 1, !tbaa !14
  %218 = lshr i32 %214, 16
  %219 = trunc i32 %218 to i8
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %219, ptr %217, align 1, !tbaa !14
  %221 = lshr i32 %214, 8
  %222 = trunc i32 %221 to i8
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %222, ptr %220, align 1, !tbaa !14
  %224 = trunc i32 %214 to i8
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %224, ptr %223, align 1, !tbaa !14
  %226 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %227 = load i32, ptr %226, align 4, !tbaa !4
  %228 = lshr i32 %227, 24
  %229 = trunc nuw i32 %228 to i8
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %229, ptr %225, align 1, !tbaa !14
  %231 = lshr i32 %227, 16
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %232, ptr %230, align 1, !tbaa !14
  %234 = lshr i32 %227, 8
  %235 = trunc i32 %234 to i8
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %235, ptr %233, align 1, !tbaa !14
  %237 = trunc i32 %227 to i8
  store i8 %237, ptr %236, align 1, !tbaa !14
  br label %446

238:                                              ; preds = %13
  %239 = load i32, ptr %1, align 4, !tbaa !4
  %240 = lshr i32 %239, 24
  %241 = trunc nuw i32 %240 to i8
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %241, ptr %0, align 1, !tbaa !14
  %243 = lshr i32 %239, 16
  %244 = trunc i32 %243 to i8
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %244, ptr %242, align 1, !tbaa !14
  %246 = lshr i32 %239, 8
  %247 = trunc i32 %246 to i8
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %247, ptr %245, align 1, !tbaa !14
  %249 = trunc i32 %239 to i8
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %249, ptr %248, align 1, !tbaa !14
  %251 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %252 = load i32, ptr %251, align 4, !tbaa !4
  %253 = lshr i32 %252, 24
  %254 = trunc nuw i32 %253 to i8
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %254, ptr %250, align 1, !tbaa !14
  %256 = lshr i32 %252, 16
  %257 = trunc i32 %256 to i8
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %257, ptr %255, align 1, !tbaa !14
  %259 = lshr i32 %252, 8
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %260, ptr %258, align 1, !tbaa !14
  %262 = trunc i32 %252 to i8
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %262, ptr %261, align 1, !tbaa !14
  %264 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %265 = load i32, ptr %264, align 4, !tbaa !4
  %266 = lshr i32 %265, 24
  %267 = trunc nuw i32 %266 to i8
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %267, ptr %263, align 1, !tbaa !14
  %269 = lshr i32 %265, 16
  %270 = trunc i32 %269 to i8
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %270, ptr %268, align 1, !tbaa !14
  %272 = lshr i32 %265, 8
  %273 = trunc i32 %272 to i8
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %273, ptr %271, align 1, !tbaa !14
  %275 = trunc i32 %265 to i8
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %275, ptr %274, align 1, !tbaa !14
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %278 = load i32, ptr %277, align 4, !tbaa !4
  %279 = lshr i32 %278, 24
  %280 = trunc nuw i32 %279 to i8
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %280, ptr %276, align 1, !tbaa !14
  %282 = lshr i32 %278, 16
  %283 = trunc i32 %282 to i8
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %283, ptr %281, align 1, !tbaa !14
  %285 = lshr i32 %278, 8
  %286 = trunc i32 %285 to i8
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %286, ptr %284, align 1, !tbaa !14
  %288 = trunc i32 %278 to i8
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %288, ptr %287, align 1, !tbaa !14
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %291 = load i32, ptr %290, align 4, !tbaa !4
  %292 = lshr i32 %291, 24
  %293 = trunc nuw i32 %292 to i8
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %293, ptr %289, align 1, !tbaa !14
  %295 = lshr i32 %291, 16
  %296 = trunc i32 %295 to i8
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %296, ptr %294, align 1, !tbaa !14
  %298 = lshr i32 %291, 8
  %299 = trunc i32 %298 to i8
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %299, ptr %297, align 1, !tbaa !14
  %301 = trunc i32 %291 to i8
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %301, ptr %300, align 1, !tbaa !14
  %303 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %304 = load i32, ptr %303, align 4, !tbaa !4
  %305 = lshr i32 %304, 24
  %306 = trunc nuw i32 %305 to i8
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %306, ptr %302, align 1, !tbaa !14
  %308 = lshr i32 %304, 16
  %309 = trunc i32 %308 to i8
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %309, ptr %307, align 1, !tbaa !14
  %311 = lshr i32 %304, 8
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %312, ptr %310, align 1, !tbaa !14
  %314 = trunc i32 %304 to i8
  store i8 %314, ptr %313, align 1, !tbaa !14
  br label %446

315:                                              ; preds = %430
  tail call void @llvm.ubsantrap(i8 18) #10, !nosanitize !15
  unreachable, !nosanitize !15

316:                                              ; preds = %13
  %317 = icmp ugt i32 %44, 32
  br i1 %317, label %446, label %318

318:                                              ; preds = %316
  %319 = icmp samesign ult i32 %44, 4
  br i1 %319, label %446, label %320

320:                                              ; preds = %318
  %321 = load i32, ptr %1, align 4, !tbaa !4
  %322 = lshr i32 %321, 24
  %323 = trunc nuw i32 %322 to i8
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %323, ptr %0, align 1, !tbaa !14
  %325 = lshr i32 %321, 16
  %326 = trunc i32 %325 to i8
  %327 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %326, ptr %324, align 1, !tbaa !14
  %328 = lshr i32 %321, 8
  %329 = trunc i32 %328 to i8
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %329, ptr %327, align 1, !tbaa !14
  %331 = trunc i32 %321 to i8
  store i8 %331, ptr %330, align 1, !tbaa !14
  %332 = load i32, ptr %43, align 4, !tbaa !8
  %333 = icmp ugt i32 %332, 7
  br i1 %333, label %334, label %446

334:                                              ; preds = %320
  %335 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %336 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %337 = load i32, ptr %336, align 4, !tbaa !4
  %338 = lshr i32 %337, 24
  %339 = trunc nuw i32 %338 to i8
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %339, ptr %335, align 1, !tbaa !14
  %341 = lshr i32 %337, 16
  %342 = trunc i32 %341 to i8
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %342, ptr %340, align 1, !tbaa !14
  %344 = lshr i32 %337, 8
  %345 = trunc i32 %344 to i8
  %346 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %345, ptr %343, align 1, !tbaa !14
  %347 = trunc i32 %337 to i8
  store i8 %347, ptr %346, align 1, !tbaa !14
  %348 = load i32, ptr %43, align 4, !tbaa !8
  %349 = icmp ugt i32 %348, 11
  br i1 %349, label %350, label %446

350:                                              ; preds = %334
  %351 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %352 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %353 = load i32, ptr %352, align 4, !tbaa !4
  %354 = lshr i32 %353, 24
  %355 = trunc nuw i32 %354 to i8
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %355, ptr %351, align 1, !tbaa !14
  %357 = lshr i32 %353, 16
  %358 = trunc i32 %357 to i8
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %358, ptr %356, align 1, !tbaa !14
  %360 = lshr i32 %353, 8
  %361 = trunc i32 %360 to i8
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %361, ptr %359, align 1, !tbaa !14
  %363 = trunc i32 %353 to i8
  store i8 %363, ptr %362, align 1, !tbaa !14
  %364 = load i32, ptr %43, align 4, !tbaa !8
  %365 = icmp ugt i32 %364, 15
  br i1 %365, label %366, label %446

366:                                              ; preds = %350
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %368 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %369 = load i32, ptr %368, align 4, !tbaa !4
  %370 = lshr i32 %369, 24
  %371 = trunc nuw i32 %370 to i8
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %371, ptr %367, align 1, !tbaa !14
  %373 = lshr i32 %369, 16
  %374 = trunc i32 %373 to i8
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %374, ptr %372, align 1, !tbaa !14
  %376 = lshr i32 %369, 8
  %377 = trunc i32 %376 to i8
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %377, ptr %375, align 1, !tbaa !14
  %379 = trunc i32 %369 to i8
  store i8 %379, ptr %378, align 1, !tbaa !14
  %380 = load i32, ptr %43, align 4, !tbaa !8
  %381 = icmp ugt i32 %380, 19
  br i1 %381, label %382, label %446

382:                                              ; preds = %366
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %384 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %385 = load i32, ptr %384, align 4, !tbaa !4
  %386 = lshr i32 %385, 24
  %387 = trunc nuw i32 %386 to i8
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %387, ptr %383, align 1, !tbaa !14
  %389 = lshr i32 %385, 16
  %390 = trunc i32 %389 to i8
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %390, ptr %388, align 1, !tbaa !14
  %392 = lshr i32 %385, 8
  %393 = trunc i32 %392 to i8
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %393, ptr %391, align 1, !tbaa !14
  %395 = trunc i32 %385 to i8
  store i8 %395, ptr %394, align 1, !tbaa !14
  %396 = load i32, ptr %43, align 4, !tbaa !8
  %397 = icmp ugt i32 %396, 23
  br i1 %397, label %398, label %446

398:                                              ; preds = %382
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %400 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %401 = load i32, ptr %400, align 4, !tbaa !4
  %402 = lshr i32 %401, 24
  %403 = trunc nuw i32 %402 to i8
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %403, ptr %399, align 1, !tbaa !14
  %405 = lshr i32 %401, 16
  %406 = trunc i32 %405 to i8
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %406, ptr %404, align 1, !tbaa !14
  %408 = lshr i32 %401, 8
  %409 = trunc i32 %408 to i8
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %409, ptr %407, align 1, !tbaa !14
  %411 = trunc i32 %401 to i8
  store i8 %411, ptr %410, align 1, !tbaa !14
  %412 = load i32, ptr %43, align 4, !tbaa !8
  %413 = icmp ugt i32 %412, 27
  br i1 %413, label %414, label %446

414:                                              ; preds = %398
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %416 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %417 = load i32, ptr %416, align 4, !tbaa !4
  %418 = lshr i32 %417, 24
  %419 = trunc nuw i32 %418 to i8
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %419, ptr %415, align 1, !tbaa !14
  %421 = lshr i32 %417, 16
  %422 = trunc i32 %421 to i8
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %422, ptr %420, align 1, !tbaa !14
  %424 = lshr i32 %417, 8
  %425 = trunc i32 %424 to i8
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %425, ptr %423, align 1, !tbaa !14
  %427 = trunc i32 %417 to i8
  store i8 %427, ptr %426, align 1, !tbaa !14
  %428 = load i32, ptr %43, align 4, !tbaa !8
  %429 = icmp ugt i32 %428, 31
  br i1 %429, label %430, label %446

430:                                              ; preds = %414
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %432 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %433 = load i32, ptr %432, align 4, !tbaa !4
  %434 = lshr i32 %433, 24
  %435 = trunc nuw i32 %434 to i8
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %435, ptr %431, align 1, !tbaa !14
  %437 = lshr i32 %433, 16
  %438 = trunc i32 %437 to i8
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %438, ptr %436, align 1, !tbaa !14
  %440 = lshr i32 %433, 8
  %441 = trunc i32 %440 to i8
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %441, ptr %439, align 1, !tbaa !14
  %443 = trunc i32 %433 to i8
  store i8 %443, ptr %442, align 1, !tbaa !14
  %444 = load i32, ptr %43, align 4, !tbaa !8
  %445 = icmp ugt i32 %444, 35
  br i1 %445, label %315, label %446

446:                                              ; preds = %320, %334, %350, %366, %382, %398, %414, %430, %45, %148, %238, %318, %316
  %447 = phi i32 [ 0, %316 ], [ 1, %238 ], [ 1, %45 ], [ 1, %318 ], [ 1, %148 ], [ 1, %430 ], [ 1, %414 ], [ 1, %398 ], [ 1, %382 ], [ 1, %366 ], [ 1, %350 ], [ 1, %334 ], [ 1, %320 ]
  ret i32 %447
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @SHA256_Update_thunk(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %56, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %8, 3
  %10 = add i32 %7, %9
  %11 = icmp ult i32 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %13 = load i32, ptr %12, align 4, !tbaa !12
  br i1 %11, label %14, label %16, !prof !10

14:                                               ; preds = %5
  %15 = add i32 %13, 1
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i32 [ %15, %14 ], [ %13, %5 ]
  %18 = lshr i64 %2, 29
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %21 = add i32 %17, %19
  store i32 %21, ptr %20, align 4, !tbaa !12
  store i32 %10, ptr %6, align 4, !tbaa !11
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = zext i32 %23 to i64
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %40, label %26, !prof !10

26:                                               ; preds = %16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %28 = icmp ugt i64 %2, 63
  %29 = add nuw nsw i64 %2, %24
  %30 = icmp ugt i64 %29, 63
  %31 = select i1 %28, i1 true, i1 %30
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 %24
  br i1 %31, label %33, label %37

33:                                               ; preds = %26
  %34 = sub nsw i64 64, %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr align 1 %1, i64 %34, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %27, i64 noundef 1)
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 %34
  %36 = sub i64 %2, %34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %27, i8 0, i64 68, i1 false)
  br label %40

37:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr align 1 %1, i64 %2, i1 false)
  %38 = load i32, ptr %22, align 4, !tbaa !13
  %39 = add i32 %38, %8
  store i32 %39, ptr %22, align 4, !tbaa !13
  br label %56

40:                                               ; preds = %33, %16
  %41 = phi i64 [ %36, %33 ], [ %2, %16 ]
  %42 = phi ptr [ %35, %33 ], [ %1, %16 ]
  %43 = lshr i64 %41, 6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %42, i64 noundef %43)
  %46 = and i64 %41, -64
  %47 = getelementptr inbounds nuw i8, ptr %42, i64 %46
  %48 = and i64 %41, 63
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i64 [ %48, %45 ], [ %41, %40 ]
  %51 = phi ptr [ %47, %45 ], [ %42, %40 ]
  %52 = icmp eq i64 %50, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %55 = trunc i64 %50 to i32
  store i32 %55, ptr %22, align 4, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr align 1 %51, i64 %50, i1 false)
  br label %56

56:                                               ; preds = %49, %53, %3, %37
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha256_block_data_order(ptr noundef captures(none) %0, ptr noundef readonly %1, i64 noundef range(i64 1, 288230376151711744) %2) unnamed_addr #3 {
  %4 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 36
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 44
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 52
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %27 = load i32, ptr %0, align 4, !tbaa !4
  %28 = load i32, ptr %5, align 4, !tbaa !4
  %29 = load i32, ptr %6, align 4, !tbaa !4
  %30 = load i32, ptr %7, align 4, !tbaa !4
  %31 = load i32, ptr %8, align 4, !tbaa !4
  %32 = load i32, ptr %9, align 4, !tbaa !4
  %33 = load i32, ptr %10, align 4, !tbaa !4
  %34 = load i32, ptr %11, align 4, !tbaa !4
  br label %35

35:                                               ; preds = %3, %906
  %36 = phi i64 [ %2, %3 ], [ %907, %906 ]
  %37 = phi ptr [ %1, %3 ], [ %908, %906 ]
  %38 = phi i32 [ %27, %3 ], [ %909, %906 ]
  %39 = phi i32 [ %28, %3 ], [ %910, %906 ]
  %40 = phi i32 [ %29, %3 ], [ %911, %906 ]
  %41 = phi i32 [ %30, %3 ], [ %912, %906 ]
  %42 = phi i32 [ %31, %3 ], [ %913, %906 ]
  %43 = phi i32 [ %32, %3 ], [ %914, %906 ]
  %44 = phi i32 [ %33, %3 ], [ %915, %906 ]
  %45 = phi i32 [ %34, %3 ], [ %916, %906 ]
  %46 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %47 = load i32, ptr %37, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  store i32 %48, ptr %4, align 16, !tbaa !4
  %49 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 26)
  %50 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 21)
  %51 = xor i32 %49, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 7)
  %53 = xor i32 %51, %52
  %54 = and i32 %43, %42
  %55 = xor i32 %42, -1
  %56 = and i32 %44, %55
  %57 = or i32 %56, %54
  %58 = add i32 %53, 1116352408
  %59 = add i32 %58, %45
  %60 = add i32 %59, %57
  %61 = add i32 %60, %48
  %62 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 30)
  %63 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 19)
  %64 = xor i32 %62, %63
  %65 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 10)
  %66 = xor i32 %64, %65
  %67 = and i32 %39, %38
  %68 = xor i32 %40, %39
  %69 = and i32 %68, %38
  %70 = and i32 %40, %39
  %71 = xor i32 %69, %70
  %72 = add i32 %71, %66
  %73 = add i32 %61, %41
  %74 = add i32 %72, %61
  %75 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %76 = load i32, ptr %46, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  store i32 %77, ptr %12, align 4, !tbaa !4
  %78 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 26)
  %79 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 21)
  %80 = xor i32 %78, %79
  %81 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 7)
  %82 = xor i32 %80, %81
  %83 = and i32 %73, %42
  %84 = xor i32 %73, -1
  %85 = and i32 %43, %84
  %86 = or i32 %83, %85
  %87 = add i32 %44, 1899447441
  %88 = add i32 %87, %86
  %89 = add i32 %88, %82
  %90 = add i32 %89, %77
  %91 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 30)
  %92 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 19)
  %93 = xor i32 %91, %92
  %94 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 10)
  %95 = xor i32 %93, %94
  %96 = and i32 %74, %38
  %97 = xor i32 %39, %38
  %98 = and i32 %74, %97
  %99 = xor i32 %98, %67
  %100 = add i32 %95, %99
  %101 = add i32 %90, %40
  %102 = add i32 %100, %90
  %103 = getelementptr inbounds nuw i8, ptr %37, i64 12
  %104 = load i32, ptr %75, align 1
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  store i32 %105, ptr %13, align 8, !tbaa !4
  %106 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 26)
  %107 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 21)
  %108 = xor i32 %106, %107
  %109 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 7)
  %110 = xor i32 %108, %109
  %111 = and i32 %101, %73
  %112 = xor i32 %101, -1
  %113 = and i32 %42, %112
  %114 = or i32 %111, %113
  %115 = add i32 %43, -1245643825
  %116 = add i32 %115, %105
  %117 = add i32 %116, %114
  %118 = add i32 %117, %110
  %119 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 30)
  %120 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 19)
  %121 = xor i32 %119, %120
  %122 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 10)
  %123 = xor i32 %121, %122
  %124 = and i32 %102, %74
  %125 = xor i32 %74, %38
  %126 = and i32 %102, %125
  %127 = xor i32 %126, %96
  %128 = add i32 %123, %127
  %129 = add i32 %118, %39
  %130 = add i32 %128, %118
  %131 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %132 = load i32, ptr %103, align 1
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  store i32 %133, ptr %14, align 4, !tbaa !4
  %134 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 26)
  %135 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 21)
  %136 = xor i32 %134, %135
  %137 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 7)
  %138 = xor i32 %136, %137
  %139 = and i32 %129, %101
  %140 = xor i32 %129, -1
  %141 = and i32 %73, %140
  %142 = or i32 %139, %141
  %143 = add i32 %42, -373957723
  %144 = add i32 %143, %133
  %145 = add i32 %144, %142
  %146 = add i32 %145, %138
  %147 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 30)
  %148 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 19)
  %149 = xor i32 %147, %148
  %150 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 10)
  %151 = xor i32 %149, %150
  %152 = and i32 %130, %102
  %153 = xor i32 %102, %74
  %154 = and i32 %130, %153
  %155 = xor i32 %154, %124
  %156 = add i32 %151, %155
  %157 = add i32 %146, %38
  %158 = add i32 %156, %146
  %159 = getelementptr inbounds nuw i8, ptr %37, i64 20
  %160 = load i32, ptr %131, align 1
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  store i32 %161, ptr %15, align 16, !tbaa !4
  %162 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 26)
  %163 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 21)
  %164 = xor i32 %162, %163
  %165 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 7)
  %166 = xor i32 %164, %165
  %167 = and i32 %157, %129
  %168 = xor i32 %157, -1
  %169 = and i32 %101, %168
  %170 = or i32 %167, %169
  %171 = add i32 %73, 961987163
  %172 = add i32 %171, %161
  %173 = add i32 %172, %170
  %174 = add i32 %173, %166
  %175 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 30)
  %176 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 19)
  %177 = xor i32 %175, %176
  %178 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 10)
  %179 = xor i32 %177, %178
  %180 = and i32 %158, %130
  %181 = xor i32 %130, %102
  %182 = and i32 %158, %181
  %183 = xor i32 %182, %152
  %184 = add i32 %179, %183
  %185 = add i32 %174, %74
  %186 = add i32 %184, %174
  %187 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %188 = load i32, ptr %159, align 1
  %189 = tail call i32 @llvm.bswap.i32(i32 %188)
  store i32 %189, ptr %16, align 4, !tbaa !4
  %190 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 26)
  %191 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 21)
  %192 = xor i32 %190, %191
  %193 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 7)
  %194 = xor i32 %192, %193
  %195 = and i32 %185, %157
  %196 = xor i32 %185, -1
  %197 = and i32 %129, %196
  %198 = or i32 %195, %197
  %199 = add i32 %101, 1508970993
  %200 = add i32 %199, %189
  %201 = add i32 %200, %198
  %202 = add i32 %201, %194
  %203 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 30)
  %204 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 19)
  %205 = xor i32 %203, %204
  %206 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 10)
  %207 = xor i32 %205, %206
  %208 = and i32 %186, %158
  %209 = xor i32 %158, %130
  %210 = and i32 %186, %209
  %211 = xor i32 %210, %180
  %212 = add i32 %207, %211
  %213 = add i32 %202, %102
  %214 = add i32 %212, %202
  %215 = getelementptr inbounds nuw i8, ptr %37, i64 28
  %216 = load i32, ptr %187, align 1
  %217 = tail call i32 @llvm.bswap.i32(i32 %216)
  store i32 %217, ptr %17, align 8, !tbaa !4
  %218 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 26)
  %219 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 21)
  %220 = xor i32 %218, %219
  %221 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 7)
  %222 = xor i32 %220, %221
  %223 = and i32 %213, %185
  %224 = xor i32 %213, -1
  %225 = and i32 %157, %224
  %226 = or i32 %223, %225
  %227 = add i32 %129, -1841331548
  %228 = add i32 %227, %217
  %229 = add i32 %228, %226
  %230 = add i32 %229, %222
  %231 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 30)
  %232 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 19)
  %233 = xor i32 %231, %232
  %234 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 10)
  %235 = xor i32 %233, %234
  %236 = and i32 %214, %186
  %237 = xor i32 %186, %158
  %238 = and i32 %214, %237
  %239 = xor i32 %238, %208
  %240 = add i32 %235, %239
  %241 = add i32 %230, %130
  %242 = add i32 %240, %230
  %243 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %244 = load i32, ptr %215, align 1
  %245 = tail call i32 @llvm.bswap.i32(i32 %244)
  store i32 %245, ptr %18, align 4, !tbaa !4
  %246 = tail call i32 @llvm.fshl.i32(i32 %241, i32 %241, i32 26)
  %247 = tail call i32 @llvm.fshl.i32(i32 %241, i32 %241, i32 21)
  %248 = xor i32 %246, %247
  %249 = tail call i32 @llvm.fshl.i32(i32 %241, i32 %241, i32 7)
  %250 = xor i32 %248, %249
  %251 = and i32 %241, %213
  %252 = xor i32 %241, -1
  %253 = and i32 %185, %252
  %254 = or i32 %251, %253
  %255 = add i32 %157, -1424204075
  %256 = add i32 %255, %245
  %257 = add i32 %256, %254
  %258 = add i32 %257, %250
  %259 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 30)
  %260 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 19)
  %261 = xor i32 %259, %260
  %262 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 10)
  %263 = xor i32 %261, %262
  %264 = and i32 %242, %214
  %265 = xor i32 %214, %186
  %266 = and i32 %242, %265
  %267 = xor i32 %266, %236
  %268 = add i32 %263, %267
  %269 = add i32 %258, %158
  %270 = add i32 %268, %258
  %271 = getelementptr inbounds nuw i8, ptr %37, i64 36
  %272 = load i32, ptr %243, align 1
  %273 = tail call i32 @llvm.bswap.i32(i32 %272)
  store i32 %273, ptr %19, align 16, !tbaa !4
  %274 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 26)
  %275 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 21)
  %276 = xor i32 %274, %275
  %277 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 7)
  %278 = xor i32 %276, %277
  %279 = and i32 %269, %241
  %280 = xor i32 %269, -1
  %281 = and i32 %213, %280
  %282 = or i32 %279, %281
  %283 = add i32 %185, -670586216
  %284 = add i32 %283, %273
  %285 = add i32 %284, %282
  %286 = add i32 %285, %278
  %287 = tail call i32 @llvm.fshl.i32(i32 %270, i32 %270, i32 30)
  %288 = tail call i32 @llvm.fshl.i32(i32 %270, i32 %270, i32 19)
  %289 = xor i32 %287, %288
  %290 = tail call i32 @llvm.fshl.i32(i32 %270, i32 %270, i32 10)
  %291 = xor i32 %289, %290
  %292 = and i32 %270, %242
  %293 = xor i32 %242, %214
  %294 = and i32 %270, %293
  %295 = xor i32 %294, %264
  %296 = add i32 %291, %295
  %297 = add i32 %286, %186
  %298 = add i32 %296, %286
  %299 = getelementptr inbounds nuw i8, ptr %37, i64 40
  %300 = load i32, ptr %271, align 1
  %301 = tail call i32 @llvm.bswap.i32(i32 %300)
  store i32 %301, ptr %20, align 4, !tbaa !4
  %302 = tail call i32 @llvm.fshl.i32(i32 %297, i32 %297, i32 26)
  %303 = tail call i32 @llvm.fshl.i32(i32 %297, i32 %297, i32 21)
  %304 = xor i32 %302, %303
  %305 = tail call i32 @llvm.fshl.i32(i32 %297, i32 %297, i32 7)
  %306 = xor i32 %304, %305
  %307 = and i32 %297, %269
  %308 = xor i32 %297, -1
  %309 = and i32 %241, %308
  %310 = or i32 %307, %309
  %311 = add i32 %213, 310598401
  %312 = add i32 %311, %301
  %313 = add i32 %312, %310
  %314 = add i32 %313, %306
  %315 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 30)
  %316 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 19)
  %317 = xor i32 %315, %316
  %318 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 10)
  %319 = xor i32 %317, %318
  %320 = and i32 %298, %270
  %321 = xor i32 %270, %242
  %322 = and i32 %298, %321
  %323 = xor i32 %322, %292
  %324 = add i32 %319, %323
  %325 = add i32 %314, %214
  %326 = add i32 %324, %314
  %327 = getelementptr inbounds nuw i8, ptr %37, i64 44
  %328 = load i32, ptr %299, align 1
  %329 = tail call i32 @llvm.bswap.i32(i32 %328)
  store i32 %329, ptr %21, align 8, !tbaa !4
  %330 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 26)
  %331 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 21)
  %332 = xor i32 %330, %331
  %333 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 7)
  %334 = xor i32 %332, %333
  %335 = and i32 %325, %297
  %336 = xor i32 %325, -1
  %337 = and i32 %269, %336
  %338 = or i32 %335, %337
  %339 = add i32 %241, 607225278
  %340 = add i32 %339, %329
  %341 = add i32 %340, %338
  %342 = add i32 %341, %334
  %343 = tail call i32 @llvm.fshl.i32(i32 %326, i32 %326, i32 30)
  %344 = tail call i32 @llvm.fshl.i32(i32 %326, i32 %326, i32 19)
  %345 = xor i32 %343, %344
  %346 = tail call i32 @llvm.fshl.i32(i32 %326, i32 %326, i32 10)
  %347 = xor i32 %345, %346
  %348 = and i32 %326, %298
  %349 = xor i32 %298, %270
  %350 = and i32 %326, %349
  %351 = xor i32 %350, %320
  %352 = add i32 %347, %351
  %353 = add i32 %342, %242
  %354 = add i32 %352, %342
  %355 = getelementptr inbounds nuw i8, ptr %37, i64 48
  %356 = load i32, ptr %327, align 1
  %357 = tail call i32 @llvm.bswap.i32(i32 %356)
  store i32 %357, ptr %22, align 4, !tbaa !4
  %358 = tail call i32 @llvm.fshl.i32(i32 %353, i32 %353, i32 26)
  %359 = tail call i32 @llvm.fshl.i32(i32 %353, i32 %353, i32 21)
  %360 = xor i32 %358, %359
  %361 = tail call i32 @llvm.fshl.i32(i32 %353, i32 %353, i32 7)
  %362 = xor i32 %360, %361
  %363 = and i32 %353, %325
  %364 = xor i32 %353, -1
  %365 = and i32 %297, %364
  %366 = or i32 %363, %365
  %367 = add i32 %357, 1426881987
  %368 = add i32 %367, %269
  %369 = add i32 %368, %366
  %370 = add i32 %369, %362
  %371 = tail call i32 @llvm.fshl.i32(i32 %354, i32 %354, i32 30)
  %372 = tail call i32 @llvm.fshl.i32(i32 %354, i32 %354, i32 19)
  %373 = xor i32 %371, %372
  %374 = tail call i32 @llvm.fshl.i32(i32 %354, i32 %354, i32 10)
  %375 = xor i32 %373, %374
  %376 = and i32 %354, %326
  %377 = xor i32 %326, %298
  %378 = and i32 %354, %377
  %379 = xor i32 %378, %348
  %380 = add i32 %375, %379
  %381 = add i32 %370, %270
  %382 = add i32 %380, %370
  %383 = getelementptr inbounds nuw i8, ptr %37, i64 52
  %384 = load i32, ptr %355, align 1
  %385 = tail call i32 @llvm.bswap.i32(i32 %384)
  store i32 %385, ptr %23, align 16, !tbaa !4
  %386 = tail call i32 @llvm.fshl.i32(i32 %381, i32 %381, i32 26)
  %387 = tail call i32 @llvm.fshl.i32(i32 %381, i32 %381, i32 21)
  %388 = xor i32 %386, %387
  %389 = tail call i32 @llvm.fshl.i32(i32 %381, i32 %381, i32 7)
  %390 = xor i32 %388, %389
  %391 = and i32 %381, %353
  %392 = xor i32 %381, -1
  %393 = and i32 %325, %392
  %394 = or i32 %391, %393
  %395 = add i32 %385, 1925078388
  %396 = add i32 %395, %297
  %397 = add i32 %396, %394
  %398 = add i32 %397, %390
  %399 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 30)
  %400 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 19)
  %401 = xor i32 %399, %400
  %402 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 10)
  %403 = xor i32 %401, %402
  %404 = and i32 %382, %354
  %405 = xor i32 %354, %326
  %406 = and i32 %382, %405
  %407 = xor i32 %406, %376
  %408 = add i32 %403, %407
  %409 = add i32 %398, %298
  %410 = add i32 %408, %398
  %411 = getelementptr inbounds nuw i8, ptr %37, i64 56
  %412 = load i32, ptr %383, align 1
  %413 = tail call i32 @llvm.bswap.i32(i32 %412)
  store i32 %413, ptr %24, align 4, !tbaa !4
  %414 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 26)
  %415 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 21)
  %416 = xor i32 %414, %415
  %417 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 7)
  %418 = xor i32 %416, %417
  %419 = and i32 %409, %381
  %420 = xor i32 %409, -1
  %421 = and i32 %353, %420
  %422 = or i32 %419, %421
  %423 = add i32 %413, -2132889090
  %424 = add i32 %423, %325
  %425 = add i32 %424, %422
  %426 = add i32 %425, %418
  %427 = tail call i32 @llvm.fshl.i32(i32 %410, i32 %410, i32 30)
  %428 = tail call i32 @llvm.fshl.i32(i32 %410, i32 %410, i32 19)
  %429 = xor i32 %427, %428
  %430 = tail call i32 @llvm.fshl.i32(i32 %410, i32 %410, i32 10)
  %431 = xor i32 %429, %430
  %432 = and i32 %410, %382
  %433 = xor i32 %382, %354
  %434 = and i32 %410, %433
  %435 = xor i32 %434, %404
  %436 = add i32 %431, %435
  %437 = add i32 %426, %326
  %438 = add i32 %436, %426
  %439 = getelementptr inbounds nuw i8, ptr %37, i64 60
  %440 = load i32, ptr %411, align 1
  %441 = tail call i32 @llvm.bswap.i32(i32 %440)
  store i32 %441, ptr %25, align 8, !tbaa !4
  %442 = tail call i32 @llvm.fshl.i32(i32 %437, i32 %437, i32 26)
  %443 = tail call i32 @llvm.fshl.i32(i32 %437, i32 %437, i32 21)
  %444 = xor i32 %442, %443
  %445 = tail call i32 @llvm.fshl.i32(i32 %437, i32 %437, i32 7)
  %446 = xor i32 %444, %445
  %447 = and i32 %437, %409
  %448 = xor i32 %437, -1
  %449 = and i32 %381, %448
  %450 = or i32 %447, %449
  %451 = add i32 %441, -1680079193
  %452 = add i32 %451, %353
  %453 = add i32 %452, %450
  %454 = add i32 %453, %446
  %455 = tail call i32 @llvm.fshl.i32(i32 %438, i32 %438, i32 30)
  %456 = tail call i32 @llvm.fshl.i32(i32 %438, i32 %438, i32 19)
  %457 = xor i32 %455, %456
  %458 = tail call i32 @llvm.fshl.i32(i32 %438, i32 %438, i32 10)
  %459 = xor i32 %457, %458
  %460 = and i32 %438, %410
  %461 = xor i32 %410, %382
  %462 = and i32 %438, %461
  %463 = xor i32 %462, %432
  %464 = add i32 %459, %463
  %465 = add i32 %454, %354
  %466 = add i32 %464, %454
  %467 = load i32, ptr %439, align 1
  %468 = tail call i32 @llvm.bswap.i32(i32 %467)
  store i32 %468, ptr %26, align 4, !tbaa !4
  %469 = tail call i32 @llvm.fshl.i32(i32 %465, i32 %465, i32 26)
  %470 = tail call i32 @llvm.fshl.i32(i32 %465, i32 %465, i32 21)
  %471 = xor i32 %469, %470
  %472 = tail call i32 @llvm.fshl.i32(i32 %465, i32 %465, i32 7)
  %473 = xor i32 %471, %472
  %474 = and i32 %465, %437
  %475 = xor i32 %465, -1
  %476 = and i32 %409, %475
  %477 = or i32 %474, %476
  %478 = add i32 %468, -1046744716
  %479 = add i32 %478, %381
  %480 = add i32 %479, %477
  %481 = add i32 %480, %473
  %482 = tail call i32 @llvm.fshl.i32(i32 %466, i32 %466, i32 30)
  %483 = tail call i32 @llvm.fshl.i32(i32 %466, i32 %466, i32 19)
  %484 = xor i32 %482, %483
  %485 = tail call i32 @llvm.fshl.i32(i32 %466, i32 %466, i32 10)
  %486 = xor i32 %484, %485
  %487 = xor i32 %438, %410
  %488 = and i32 %466, %487
  %489 = xor i32 %488, %460
  %490 = add i32 %486, %489
  %491 = add i32 %481, %382
  %492 = add i32 %490, %481
  br label %493

493:                                              ; preds = %35, %493
  %494 = phi i64 [ 16, %35 ], [ %904, %493 ]
  %495 = phi i32 [ %492, %35 ], [ %903, %493 ]
  %496 = phi i32 [ %409, %35 ], [ %761, %493 ]
  %497 = phi i32 [ %437, %35 ], [ %808, %493 ]
  %498 = phi i32 [ %465, %35 ], [ %855, %493 ]
  %499 = phi i32 [ %491, %35 ], [ %902, %493 ]
  %500 = phi i32 [ %410, %35 ], [ %762, %493 ]
  %501 = phi i32 [ %438, %35 ], [ %809, %493 ]
  %502 = phi i32 [ %466, %35 ], [ %856, %493 ]
  %503 = or disjoint i64 %494, 1
  %504 = and i64 %503, 9
  %505 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %504
  %506 = and i64 %494, 8
  %507 = and i64 %494, 8
  %508 = load i32, ptr %505, align 4, !tbaa !4
  %509 = tail call i32 @llvm.fshl.i32(i32 %508, i32 %508, i32 25)
  %510 = tail call i32 @llvm.fshl.i32(i32 %508, i32 %508, i32 14)
  %511 = xor i32 %509, %510
  %512 = lshr i32 %508, 3
  %513 = xor i32 %511, %512
  %514 = add nuw nsw i64 %494, 14
  %515 = and i64 %514, 14
  %516 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %515
  %517 = load i32, ptr %516, align 8, !tbaa !4
  %518 = tail call i32 @llvm.fshl.i32(i32 %517, i32 %517, i32 15)
  %519 = tail call i32 @llvm.fshl.i32(i32 %517, i32 %517, i32 13)
  %520 = xor i32 %518, %519
  %521 = lshr i32 %517, 10
  %522 = xor i32 %520, %521
  %523 = add nuw nsw i64 %494, 9
  %524 = and i64 %523, 9
  %525 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !4
  %527 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %507
  %528 = load i32, ptr %527, align 16, !tbaa !4
  %529 = add i32 %513, %526
  %530 = add i32 %529, %528
  %531 = add i32 %530, %522
  store i32 %531, ptr %527, align 16, !tbaa !4
  %532 = tail call i32 @llvm.fshl.i32(i32 %499, i32 %499, i32 26)
  %533 = tail call i32 @llvm.fshl.i32(i32 %499, i32 %499, i32 21)
  %534 = xor i32 %532, %533
  %535 = tail call i32 @llvm.fshl.i32(i32 %499, i32 %499, i32 7)
  %536 = xor i32 %534, %535
  %537 = add i32 %496, %536
  %538 = and i32 %498, %499
  %539 = xor i32 %499, -1
  %540 = and i32 %497, %539
  %541 = or i32 %540, %538
  %542 = add i32 %537, %541
  %543 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %494
  %544 = load i32, ptr %543, align 16, !tbaa !4
  %545 = add i32 %542, %544
  %546 = add i32 %545, %531
  %547 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 30)
  %548 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 19)
  %549 = xor i32 %547, %548
  %550 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 10)
  %551 = xor i32 %549, %550
  %552 = and i32 %495, %502
  %553 = xor i32 %501, %502
  %554 = and i32 %495, %553
  %555 = and i32 %501, %502
  %556 = xor i32 %554, %555
  %557 = add i32 %551, %556
  %558 = add i32 %546, %500
  %559 = add i32 %557, %546
  %560 = getelementptr inbounds nuw i8, ptr %527, i64 8
  %561 = load i32, ptr %560, align 8, !tbaa !4
  %562 = tail call i32 @llvm.fshl.i32(i32 %561, i32 %561, i32 25)
  %563 = tail call i32 @llvm.fshl.i32(i32 %561, i32 %561, i32 14)
  %564 = xor i32 %562, %563
  %565 = lshr i32 %561, 3
  %566 = xor i32 %564, %565
  %567 = add nuw nsw i64 %494, 15
  %568 = and i64 %567, 15
  %569 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %568
  %570 = load i32, ptr %569, align 4, !tbaa !4
  %571 = tail call i32 @llvm.fshl.i32(i32 %570, i32 %570, i32 15)
  %572 = tail call i32 @llvm.fshl.i32(i32 %570, i32 %570, i32 13)
  %573 = xor i32 %571, %572
  %574 = lshr i32 %570, 10
  %575 = xor i32 %573, %574
  %576 = add nuw nsw i64 %494, 10
  %577 = and i64 %576, 10
  %578 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %577
  %579 = load i32, ptr %578, align 8, !tbaa !4
  %580 = add i32 %579, %508
  %581 = add i32 %580, %566
  %582 = add i32 %581, %575
  store i32 %582, ptr %505, align 4, !tbaa !4
  %583 = tail call i32 @llvm.fshl.i32(i32 %558, i32 %558, i32 26)
  %584 = tail call i32 @llvm.fshl.i32(i32 %558, i32 %558, i32 21)
  %585 = xor i32 %583, %584
  %586 = tail call i32 @llvm.fshl.i32(i32 %558, i32 %558, i32 7)
  %587 = xor i32 %585, %586
  %588 = and i32 %558, %499
  %589 = xor i32 %558, -1
  %590 = and i32 %498, %589
  %591 = or i32 %588, %590
  %592 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %503
  %593 = load i32, ptr %592, align 4, !tbaa !4
  %594 = add i32 %593, %497
  %595 = add i32 %594, %591
  %596 = add i32 %595, %587
  %597 = add i32 %596, %582
  %598 = tail call i32 @llvm.fshl.i32(i32 %559, i32 %559, i32 30)
  %599 = tail call i32 @llvm.fshl.i32(i32 %559, i32 %559, i32 19)
  %600 = xor i32 %598, %599
  %601 = tail call i32 @llvm.fshl.i32(i32 %559, i32 %559, i32 10)
  %602 = xor i32 %600, %601
  %603 = and i32 %559, %495
  %604 = xor i32 %495, %502
  %605 = and i32 %559, %604
  %606 = xor i32 %605, %552
  %607 = add i32 %602, %606
  %608 = add i32 %597, %501
  %609 = add i32 %607, %597
  %610 = or disjoint i64 %494, 2
  %611 = and i64 %610, 10
  %612 = getelementptr inbounds nuw i8, ptr %527, i64 12
  %613 = load i32, ptr %612, align 4, !tbaa !4
  %614 = tail call i32 @llvm.fshl.i32(i32 %613, i32 %613, i32 25)
  %615 = tail call i32 @llvm.fshl.i32(i32 %613, i32 %613, i32 14)
  %616 = xor i32 %614, %615
  %617 = lshr i32 %613, 3
  %618 = xor i32 %616, %617
  %619 = tail call i32 @llvm.fshl.i32(i32 %531, i32 %531, i32 15)
  %620 = tail call i32 @llvm.fshl.i32(i32 %531, i32 %531, i32 13)
  %621 = xor i32 %619, %620
  %622 = lshr i32 %531, 10
  %623 = xor i32 %621, %622
  %624 = add nuw nsw i64 %494, 11
  %625 = and i64 %624, 11
  %626 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %625
  %627 = load i32, ptr %626, align 4, !tbaa !4
  %628 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %611
  %629 = load i32, ptr %628, align 8, !tbaa !4
  %630 = add i32 %627, %623
  %631 = add i32 %630, %629
  %632 = add i32 %631, %618
  store i32 %632, ptr %628, align 8, !tbaa !4
  %633 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 26)
  %634 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 21)
  %635 = xor i32 %633, %634
  %636 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 7)
  %637 = xor i32 %635, %636
  %638 = and i32 %608, %558
  %639 = xor i32 %608, -1
  %640 = and i32 %499, %639
  %641 = or i32 %638, %640
  %642 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %610
  %643 = load i32, ptr %642, align 8, !tbaa !4
  %644 = add i32 %643, %498
  %645 = add i32 %644, %632
  %646 = add i32 %645, %641
  %647 = add i32 %646, %637
  %648 = tail call i32 @llvm.fshl.i32(i32 %609, i32 %609, i32 30)
  %649 = tail call i32 @llvm.fshl.i32(i32 %609, i32 %609, i32 19)
  %650 = xor i32 %648, %649
  %651 = tail call i32 @llvm.fshl.i32(i32 %609, i32 %609, i32 10)
  %652 = xor i32 %650, %651
  %653 = and i32 %609, %559
  %654 = xor i32 %559, %495
  %655 = and i32 %609, %654
  %656 = xor i32 %655, %603
  %657 = add i32 %652, %656
  %658 = add i32 %647, %502
  %659 = add i32 %657, %647
  %660 = or disjoint i64 %494, 3
  %661 = and i64 %660, 11
  %662 = getelementptr inbounds nuw i8, ptr %527, i64 16
  %663 = load i32, ptr %662, align 16, !tbaa !4
  %664 = tail call i32 @llvm.fshl.i32(i32 %663, i32 %663, i32 25)
  %665 = tail call i32 @llvm.fshl.i32(i32 %663, i32 %663, i32 14)
  %666 = xor i32 %664, %665
  %667 = lshr i32 %663, 3
  %668 = xor i32 %666, %667
  %669 = getelementptr inbounds nuw i8, ptr %527, i64 4
  %670 = load i32, ptr %669, align 4, !tbaa !4
  %671 = tail call i32 @llvm.fshl.i32(i32 %670, i32 %670, i32 15)
  %672 = tail call i32 @llvm.fshl.i32(i32 %670, i32 %670, i32 13)
  %673 = xor i32 %671, %672
  %674 = lshr i32 %670, 10
  %675 = xor i32 %673, %674
  %676 = add nuw nsw i64 %494, 12
  %677 = and i64 %676, 12
  %678 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %677
  %679 = load i32, ptr %678, align 16, !tbaa !4
  %680 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %661
  %681 = load i32, ptr %680, align 4, !tbaa !4
  %682 = add i32 %668, %679
  %683 = add i32 %682, %681
  %684 = add i32 %683, %675
  store i32 %684, ptr %680, align 4, !tbaa !4
  %685 = tail call i32 @llvm.fshl.i32(i32 %658, i32 %658, i32 26)
  %686 = tail call i32 @llvm.fshl.i32(i32 %658, i32 %658, i32 21)
  %687 = xor i32 %685, %686
  %688 = tail call i32 @llvm.fshl.i32(i32 %658, i32 %658, i32 7)
  %689 = xor i32 %687, %688
  %690 = and i32 %658, %608
  %691 = xor i32 %658, -1
  %692 = and i32 %558, %691
  %693 = or i32 %690, %692
  %694 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %660
  %695 = load i32, ptr %694, align 4, !tbaa !4
  %696 = add i32 %695, %499
  %697 = add i32 %696, %684
  %698 = add i32 %697, %693
  %699 = add i32 %698, %689
  %700 = tail call i32 @llvm.fshl.i32(i32 %659, i32 %659, i32 30)
  %701 = tail call i32 @llvm.fshl.i32(i32 %659, i32 %659, i32 19)
  %702 = xor i32 %700, %701
  %703 = tail call i32 @llvm.fshl.i32(i32 %659, i32 %659, i32 10)
  %704 = xor i32 %702, %703
  %705 = and i32 %659, %609
  %706 = xor i32 %609, %559
  %707 = and i32 %659, %706
  %708 = xor i32 %707, %653
  %709 = add i32 %704, %708
  %710 = add i32 %699, %495
  %711 = add i32 %709, %699
  %712 = or disjoint i64 %494, 4
  %713 = and i64 %712, 12
  %714 = getelementptr inbounds nuw i8, ptr %527, i64 20
  %715 = load i32, ptr %714, align 4, !tbaa !4
  %716 = tail call i32 @llvm.fshl.i32(i32 %715, i32 %715, i32 25)
  %717 = tail call i32 @llvm.fshl.i32(i32 %715, i32 %715, i32 14)
  %718 = xor i32 %716, %717
  %719 = lshr i32 %715, 3
  %720 = xor i32 %718, %719
  %721 = load i32, ptr %560, align 8, !tbaa !4
  %722 = tail call i32 @llvm.fshl.i32(i32 %721, i32 %721, i32 15)
  %723 = tail call i32 @llvm.fshl.i32(i32 %721, i32 %721, i32 13)
  %724 = xor i32 %722, %723
  %725 = lshr i32 %721, 10
  %726 = xor i32 %724, %725
  %727 = add nuw nsw i64 %494, 13
  %728 = and i64 %727, 13
  %729 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %728
  %730 = load i32, ptr %729, align 4, !tbaa !4
  %731 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %713
  %732 = load i32, ptr %731, align 16, !tbaa !4
  %733 = add i32 %720, %730
  %734 = add i32 %733, %732
  %735 = add i32 %734, %726
  store i32 %735, ptr %731, align 16, !tbaa !4
  %736 = tail call i32 @llvm.fshl.i32(i32 %710, i32 %710, i32 26)
  %737 = tail call i32 @llvm.fshl.i32(i32 %710, i32 %710, i32 21)
  %738 = xor i32 %736, %737
  %739 = tail call i32 @llvm.fshl.i32(i32 %710, i32 %710, i32 7)
  %740 = xor i32 %738, %739
  %741 = and i32 %710, %658
  %742 = xor i32 %710, -1
  %743 = and i32 %608, %742
  %744 = or i32 %741, %743
  %745 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %712
  %746 = load i32, ptr %745, align 16, !tbaa !4
  %747 = add i32 %746, %558
  %748 = add i32 %747, %735
  %749 = add i32 %748, %744
  %750 = add i32 %749, %740
  %751 = tail call i32 @llvm.fshl.i32(i32 %711, i32 %711, i32 30)
  %752 = tail call i32 @llvm.fshl.i32(i32 %711, i32 %711, i32 19)
  %753 = xor i32 %751, %752
  %754 = tail call i32 @llvm.fshl.i32(i32 %711, i32 %711, i32 10)
  %755 = xor i32 %753, %754
  %756 = and i32 %711, %659
  %757 = xor i32 %659, %609
  %758 = and i32 %711, %757
  %759 = xor i32 %758, %705
  %760 = add i32 %755, %759
  %761 = add i32 %750, %559
  %762 = add i32 %760, %750
  %763 = or disjoint i64 %494, 5
  %764 = and i64 %763, 13
  %765 = getelementptr inbounds nuw i8, ptr %527, i64 24
  %766 = load i32, ptr %765, align 8, !tbaa !4
  %767 = tail call i32 @llvm.fshl.i32(i32 %766, i32 %766, i32 25)
  %768 = tail call i32 @llvm.fshl.i32(i32 %766, i32 %766, i32 14)
  %769 = xor i32 %767, %768
  %770 = lshr i32 %766, 3
  %771 = xor i32 %769, %770
  %772 = load i32, ptr %612, align 4, !tbaa !4
  %773 = tail call i32 @llvm.fshl.i32(i32 %772, i32 %772, i32 15)
  %774 = tail call i32 @llvm.fshl.i32(i32 %772, i32 %772, i32 13)
  %775 = xor i32 %773, %774
  %776 = lshr i32 %772, 10
  %777 = xor i32 %775, %776
  %778 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %764
  %779 = load i32, ptr %778, align 4, !tbaa !4
  %780 = add i32 %779, %517
  %781 = add i32 %780, %771
  %782 = add i32 %781, %777
  store i32 %782, ptr %778, align 4, !tbaa !4
  %783 = tail call i32 @llvm.fshl.i32(i32 %761, i32 %761, i32 26)
  %784 = tail call i32 @llvm.fshl.i32(i32 %761, i32 %761, i32 21)
  %785 = xor i32 %783, %784
  %786 = tail call i32 @llvm.fshl.i32(i32 %761, i32 %761, i32 7)
  %787 = xor i32 %785, %786
  %788 = and i32 %761, %710
  %789 = xor i32 %761, -1
  %790 = and i32 %658, %789
  %791 = or i32 %788, %790
  %792 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %763
  %793 = load i32, ptr %792, align 4, !tbaa !4
  %794 = add i32 %793, %608
  %795 = add i32 %794, %782
  %796 = add i32 %795, %791
  %797 = add i32 %796, %787
  %798 = tail call i32 @llvm.fshl.i32(i32 %762, i32 %762, i32 30)
  %799 = tail call i32 @llvm.fshl.i32(i32 %762, i32 %762, i32 19)
  %800 = xor i32 %798, %799
  %801 = tail call i32 @llvm.fshl.i32(i32 %762, i32 %762, i32 10)
  %802 = xor i32 %800, %801
  %803 = and i32 %762, %711
  %804 = xor i32 %711, %659
  %805 = and i32 %762, %804
  %806 = xor i32 %805, %756
  %807 = add i32 %802, %806
  %808 = add i32 %797, %609
  %809 = add i32 %807, %797
  %810 = or disjoint i64 %494, 6
  %811 = and i64 %810, 14
  %812 = getelementptr inbounds nuw i8, ptr %527, i64 28
  %813 = load i32, ptr %812, align 4, !tbaa !4
  %814 = tail call i32 @llvm.fshl.i32(i32 %813, i32 %813, i32 25)
  %815 = tail call i32 @llvm.fshl.i32(i32 %813, i32 %813, i32 14)
  %816 = xor i32 %814, %815
  %817 = lshr i32 %813, 3
  %818 = xor i32 %816, %817
  %819 = load i32, ptr %662, align 16, !tbaa !4
  %820 = tail call i32 @llvm.fshl.i32(i32 %819, i32 %819, i32 15)
  %821 = tail call i32 @llvm.fshl.i32(i32 %819, i32 %819, i32 13)
  %822 = xor i32 %820, %821
  %823 = lshr i32 %819, 10
  %824 = xor i32 %822, %823
  %825 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %811
  %826 = load i32, ptr %825, align 8, !tbaa !4
  %827 = add i32 %826, %570
  %828 = add i32 %827, %818
  %829 = add i32 %828, %824
  store i32 %829, ptr %825, align 8, !tbaa !4
  %830 = tail call i32 @llvm.fshl.i32(i32 %808, i32 %808, i32 26)
  %831 = tail call i32 @llvm.fshl.i32(i32 %808, i32 %808, i32 21)
  %832 = xor i32 %830, %831
  %833 = tail call i32 @llvm.fshl.i32(i32 %808, i32 %808, i32 7)
  %834 = xor i32 %832, %833
  %835 = and i32 %808, %761
  %836 = xor i32 %808, -1
  %837 = and i32 %710, %836
  %838 = or i32 %835, %837
  %839 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %810
  %840 = load i32, ptr %839, align 8, !tbaa !4
  %841 = add i32 %840, %658
  %842 = add i32 %841, %829
  %843 = add i32 %842, %838
  %844 = add i32 %843, %834
  %845 = tail call i32 @llvm.fshl.i32(i32 %809, i32 %809, i32 30)
  %846 = tail call i32 @llvm.fshl.i32(i32 %809, i32 %809, i32 19)
  %847 = xor i32 %845, %846
  %848 = tail call i32 @llvm.fshl.i32(i32 %809, i32 %809, i32 10)
  %849 = xor i32 %847, %848
  %850 = and i32 %809, %762
  %851 = xor i32 %762, %711
  %852 = and i32 %809, %851
  %853 = xor i32 %852, %803
  %854 = add i32 %849, %853
  %855 = add i32 %844, %659
  %856 = add i32 %854, %844
  %857 = or disjoint i64 %494, 7
  %858 = and i64 %857, 15
  %859 = xor i64 %506, 8
  %860 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %859
  %861 = load i32, ptr %860, align 16, !tbaa !4
  %862 = tail call i32 @llvm.fshl.i32(i32 %861, i32 %861, i32 25)
  %863 = tail call i32 @llvm.fshl.i32(i32 %861, i32 %861, i32 14)
  %864 = xor i32 %862, %863
  %865 = lshr i32 %861, 3
  %866 = xor i32 %864, %865
  %867 = load i32, ptr %714, align 4, !tbaa !4
  %868 = tail call i32 @llvm.fshl.i32(i32 %867, i32 %867, i32 15)
  %869 = tail call i32 @llvm.fshl.i32(i32 %867, i32 %867, i32 13)
  %870 = xor i32 %868, %869
  %871 = lshr i32 %867, 10
  %872 = xor i32 %870, %871
  %873 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %858
  %874 = load i32, ptr %873, align 4, !tbaa !4
  %875 = add i32 %874, %531
  %876 = add i32 %875, %866
  %877 = add i32 %876, %872
  store i32 %877, ptr %873, align 4, !tbaa !4
  %878 = tail call i32 @llvm.fshl.i32(i32 %855, i32 %855, i32 26)
  %879 = tail call i32 @llvm.fshl.i32(i32 %855, i32 %855, i32 21)
  %880 = xor i32 %878, %879
  %881 = tail call i32 @llvm.fshl.i32(i32 %855, i32 %855, i32 7)
  %882 = xor i32 %880, %881
  %883 = and i32 %855, %808
  %884 = xor i32 %855, -1
  %885 = and i32 %761, %884
  %886 = or i32 %883, %885
  %887 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %857
  %888 = load i32, ptr %887, align 4, !tbaa !4
  %889 = add i32 %888, %710
  %890 = add i32 %889, %877
  %891 = add i32 %890, %886
  %892 = add i32 %891, %882
  %893 = tail call i32 @llvm.fshl.i32(i32 %856, i32 %856, i32 30)
  %894 = tail call i32 @llvm.fshl.i32(i32 %856, i32 %856, i32 19)
  %895 = xor i32 %893, %894
  %896 = tail call i32 @llvm.fshl.i32(i32 %856, i32 %856, i32 10)
  %897 = xor i32 %895, %896
  %898 = xor i32 %809, %762
  %899 = and i32 %856, %898
  %900 = xor i32 %899, %850
  %901 = add i32 %897, %900
  %902 = add i32 %892, %711
  %903 = add i32 %901, %892
  %904 = add nuw nsw i64 %494, 8
  %905 = icmp samesign ult i64 %494, 56
  br i1 %905, label %493, label %906, !llvm.loop !16

906:                                              ; preds = %493
  %907 = add nsw i64 %36, -1
  %908 = getelementptr inbounds nuw i8, ptr %37, i64 64
  %909 = add i32 %903, %38
  store i32 %909, ptr %0, align 4, !tbaa !4
  %910 = add i32 %856, %39
  store i32 %910, ptr %5, align 4, !tbaa !4
  %911 = add i32 %809, %40
  store i32 %911, ptr %6, align 4, !tbaa !4
  %912 = add i32 %762, %41
  store i32 %912, ptr %7, align 4, !tbaa !4
  %913 = add i32 %902, %42
  store i32 %913, ptr %8, align 4, !tbaa !4
  %914 = add i32 %855, %43
  store i32 %914, ptr %9, align 4, !tbaa !4
  %915 = add i32 %808, %44
  store i32 %915, ptr %10, align 4, !tbaa !4
  %916 = add i32 %761, %45
  store i32 %916, ptr %11, align 4, !tbaa !4
  %917 = icmp eq i64 %907, 0
  br i1 %917, label %918, label %35, !llvm.loop !18

918:                                              ; preds = %906
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA256_Transform(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call fastcc void @sha256_block_data_order(ptr noundef %0, ptr noundef %1, i64 noundef 1)
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
!8 = !{!9, !5, i64 108}
!9 = !{!"SHA256state_st", !6, i64 0, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 104, !5, i64 108}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!9, !5, i64 32}
!12 = !{!9, !5, i64 36}
!13 = !{!9, !5, i64 104}
!14 = !{!6, !6, i64 0}
!15 = !{}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
