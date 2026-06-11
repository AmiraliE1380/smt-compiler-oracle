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

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @SHA224_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %58, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = trunc i64 %2 to i32
  %8 = icmp ult i32 %7, 536870912
  br i1 %8, label %10, label %9, !prof !11, !nosanitize !12

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 4, !tbaa !13
  %12 = shl nuw i32 %7, 3
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %11, i32 %12), !nosanitize !12
  %14 = extractvalue { i32, i1 } %13, 1, !nosanitize !12
  br i1 %14, label %15, label %16, !prof !14, !nosanitize !12

15:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

16:                                               ; preds = %10
  %17 = lshr i64 %2, 29
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !15
  %21 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %20, i32 %18), !nosanitize !12
  %22 = extractvalue { i32, i1 } %21, 1, !nosanitize !12
  br i1 %22, label %23, label %24, !prof !14, !nosanitize !12

23:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

24:                                               ; preds = %16
  %25 = extractvalue { i32, i1 } %13, 0, !nosanitize !12
  %26 = extractvalue { i32, i1 } %21, 0, !nosanitize !12
  store i32 %26, ptr %19, align 4, !tbaa !15
  store i32 %25, ptr %6, align 4, !tbaa !13
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = zext i32 %28 to i64
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %52, label %31, !prof !10

31:                                               ; preds = %24
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %33 = icmp ugt i64 %2, 63
  %34 = add nuw nsw i64 %2, %29
  %35 = icmp ugt i64 %34, 63
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %29), !nosanitize !12
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !12
  br i1 %39, label %40, label %41, !prof !14, !nosanitize !12

40:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

41:                                               ; preds = %37
  %42 = extractvalue { i64, i1 } %38, 0, !nosanitize !12
  %43 = getelementptr inbounds nuw i8, ptr %32, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr align 1 %1, i64 %42, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %32, i64 noundef 1)
  unreachable

44:                                               ; preds = %31
  %45 = getelementptr inbounds nuw i8, ptr %32, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr align 1 %1, i64 %2, i1 false)
  %46 = load i32, ptr %27, align 4, !tbaa !16
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 %7), !nosanitize !12
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !12
  br i1 %48, label %49, label %50, !prof !14, !nosanitize !12

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !12
  store i32 %51, ptr %27, align 4, !tbaa !16
  br label %58

52:                                               ; preds = %24
  %53 = lshr i64 %2, 6
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %53)
  unreachable

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %7, ptr %27, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %57, ptr align 1 %1, i64 %2, i1 false)
  br label %58

58:                                               ; preds = %3, %50, %56
  ret i32 1
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @SHA256_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %58, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = trunc i64 %2 to i32
  %8 = icmp ult i32 %7, 536870912
  br i1 %8, label %10, label %9, !prof !11, !nosanitize !12

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 4, !tbaa !13
  %12 = shl nuw i32 %7, 3
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %11, i32 %12), !nosanitize !12
  %14 = extractvalue { i32, i1 } %13, 1, !nosanitize !12
  br i1 %14, label %15, label %16, !prof !14, !nosanitize !12

15:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

16:                                               ; preds = %10
  %17 = lshr i64 %2, 29
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !15
  %21 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %20, i32 %18), !nosanitize !12
  %22 = extractvalue { i32, i1 } %21, 1, !nosanitize !12
  br i1 %22, label %23, label %24, !prof !14, !nosanitize !12

23:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

24:                                               ; preds = %16
  %25 = extractvalue { i32, i1 } %13, 0, !nosanitize !12
  %26 = extractvalue { i32, i1 } %21, 0, !nosanitize !12
  store i32 %26, ptr %19, align 4, !tbaa !15
  store i32 %25, ptr %6, align 4, !tbaa !13
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = zext i32 %28 to i64
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %52, label %31, !prof !10

31:                                               ; preds = %24
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %33 = icmp ugt i64 %2, 63
  %34 = add nuw nsw i64 %2, %29
  %35 = icmp ugt i64 %34, 63
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %29), !nosanitize !12
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !12
  br i1 %39, label %40, label %41, !prof !14, !nosanitize !12

40:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

41:                                               ; preds = %37
  %42 = extractvalue { i64, i1 } %38, 0, !nosanitize !12
  %43 = getelementptr inbounds nuw i8, ptr %32, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr align 1 %1, i64 %42, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %32, i64 noundef 1)
  unreachable

44:                                               ; preds = %31
  %45 = getelementptr inbounds nuw i8, ptr %32, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr align 1 %1, i64 %2, i1 false)
  %46 = load i32, ptr %27, align 4, !tbaa !16
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 %7), !nosanitize !12
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !12
  br i1 %48, label %49, label %50, !prof !14, !nosanitize !12

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !12
  store i32 %51, ptr %27, align 4, !tbaa !16
  br label %58

52:                                               ; preds = %24
  %53 = lshr i64 %2, 6
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %53)
  unreachable

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %7, ptr %27, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %57, ptr align 1 %1, i64 %2, i1 false)
  br label %58

58:                                               ; preds = %3, %50, %56
  ret i32 1
}

; Function Attrs: noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @SHA224_Final(ptr noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 %6
  store i8 -128, ptr %7, align 1, !tbaa !17
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp ugt i32 %5, 55
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %8), !nosanitize !12
  %12 = extractvalue { i64, i1 } %11, 1, !nosanitize !12
  br i1 %12, label %13, label %14, !prof !14, !nosanitize !12

13:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

14:                                               ; preds = %10
  %15 = extractvalue { i64, i1 } %11, 0, !nosanitize !12
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %15, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  unreachable

17:                                               ; preds = %2
  %18 = sub nuw nsw i64 55, %6
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %19, i8 0, i64 %18, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %22 = load i32, ptr %21, align 4, !tbaa !15
  %23 = lshr i32 %22, 24
  %24 = trunc nuw i32 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 %24, ptr %20, align 4, !tbaa !17
  %26 = lshr i32 %22, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 %27, ptr %25, align 1, !tbaa !17
  %29 = lshr i32 %22, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 99
  store i8 %30, ptr %28, align 2, !tbaa !17
  %32 = trunc i32 %22 to i8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 %32, ptr %31, align 1, !tbaa !17
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %35 = load i32, ptr %34, align 4, !tbaa !13
  %36 = lshr i32 %35, 24
  %37 = trunc nuw i32 %36 to i8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 %37, ptr %33, align 4, !tbaa !17
  %39 = lshr i32 %35, 16
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 102
  store i8 %40, ptr %38, align 1, !tbaa !17
  %42 = lshr i32 %35, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 103
  store i8 %43, ptr %41, align 2, !tbaa !17
  %45 = trunc i32 %35 to i8
  store i8 %45, ptr %44, align 1, !tbaa !17
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  unreachable
}

; Function Attrs: noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @SHA256_Final(ptr noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 %6
  store i8 -128, ptr %7, align 1, !tbaa !17
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp ugt i32 %5, 55
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %8), !nosanitize !12
  %12 = extractvalue { i64, i1 } %11, 1, !nosanitize !12
  br i1 %12, label %13, label %14, !prof !14, !nosanitize !12

13:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

14:                                               ; preds = %10
  %15 = extractvalue { i64, i1 } %11, 0, !nosanitize !12
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %15, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  unreachable

17:                                               ; preds = %2
  %18 = sub nuw nsw i64 55, %6
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %19, i8 0, i64 %18, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %22 = load i32, ptr %21, align 4, !tbaa !15
  %23 = lshr i32 %22, 24
  %24 = trunc nuw i32 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 %24, ptr %20, align 4, !tbaa !17
  %26 = lshr i32 %22, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 %27, ptr %25, align 1, !tbaa !17
  %29 = lshr i32 %22, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 99
  store i8 %30, ptr %28, align 2, !tbaa !17
  %32 = trunc i32 %22 to i8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 %32, ptr %31, align 1, !tbaa !17
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %35 = load i32, ptr %34, align 4, !tbaa !13
  %36 = lshr i32 %35, 24
  %37 = trunc nuw i32 %36 to i8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 %37, ptr %33, align 4, !tbaa !17
  %39 = lshr i32 %35, 16
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 102
  store i8 %40, ptr %38, align 1, !tbaa !17
  %42 = lshr i32 %35, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 103
  store i8 %43, ptr %41, align 2, !tbaa !17
  %45 = trunc i32 %35 to i8
  store i8 %45, ptr %44, align 1, !tbaa !17
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  unreachable
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @SHA256_Update_thunk(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %58, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = trunc i64 %2 to i32
  %8 = icmp ult i32 %7, 536870912
  br i1 %8, label %10, label %9, !prof !11, !nosanitize !12

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 4, !tbaa !13
  %12 = shl nuw i32 %7, 3
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %11, i32 %12), !nosanitize !12
  %14 = extractvalue { i32, i1 } %13, 1, !nosanitize !12
  br i1 %14, label %15, label %16, !prof !14, !nosanitize !12

15:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

16:                                               ; preds = %10
  %17 = lshr i64 %2, 29
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !15
  %21 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %20, i32 %18), !nosanitize !12
  %22 = extractvalue { i32, i1 } %21, 1, !nosanitize !12
  br i1 %22, label %23, label %24, !prof !14, !nosanitize !12

23:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

24:                                               ; preds = %16
  %25 = extractvalue { i32, i1 } %13, 0, !nosanitize !12
  %26 = extractvalue { i32, i1 } %21, 0, !nosanitize !12
  store i32 %26, ptr %19, align 4, !tbaa !15
  store i32 %25, ptr %6, align 4, !tbaa !13
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = zext i32 %28 to i64
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %52, label %31, !prof !10

31:                                               ; preds = %24
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %33 = icmp ugt i64 %2, 63
  %34 = add nuw nsw i64 %2, %29
  %35 = icmp ugt i64 %34, 63
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %29), !nosanitize !12
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !12
  br i1 %39, label %40, label %41, !prof !14, !nosanitize !12

40:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

41:                                               ; preds = %37
  %42 = extractvalue { i64, i1 } %38, 0, !nosanitize !12
  %43 = getelementptr inbounds nuw i8, ptr %32, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr align 1 %1, i64 %42, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %32, i64 noundef 1)
  unreachable

44:                                               ; preds = %31
  %45 = getelementptr inbounds nuw i8, ptr %32, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr align 1 %1, i64 %2, i1 false)
  %46 = load i32, ptr %27, align 4, !tbaa !16
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 %7), !nosanitize !12
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !12
  br i1 %48, label %49, label %50, !prof !14, !nosanitize !12

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !12
  store i32 %51, ptr %27, align 4, !tbaa !16
  br label %58

52:                                               ; preds = %24
  %53 = lshr i64 %2, 6
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %53)
  unreachable

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %7, ptr %27, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %57, ptr align 1 %1, i64 %2, i1 false)
  br label %58

58:                                               ; preds = %56, %3, %50
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @sha256_block_data_order(ptr noundef captures(none) %0, ptr noundef readonly %1, i64 noundef range(i64 1, 288230376151711744) %2) unnamed_addr #4 {
  %4 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %5 = add nsw i64 %2, -1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 36
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 44
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 52
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %28 = load i32, ptr %0, align 4, !tbaa !4
  %29 = load i32, ptr %6, align 4, !tbaa !4
  %30 = load i32, ptr %7, align 4, !tbaa !4
  %31 = load i32, ptr %8, align 4, !tbaa !4
  %32 = load i32, ptr %9, align 4, !tbaa !4
  %33 = load i32, ptr %10, align 4, !tbaa !4
  %34 = load i32, ptr %11, align 4, !tbaa !4
  %35 = load i32, ptr %12, align 4, !tbaa !4
  br label %37

36:                                               ; preds = %1802
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

37:                                               ; preds = %3, %1802
  %38 = phi i32 [ %35, %3 ], [ %1803, %1802 ]
  %39 = phi i32 [ %34, %3 ], [ %1798, %1802 ]
  %40 = phi i32 [ %33, %3 ], [ %1793, %1802 ]
  %41 = phi i32 [ %32, %3 ], [ %1788, %1802 ]
  %42 = phi i32 [ %31, %3 ], [ %1783, %1802 ]
  %43 = phi i32 [ %30, %3 ], [ %1778, %1802 ]
  %44 = phi i32 [ %29, %3 ], [ %1773, %1802 ]
  %45 = phi i32 [ %28, %3 ], [ %1768, %1802 ]
  %46 = phi i64 [ %5, %3 ], [ %1805, %1802 ]
  %47 = phi ptr [ %1, %3 ], [ %1010, %1802 ]
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 1
  %49 = load i8, ptr %47, align 1, !tbaa !17
  %50 = zext i8 %49 to i32
  %51 = shl nuw i32 %50, 24
  %52 = getelementptr inbounds nuw i8, ptr %47, i64 2
  %53 = load i8, ptr %48, align 1, !tbaa !17
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  %56 = or disjoint i32 %55, %51
  %57 = getelementptr inbounds nuw i8, ptr %47, i64 3
  %58 = load i8, ptr %52, align 1, !tbaa !17
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 8
  %61 = or disjoint i32 %56, %60
  %62 = getelementptr inbounds nuw i8, ptr %47, i64 4
  %63 = load i8, ptr %57, align 1, !tbaa !17
  %64 = zext i8 %63 to i32
  %65 = or disjoint i32 %61, %64
  store i32 %65, ptr %4, align 16, !tbaa !4
  %66 = icmp ult i32 %41, 64
  br i1 %66, label %68, label %67, !prof !11, !nosanitize !12

67:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

68:                                               ; preds = %37
  %69 = shl nuw i32 %41, 26
  %70 = shl nuw nsw i32 %41, 21
  %71 = xor i32 %69, %70
  %72 = shl nuw nsw i32 %41, 7
  %73 = or disjoint i32 %71, %72
  %74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %38, i32 %73), !nosanitize !12
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !12
  br i1 %75, label %76, label %77, !prof !14, !nosanitize !12

76:                                               ; preds = %68
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

77:                                               ; preds = %68
  %78 = extractvalue { i32, i1 } %74, 0, !nosanitize !12
  %79 = and i32 %40, %41
  %80 = xor i32 %41, -1
  %81 = and i32 %39, %80
  %82 = or i32 %81, %79
  %83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %78, i32 %82), !nosanitize !12
  %84 = extractvalue { i32, i1 } %83, 1, !nosanitize !12
  br i1 %84, label %85, label %86, !prof !14, !nosanitize !12

85:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

86:                                               ; preds = %77
  %87 = extractvalue { i32, i1 } %83, 0, !nosanitize !12
  %88 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %87, i32 1116352408), !nosanitize !12
  %89 = extractvalue { i32, i1 } %88, 1, !nosanitize !12
  br i1 %89, label %90, label %91, !prof !14, !nosanitize !12

90:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

91:                                               ; preds = %86
  %92 = extractvalue { i32, i1 } %88, 0, !nosanitize !12
  %93 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %65, i32 %92), !nosanitize !12
  %94 = extractvalue { i32, i1 } %93, 0, !nosanitize !12
  %95 = extractvalue { i32, i1 } %93, 1, !nosanitize !12
  br i1 %95, label %96, label %97, !prof !14, !nosanitize !12

96:                                               ; preds = %91
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

97:                                               ; preds = %91
  %98 = icmp ult i32 %45, 4
  br i1 %98, label %100, label %99, !prof !11, !nosanitize !12

99:                                               ; preds = %97
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

100:                                              ; preds = %97
  %101 = shl nuw i32 %45, 30
  %102 = shl nuw nsw i32 %45, 19
  %103 = or disjoint i32 %101, %102
  %104 = shl nuw nsw i32 %45, 10
  %105 = or disjoint i32 %103, %104
  %106 = and i32 %44, %45
  %107 = xor i32 %43, %44
  %108 = and i32 %107, %45
  %109 = and i32 %43, %44
  %110 = xor i32 %108, %109
  %111 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %105, i32 %110), !nosanitize !12
  %112 = extractvalue { i32, i1 } %111, 0, !nosanitize !12
  %113 = extractvalue { i32, i1 } %111, 1, !nosanitize !12
  br i1 %113, label %114, label %115, !prof !14, !nosanitize !12

114:                                              ; preds = %100
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

115:                                              ; preds = %100
  %116 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %42, i32 %94), !nosanitize !12
  %117 = extractvalue { i32, i1 } %116, 0, !nosanitize !12
  %118 = extractvalue { i32, i1 } %116, 1, !nosanitize !12
  br i1 %118, label %119, label %120, !prof !14, !nosanitize !12

119:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

120:                                              ; preds = %115
  %121 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %112, i32 %94), !nosanitize !12
  %122 = extractvalue { i32, i1 } %121, 0, !nosanitize !12
  %123 = extractvalue { i32, i1 } %121, 1, !nosanitize !12
  br i1 %123, label %124, label %125, !prof !14, !nosanitize !12

124:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

125:                                              ; preds = %120
  %126 = getelementptr inbounds nuw i8, ptr %47, i64 5
  %127 = load i8, ptr %62, align 1, !tbaa !17
  %128 = zext i8 %127 to i32
  %129 = shl nuw i32 %128, 24
  %130 = getelementptr inbounds nuw i8, ptr %47, i64 6
  %131 = load i8, ptr %126, align 1, !tbaa !17
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 16
  %134 = or disjoint i32 %133, %129
  %135 = getelementptr inbounds nuw i8, ptr %47, i64 7
  %136 = load i8, ptr %130, align 1, !tbaa !17
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 8
  %139 = or disjoint i32 %134, %138
  %140 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %141 = load i8, ptr %135, align 1, !tbaa !17
  %142 = zext i8 %141 to i32
  %143 = or disjoint i32 %139, %142
  store i32 %143, ptr %13, align 4, !tbaa !4
  %144 = icmp ult i32 %117, 64
  br i1 %144, label %146, label %145, !prof !11, !nosanitize !12

145:                                              ; preds = %125
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

146:                                              ; preds = %125
  %147 = shl nuw i32 %117, 26
  %148 = shl nuw nsw i32 %117, 21
  %149 = xor i32 %147, %148
  %150 = shl nuw nsw i32 %117, 7
  %151 = or disjoint i32 %149, %150
  %152 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 %151), !nosanitize !12
  %153 = extractvalue { i32, i1 } %152, 1, !nosanitize !12
  br i1 %153, label %154, label %155, !prof !14, !nosanitize !12

154:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

155:                                              ; preds = %146
  %156 = extractvalue { i32, i1 } %152, 0, !nosanitize !12
  %157 = and i32 %117, %41
  %158 = xor i32 %117, -1
  %159 = and i32 %40, %158
  %160 = or i32 %157, %159
  %161 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %156, i32 %160), !nosanitize !12
  %162 = extractvalue { i32, i1 } %161, 1, !nosanitize !12
  br i1 %162, label %163, label %164, !prof !14, !nosanitize !12

163:                                              ; preds = %155
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

164:                                              ; preds = %155
  %165 = extractvalue { i32, i1 } %161, 0, !nosanitize !12
  %166 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %165, i32 1899447441), !nosanitize !12
  %167 = extractvalue { i32, i1 } %166, 1, !nosanitize !12
  br i1 %167, label %168, label %169, !prof !14, !nosanitize !12

168:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

169:                                              ; preds = %164
  %170 = extractvalue { i32, i1 } %166, 0, !nosanitize !12
  %171 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %143, i32 %170), !nosanitize !12
  %172 = extractvalue { i32, i1 } %171, 0, !nosanitize !12
  %173 = extractvalue { i32, i1 } %171, 1, !nosanitize !12
  br i1 %173, label %174, label %175, !prof !14, !nosanitize !12

174:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

175:                                              ; preds = %169
  %176 = icmp ult i32 %122, 4
  br i1 %176, label %178, label %177, !prof !11, !nosanitize !12

177:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

178:                                              ; preds = %175
  %179 = and i32 %122, %45
  %180 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %172), !nosanitize !12
  %181 = extractvalue { i32, i1 } %180, 0, !nosanitize !12
  %182 = extractvalue { i32, i1 } %180, 1, !nosanitize !12
  br i1 %182, label %183, label %184, !prof !14, !nosanitize !12

183:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

184:                                              ; preds = %178
  %185 = mul nuw i32 %122, 1074267136
  %186 = xor i32 %44, %45
  %187 = and i32 %122, %186
  %188 = xor i32 %187, %106
  %189 = or disjoint i32 %185, %188
  %190 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %189, i32 %172), !nosanitize !12
  %191 = extractvalue { i32, i1 } %190, 0, !nosanitize !12
  %192 = extractvalue { i32, i1 } %190, 1, !nosanitize !12
  br i1 %192, label %193, label %194, !prof !14, !nosanitize !12

193:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

194:                                              ; preds = %184
  %195 = getelementptr inbounds nuw i8, ptr %47, i64 9
  %196 = load i8, ptr %140, align 1, !tbaa !17
  %197 = zext i8 %196 to i32
  %198 = shl nuw i32 %197, 24
  %199 = getelementptr inbounds nuw i8, ptr %47, i64 10
  %200 = load i8, ptr %195, align 1, !tbaa !17
  %201 = zext i8 %200 to i32
  %202 = shl nuw nsw i32 %201, 16
  %203 = or disjoint i32 %202, %198
  %204 = getelementptr inbounds nuw i8, ptr %47, i64 11
  %205 = load i8, ptr %199, align 1, !tbaa !17
  %206 = zext i8 %205 to i32
  %207 = shl nuw nsw i32 %206, 8
  %208 = or disjoint i32 %203, %207
  %209 = getelementptr inbounds nuw i8, ptr %47, i64 12
  %210 = load i8, ptr %204, align 1, !tbaa !17
  %211 = zext i8 %210 to i32
  %212 = or disjoint i32 %208, %211
  store i32 %212, ptr %14, align 8, !tbaa !4
  %213 = icmp ult i32 %181, 64
  br i1 %213, label %215, label %214, !prof !11, !nosanitize !12

214:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

215:                                              ; preds = %194
  %216 = shl nuw i32 %181, 26
  %217 = shl nuw nsw i32 %181, 21
  %218 = xor i32 %216, %217
  %219 = shl nuw nsw i32 %181, 7
  %220 = or disjoint i32 %218, %219
  %221 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 %220), !nosanitize !12
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !12
  br i1 %222, label %223, label %224, !prof !14, !nosanitize !12

223:                                              ; preds = %215
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

224:                                              ; preds = %215
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !12
  %226 = and i32 %181, %117
  %227 = xor i32 %181, -1
  %228 = and i32 %41, %227
  %229 = or i32 %226, %228
  %230 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %229), !nosanitize !12
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !12
  br i1 %231, label %232, label %233, !prof !14, !nosanitize !12

232:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

233:                                              ; preds = %224
  %234 = extractvalue { i32, i1 } %230, 0, !nosanitize !12
  %235 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 -1245643825), !nosanitize !12
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !12
  br i1 %236, label %237, label %238, !prof !14, !nosanitize !12

237:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

238:                                              ; preds = %233
  %239 = extractvalue { i32, i1 } %235, 0, !nosanitize !12
  %240 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %212, i32 %239), !nosanitize !12
  %241 = extractvalue { i32, i1 } %240, 0, !nosanitize !12
  %242 = extractvalue { i32, i1 } %240, 1, !nosanitize !12
  br i1 %242, label %243, label %244, !prof !14, !nosanitize !12

243:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

244:                                              ; preds = %238
  %245 = icmp ult i32 %191, 4
  br i1 %245, label %247, label %246, !prof !11, !nosanitize !12

246:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

247:                                              ; preds = %244
  %248 = and i32 %191, %122
  %249 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %241), !nosanitize !12
  %250 = extractvalue { i32, i1 } %249, 0, !nosanitize !12
  %251 = extractvalue { i32, i1 } %249, 1, !nosanitize !12
  br i1 %251, label %252, label %253, !prof !14, !nosanitize !12

252:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

253:                                              ; preds = %247
  %254 = mul nuw i32 %191, 1074267136
  %255 = xor i32 %122, %45
  %256 = and i32 %191, %255
  %257 = xor i32 %256, %179
  %258 = or disjoint i32 %254, %257
  %259 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %258, i32 %241), !nosanitize !12
  %260 = extractvalue { i32, i1 } %259, 0, !nosanitize !12
  %261 = extractvalue { i32, i1 } %259, 1, !nosanitize !12
  br i1 %261, label %262, label %263, !prof !14, !nosanitize !12

262:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

263:                                              ; preds = %253
  %264 = getelementptr inbounds nuw i8, ptr %47, i64 13
  %265 = load i8, ptr %209, align 1, !tbaa !17
  %266 = zext i8 %265 to i32
  %267 = shl nuw i32 %266, 24
  %268 = getelementptr inbounds nuw i8, ptr %47, i64 14
  %269 = load i8, ptr %264, align 1, !tbaa !17
  %270 = zext i8 %269 to i32
  %271 = shl nuw nsw i32 %270, 16
  %272 = or disjoint i32 %271, %267
  %273 = getelementptr inbounds nuw i8, ptr %47, i64 15
  %274 = load i8, ptr %268, align 1, !tbaa !17
  %275 = zext i8 %274 to i32
  %276 = shl nuw nsw i32 %275, 8
  %277 = or disjoint i32 %272, %276
  %278 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %279 = load i8, ptr %273, align 1, !tbaa !17
  %280 = zext i8 %279 to i32
  %281 = or disjoint i32 %277, %280
  store i32 %281, ptr %15, align 4, !tbaa !4
  %282 = icmp ult i32 %250, 64
  br i1 %282, label %284, label %283, !prof !11, !nosanitize !12

283:                                              ; preds = %263
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

284:                                              ; preds = %263
  %285 = shl nuw i32 %250, 26
  %286 = shl nuw nsw i32 %250, 21
  %287 = xor i32 %285, %286
  %288 = shl nuw nsw i32 %250, 7
  %289 = and i32 %250, %181
  %290 = xor i32 %250, -1
  %291 = and i32 %117, %290
  %292 = or i32 %289, %291
  %293 = or disjoint i32 %288, %287
  %294 = or disjoint i32 %293, %41
  %295 = add nuw nsw i32 %294, %292
  %296 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %295, i32 -373957723), !nosanitize !12
  %297 = extractvalue { i32, i1 } %296, 1, !nosanitize !12
  br i1 %297, label %298, label %299, !prof !14, !nosanitize !12

298:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

299:                                              ; preds = %284
  %300 = extractvalue { i32, i1 } %296, 0, !nosanitize !12
  %301 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %281, i32 %300), !nosanitize !12
  %302 = extractvalue { i32, i1 } %301, 0, !nosanitize !12
  %303 = extractvalue { i32, i1 } %301, 1, !nosanitize !12
  br i1 %303, label %304, label %305, !prof !14, !nosanitize !12

304:                                              ; preds = %299
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

305:                                              ; preds = %299
  %306 = icmp ult i32 %260, 4
  br i1 %306, label %308, label %307, !prof !11, !nosanitize !12

307:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

308:                                              ; preds = %305
  %309 = and i32 %260, %191
  %310 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %45, i32 %302), !nosanitize !12
  %311 = extractvalue { i32, i1 } %310, 0, !nosanitize !12
  %312 = extractvalue { i32, i1 } %310, 1, !nosanitize !12
  br i1 %312, label %313, label %314, !prof !14, !nosanitize !12

313:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

314:                                              ; preds = %308
  %315 = mul nuw i32 %260, 1074267136
  %316 = xor i32 %191, %122
  %317 = and i32 %260, %316
  %318 = xor i32 %317, %248
  %319 = or disjoint i32 %315, %318
  %320 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %319, i32 %302), !nosanitize !12
  %321 = extractvalue { i32, i1 } %320, 0, !nosanitize !12
  %322 = extractvalue { i32, i1 } %320, 1, !nosanitize !12
  br i1 %322, label %323, label %324, !prof !14, !nosanitize !12

323:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

324:                                              ; preds = %314
  %325 = getelementptr inbounds nuw i8, ptr %47, i64 17
  %326 = load i8, ptr %278, align 1, !tbaa !17
  %327 = zext i8 %326 to i32
  %328 = shl nuw i32 %327, 24
  %329 = getelementptr inbounds nuw i8, ptr %47, i64 18
  %330 = load i8, ptr %325, align 1, !tbaa !17
  %331 = zext i8 %330 to i32
  %332 = shl nuw nsw i32 %331, 16
  %333 = or disjoint i32 %332, %328
  %334 = getelementptr inbounds nuw i8, ptr %47, i64 19
  %335 = load i8, ptr %329, align 1, !tbaa !17
  %336 = zext i8 %335 to i32
  %337 = shl nuw nsw i32 %336, 8
  %338 = or disjoint i32 %333, %337
  %339 = getelementptr inbounds nuw i8, ptr %47, i64 20
  %340 = load i8, ptr %334, align 1, !tbaa !17
  %341 = zext i8 %340 to i32
  %342 = or disjoint i32 %338, %341
  store i32 %342, ptr %16, align 16, !tbaa !4
  %343 = icmp ult i32 %311, 64
  br i1 %343, label %345, label %344, !prof !11, !nosanitize !12

344:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

345:                                              ; preds = %324
  %346 = shl nuw i32 %311, 26
  %347 = shl nuw nsw i32 %311, 21
  %348 = xor i32 %346, %347
  %349 = shl nuw nsw i32 %311, 7
  %350 = and i32 %311, %250
  %351 = xor i32 %311, -1
  %352 = and i32 %181, %351
  %353 = or i32 %350, %352
  %354 = or disjoint i32 %349, %348
  %355 = or disjoint i32 %354, %117
  %356 = add nuw nsw i32 %355, %353
  %357 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %356, i32 961987163), !nosanitize !12
  %358 = extractvalue { i32, i1 } %357, 1, !nosanitize !12
  br i1 %358, label %359, label %360, !prof !14, !nosanitize !12

359:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

360:                                              ; preds = %345
  %361 = extractvalue { i32, i1 } %357, 0, !nosanitize !12
  %362 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %342, i32 %361), !nosanitize !12
  %363 = extractvalue { i32, i1 } %362, 0, !nosanitize !12
  %364 = extractvalue { i32, i1 } %362, 1, !nosanitize !12
  br i1 %364, label %365, label %366, !prof !14, !nosanitize !12

365:                                              ; preds = %360
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

366:                                              ; preds = %360
  %367 = icmp ult i32 %321, 4
  br i1 %367, label %369, label %368, !prof !11, !nosanitize !12

368:                                              ; preds = %366
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

369:                                              ; preds = %366
  %370 = and i32 %321, %260
  %371 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %122, i32 %363), !nosanitize !12
  %372 = extractvalue { i32, i1 } %371, 0, !nosanitize !12
  %373 = extractvalue { i32, i1 } %371, 1, !nosanitize !12
  br i1 %373, label %374, label %375, !prof !14, !nosanitize !12

374:                                              ; preds = %369
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

375:                                              ; preds = %369
  %376 = mul nuw i32 %321, 1074267136
  %377 = xor i32 %260, %191
  %378 = and i32 %321, %377
  %379 = xor i32 %378, %309
  %380 = or disjoint i32 %376, %379
  %381 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 %363), !nosanitize !12
  %382 = extractvalue { i32, i1 } %381, 0, !nosanitize !12
  %383 = extractvalue { i32, i1 } %381, 1, !nosanitize !12
  br i1 %383, label %384, label %385, !prof !14, !nosanitize !12

384:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

385:                                              ; preds = %375
  %386 = getelementptr inbounds nuw i8, ptr %47, i64 21
  %387 = load i8, ptr %339, align 1, !tbaa !17
  %388 = zext i8 %387 to i32
  %389 = shl nuw i32 %388, 24
  %390 = getelementptr inbounds nuw i8, ptr %47, i64 22
  %391 = load i8, ptr %386, align 1, !tbaa !17
  %392 = zext i8 %391 to i32
  %393 = shl nuw nsw i32 %392, 16
  %394 = or disjoint i32 %393, %389
  %395 = getelementptr inbounds nuw i8, ptr %47, i64 23
  %396 = load i8, ptr %390, align 1, !tbaa !17
  %397 = zext i8 %396 to i32
  %398 = shl nuw nsw i32 %397, 8
  %399 = or disjoint i32 %394, %398
  %400 = getelementptr inbounds nuw i8, ptr %47, i64 24
  %401 = load i8, ptr %395, align 1, !tbaa !17
  %402 = zext i8 %401 to i32
  %403 = or disjoint i32 %399, %402
  store i32 %403, ptr %17, align 4, !tbaa !4
  %404 = icmp ult i32 %372, 64
  br i1 %404, label %406, label %405, !prof !11, !nosanitize !12

405:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

406:                                              ; preds = %385
  %407 = shl nuw i32 %372, 26
  %408 = shl nuw nsw i32 %372, 21
  %409 = xor i32 %407, %408
  %410 = shl nuw nsw i32 %372, 7
  %411 = and i32 %372, %311
  %412 = xor i32 %372, -1
  %413 = and i32 %250, %412
  %414 = or i32 %411, %413
  %415 = or disjoint i32 %410, %409
  %416 = or disjoint i32 %415, %181
  %417 = add nuw nsw i32 %416, %414
  %418 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %417, i32 1508970993), !nosanitize !12
  %419 = extractvalue { i32, i1 } %418, 1, !nosanitize !12
  br i1 %419, label %420, label %421, !prof !14, !nosanitize !12

420:                                              ; preds = %406
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

421:                                              ; preds = %406
  %422 = extractvalue { i32, i1 } %418, 0, !nosanitize !12
  %423 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %403, i32 %422), !nosanitize !12
  %424 = extractvalue { i32, i1 } %423, 0, !nosanitize !12
  %425 = extractvalue { i32, i1 } %423, 1, !nosanitize !12
  br i1 %425, label %426, label %427, !prof !14, !nosanitize !12

426:                                              ; preds = %421
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

427:                                              ; preds = %421
  %428 = icmp ult i32 %382, 4
  br i1 %428, label %430, label %429, !prof !11, !nosanitize !12

429:                                              ; preds = %427
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

430:                                              ; preds = %427
  %431 = and i32 %382, %321
  %432 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 %424), !nosanitize !12
  %433 = extractvalue { i32, i1 } %432, 0, !nosanitize !12
  %434 = extractvalue { i32, i1 } %432, 1, !nosanitize !12
  br i1 %434, label %435, label %436, !prof !14, !nosanitize !12

435:                                              ; preds = %430
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

436:                                              ; preds = %430
  %437 = mul nuw i32 %382, 1074267136
  %438 = xor i32 %321, %260
  %439 = and i32 %382, %438
  %440 = xor i32 %439, %370
  %441 = or disjoint i32 %437, %440
  %442 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %441, i32 %424), !nosanitize !12
  %443 = extractvalue { i32, i1 } %442, 0, !nosanitize !12
  %444 = extractvalue { i32, i1 } %442, 1, !nosanitize !12
  br i1 %444, label %445, label %446, !prof !14, !nosanitize !12

445:                                              ; preds = %436
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

446:                                              ; preds = %436
  %447 = getelementptr inbounds nuw i8, ptr %47, i64 25
  %448 = load i8, ptr %400, align 1, !tbaa !17
  %449 = zext i8 %448 to i32
  %450 = shl nuw i32 %449, 24
  %451 = getelementptr inbounds nuw i8, ptr %47, i64 26
  %452 = load i8, ptr %447, align 1, !tbaa !17
  %453 = zext i8 %452 to i32
  %454 = shl nuw nsw i32 %453, 16
  %455 = or disjoint i32 %454, %450
  %456 = getelementptr inbounds nuw i8, ptr %47, i64 27
  %457 = load i8, ptr %451, align 1, !tbaa !17
  %458 = zext i8 %457 to i32
  %459 = shl nuw nsw i32 %458, 8
  %460 = or disjoint i32 %455, %459
  %461 = getelementptr inbounds nuw i8, ptr %47, i64 28
  %462 = load i8, ptr %456, align 1, !tbaa !17
  %463 = zext i8 %462 to i32
  %464 = or disjoint i32 %460, %463
  store i32 %464, ptr %18, align 8, !tbaa !4
  %465 = icmp ult i32 %433, 64
  br i1 %465, label %467, label %466, !prof !11, !nosanitize !12

466:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

467:                                              ; preds = %446
  %468 = shl nuw i32 %433, 26
  %469 = shl nuw nsw i32 %433, 21
  %470 = xor i32 %468, %469
  %471 = shl nuw nsw i32 %433, 7
  %472 = and i32 %433, %372
  %473 = xor i32 %433, -1
  %474 = and i32 %311, %473
  %475 = or i32 %472, %474
  %476 = or disjoint i32 %471, %470
  %477 = or disjoint i32 %476, %250
  %478 = add nuw nsw i32 %477, %475
  %479 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %478, i32 -1841331548), !nosanitize !12
  %480 = extractvalue { i32, i1 } %479, 1, !nosanitize !12
  br i1 %480, label %481, label %482, !prof !14, !nosanitize !12

481:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

482:                                              ; preds = %467
  %483 = extractvalue { i32, i1 } %479, 0, !nosanitize !12
  %484 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %464, i32 %483), !nosanitize !12
  %485 = extractvalue { i32, i1 } %484, 0, !nosanitize !12
  %486 = extractvalue { i32, i1 } %484, 1, !nosanitize !12
  br i1 %486, label %487, label %488, !prof !14, !nosanitize !12

487:                                              ; preds = %482
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

488:                                              ; preds = %482
  %489 = icmp ult i32 %443, 4
  br i1 %489, label %491, label %490, !prof !11, !nosanitize !12

490:                                              ; preds = %488
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

491:                                              ; preds = %488
  %492 = and i32 %443, %382
  %493 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 %485), !nosanitize !12
  %494 = extractvalue { i32, i1 } %493, 0, !nosanitize !12
  %495 = extractvalue { i32, i1 } %493, 1, !nosanitize !12
  br i1 %495, label %496, label %497, !prof !14, !nosanitize !12

496:                                              ; preds = %491
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

497:                                              ; preds = %491
  %498 = mul nuw i32 %443, 1074267136
  %499 = xor i32 %382, %321
  %500 = and i32 %443, %499
  %501 = xor i32 %500, %431
  %502 = or disjoint i32 %498, %501
  %503 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %502, i32 %485), !nosanitize !12
  %504 = extractvalue { i32, i1 } %503, 0, !nosanitize !12
  %505 = extractvalue { i32, i1 } %503, 1, !nosanitize !12
  br i1 %505, label %506, label %507, !prof !14, !nosanitize !12

506:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

507:                                              ; preds = %497
  %508 = getelementptr inbounds nuw i8, ptr %47, i64 29
  %509 = load i8, ptr %461, align 1, !tbaa !17
  %510 = zext i8 %509 to i32
  %511 = shl nuw i32 %510, 24
  %512 = getelementptr inbounds nuw i8, ptr %47, i64 30
  %513 = load i8, ptr %508, align 1, !tbaa !17
  %514 = zext i8 %513 to i32
  %515 = shl nuw nsw i32 %514, 16
  %516 = or disjoint i32 %515, %511
  %517 = getelementptr inbounds nuw i8, ptr %47, i64 31
  %518 = load i8, ptr %512, align 1, !tbaa !17
  %519 = zext i8 %518 to i32
  %520 = shl nuw nsw i32 %519, 8
  %521 = or disjoint i32 %516, %520
  %522 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %523 = load i8, ptr %517, align 1, !tbaa !17
  %524 = zext i8 %523 to i32
  %525 = or disjoint i32 %521, %524
  store i32 %525, ptr %19, align 4, !tbaa !4
  %526 = icmp ult i32 %494, 64
  br i1 %526, label %528, label %527, !prof !11, !nosanitize !12

527:                                              ; preds = %507
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

528:                                              ; preds = %507
  %529 = shl nuw i32 %494, 26
  %530 = shl nuw nsw i32 %494, 21
  %531 = xor i32 %529, %530
  %532 = shl nuw nsw i32 %494, 7
  %533 = and i32 %494, %433
  %534 = xor i32 %494, -1
  %535 = and i32 %372, %534
  %536 = or i32 %533, %535
  %537 = or disjoint i32 %532, %531
  %538 = or disjoint i32 %537, %311
  %539 = add nuw nsw i32 %538, %536
  %540 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %539, i32 -1424204075), !nosanitize !12
  %541 = extractvalue { i32, i1 } %540, 1, !nosanitize !12
  br i1 %541, label %542, label %543, !prof !14, !nosanitize !12

542:                                              ; preds = %528
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

543:                                              ; preds = %528
  %544 = extractvalue { i32, i1 } %540, 0, !nosanitize !12
  %545 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %525, i32 %544), !nosanitize !12
  %546 = extractvalue { i32, i1 } %545, 0, !nosanitize !12
  %547 = extractvalue { i32, i1 } %545, 1, !nosanitize !12
  br i1 %547, label %548, label %549, !prof !14, !nosanitize !12

548:                                              ; preds = %543
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

549:                                              ; preds = %543
  %550 = icmp ult i32 %504, 4
  br i1 %550, label %552, label %551, !prof !11, !nosanitize !12

551:                                              ; preds = %549
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

552:                                              ; preds = %549
  %553 = and i32 %504, %443
  %554 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %321, i32 %546), !nosanitize !12
  %555 = extractvalue { i32, i1 } %554, 0, !nosanitize !12
  %556 = extractvalue { i32, i1 } %554, 1, !nosanitize !12
  br i1 %556, label %557, label %558, !prof !14, !nosanitize !12

557:                                              ; preds = %552
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

558:                                              ; preds = %552
  %559 = mul nuw i32 %504, 1074267136
  %560 = xor i32 %443, %382
  %561 = and i32 %504, %560
  %562 = xor i32 %561, %492
  %563 = or disjoint i32 %559, %562
  %564 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %563, i32 %546), !nosanitize !12
  %565 = extractvalue { i32, i1 } %564, 0, !nosanitize !12
  %566 = extractvalue { i32, i1 } %564, 1, !nosanitize !12
  br i1 %566, label %567, label %568, !prof !14, !nosanitize !12

567:                                              ; preds = %558
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

568:                                              ; preds = %558
  %569 = getelementptr inbounds nuw i8, ptr %47, i64 33
  %570 = load i8, ptr %522, align 1, !tbaa !17
  %571 = zext i8 %570 to i32
  %572 = shl nuw i32 %571, 24
  %573 = getelementptr inbounds nuw i8, ptr %47, i64 34
  %574 = load i8, ptr %569, align 1, !tbaa !17
  %575 = zext i8 %574 to i32
  %576 = shl nuw nsw i32 %575, 16
  %577 = or disjoint i32 %576, %572
  %578 = getelementptr inbounds nuw i8, ptr %47, i64 35
  %579 = load i8, ptr %573, align 1, !tbaa !17
  %580 = zext i8 %579 to i32
  %581 = shl nuw nsw i32 %580, 8
  %582 = or disjoint i32 %577, %581
  %583 = getelementptr inbounds nuw i8, ptr %47, i64 36
  %584 = load i8, ptr %578, align 1, !tbaa !17
  %585 = zext i8 %584 to i32
  %586 = or disjoint i32 %582, %585
  store i32 %586, ptr %20, align 16, !tbaa !4
  %587 = icmp ult i32 %555, 64
  br i1 %587, label %589, label %588, !prof !11, !nosanitize !12

588:                                              ; preds = %568
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

589:                                              ; preds = %568
  %590 = shl nuw i32 %555, 26
  %591 = shl nuw nsw i32 %555, 21
  %592 = xor i32 %590, %591
  %593 = shl nuw nsw i32 %555, 7
  %594 = and i32 %555, %494
  %595 = xor i32 %555, -1
  %596 = and i32 %433, %595
  %597 = or i32 %594, %596
  %598 = or disjoint i32 %593, %592
  %599 = or disjoint i32 %598, %372
  %600 = add nuw nsw i32 %599, %597
  %601 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %600, i32 -670586216), !nosanitize !12
  %602 = extractvalue { i32, i1 } %601, 1, !nosanitize !12
  br i1 %602, label %603, label %604, !prof !14, !nosanitize !12

603:                                              ; preds = %589
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

604:                                              ; preds = %589
  %605 = extractvalue { i32, i1 } %601, 0, !nosanitize !12
  %606 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %586, i32 %605), !nosanitize !12
  %607 = extractvalue { i32, i1 } %606, 0, !nosanitize !12
  %608 = extractvalue { i32, i1 } %606, 1, !nosanitize !12
  br i1 %608, label %609, label %610, !prof !14, !nosanitize !12

609:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

610:                                              ; preds = %604
  %611 = icmp ult i32 %565, 4
  br i1 %611, label %613, label %612, !prof !11, !nosanitize !12

612:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

613:                                              ; preds = %610
  %614 = and i32 %565, %504
  %615 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %382, i32 %607), !nosanitize !12
  %616 = extractvalue { i32, i1 } %615, 0, !nosanitize !12
  %617 = extractvalue { i32, i1 } %615, 1, !nosanitize !12
  br i1 %617, label %618, label %619, !prof !14, !nosanitize !12

618:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

619:                                              ; preds = %613
  %620 = mul nuw i32 %565, 1074267136
  %621 = xor i32 %504, %443
  %622 = and i32 %565, %621
  %623 = xor i32 %622, %553
  %624 = or disjoint i32 %620, %623
  %625 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %624, i32 %607), !nosanitize !12
  %626 = extractvalue { i32, i1 } %625, 0, !nosanitize !12
  %627 = extractvalue { i32, i1 } %625, 1, !nosanitize !12
  br i1 %627, label %628, label %629, !prof !14, !nosanitize !12

628:                                              ; preds = %619
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

629:                                              ; preds = %619
  %630 = getelementptr inbounds nuw i8, ptr %47, i64 37
  %631 = load i8, ptr %583, align 1, !tbaa !17
  %632 = zext i8 %631 to i32
  %633 = shl nuw i32 %632, 24
  %634 = getelementptr inbounds nuw i8, ptr %47, i64 38
  %635 = load i8, ptr %630, align 1, !tbaa !17
  %636 = zext i8 %635 to i32
  %637 = shl nuw nsw i32 %636, 16
  %638 = or disjoint i32 %637, %633
  %639 = getelementptr inbounds nuw i8, ptr %47, i64 39
  %640 = load i8, ptr %634, align 1, !tbaa !17
  %641 = zext i8 %640 to i32
  %642 = shl nuw nsw i32 %641, 8
  %643 = or disjoint i32 %638, %642
  %644 = getelementptr inbounds nuw i8, ptr %47, i64 40
  %645 = load i8, ptr %639, align 1, !tbaa !17
  %646 = zext i8 %645 to i32
  %647 = or disjoint i32 %643, %646
  store i32 %647, ptr %21, align 4, !tbaa !4
  %648 = icmp ult i32 %616, 64
  br i1 %648, label %650, label %649, !prof !11, !nosanitize !12

649:                                              ; preds = %629
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

650:                                              ; preds = %629
  %651 = shl nuw i32 %616, 26
  %652 = shl nuw nsw i32 %616, 21
  %653 = xor i32 %651, %652
  %654 = shl nuw nsw i32 %616, 7
  %655 = and i32 %616, %555
  %656 = xor i32 %616, -1
  %657 = and i32 %494, %656
  %658 = or i32 %655, %657
  %659 = or disjoint i32 %654, %653
  %660 = or disjoint i32 %659, %433
  %661 = add nuw nsw i32 %660, %658
  %662 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %661, i32 310598401), !nosanitize !12
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !12
  br i1 %663, label %664, label %665, !prof !14, !nosanitize !12

664:                                              ; preds = %650
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

665:                                              ; preds = %650
  %666 = extractvalue { i32, i1 } %662, 0, !nosanitize !12
  %667 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %647, i32 %666), !nosanitize !12
  %668 = extractvalue { i32, i1 } %667, 0, !nosanitize !12
  %669 = extractvalue { i32, i1 } %667, 1, !nosanitize !12
  br i1 %669, label %670, label %671, !prof !14, !nosanitize !12

670:                                              ; preds = %665
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

671:                                              ; preds = %665
  %672 = icmp ult i32 %626, 4
  br i1 %672, label %674, label %673, !prof !11, !nosanitize !12

673:                                              ; preds = %671
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

674:                                              ; preds = %671
  %675 = and i32 %626, %565
  %676 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %443, i32 %668), !nosanitize !12
  %677 = extractvalue { i32, i1 } %676, 0, !nosanitize !12
  %678 = extractvalue { i32, i1 } %676, 1, !nosanitize !12
  br i1 %678, label %679, label %680, !prof !14, !nosanitize !12

679:                                              ; preds = %674
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

680:                                              ; preds = %674
  %681 = mul nuw i32 %626, 1074267136
  %682 = xor i32 %565, %504
  %683 = and i32 %626, %682
  %684 = xor i32 %683, %614
  %685 = or disjoint i32 %681, %684
  %686 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %685, i32 %668), !nosanitize !12
  %687 = extractvalue { i32, i1 } %686, 0, !nosanitize !12
  %688 = extractvalue { i32, i1 } %686, 1, !nosanitize !12
  br i1 %688, label %689, label %690, !prof !14, !nosanitize !12

689:                                              ; preds = %680
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

690:                                              ; preds = %680
  %691 = getelementptr inbounds nuw i8, ptr %47, i64 41
  %692 = load i8, ptr %644, align 1, !tbaa !17
  %693 = zext i8 %692 to i32
  %694 = shl nuw i32 %693, 24
  %695 = getelementptr inbounds nuw i8, ptr %47, i64 42
  %696 = load i8, ptr %691, align 1, !tbaa !17
  %697 = zext i8 %696 to i32
  %698 = shl nuw nsw i32 %697, 16
  %699 = or disjoint i32 %698, %694
  %700 = getelementptr inbounds nuw i8, ptr %47, i64 43
  %701 = load i8, ptr %695, align 1, !tbaa !17
  %702 = zext i8 %701 to i32
  %703 = shl nuw nsw i32 %702, 8
  %704 = or disjoint i32 %699, %703
  %705 = getelementptr inbounds nuw i8, ptr %47, i64 44
  %706 = load i8, ptr %700, align 1, !tbaa !17
  %707 = zext i8 %706 to i32
  %708 = or disjoint i32 %704, %707
  store i32 %708, ptr %22, align 8, !tbaa !4
  %709 = icmp ult i32 %677, 64
  br i1 %709, label %711, label %710, !prof !11, !nosanitize !12

710:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

711:                                              ; preds = %690
  %712 = shl nuw i32 %677, 26
  %713 = shl nuw nsw i32 %677, 21
  %714 = xor i32 %712, %713
  %715 = shl nuw nsw i32 %677, 7
  %716 = and i32 %677, %616
  %717 = xor i32 %677, -1
  %718 = and i32 %555, %717
  %719 = or i32 %716, %718
  %720 = or disjoint i32 %715, %714
  %721 = or disjoint i32 %720, %494
  %722 = add nuw nsw i32 %721, %719
  %723 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %722, i32 607225278), !nosanitize !12
  %724 = extractvalue { i32, i1 } %723, 1, !nosanitize !12
  br i1 %724, label %725, label %726, !prof !14, !nosanitize !12

725:                                              ; preds = %711
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

726:                                              ; preds = %711
  %727 = extractvalue { i32, i1 } %723, 0, !nosanitize !12
  %728 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %708, i32 %727), !nosanitize !12
  %729 = extractvalue { i32, i1 } %728, 0, !nosanitize !12
  %730 = extractvalue { i32, i1 } %728, 1, !nosanitize !12
  br i1 %730, label %731, label %732, !prof !14, !nosanitize !12

731:                                              ; preds = %726
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

732:                                              ; preds = %726
  %733 = icmp ult i32 %687, 4
  br i1 %733, label %735, label %734, !prof !11, !nosanitize !12

734:                                              ; preds = %732
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

735:                                              ; preds = %732
  %736 = and i32 %687, %626
  %737 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %504, i32 %729), !nosanitize !12
  %738 = extractvalue { i32, i1 } %737, 0, !nosanitize !12
  %739 = extractvalue { i32, i1 } %737, 1, !nosanitize !12
  br i1 %739, label %740, label %741, !prof !14, !nosanitize !12

740:                                              ; preds = %735
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

741:                                              ; preds = %735
  %742 = mul nuw i32 %687, 1074267136
  %743 = xor i32 %626, %565
  %744 = and i32 %687, %743
  %745 = xor i32 %744, %675
  %746 = or disjoint i32 %742, %745
  %747 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %746, i32 %729), !nosanitize !12
  %748 = extractvalue { i32, i1 } %747, 0, !nosanitize !12
  %749 = extractvalue { i32, i1 } %747, 1, !nosanitize !12
  br i1 %749, label %750, label %751, !prof !14, !nosanitize !12

750:                                              ; preds = %741
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

751:                                              ; preds = %741
  %752 = getelementptr inbounds nuw i8, ptr %47, i64 45
  %753 = load i8, ptr %705, align 1, !tbaa !17
  %754 = zext i8 %753 to i32
  %755 = shl nuw i32 %754, 24
  %756 = getelementptr inbounds nuw i8, ptr %47, i64 46
  %757 = load i8, ptr %752, align 1, !tbaa !17
  %758 = zext i8 %757 to i32
  %759 = shl nuw nsw i32 %758, 16
  %760 = or disjoint i32 %759, %755
  %761 = getelementptr inbounds nuw i8, ptr %47, i64 47
  %762 = load i8, ptr %756, align 1, !tbaa !17
  %763 = zext i8 %762 to i32
  %764 = shl nuw nsw i32 %763, 8
  %765 = or disjoint i32 %760, %764
  %766 = getelementptr inbounds nuw i8, ptr %47, i64 48
  %767 = load i8, ptr %761, align 1, !tbaa !17
  %768 = zext i8 %767 to i32
  %769 = or disjoint i32 %765, %768
  store i32 %769, ptr %23, align 4, !tbaa !4
  %770 = icmp ult i32 %738, 64
  br i1 %770, label %772, label %771, !prof !11, !nosanitize !12

771:                                              ; preds = %751
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

772:                                              ; preds = %751
  %773 = shl nuw i32 %738, 26
  %774 = shl nuw nsw i32 %738, 21
  %775 = xor i32 %773, %774
  %776 = shl nuw nsw i32 %738, 7
  %777 = and i32 %738, %677
  %778 = xor i32 %738, -1
  %779 = and i32 %616, %778
  %780 = or i32 %777, %779
  %781 = or disjoint i32 %776, %775
  %782 = or disjoint i32 %781, %555
  %783 = add nuw nsw i32 %782, %780
  %784 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %783, i32 1426881987), !nosanitize !12
  %785 = extractvalue { i32, i1 } %784, 1, !nosanitize !12
  br i1 %785, label %786, label %787, !prof !14, !nosanitize !12

786:                                              ; preds = %772
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

787:                                              ; preds = %772
  %788 = extractvalue { i32, i1 } %784, 0, !nosanitize !12
  %789 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %769, i32 %788), !nosanitize !12
  %790 = extractvalue { i32, i1 } %789, 0, !nosanitize !12
  %791 = extractvalue { i32, i1 } %789, 1, !nosanitize !12
  br i1 %791, label %792, label %793, !prof !14, !nosanitize !12

792:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

793:                                              ; preds = %787
  %794 = icmp ult i32 %748, 4
  br i1 %794, label %796, label %795, !prof !11, !nosanitize !12

795:                                              ; preds = %793
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

796:                                              ; preds = %793
  %797 = and i32 %748, %687
  %798 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %565, i32 %790), !nosanitize !12
  %799 = extractvalue { i32, i1 } %798, 0, !nosanitize !12
  %800 = extractvalue { i32, i1 } %798, 1, !nosanitize !12
  br i1 %800, label %801, label %802, !prof !14, !nosanitize !12

801:                                              ; preds = %796
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

802:                                              ; preds = %796
  %803 = mul nuw i32 %748, 1074267136
  %804 = xor i32 %687, %626
  %805 = and i32 %748, %804
  %806 = xor i32 %805, %736
  %807 = or disjoint i32 %803, %806
  %808 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %807, i32 %790), !nosanitize !12
  %809 = extractvalue { i32, i1 } %808, 0, !nosanitize !12
  %810 = extractvalue { i32, i1 } %808, 1, !nosanitize !12
  br i1 %810, label %811, label %812, !prof !14, !nosanitize !12

811:                                              ; preds = %802
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

812:                                              ; preds = %802
  %813 = getelementptr inbounds nuw i8, ptr %47, i64 49
  %814 = load i8, ptr %766, align 1, !tbaa !17
  %815 = zext i8 %814 to i32
  %816 = shl nuw i32 %815, 24
  %817 = getelementptr inbounds nuw i8, ptr %47, i64 50
  %818 = load i8, ptr %813, align 1, !tbaa !17
  %819 = zext i8 %818 to i32
  %820 = shl nuw nsw i32 %819, 16
  %821 = or disjoint i32 %820, %816
  %822 = getelementptr inbounds nuw i8, ptr %47, i64 51
  %823 = load i8, ptr %817, align 1, !tbaa !17
  %824 = zext i8 %823 to i32
  %825 = shl nuw nsw i32 %824, 8
  %826 = or disjoint i32 %821, %825
  %827 = getelementptr inbounds nuw i8, ptr %47, i64 52
  %828 = load i8, ptr %822, align 1, !tbaa !17
  %829 = zext i8 %828 to i32
  %830 = or disjoint i32 %826, %829
  store i32 %830, ptr %24, align 16, !tbaa !4
  %831 = icmp ult i32 %799, 64
  br i1 %831, label %833, label %832, !prof !11, !nosanitize !12

832:                                              ; preds = %812
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

833:                                              ; preds = %812
  %834 = shl nuw i32 %799, 26
  %835 = shl nuw nsw i32 %799, 21
  %836 = xor i32 %834, %835
  %837 = shl nuw nsw i32 %799, 7
  %838 = and i32 %799, %738
  %839 = xor i32 %799, -1
  %840 = and i32 %677, %839
  %841 = or i32 %838, %840
  %842 = or disjoint i32 %837, %836
  %843 = or disjoint i32 %842, %616
  %844 = add nuw nsw i32 %843, %841
  %845 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %844, i32 1925078388), !nosanitize !12
  %846 = extractvalue { i32, i1 } %845, 1, !nosanitize !12
  br i1 %846, label %847, label %848, !prof !14, !nosanitize !12

847:                                              ; preds = %833
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

848:                                              ; preds = %833
  %849 = extractvalue { i32, i1 } %845, 0, !nosanitize !12
  %850 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %830, i32 %849), !nosanitize !12
  %851 = extractvalue { i32, i1 } %850, 0, !nosanitize !12
  %852 = extractvalue { i32, i1 } %850, 1, !nosanitize !12
  br i1 %852, label %853, label %854, !prof !14, !nosanitize !12

853:                                              ; preds = %848
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

854:                                              ; preds = %848
  %855 = icmp ult i32 %809, 4
  br i1 %855, label %857, label %856, !prof !11, !nosanitize !12

856:                                              ; preds = %854
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

857:                                              ; preds = %854
  %858 = and i32 %809, %748
  %859 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %626, i32 %851), !nosanitize !12
  %860 = extractvalue { i32, i1 } %859, 0, !nosanitize !12
  %861 = extractvalue { i32, i1 } %859, 1, !nosanitize !12
  br i1 %861, label %862, label %863, !prof !14, !nosanitize !12

862:                                              ; preds = %857
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

863:                                              ; preds = %857
  %864 = mul nuw i32 %809, 1074267136
  %865 = xor i32 %748, %687
  %866 = and i32 %809, %865
  %867 = xor i32 %866, %797
  %868 = or disjoint i32 %864, %867
  %869 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %868, i32 %851), !nosanitize !12
  %870 = extractvalue { i32, i1 } %869, 0, !nosanitize !12
  %871 = extractvalue { i32, i1 } %869, 1, !nosanitize !12
  br i1 %871, label %872, label %873, !prof !14, !nosanitize !12

872:                                              ; preds = %863
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

873:                                              ; preds = %863
  %874 = getelementptr inbounds nuw i8, ptr %47, i64 53
  %875 = load i8, ptr %827, align 1, !tbaa !17
  %876 = zext i8 %875 to i32
  %877 = shl nuw i32 %876, 24
  %878 = getelementptr inbounds nuw i8, ptr %47, i64 54
  %879 = load i8, ptr %874, align 1, !tbaa !17
  %880 = zext i8 %879 to i32
  %881 = shl nuw nsw i32 %880, 16
  %882 = or disjoint i32 %881, %877
  %883 = getelementptr inbounds nuw i8, ptr %47, i64 55
  %884 = load i8, ptr %878, align 1, !tbaa !17
  %885 = zext i8 %884 to i32
  %886 = shl nuw nsw i32 %885, 8
  %887 = or disjoint i32 %882, %886
  %888 = getelementptr inbounds nuw i8, ptr %47, i64 56
  %889 = load i8, ptr %883, align 1, !tbaa !17
  %890 = zext i8 %889 to i32
  %891 = or disjoint i32 %887, %890
  store i32 %891, ptr %25, align 4, !tbaa !4
  %892 = icmp ult i32 %860, 64
  br i1 %892, label %894, label %893, !prof !11, !nosanitize !12

893:                                              ; preds = %873
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

894:                                              ; preds = %873
  %895 = shl nuw i32 %860, 26
  %896 = shl nuw nsw i32 %860, 21
  %897 = xor i32 %895, %896
  %898 = shl nuw nsw i32 %860, 7
  %899 = and i32 %860, %799
  %900 = xor i32 %860, -1
  %901 = and i32 %738, %900
  %902 = or i32 %899, %901
  %903 = or disjoint i32 %898, %897
  %904 = or disjoint i32 %903, %677
  %905 = add nuw nsw i32 %904, %902
  %906 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %905, i32 -2132889090), !nosanitize !12
  %907 = extractvalue { i32, i1 } %906, 1, !nosanitize !12
  br i1 %907, label %908, label %909, !prof !14, !nosanitize !12

908:                                              ; preds = %894
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

909:                                              ; preds = %894
  %910 = extractvalue { i32, i1 } %906, 0, !nosanitize !12
  %911 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %891, i32 %910), !nosanitize !12
  %912 = extractvalue { i32, i1 } %911, 0, !nosanitize !12
  %913 = extractvalue { i32, i1 } %911, 1, !nosanitize !12
  br i1 %913, label %914, label %915, !prof !14, !nosanitize !12

914:                                              ; preds = %909
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

915:                                              ; preds = %909
  %916 = icmp ult i32 %870, 4
  br i1 %916, label %918, label %917, !prof !11, !nosanitize !12

917:                                              ; preds = %915
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

918:                                              ; preds = %915
  %919 = and i32 %870, %809
  %920 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %687, i32 %912), !nosanitize !12
  %921 = extractvalue { i32, i1 } %920, 0, !nosanitize !12
  %922 = extractvalue { i32, i1 } %920, 1, !nosanitize !12
  br i1 %922, label %923, label %924, !prof !14, !nosanitize !12

923:                                              ; preds = %918
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

924:                                              ; preds = %918
  %925 = mul nuw i32 %870, 1074267136
  %926 = xor i32 %809, %748
  %927 = and i32 %870, %926
  %928 = xor i32 %927, %858
  %929 = or disjoint i32 %925, %928
  %930 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %929, i32 %912), !nosanitize !12
  %931 = extractvalue { i32, i1 } %930, 0, !nosanitize !12
  %932 = extractvalue { i32, i1 } %930, 1, !nosanitize !12
  br i1 %932, label %933, label %934, !prof !14, !nosanitize !12

933:                                              ; preds = %924
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

934:                                              ; preds = %924
  %935 = getelementptr inbounds nuw i8, ptr %47, i64 57
  %936 = load i8, ptr %888, align 1, !tbaa !17
  %937 = zext i8 %936 to i32
  %938 = shl nuw i32 %937, 24
  %939 = getelementptr inbounds nuw i8, ptr %47, i64 58
  %940 = load i8, ptr %935, align 1, !tbaa !17
  %941 = zext i8 %940 to i32
  %942 = shl nuw nsw i32 %941, 16
  %943 = or disjoint i32 %942, %938
  %944 = getelementptr inbounds nuw i8, ptr %47, i64 59
  %945 = load i8, ptr %939, align 1, !tbaa !17
  %946 = zext i8 %945 to i32
  %947 = shl nuw nsw i32 %946, 8
  %948 = or disjoint i32 %943, %947
  %949 = getelementptr inbounds nuw i8, ptr %47, i64 60
  %950 = load i8, ptr %944, align 1, !tbaa !17
  %951 = zext i8 %950 to i32
  %952 = or disjoint i32 %948, %951
  store i32 %952, ptr %26, align 8, !tbaa !4
  %953 = icmp ult i32 %921, 64
  br i1 %953, label %955, label %954, !prof !11, !nosanitize !12

954:                                              ; preds = %934
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

955:                                              ; preds = %934
  %956 = shl nuw i32 %921, 26
  %957 = shl nuw nsw i32 %921, 21
  %958 = xor i32 %956, %957
  %959 = shl nuw nsw i32 %921, 7
  %960 = and i32 %921, %860
  %961 = xor i32 %921, -1
  %962 = and i32 %799, %961
  %963 = or i32 %960, %962
  %964 = or disjoint i32 %959, %958
  %965 = or disjoint i32 %964, %738
  %966 = add nuw nsw i32 %965, %963
  %967 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %966, i32 -1680079193), !nosanitize !12
  %968 = extractvalue { i32, i1 } %967, 1, !nosanitize !12
  br i1 %968, label %969, label %970, !prof !14, !nosanitize !12

969:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

970:                                              ; preds = %955
  %971 = extractvalue { i32, i1 } %967, 0, !nosanitize !12
  %972 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %952, i32 %971), !nosanitize !12
  %973 = extractvalue { i32, i1 } %972, 0, !nosanitize !12
  %974 = extractvalue { i32, i1 } %972, 1, !nosanitize !12
  br i1 %974, label %975, label %976, !prof !14, !nosanitize !12

975:                                              ; preds = %970
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

976:                                              ; preds = %970
  %977 = icmp ult i32 %931, 4
  br i1 %977, label %979, label %978, !prof !11, !nosanitize !12

978:                                              ; preds = %976
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

979:                                              ; preds = %976
  %980 = and i32 %931, %870
  %981 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %748, i32 %973), !nosanitize !12
  %982 = extractvalue { i32, i1 } %981, 0, !nosanitize !12
  %983 = extractvalue { i32, i1 } %981, 1, !nosanitize !12
  br i1 %983, label %984, label %985, !prof !14, !nosanitize !12

984:                                              ; preds = %979
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

985:                                              ; preds = %979
  %986 = mul nuw i32 %931, 1074267136
  %987 = xor i32 %870, %809
  %988 = and i32 %931, %987
  %989 = xor i32 %988, %919
  %990 = or disjoint i32 %986, %989
  %991 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %990, i32 %973), !nosanitize !12
  %992 = extractvalue { i32, i1 } %991, 0, !nosanitize !12
  %993 = extractvalue { i32, i1 } %991, 1, !nosanitize !12
  br i1 %993, label %994, label %995, !prof !14, !nosanitize !12

994:                                              ; preds = %985
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

995:                                              ; preds = %985
  %996 = getelementptr inbounds nuw i8, ptr %47, i64 61
  %997 = load i8, ptr %949, align 1, !tbaa !17
  %998 = zext i8 %997 to i32
  %999 = shl nuw i32 %998, 24
  %1000 = getelementptr inbounds nuw i8, ptr %47, i64 62
  %1001 = load i8, ptr %996, align 1, !tbaa !17
  %1002 = zext i8 %1001 to i32
  %1003 = shl nuw nsw i32 %1002, 16
  %1004 = or disjoint i32 %1003, %999
  %1005 = getelementptr inbounds nuw i8, ptr %47, i64 63
  %1006 = load i8, ptr %1000, align 1, !tbaa !17
  %1007 = zext i8 %1006 to i32
  %1008 = shl nuw nsw i32 %1007, 8
  %1009 = or disjoint i32 %1004, %1008
  %1010 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %1011 = load i8, ptr %1005, align 1, !tbaa !17
  %1012 = zext i8 %1011 to i32
  %1013 = or disjoint i32 %1009, %1012
  store i32 %1013, ptr %27, align 4, !tbaa !4
  %1014 = icmp ult i32 %982, 64
  br i1 %1014, label %1016, label %1015, !prof !11, !nosanitize !12

1015:                                             ; preds = %995
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1016:                                             ; preds = %995
  %1017 = shl nuw i32 %982, 26
  %1018 = shl nuw nsw i32 %982, 21
  %1019 = xor i32 %1017, %1018
  %1020 = shl nuw nsw i32 %982, 7
  %1021 = and i32 %982, %921
  %1022 = xor i32 %982, -1
  %1023 = and i32 %860, %1022
  %1024 = or i32 %1021, %1023
  %1025 = or disjoint i32 %1020, %1019
  %1026 = or disjoint i32 %1025, %799
  %1027 = add nuw nsw i32 %1026, %1024
  %1028 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1027, i32 -1046744716), !nosanitize !12
  %1029 = extractvalue { i32, i1 } %1028, 1, !nosanitize !12
  br i1 %1029, label %1030, label %1031, !prof !14, !nosanitize !12

1030:                                             ; preds = %1016
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1031:                                             ; preds = %1016
  %1032 = extractvalue { i32, i1 } %1028, 0, !nosanitize !12
  %1033 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1013, i32 %1032), !nosanitize !12
  %1034 = extractvalue { i32, i1 } %1033, 0, !nosanitize !12
  %1035 = extractvalue { i32, i1 } %1033, 1, !nosanitize !12
  br i1 %1035, label %1036, label %1037, !prof !14, !nosanitize !12

1036:                                             ; preds = %1031
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1037:                                             ; preds = %1031
  %1038 = icmp ult i32 %992, 4
  br i1 %1038, label %1040, label %1039, !prof !11, !nosanitize !12

1039:                                             ; preds = %1037
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1040:                                             ; preds = %1037
  %1041 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %809, i32 %1034), !nosanitize !12
  %1042 = extractvalue { i32, i1 } %1041, 1, !nosanitize !12
  br i1 %1042, label %1043, label %1044, !prof !14, !nosanitize !12

1043:                                             ; preds = %1040
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1044:                                             ; preds = %1040
  %1045 = mul nuw i32 %992, 1074267136
  %1046 = xor i32 %931, %870
  %1047 = and i32 %992, %1046
  %1048 = xor i32 %1047, %980
  %1049 = or disjoint i32 %1045, %1048
  %1050 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1049, i32 %1034), !nosanitize !12
  %1051 = extractvalue { i32, i1 } %1050, 1, !nosanitize !12
  br i1 %1051, label %1055, label %1052, !prof !14, !nosanitize !12

1052:                                             ; preds = %1044
  %1053 = extractvalue { i32, i1 } %1041, 0
  %1054 = extractvalue { i32, i1 } %1050, 0
  br label %1061

1055:                                             ; preds = %1044
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1056:                                             ; preds = %1754
  %1057 = add nuw nsw i64 %1062, 8
  %1058 = extractvalue { i32, i1 } %1751, 0
  %1059 = extractvalue { i32, i1 } %1760, 0
  %1060 = icmp samesign ult i64 %1062, 56
  br i1 %1060, label %1061, label %1763, !llvm.loop !18

1061:                                             ; preds = %1052, %1056
  %1062 = phi i64 [ 16, %1052 ], [ %1057, %1056 ]
  %1063 = phi i32 [ %1054, %1052 ], [ %1059, %1056 ]
  %1064 = phi i32 [ %1053, %1052 ], [ %1058, %1056 ]
  %1065 = phi i32 [ %860, %1052 ], [ %1514, %1056 ]
  %1066 = phi i32 [ %921, %1052 ], [ %1594, %1056 ]
  %1067 = phi i32 [ %982, %1052 ], [ %1674, %1056 ]
  %1068 = phi i32 [ %870, %1052 ], [ %1524, %1056 ]
  %1069 = phi i32 [ %931, %1052 ], [ %1604, %1056 ]
  %1070 = phi i32 [ %992, %1052 ], [ %1684, %1056 ]
  %1071 = or disjoint i64 %1062, 1
  %1072 = and i64 %1071, 9
  %1073 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1072
  %1074 = load i32, ptr %1073, align 4, !tbaa !4
  %1075 = icmp ult i32 %1074, 128
  br i1 %1075, label %1077, label %1076, !prof !11, !nosanitize !12

1076:                                             ; preds = %1061
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1077:                                             ; preds = %1061
  %1078 = add nuw nsw i64 %1062, 14
  %1079 = and i64 %1078, 14
  %1080 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1079
  %1081 = load i32, ptr %1080, align 8, !tbaa !4
  %1082 = icmp ult i32 %1081, 131072
  br i1 %1082, label %1084, label %1083, !prof !11, !nosanitize !12

1083:                                             ; preds = %1077
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1084:                                             ; preds = %1077
  %1085 = shl nuw i32 %1074, 25
  %1086 = shl nuw nsw i32 %1074, 14
  %1087 = or disjoint i32 %1085, %1086
  %1088 = lshr i32 %1074, 3
  %1089 = or disjoint i32 %1087, %1088
  %1090 = shl nuw i32 %1081, 15
  %1091 = shl nuw nsw i32 %1081, 13
  %1092 = xor i32 %1090, %1091
  %1093 = lshr i32 %1081, 10
  %1094 = or disjoint i32 %1092, %1093
  %1095 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1089, i32 %1094), !nosanitize !12
  %1096 = extractvalue { i32, i1 } %1095, 1, !nosanitize !12
  br i1 %1096, label %1097, label %1098, !prof !14, !nosanitize !12

1097:                                             ; preds = %1084
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1098:                                             ; preds = %1084
  %1099 = extractvalue { i32, i1 } %1095, 0, !nosanitize !12
  %1100 = add nuw nsw i64 %1062, 9
  %1101 = and i64 %1100, 9
  %1102 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1101
  %1103 = load i32, ptr %1102, align 4, !tbaa !4
  %1104 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1099, i32 %1103), !nosanitize !12
  %1105 = extractvalue { i32, i1 } %1104, 1, !nosanitize !12
  br i1 %1105, label %1106, label %1107, !prof !14, !nosanitize !12

1106:                                             ; preds = %1098
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1107:                                             ; preds = %1098
  %1108 = extractvalue { i32, i1 } %1104, 0, !nosanitize !12
  %1109 = and i64 %1062, 8
  %1110 = and i64 %1062, 8
  %1111 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1110
  %1112 = load i32, ptr %1111, align 16, !tbaa !4
  %1113 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1112, i32 %1108), !nosanitize !12
  %1114 = extractvalue { i32, i1 } %1113, 0, !nosanitize !12
  %1115 = extractvalue { i32, i1 } %1113, 1, !nosanitize !12
  br i1 %1115, label %1116, label %1117, !prof !14, !nosanitize !12

1116:                                             ; preds = %1107
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1117:                                             ; preds = %1107
  store i32 %1114, ptr %1111, align 16, !tbaa !4
  %1118 = icmp ult i32 %1064, 64
  br i1 %1118, label %1120, label %1119, !prof !11, !nosanitize !12

1119:                                             ; preds = %1117
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1120:                                             ; preds = %1117
  %1121 = shl nuw i32 %1064, 26
  %1122 = shl nuw nsw i32 %1064, 21
  %1123 = xor i32 %1121, %1122
  %1124 = shl nuw nsw i32 %1064, 7
  %1125 = or disjoint i32 %1123, %1124
  %1126 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1065, i32 %1125), !nosanitize !12
  %1127 = extractvalue { i32, i1 } %1126, 1, !nosanitize !12
  br i1 %1127, label %1128, label %1129, !prof !14, !nosanitize !12

1128:                                             ; preds = %1120
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1129:                                             ; preds = %1120
  %1130 = extractvalue { i32, i1 } %1126, 0, !nosanitize !12
  %1131 = and i32 %1064, %1067
  %1132 = xor i32 %1064, -1
  %1133 = and i32 %1066, %1132
  %1134 = or i32 %1133, %1131
  %1135 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1130, i32 %1134), !nosanitize !12
  %1136 = extractvalue { i32, i1 } %1135, 1, !nosanitize !12
  br i1 %1136, label %1137, label %1138, !prof !14, !nosanitize !12

1137:                                             ; preds = %1129
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1138:                                             ; preds = %1129
  %1139 = extractvalue { i32, i1 } %1135, 0, !nosanitize !12
  %1140 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1062
  %1141 = load i32, ptr %1140, align 16, !tbaa !4
  %1142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1139, i32 %1141), !nosanitize !12
  %1143 = extractvalue { i32, i1 } %1142, 1, !nosanitize !12
  br i1 %1143, label %1144, label %1145, !prof !14, !nosanitize !12

1144:                                             ; preds = %1138
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1145:                                             ; preds = %1138
  %1146 = extractvalue { i32, i1 } %1142, 0, !nosanitize !12
  %1147 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1114, i32 %1146), !nosanitize !12
  %1148 = extractvalue { i32, i1 } %1147, 0, !nosanitize !12
  %1149 = extractvalue { i32, i1 } %1147, 1, !nosanitize !12
  br i1 %1149, label %1150, label %1151, !prof !14, !nosanitize !12

1150:                                             ; preds = %1145
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1151:                                             ; preds = %1145
  %1152 = icmp ult i32 %1063, 4
  br i1 %1152, label %1154, label %1153, !prof !11, !nosanitize !12

1153:                                             ; preds = %1151
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1154:                                             ; preds = %1151
  %1155 = and i32 %1063, %1070
  %1156 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1068, i32 %1148), !nosanitize !12
  %1157 = extractvalue { i32, i1 } %1156, 0, !nosanitize !12
  %1158 = extractvalue { i32, i1 } %1156, 1, !nosanitize !12
  br i1 %1158, label %1159, label %1160, !prof !14, !nosanitize !12

1159:                                             ; preds = %1154
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1160:                                             ; preds = %1154
  %1161 = mul nuw i32 %1063, 1074267136
  %1162 = xor i32 %1069, %1070
  %1163 = and i32 %1162, %1063
  %1164 = and i32 %1069, %1070
  %1165 = xor i32 %1163, %1164
  %1166 = add nuw i32 %1161, %1165
  %1167 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1166, i32 %1148), !nosanitize !12
  %1168 = extractvalue { i32, i1 } %1167, 0, !nosanitize !12
  %1169 = extractvalue { i32, i1 } %1167, 1, !nosanitize !12
  br i1 %1169, label %1170, label %1171, !prof !14, !nosanitize !12

1170:                                             ; preds = %1160
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1171:                                             ; preds = %1160
  %1172 = or disjoint i64 %1062, 2
  %1173 = and i64 %1172, 10
  %1174 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1173
  %1175 = load i32, ptr %1174, align 8, !tbaa !4
  %1176 = icmp ult i32 %1175, 128
  br i1 %1176, label %1178, label %1177, !prof !11, !nosanitize !12

1177:                                             ; preds = %1171
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1178:                                             ; preds = %1171
  %1179 = add nuw nsw i64 %1062, 15
  %1180 = and i64 %1179, 15
  %1181 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1180
  %1182 = load i32, ptr %1181, align 4, !tbaa !4
  %1183 = icmp ult i32 %1182, 131072
  br i1 %1183, label %1185, label %1184, !prof !11, !nosanitize !12

1184:                                             ; preds = %1178
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1185:                                             ; preds = %1178
  %1186 = shl nuw i32 %1175, 25
  %1187 = shl nuw nsw i32 %1175, 14
  %1188 = or disjoint i32 %1186, %1187
  %1189 = lshr i32 %1175, 3
  %1190 = or disjoint i32 %1188, %1189
  %1191 = shl nuw i32 %1182, 15
  %1192 = shl nuw nsw i32 %1182, 13
  %1193 = xor i32 %1191, %1192
  %1194 = lshr i32 %1182, 10
  %1195 = or disjoint i32 %1193, %1194
  %1196 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1190, i32 %1195), !nosanitize !12
  %1197 = extractvalue { i32, i1 } %1196, 1, !nosanitize !12
  br i1 %1197, label %1198, label %1199, !prof !14, !nosanitize !12

1198:                                             ; preds = %1185
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1199:                                             ; preds = %1185
  %1200 = extractvalue { i32, i1 } %1196, 0, !nosanitize !12
  %1201 = add nuw nsw i64 %1062, 10
  %1202 = and i64 %1201, 10
  %1203 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1202
  %1204 = load i32, ptr %1203, align 8, !tbaa !4
  %1205 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1200, i32 %1204), !nosanitize !12
  %1206 = extractvalue { i32, i1 } %1205, 1, !nosanitize !12
  br i1 %1206, label %1207, label %1208, !prof !14, !nosanitize !12

1207:                                             ; preds = %1199
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1208:                                             ; preds = %1199
  %1209 = extractvalue { i32, i1 } %1205, 0, !nosanitize !12
  %1210 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1074, i32 %1209), !nosanitize !12
  %1211 = extractvalue { i32, i1 } %1210, 0, !nosanitize !12
  %1212 = extractvalue { i32, i1 } %1210, 1, !nosanitize !12
  br i1 %1212, label %1213, label %1214, !prof !14, !nosanitize !12

1213:                                             ; preds = %1208
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1214:                                             ; preds = %1208
  store i32 %1211, ptr %1073, align 4, !tbaa !4
  %1215 = icmp ult i32 %1157, 64
  br i1 %1215, label %1217, label %1216, !prof !11, !nosanitize !12

1216:                                             ; preds = %1214
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1217:                                             ; preds = %1214
  %1218 = shl nuw i32 %1157, 26
  %1219 = shl nuw nsw i32 %1157, 21
  %1220 = xor i32 %1218, %1219
  %1221 = shl nuw nsw i32 %1157, 7
  %1222 = or disjoint i32 %1220, %1221
  %1223 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1066, i32 %1222), !nosanitize !12
  %1224 = extractvalue { i32, i1 } %1223, 1, !nosanitize !12
  br i1 %1224, label %1225, label %1226, !prof !14, !nosanitize !12

1225:                                             ; preds = %1217
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1226:                                             ; preds = %1217
  %1227 = extractvalue { i32, i1 } %1223, 0, !nosanitize !12
  %1228 = and i32 %1157, %1064
  %1229 = xor i32 %1157, -1
  %1230 = and i32 %1067, %1229
  %1231 = or i32 %1228, %1230
  %1232 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1227, i32 %1231), !nosanitize !12
  %1233 = extractvalue { i32, i1 } %1232, 1, !nosanitize !12
  br i1 %1233, label %1234, label %1235, !prof !14, !nosanitize !12

1234:                                             ; preds = %1226
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1235:                                             ; preds = %1226
  %1236 = extractvalue { i32, i1 } %1232, 0, !nosanitize !12
  %1237 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1071
  %1238 = load i32, ptr %1237, align 4, !tbaa !4
  %1239 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1236, i32 %1238), !nosanitize !12
  %1240 = extractvalue { i32, i1 } %1239, 1, !nosanitize !12
  br i1 %1240, label %1241, label %1242, !prof !14, !nosanitize !12

1241:                                             ; preds = %1235
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1242:                                             ; preds = %1235
  %1243 = extractvalue { i32, i1 } %1239, 0, !nosanitize !12
  %1244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1211, i32 %1243), !nosanitize !12
  %1245 = extractvalue { i32, i1 } %1244, 0, !nosanitize !12
  %1246 = extractvalue { i32, i1 } %1244, 1, !nosanitize !12
  br i1 %1246, label %1247, label %1248, !prof !14, !nosanitize !12

1247:                                             ; preds = %1242
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1248:                                             ; preds = %1242
  %1249 = icmp ult i32 %1168, 4
  br i1 %1249, label %1251, label %1250, !prof !11, !nosanitize !12

1250:                                             ; preds = %1248
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1251:                                             ; preds = %1248
  %1252 = and i32 %1168, %1063
  %1253 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1069, i32 %1245), !nosanitize !12
  %1254 = extractvalue { i32, i1 } %1253, 0, !nosanitize !12
  %1255 = extractvalue { i32, i1 } %1253, 1, !nosanitize !12
  br i1 %1255, label %1256, label %1257, !prof !14, !nosanitize !12

1256:                                             ; preds = %1251
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1257:                                             ; preds = %1251
  %1258 = mul nuw i32 %1168, 1074267136
  %1259 = xor i32 %1063, %1070
  %1260 = and i32 %1168, %1259
  %1261 = xor i32 %1260, %1155
  %1262 = or disjoint i32 %1258, %1261
  %1263 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1262, i32 %1245), !nosanitize !12
  %1264 = extractvalue { i32, i1 } %1263, 0, !nosanitize !12
  %1265 = extractvalue { i32, i1 } %1263, 1, !nosanitize !12
  br i1 %1265, label %1266, label %1267, !prof !14, !nosanitize !12

1266:                                             ; preds = %1257
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1267:                                             ; preds = %1257
  %1268 = or disjoint i64 %1062, 3
  %1269 = and i64 %1268, 11
  %1270 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1269
  %1271 = load i32, ptr %1270, align 4, !tbaa !4
  %1272 = icmp ult i32 %1271, 128
  br i1 %1272, label %1274, label %1273, !prof !11, !nosanitize !12

1273:                                             ; preds = %1267
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1274:                                             ; preds = %1267
  %1275 = icmp ult i32 %1114, 131072
  br i1 %1275, label %1277, label %1276, !prof !11, !nosanitize !12

1276:                                             ; preds = %1274
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1277:                                             ; preds = %1274
  %1278 = shl nuw i32 %1271, 25
  %1279 = shl nuw nsw i32 %1271, 14
  %1280 = or disjoint i32 %1278, %1279
  %1281 = lshr i32 %1271, 3
  %1282 = or disjoint i32 %1280, %1281
  %1283 = shl nuw i32 %1114, 15
  %1284 = shl nuw nsw i32 %1114, 13
  %1285 = xor i32 %1283, %1284
  %1286 = lshr i32 %1114, 10
  %1287 = or disjoint i32 %1285, %1286
  %1288 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1282, i32 %1287), !nosanitize !12
  %1289 = extractvalue { i32, i1 } %1288, 1, !nosanitize !12
  br i1 %1289, label %1290, label %1291, !prof !14, !nosanitize !12

1290:                                             ; preds = %1277
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1291:                                             ; preds = %1277
  %1292 = extractvalue { i32, i1 } %1288, 0, !nosanitize !12
  %1293 = add nuw nsw i64 %1062, 11
  %1294 = and i64 %1293, 11
  %1295 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1294
  %1296 = load i32, ptr %1295, align 4, !tbaa !4
  %1297 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1292, i32 %1296), !nosanitize !12
  %1298 = extractvalue { i32, i1 } %1297, 1, !nosanitize !12
  br i1 %1298, label %1299, label %1300, !prof !14, !nosanitize !12

1299:                                             ; preds = %1291
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1300:                                             ; preds = %1291
  %1301 = extractvalue { i32, i1 } %1297, 0, !nosanitize !12
  %1302 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1175, i32 %1301), !nosanitize !12
  %1303 = extractvalue { i32, i1 } %1302, 0, !nosanitize !12
  %1304 = extractvalue { i32, i1 } %1302, 1, !nosanitize !12
  br i1 %1304, label %1305, label %1306, !prof !14, !nosanitize !12

1305:                                             ; preds = %1300
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1306:                                             ; preds = %1300
  store i32 %1303, ptr %1174, align 8, !tbaa !4
  %1307 = icmp ult i32 %1254, 64
  br i1 %1307, label %1309, label %1308, !prof !11, !nosanitize !12

1308:                                             ; preds = %1306
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1309:                                             ; preds = %1306
  %1310 = shl nuw i32 %1254, 26
  %1311 = shl nuw nsw i32 %1254, 21
  %1312 = xor i32 %1310, %1311
  %1313 = shl nuw nsw i32 %1254, 7
  %1314 = or disjoint i32 %1312, %1313
  %1315 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1067, i32 %1314), !nosanitize !12
  %1316 = extractvalue { i32, i1 } %1315, 1, !nosanitize !12
  br i1 %1316, label %1317, label %1318, !prof !14, !nosanitize !12

1317:                                             ; preds = %1309
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1318:                                             ; preds = %1309
  %1319 = extractvalue { i32, i1 } %1315, 0, !nosanitize !12
  %1320 = and i32 %1254, %1157
  %1321 = xor i32 %1254, -1
  %1322 = and i32 %1064, %1321
  %1323 = or i32 %1320, %1322
  %1324 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1319, i32 %1323), !nosanitize !12
  %1325 = extractvalue { i32, i1 } %1324, 1, !nosanitize !12
  br i1 %1325, label %1326, label %1327, !prof !14, !nosanitize !12

1326:                                             ; preds = %1318
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1327:                                             ; preds = %1318
  %1328 = extractvalue { i32, i1 } %1324, 0, !nosanitize !12
  %1329 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1172
  %1330 = load i32, ptr %1329, align 8, !tbaa !4
  %1331 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1328, i32 %1330), !nosanitize !12
  %1332 = extractvalue { i32, i1 } %1331, 1, !nosanitize !12
  br i1 %1332, label %1333, label %1334, !prof !14, !nosanitize !12

1333:                                             ; preds = %1327
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1334:                                             ; preds = %1327
  %1335 = extractvalue { i32, i1 } %1331, 0, !nosanitize !12
  %1336 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1303, i32 %1335), !nosanitize !12
  %1337 = extractvalue { i32, i1 } %1336, 0, !nosanitize !12
  %1338 = extractvalue { i32, i1 } %1336, 1, !nosanitize !12
  br i1 %1338, label %1339, label %1340, !prof !14, !nosanitize !12

1339:                                             ; preds = %1334
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1340:                                             ; preds = %1334
  %1341 = icmp ult i32 %1264, 4
  br i1 %1341, label %1343, label %1342, !prof !11, !nosanitize !12

1342:                                             ; preds = %1340
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1343:                                             ; preds = %1340
  %1344 = and i32 %1264, %1168
  %1345 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1070, i32 %1337), !nosanitize !12
  %1346 = extractvalue { i32, i1 } %1345, 0, !nosanitize !12
  %1347 = extractvalue { i32, i1 } %1345, 1, !nosanitize !12
  br i1 %1347, label %1348, label %1349, !prof !14, !nosanitize !12

1348:                                             ; preds = %1343
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1349:                                             ; preds = %1343
  %1350 = mul nuw i32 %1264, 1074267136
  %1351 = xor i32 %1168, %1063
  %1352 = and i32 %1264, %1351
  %1353 = xor i32 %1352, %1252
  %1354 = or disjoint i32 %1350, %1353
  %1355 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1354, i32 %1337), !nosanitize !12
  %1356 = extractvalue { i32, i1 } %1355, 0, !nosanitize !12
  %1357 = extractvalue { i32, i1 } %1355, 1, !nosanitize !12
  br i1 %1357, label %1358, label %1359, !prof !14, !nosanitize !12

1358:                                             ; preds = %1349
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1359:                                             ; preds = %1349
  %1360 = or disjoint i64 %1062, 4
  %1361 = and i64 %1360, 12
  %1362 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1361
  %1363 = load i32, ptr %1362, align 16, !tbaa !4
  %1364 = icmp ult i32 %1363, 128
  br i1 %1364, label %1366, label %1365, !prof !11, !nosanitize !12

1365:                                             ; preds = %1359
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1366:                                             ; preds = %1359
  %1367 = icmp ult i32 %1211, 131072
  br i1 %1367, label %1369, label %1368, !prof !11, !nosanitize !12

1368:                                             ; preds = %1366
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1369:                                             ; preds = %1366
  %1370 = shl nuw i32 %1363, 25
  %1371 = shl nuw nsw i32 %1363, 14
  %1372 = or disjoint i32 %1370, %1371
  %1373 = lshr i32 %1363, 3
  %1374 = or disjoint i32 %1372, %1373
  %1375 = shl nuw i32 %1211, 15
  %1376 = shl nuw nsw i32 %1211, 13
  %1377 = xor i32 %1375, %1376
  %1378 = lshr i32 %1211, 10
  %1379 = or disjoint i32 %1377, %1378
  %1380 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1374, i32 %1379), !nosanitize !12
  %1381 = extractvalue { i32, i1 } %1380, 1, !nosanitize !12
  br i1 %1381, label %1382, label %1383, !prof !14, !nosanitize !12

1382:                                             ; preds = %1369
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1383:                                             ; preds = %1369
  %1384 = extractvalue { i32, i1 } %1380, 0, !nosanitize !12
  %1385 = add nuw nsw i64 %1062, 12
  %1386 = and i64 %1385, 12
  %1387 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1386
  %1388 = load i32, ptr %1387, align 16, !tbaa !4
  %1389 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1384, i32 %1388), !nosanitize !12
  %1390 = extractvalue { i32, i1 } %1389, 1, !nosanitize !12
  br i1 %1390, label %1391, label %1392, !prof !14, !nosanitize !12

1391:                                             ; preds = %1383
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1392:                                             ; preds = %1383
  %1393 = extractvalue { i32, i1 } %1389, 0, !nosanitize !12
  %1394 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1271, i32 %1393), !nosanitize !12
  %1395 = extractvalue { i32, i1 } %1394, 0, !nosanitize !12
  %1396 = extractvalue { i32, i1 } %1394, 1, !nosanitize !12
  br i1 %1396, label %1397, label %1398, !prof !14, !nosanitize !12

1397:                                             ; preds = %1392
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1398:                                             ; preds = %1392
  store i32 %1395, ptr %1270, align 4, !tbaa !4
  %1399 = icmp ult i32 %1346, 64
  br i1 %1399, label %1401, label %1400, !prof !11, !nosanitize !12

1400:                                             ; preds = %1398
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1401:                                             ; preds = %1398
  %1402 = shl nuw i32 %1346, 26
  %1403 = shl nuw nsw i32 %1346, 21
  %1404 = xor i32 %1402, %1403
  %1405 = shl nuw nsw i32 %1346, 7
  %1406 = and i32 %1346, %1254
  %1407 = xor i32 %1346, -1
  %1408 = and i32 %1157, %1407
  %1409 = or i32 %1406, %1408
  %1410 = or disjoint i32 %1405, %1404
  %1411 = or disjoint i32 %1410, %1064
  %1412 = add nuw nsw i32 %1411, %1409
  %1413 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1268
  %1414 = load i32, ptr %1413, align 4, !tbaa !4
  %1415 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1412, i32 %1414), !nosanitize !12
  %1416 = extractvalue { i32, i1 } %1415, 1, !nosanitize !12
  br i1 %1416, label %1417, label %1418, !prof !14, !nosanitize !12

1417:                                             ; preds = %1401
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1418:                                             ; preds = %1401
  %1419 = extractvalue { i32, i1 } %1415, 0, !nosanitize !12
  %1420 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1395, i32 %1419), !nosanitize !12
  %1421 = extractvalue { i32, i1 } %1420, 0, !nosanitize !12
  %1422 = extractvalue { i32, i1 } %1420, 1, !nosanitize !12
  br i1 %1422, label %1423, label %1424, !prof !14, !nosanitize !12

1423:                                             ; preds = %1418
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1424:                                             ; preds = %1418
  %1425 = icmp ult i32 %1356, 4
  br i1 %1425, label %1427, label %1426, !prof !11, !nosanitize !12

1426:                                             ; preds = %1424
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1427:                                             ; preds = %1424
  %1428 = and i32 %1356, %1264
  %1429 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1063, i32 %1421), !nosanitize !12
  %1430 = extractvalue { i32, i1 } %1429, 0, !nosanitize !12
  %1431 = extractvalue { i32, i1 } %1429, 1, !nosanitize !12
  br i1 %1431, label %1432, label %1433, !prof !14, !nosanitize !12

1432:                                             ; preds = %1427
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1433:                                             ; preds = %1427
  %1434 = mul nuw i32 %1356, 1074267136
  %1435 = xor i32 %1264, %1168
  %1436 = and i32 %1356, %1435
  %1437 = xor i32 %1436, %1344
  %1438 = or disjoint i32 %1434, %1437
  %1439 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1438, i32 %1421), !nosanitize !12
  %1440 = extractvalue { i32, i1 } %1439, 0, !nosanitize !12
  %1441 = extractvalue { i32, i1 } %1439, 1, !nosanitize !12
  br i1 %1441, label %1442, label %1443, !prof !14, !nosanitize !12

1442:                                             ; preds = %1433
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1443:                                             ; preds = %1433
  %1444 = or disjoint i64 %1062, 5
  %1445 = and i64 %1444, 13
  %1446 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1445
  %1447 = load i32, ptr %1446, align 4, !tbaa !4
  %1448 = icmp ult i32 %1447, 128
  br i1 %1448, label %1450, label %1449, !prof !11, !nosanitize !12

1449:                                             ; preds = %1443
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1450:                                             ; preds = %1443
  %1451 = icmp ult i32 %1303, 131072
  br i1 %1451, label %1453, label %1452, !prof !11, !nosanitize !12

1452:                                             ; preds = %1450
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1453:                                             ; preds = %1450
  %1454 = shl nuw i32 %1447, 25
  %1455 = shl nuw nsw i32 %1447, 14
  %1456 = or disjoint i32 %1454, %1455
  %1457 = lshr i32 %1447, 3
  %1458 = or disjoint i32 %1456, %1457
  %1459 = shl nuw i32 %1303, 15
  %1460 = shl nuw nsw i32 %1303, 13
  %1461 = xor i32 %1459, %1460
  %1462 = lshr i32 %1303, 10
  %1463 = or disjoint i32 %1461, %1462
  %1464 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1458, i32 %1463), !nosanitize !12
  %1465 = extractvalue { i32, i1 } %1464, 1, !nosanitize !12
  br i1 %1465, label %1466, label %1467, !prof !14, !nosanitize !12

1466:                                             ; preds = %1453
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1467:                                             ; preds = %1453
  %1468 = extractvalue { i32, i1 } %1464, 0, !nosanitize !12
  %1469 = add nuw nsw i64 %1062, 13
  %1470 = and i64 %1469, 13
  %1471 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1470
  %1472 = load i32, ptr %1471, align 4, !tbaa !4
  %1473 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1468, i32 %1472), !nosanitize !12
  %1474 = extractvalue { i32, i1 } %1473, 1, !nosanitize !12
  br i1 %1474, label %1475, label %1476, !prof !14, !nosanitize !12

1475:                                             ; preds = %1467
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1476:                                             ; preds = %1467
  %1477 = extractvalue { i32, i1 } %1473, 0, !nosanitize !12
  %1478 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1363, i32 %1477), !nosanitize !12
  %1479 = extractvalue { i32, i1 } %1478, 0, !nosanitize !12
  %1480 = extractvalue { i32, i1 } %1478, 1, !nosanitize !12
  br i1 %1480, label %1481, label %1482, !prof !14, !nosanitize !12

1481:                                             ; preds = %1476
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1482:                                             ; preds = %1476
  store i32 %1479, ptr %1362, align 16, !tbaa !4
  %1483 = icmp ult i32 %1430, 64
  br i1 %1483, label %1485, label %1484, !prof !11, !nosanitize !12

1484:                                             ; preds = %1482
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1485:                                             ; preds = %1482
  %1486 = shl nuw i32 %1430, 26
  %1487 = shl nuw nsw i32 %1430, 21
  %1488 = xor i32 %1486, %1487
  %1489 = shl nuw nsw i32 %1430, 7
  %1490 = and i32 %1430, %1346
  %1491 = xor i32 %1430, -1
  %1492 = and i32 %1254, %1491
  %1493 = or i32 %1490, %1492
  %1494 = or disjoint i32 %1489, %1488
  %1495 = or disjoint i32 %1494, %1157
  %1496 = add nuw nsw i32 %1495, %1493
  %1497 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1360
  %1498 = load i32, ptr %1497, align 16, !tbaa !4
  %1499 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1496, i32 %1498), !nosanitize !12
  %1500 = extractvalue { i32, i1 } %1499, 1, !nosanitize !12
  br i1 %1500, label %1501, label %1502, !prof !14, !nosanitize !12

1501:                                             ; preds = %1485
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1502:                                             ; preds = %1485
  %1503 = extractvalue { i32, i1 } %1499, 0, !nosanitize !12
  %1504 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1479, i32 %1503), !nosanitize !12
  %1505 = extractvalue { i32, i1 } %1504, 0, !nosanitize !12
  %1506 = extractvalue { i32, i1 } %1504, 1, !nosanitize !12
  br i1 %1506, label %1507, label %1508, !prof !14, !nosanitize !12

1507:                                             ; preds = %1502
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1508:                                             ; preds = %1502
  %1509 = icmp ult i32 %1440, 4
  br i1 %1509, label %1511, label %1510, !prof !11, !nosanitize !12

1510:                                             ; preds = %1508
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1511:                                             ; preds = %1508
  %1512 = and i32 %1440, %1356
  %1513 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1168, i32 %1505), !nosanitize !12
  %1514 = extractvalue { i32, i1 } %1513, 0, !nosanitize !12
  %1515 = extractvalue { i32, i1 } %1513, 1, !nosanitize !12
  br i1 %1515, label %1516, label %1517, !prof !14, !nosanitize !12

1516:                                             ; preds = %1511
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1517:                                             ; preds = %1511
  %1518 = mul nuw i32 %1440, 1074267136
  %1519 = xor i32 %1356, %1264
  %1520 = and i32 %1440, %1519
  %1521 = xor i32 %1520, %1428
  %1522 = or disjoint i32 %1518, %1521
  %1523 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1522, i32 %1505), !nosanitize !12
  %1524 = extractvalue { i32, i1 } %1523, 0, !nosanitize !12
  %1525 = extractvalue { i32, i1 } %1523, 1, !nosanitize !12
  br i1 %1525, label %1526, label %1527, !prof !14, !nosanitize !12

1526:                                             ; preds = %1517
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1527:                                             ; preds = %1517
  %1528 = or disjoint i64 %1062, 6
  %1529 = and i64 %1528, 14
  %1530 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1529
  %1531 = load i32, ptr %1530, align 8, !tbaa !4
  %1532 = icmp ult i32 %1531, 128
  br i1 %1532, label %1534, label %1533, !prof !11, !nosanitize !12

1533:                                             ; preds = %1527
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1534:                                             ; preds = %1527
  %1535 = icmp ult i32 %1395, 131072
  br i1 %1535, label %1537, label %1536, !prof !11, !nosanitize !12

1536:                                             ; preds = %1534
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1537:                                             ; preds = %1534
  %1538 = shl nuw i32 %1531, 25
  %1539 = shl nuw nsw i32 %1531, 14
  %1540 = or disjoint i32 %1538, %1539
  %1541 = lshr i32 %1531, 3
  %1542 = or disjoint i32 %1540, %1541
  %1543 = shl nuw i32 %1395, 15
  %1544 = shl nuw nsw i32 %1395, 13
  %1545 = xor i32 %1543, %1544
  %1546 = lshr i32 %1395, 10
  %1547 = or disjoint i32 %1545, %1546
  %1548 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1542, i32 %1547), !nosanitize !12
  %1549 = extractvalue { i32, i1 } %1548, 1, !nosanitize !12
  br i1 %1549, label %1550, label %1551, !prof !14, !nosanitize !12

1550:                                             ; preds = %1537
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1551:                                             ; preds = %1537
  %1552 = extractvalue { i32, i1 } %1548, 0, !nosanitize !12
  %1553 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1552, i32 %1081), !nosanitize !12
  %1554 = extractvalue { i32, i1 } %1553, 1, !nosanitize !12
  br i1 %1554, label %1555, label %1556, !prof !14, !nosanitize !12

1555:                                             ; preds = %1551
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1556:                                             ; preds = %1551
  %1557 = extractvalue { i32, i1 } %1553, 0, !nosanitize !12
  %1558 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1447, i32 %1557), !nosanitize !12
  %1559 = extractvalue { i32, i1 } %1558, 0, !nosanitize !12
  %1560 = extractvalue { i32, i1 } %1558, 1, !nosanitize !12
  br i1 %1560, label %1561, label %1562, !prof !14, !nosanitize !12

1561:                                             ; preds = %1556
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1562:                                             ; preds = %1556
  store i32 %1559, ptr %1446, align 4, !tbaa !4
  %1563 = icmp ult i32 %1514, 64
  br i1 %1563, label %1565, label %1564, !prof !11, !nosanitize !12

1564:                                             ; preds = %1562
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1565:                                             ; preds = %1562
  %1566 = shl nuw i32 %1514, 26
  %1567 = shl nuw nsw i32 %1514, 21
  %1568 = xor i32 %1566, %1567
  %1569 = shl nuw nsw i32 %1514, 7
  %1570 = and i32 %1514, %1430
  %1571 = xor i32 %1514, -1
  %1572 = and i32 %1346, %1571
  %1573 = or i32 %1570, %1572
  %1574 = or disjoint i32 %1569, %1568
  %1575 = or disjoint i32 %1574, %1254
  %1576 = add nuw nsw i32 %1575, %1573
  %1577 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1444
  %1578 = load i32, ptr %1577, align 4, !tbaa !4
  %1579 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1576, i32 %1578), !nosanitize !12
  %1580 = extractvalue { i32, i1 } %1579, 1, !nosanitize !12
  br i1 %1580, label %1581, label %1582, !prof !14, !nosanitize !12

1581:                                             ; preds = %1565
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1582:                                             ; preds = %1565
  %1583 = extractvalue { i32, i1 } %1579, 0, !nosanitize !12
  %1584 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1559, i32 %1583), !nosanitize !12
  %1585 = extractvalue { i32, i1 } %1584, 0, !nosanitize !12
  %1586 = extractvalue { i32, i1 } %1584, 1, !nosanitize !12
  br i1 %1586, label %1587, label %1588, !prof !14, !nosanitize !12

1587:                                             ; preds = %1582
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1588:                                             ; preds = %1582
  %1589 = icmp ult i32 %1524, 4
  br i1 %1589, label %1591, label %1590, !prof !11, !nosanitize !12

1590:                                             ; preds = %1588
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1591:                                             ; preds = %1588
  %1592 = and i32 %1524, %1440
  %1593 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1264, i32 %1585), !nosanitize !12
  %1594 = extractvalue { i32, i1 } %1593, 0, !nosanitize !12
  %1595 = extractvalue { i32, i1 } %1593, 1, !nosanitize !12
  br i1 %1595, label %1596, label %1597, !prof !14, !nosanitize !12

1596:                                             ; preds = %1591
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1597:                                             ; preds = %1591
  %1598 = mul nuw i32 %1524, 1074267136
  %1599 = xor i32 %1440, %1356
  %1600 = and i32 %1524, %1599
  %1601 = xor i32 %1600, %1512
  %1602 = or disjoint i32 %1598, %1601
  %1603 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1602, i32 %1585), !nosanitize !12
  %1604 = extractvalue { i32, i1 } %1603, 0, !nosanitize !12
  %1605 = extractvalue { i32, i1 } %1603, 1, !nosanitize !12
  br i1 %1605, label %1606, label %1607, !prof !14, !nosanitize !12

1606:                                             ; preds = %1597
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1607:                                             ; preds = %1597
  %1608 = or disjoint i64 %1062, 7
  %1609 = and i64 %1608, 15
  %1610 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1609
  %1611 = load i32, ptr %1610, align 4, !tbaa !4
  %1612 = icmp ult i32 %1611, 128
  br i1 %1612, label %1614, label %1613, !prof !11, !nosanitize !12

1613:                                             ; preds = %1607
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1614:                                             ; preds = %1607
  %1615 = icmp ult i32 %1479, 131072
  br i1 %1615, label %1617, label %1616, !prof !11, !nosanitize !12

1616:                                             ; preds = %1614
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1617:                                             ; preds = %1614
  %1618 = shl nuw i32 %1611, 25
  %1619 = shl nuw nsw i32 %1611, 14
  %1620 = or disjoint i32 %1618, %1619
  %1621 = lshr i32 %1611, 3
  %1622 = or disjoint i32 %1620, %1621
  %1623 = shl nuw i32 %1479, 15
  %1624 = shl nuw nsw i32 %1479, 13
  %1625 = xor i32 %1623, %1624
  %1626 = lshr i32 %1479, 10
  %1627 = or disjoint i32 %1625, %1626
  %1628 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1622, i32 %1627), !nosanitize !12
  %1629 = extractvalue { i32, i1 } %1628, 1, !nosanitize !12
  br i1 %1629, label %1630, label %1631, !prof !14, !nosanitize !12

1630:                                             ; preds = %1617
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1631:                                             ; preds = %1617
  %1632 = extractvalue { i32, i1 } %1628, 0, !nosanitize !12
  %1633 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1632, i32 %1182), !nosanitize !12
  %1634 = extractvalue { i32, i1 } %1633, 1, !nosanitize !12
  br i1 %1634, label %1635, label %1636, !prof !14, !nosanitize !12

1635:                                             ; preds = %1631
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1636:                                             ; preds = %1631
  %1637 = extractvalue { i32, i1 } %1633, 0, !nosanitize !12
  %1638 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1531, i32 %1637), !nosanitize !12
  %1639 = extractvalue { i32, i1 } %1638, 0, !nosanitize !12
  %1640 = extractvalue { i32, i1 } %1638, 1, !nosanitize !12
  br i1 %1640, label %1641, label %1642, !prof !14, !nosanitize !12

1641:                                             ; preds = %1636
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1642:                                             ; preds = %1636
  store i32 %1639, ptr %1530, align 8, !tbaa !4
  %1643 = icmp ult i32 %1594, 64
  br i1 %1643, label %1645, label %1644, !prof !11, !nosanitize !12

1644:                                             ; preds = %1642
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1645:                                             ; preds = %1642
  %1646 = shl nuw i32 %1594, 26
  %1647 = shl nuw nsw i32 %1594, 21
  %1648 = xor i32 %1646, %1647
  %1649 = shl nuw nsw i32 %1594, 7
  %1650 = and i32 %1594, %1514
  %1651 = xor i32 %1594, -1
  %1652 = and i32 %1430, %1651
  %1653 = or i32 %1650, %1652
  %1654 = or disjoint i32 %1649, %1648
  %1655 = or disjoint i32 %1654, %1346
  %1656 = add nuw nsw i32 %1655, %1653
  %1657 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1528
  %1658 = load i32, ptr %1657, align 8, !tbaa !4
  %1659 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1656, i32 %1658), !nosanitize !12
  %1660 = extractvalue { i32, i1 } %1659, 1, !nosanitize !12
  br i1 %1660, label %1661, label %1662, !prof !14, !nosanitize !12

1661:                                             ; preds = %1645
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1662:                                             ; preds = %1645
  %1663 = extractvalue { i32, i1 } %1659, 0, !nosanitize !12
  %1664 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1639, i32 %1663), !nosanitize !12
  %1665 = extractvalue { i32, i1 } %1664, 0, !nosanitize !12
  %1666 = extractvalue { i32, i1 } %1664, 1, !nosanitize !12
  br i1 %1666, label %1667, label %1668, !prof !14, !nosanitize !12

1667:                                             ; preds = %1662
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1668:                                             ; preds = %1662
  %1669 = icmp ult i32 %1604, 4
  br i1 %1669, label %1671, label %1670, !prof !11, !nosanitize !12

1670:                                             ; preds = %1668
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1671:                                             ; preds = %1668
  %1672 = and i32 %1604, %1524
  %1673 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1356, i32 %1665), !nosanitize !12
  %1674 = extractvalue { i32, i1 } %1673, 0, !nosanitize !12
  %1675 = extractvalue { i32, i1 } %1673, 1, !nosanitize !12
  br i1 %1675, label %1676, label %1677, !prof !14, !nosanitize !12

1676:                                             ; preds = %1671
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1677:                                             ; preds = %1671
  %1678 = mul nuw i32 %1604, 1074267136
  %1679 = xor i32 %1524, %1440
  %1680 = and i32 %1604, %1679
  %1681 = xor i32 %1680, %1592
  %1682 = or disjoint i32 %1678, %1681
  %1683 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1682, i32 %1665), !nosanitize !12
  %1684 = extractvalue { i32, i1 } %1683, 0, !nosanitize !12
  %1685 = extractvalue { i32, i1 } %1683, 1, !nosanitize !12
  br i1 %1685, label %1686, label %1687, !prof !14, !nosanitize !12

1686:                                             ; preds = %1677
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1687:                                             ; preds = %1677
  %1688 = xor i64 %1109, 8
  %1689 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1688
  %1690 = load i32, ptr %1689, align 16, !tbaa !4
  %1691 = icmp ult i32 %1690, 128
  br i1 %1691, label %1693, label %1692, !prof !11, !nosanitize !12

1692:                                             ; preds = %1687
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1693:                                             ; preds = %1687
  %1694 = icmp ult i32 %1559, 131072
  br i1 %1694, label %1696, label %1695, !prof !11, !nosanitize !12

1695:                                             ; preds = %1693
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1696:                                             ; preds = %1693
  %1697 = shl nuw i32 %1690, 25
  %1698 = shl nuw nsw i32 %1690, 14
  %1699 = or disjoint i32 %1697, %1698
  %1700 = lshr i32 %1690, 3
  %1701 = or disjoint i32 %1699, %1700
  %1702 = shl nuw i32 %1559, 15
  %1703 = shl nuw nsw i32 %1559, 13
  %1704 = xor i32 %1702, %1703
  %1705 = lshr i32 %1559, 10
  %1706 = or disjoint i32 %1704, %1705
  %1707 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1701, i32 %1706), !nosanitize !12
  %1708 = extractvalue { i32, i1 } %1707, 1, !nosanitize !12
  br i1 %1708, label %1709, label %1710, !prof !14, !nosanitize !12

1709:                                             ; preds = %1696
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1710:                                             ; preds = %1696
  %1711 = extractvalue { i32, i1 } %1707, 0, !nosanitize !12
  %1712 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1711, i32 %1114), !nosanitize !12
  %1713 = extractvalue { i32, i1 } %1712, 1, !nosanitize !12
  br i1 %1713, label %1714, label %1715, !prof !14, !nosanitize !12

1714:                                             ; preds = %1710
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1715:                                             ; preds = %1710
  %1716 = extractvalue { i32, i1 } %1712, 0, !nosanitize !12
  %1717 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1611, i32 %1716), !nosanitize !12
  %1718 = extractvalue { i32, i1 } %1717, 0, !nosanitize !12
  %1719 = extractvalue { i32, i1 } %1717, 1, !nosanitize !12
  br i1 %1719, label %1720, label %1721, !prof !14, !nosanitize !12

1720:                                             ; preds = %1715
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1721:                                             ; preds = %1715
  store i32 %1718, ptr %1610, align 4, !tbaa !4
  %1722 = icmp ult i32 %1674, 64
  br i1 %1722, label %1724, label %1723, !prof !11, !nosanitize !12

1723:                                             ; preds = %1721
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1724:                                             ; preds = %1721
  %1725 = shl nuw i32 %1674, 26
  %1726 = shl nuw nsw i32 %1674, 21
  %1727 = xor i32 %1725, %1726
  %1728 = shl nuw nsw i32 %1674, 7
  %1729 = and i32 %1674, %1594
  %1730 = xor i32 %1674, -1
  %1731 = and i32 %1514, %1730
  %1732 = or i32 %1729, %1731
  %1733 = or disjoint i32 %1728, %1727
  %1734 = or disjoint i32 %1733, %1430
  %1735 = add nuw nsw i32 %1734, %1732
  %1736 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1608
  %1737 = load i32, ptr %1736, align 4, !tbaa !4
  %1738 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1735, i32 %1737), !nosanitize !12
  %1739 = extractvalue { i32, i1 } %1738, 1, !nosanitize !12
  br i1 %1739, label %1740, label %1741, !prof !14, !nosanitize !12

1740:                                             ; preds = %1724
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1741:                                             ; preds = %1724
  %1742 = extractvalue { i32, i1 } %1738, 0, !nosanitize !12
  %1743 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1718, i32 %1742), !nosanitize !12
  %1744 = extractvalue { i32, i1 } %1743, 0, !nosanitize !12
  %1745 = extractvalue { i32, i1 } %1743, 1, !nosanitize !12
  br i1 %1745, label %1746, label %1747, !prof !14, !nosanitize !12

1746:                                             ; preds = %1741
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1747:                                             ; preds = %1741
  %1748 = icmp ult i32 %1684, 4
  br i1 %1748, label %1750, label %1749, !prof !11, !nosanitize !12

1749:                                             ; preds = %1747
  tail call void @llvm.ubsantrap(i8 20) #8, !nosanitize !12
  unreachable, !nosanitize !12

1750:                                             ; preds = %1747
  %1751 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1440, i32 %1744), !nosanitize !12
  %1752 = extractvalue { i32, i1 } %1751, 1, !nosanitize !12
  br i1 %1752, label %1753, label %1754, !prof !14, !nosanitize !12

1753:                                             ; preds = %1750
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1754:                                             ; preds = %1750
  %1755 = mul nuw i32 %1684, 1074267136
  %1756 = xor i32 %1604, %1524
  %1757 = and i32 %1684, %1756
  %1758 = xor i32 %1757, %1672
  %1759 = or disjoint i32 %1755, %1758
  %1760 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1759, i32 %1744), !nosanitize !12
  %1761 = extractvalue { i32, i1 } %1760, 1, !nosanitize !12
  br i1 %1761, label %1762, label %1056, !prof !14, !nosanitize !12

1762:                                             ; preds = %1754
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1763:                                             ; preds = %1056
  %1764 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %45, i32 %1059), !nosanitize !12
  %1765 = extractvalue { i32, i1 } %1764, 1, !nosanitize !12
  br i1 %1765, label %1766, label %1767, !prof !14, !nosanitize !12

1766:                                             ; preds = %1763
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1767:                                             ; preds = %1763
  %1768 = extractvalue { i32, i1 } %1764, 0, !nosanitize !12
  store i32 %1768, ptr %0, align 4, !tbaa !4
  %1769 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %1684), !nosanitize !12
  %1770 = extractvalue { i32, i1 } %1769, 1, !nosanitize !12
  br i1 %1770, label %1771, label %1772, !prof !14, !nosanitize !12

1771:                                             ; preds = %1767
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1772:                                             ; preds = %1767
  %1773 = extractvalue { i32, i1 } %1769, 0, !nosanitize !12
  store i32 %1773, ptr %6, align 4, !tbaa !4
  %1774 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %1604), !nosanitize !12
  %1775 = extractvalue { i32, i1 } %1774, 1, !nosanitize !12
  br i1 %1775, label %1776, label %1777, !prof !14, !nosanitize !12

1776:                                             ; preds = %1772
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1777:                                             ; preds = %1772
  %1778 = extractvalue { i32, i1 } %1774, 0, !nosanitize !12
  store i32 %1778, ptr %7, align 4, !tbaa !4
  %1779 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %42, i32 %1524), !nosanitize !12
  %1780 = extractvalue { i32, i1 } %1779, 1, !nosanitize !12
  br i1 %1780, label %1781, label %1782, !prof !14, !nosanitize !12

1781:                                             ; preds = %1777
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1782:                                             ; preds = %1777
  %1783 = extractvalue { i32, i1 } %1779, 0, !nosanitize !12
  store i32 %1783, ptr %8, align 4, !tbaa !4
  %1784 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %41, i32 %1058), !nosanitize !12
  %1785 = extractvalue { i32, i1 } %1784, 1, !nosanitize !12
  br i1 %1785, label %1786, label %1787, !prof !14, !nosanitize !12

1786:                                             ; preds = %1782
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1787:                                             ; preds = %1782
  %1788 = extractvalue { i32, i1 } %1784, 0, !nosanitize !12
  store i32 %1788, ptr %9, align 4, !tbaa !4
  %1789 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 %1674), !nosanitize !12
  %1790 = extractvalue { i32, i1 } %1789, 1, !nosanitize !12
  br i1 %1790, label %1791, label %1792, !prof !14, !nosanitize !12

1791:                                             ; preds = %1787
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1792:                                             ; preds = %1787
  %1793 = extractvalue { i32, i1 } %1789, 0, !nosanitize !12
  store i32 %1793, ptr %10, align 4, !tbaa !4
  %1794 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 %1594), !nosanitize !12
  %1795 = extractvalue { i32, i1 } %1794, 1, !nosanitize !12
  br i1 %1795, label %1796, label %1797, !prof !14, !nosanitize !12

1796:                                             ; preds = %1792
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1797:                                             ; preds = %1792
  %1798 = extractvalue { i32, i1 } %1794, 0, !nosanitize !12
  store i32 %1798, ptr %11, align 4, !tbaa !4
  %1799 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %38, i32 %1514), !nosanitize !12
  %1800 = extractvalue { i32, i1 } %1799, 1, !nosanitize !12
  br i1 %1800, label %1801, label %1802, !prof !14, !nosanitize !12

1801:                                             ; preds = %1797
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1802:                                             ; preds = %1797
  %1803 = extractvalue { i32, i1 } %1799, 0, !nosanitize !12
  store i32 %1803, ptr %12, align 4, !tbaa !4
  %1804 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 1), !nosanitize !12
  %1805 = extractvalue { i64, i1 } %1804, 0, !nosanitize !12
  %1806 = extractvalue { i64, i1 } %1804, 1, !nosanitize !12
  br i1 %1806, label %36, label %37, !prof !20, !llvm.loop !21, !nosanitize !12
}

; Function Attrs: noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @SHA256_Transform(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
  tail call fastcc void @sha256_block_data_order(ptr noundef %0, ptr noundef %1, i64 noundef 1)
  unreachable
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nomerge noreturn nounwind }
attributes #9 = { nounwind }

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
!11 = !{!"branch_weights", i32 1048575, i32 1}
!12 = !{}
!13 = !{!9, !5, i64 32}
!14 = !{!"branch_weights", i32 1, i32 1048575}
!15 = !{!9, !5, i64 36}
!16 = !{!9, !5, i64 104}
!17 = !{!6, !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"branch_weights", i32 127, i32 134217473}
!21 = distinct !{!21, !19}
