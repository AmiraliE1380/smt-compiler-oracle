; ModuleID = '../zstd/lib/compress/zstd_compress.c'
source_filename = "../zstd/lib/compress/zstd_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.ZSTD_customMem, i32, i32, ptr, ptr, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameProgression = type { i64, i64, i64, i64, i32, i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_symbolEncodingTypeStats_t = type { i32, i32, i32, i64, i64, i32 }
%struct.seqStoreSplits = type { ptr, i64 }
%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_Trace = type { i32, i32, i32, i32, i64, i64, i64, ptr, ptr, ptr }
%struct.ZSTD_CCtx_s = type { i32, i32, i32, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, i32, i64, %struct.ZSTD_cwksp, i64, i64, i64, i64, %struct.XXH64_state_s, %struct.ZSTD_customMem, ptr, i64, %struct.SeqCollector, i32, i32, %struct.SeqStore_t, %struct.ldmState_t, ptr, i64, %struct.RawSeqStore_t, %struct.ZSTD_blockState_t, ptr, i64, i32, ptr, i64, i64, i64, i64, ptr, i64, i64, i64, i32, i32, %struct.ZSTD_inBuffer_s, i64, i64, %struct.ZSTD_localDict, ptr, %struct.ZSTD_prefixDict_s, i64, %struct.ZSTD_blockSplitCtx, ptr, i64 }
%struct.ZSTD_cwksp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32 }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }
%struct.SeqCollector = type { i32, ptr, i64, i64 }
%struct.SeqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.ldmState_t = type { %struct.ZSTD_window_t, ptr, i32, ptr, [64 x i64], [64 x %struct.ldmMatchCandidate_t] }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }
%struct.ZSTD_blockState_t = type { ptr, ptr, %struct.ZSTD_MatchState_t }
%struct.ZSTD_MatchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, i32, ptr, [8 x i32], i64, i32, ptr, ptr, ptr, i32, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_localDict = type { ptr, ptr, i64, i32, ptr }
%struct.ZSTD_prefixDict_s = type { ptr, i64, i32 }
%struct.ZSTD_blockSplitCtx = type { %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, [196 x i32], %struct.ZSTD_entropyCTablesMetadata_t }
%struct.ZSTD_entropyCTablesMetadata_t = type { %struct.ZSTD_hufCTablesMetadata_t, %struct.ZSTD_fseCTablesMetadata_t }
%struct.ZSTD_hufCTablesMetadata_t = type { i32, [128 x i8], i64 }
%struct.ZSTD_fseCTablesMetadata_t = type { i32, i32, i32, [133 x i8], i64, i64 }
%struct.BlockSummary = type { i64, i64, i64 }
%struct.ZSTD_SequencePosition = type { i32, i32, i64 }

@repStartValue = internal unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 8], align 4
@ZSTD_selectBlockCompressor.blockCompressor = internal unnamed_addr constant [4 x [10 x ptr]] [[10 x ptr] [ptr @ZSTD_compressBlock_fast, ptr @ZSTD_compressBlock_fast, ptr @ZSTD_compressBlock_doubleFast, ptr @ZSTD_compressBlock_greedy, ptr @ZSTD_compressBlock_lazy, ptr @ZSTD_compressBlock_lazy2, ptr @ZSTD_compressBlock_btlazy2, ptr @ZSTD_compressBlock_btopt, ptr @ZSTD_compressBlock_btultra, ptr @ZSTD_compressBlock_btultra2], [10 x ptr] [ptr @ZSTD_compressBlock_fast_extDict, ptr @ZSTD_compressBlock_fast_extDict, ptr @ZSTD_compressBlock_doubleFast_extDict, ptr @ZSTD_compressBlock_greedy_extDict, ptr @ZSTD_compressBlock_lazy_extDict, ptr @ZSTD_compressBlock_lazy2_extDict, ptr @ZSTD_compressBlock_btlazy2_extDict, ptr @ZSTD_compressBlock_btopt_extDict, ptr @ZSTD_compressBlock_btultra_extDict, ptr @ZSTD_compressBlock_btultra_extDict], [10 x ptr] [ptr @ZSTD_compressBlock_fast_dictMatchState, ptr @ZSTD_compressBlock_fast_dictMatchState, ptr @ZSTD_compressBlock_doubleFast_dictMatchState, ptr @ZSTD_compressBlock_greedy_dictMatchState, ptr @ZSTD_compressBlock_lazy_dictMatchState, ptr @ZSTD_compressBlock_lazy2_dictMatchState, ptr @ZSTD_compressBlock_btlazy2_dictMatchState, ptr @ZSTD_compressBlock_btopt_dictMatchState, ptr @ZSTD_compressBlock_btultra_dictMatchState, ptr @ZSTD_compressBlock_btultra_dictMatchState], [10 x ptr] [ptr null, ptr null, ptr null, ptr @ZSTD_compressBlock_greedy_dedicatedDictSearch, ptr @ZSTD_compressBlock_lazy_dedicatedDictSearch, ptr @ZSTD_compressBlock_lazy2_dedicatedDictSearch, ptr null, ptr null, ptr null, ptr null]], align 16
@ZSTD_selectBlockCompressor.rowBasedBlockCompressors = internal unnamed_addr constant [4 x [3 x ptr]] [[3 x ptr] [ptr @ZSTD_compressBlock_greedy_row, ptr @ZSTD_compressBlock_lazy_row, ptr @ZSTD_compressBlock_lazy2_row], [3 x ptr] [ptr @ZSTD_compressBlock_greedy_extDict_row, ptr @ZSTD_compressBlock_lazy_extDict_row, ptr @ZSTD_compressBlock_lazy2_extDict_row], [3 x ptr] [ptr @ZSTD_compressBlock_greedy_dictMatchState_row, ptr @ZSTD_compressBlock_lazy_dictMatchState_row, ptr @ZSTD_compressBlock_lazy2_dictMatchState_row], [3 x ptr] [ptr @ZSTD_compressBlock_greedy_dedicatedDictSearch_row, ptr @ZSTD_compressBlock_lazy_dedicatedDictSearch_row, ptr @ZSTD_compressBlock_lazy2_dedicatedDictSearch_row]], align 16
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@ZSTD_LLcode.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@ZSTD_MLcode.ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 16
@LL_defaultNorm = internal constant [36 x i16] [i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@OF_defaultNorm = internal constant [29 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@ML_defaultNorm = internal constant [53 x i16] [i16 1, i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@ZSTD_optimalBlockSize.splitLevels = internal unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@attachDictSizeCutoffs = internal unnamed_addr constant [10 x i64] [i64 8192, i64 8192, i64 16384, i64 32768, i64 32768, i64 32768, i64 32768, i64 32768, i64 8192, i64 8192], align 16

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local range(i64 1, 0) i64 @ZSTD_compressBound(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -71777214294589697
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = lshr i64 %0, 8
  %5 = add nuw i64 %4, %0
  %6 = icmp ult i64 %0, 131072
  %7 = sub nuw nsw i64 131072, %0
  %8 = lshr i64 %7, 11
  %9 = select i1 %6, i64 %8, i64 0
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 %9), !nosanitize !8
  %11 = freeze { i64, i1 } %10
  %12 = extractvalue { i64, i1 } %11, 1, !nosanitize !8
  br i1 %12, label %13, label %14, !prof !9, !nosanitize !8

13:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

14:                                               ; preds = %3
  %15 = extractvalue { i64, i1 } %11, 0, !nosanitize !8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1, %14
  br label %18

18:                                               ; preds = %14, %17
  %19 = phi i64 [ -72, %17 ], [ %15, %14 ]
  ret i64 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtx() local_unnamed_addr #4 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #35, !srcloc !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #35, !srcloc !11
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #35, !srcloc !12
  %11 = extractvalue { i32, i32, i32 } %10, 1
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = lshr i32 %11, 8
  %16 = and i32 %15, 1
  br label %17

17:                                               ; preds = %14, %9, %6, %3
  %18 = phi i32 [ 0, %9 ], [ %16, %14 ], [ 0, %6 ], [ 0, %3 ]
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %18, ptr %19, align 8, !tbaa !13
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 3, ptr %21, align 4, !tbaa !46
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %22, align 8, !tbaa !47
  br label %23

23:                                               ; preds = %0, %17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCCtx_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  %7 = xor i1 %3, %6
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  br i1 %3, label %13, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr %2(ptr noundef %11, i64 noundef 5280) #36, !inline_history !50
  br label %15

13:                                               ; preds = %8
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #37
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %12, %9 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %16, i8 0, i64 5280, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %20 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #35, !srcloc !10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #35, !srcloc !11
  %24 = icmp ugt i32 %20, 6
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #35, !srcloc !12
  %27 = extractvalue { i32, i32, i32 } %26, 1
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = lshr i32 %27, 8
  %32 = and i32 %31, 1
  br label %33

33:                                               ; preds = %18, %22, %25, %30
  %34 = phi i32 [ 0, %25 ], [ %32, %30 ], [ 0, %22 ], [ 0, %18 ]
  %35 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %34, ptr %35, align 8, !tbaa !13
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %36 = getelementptr inbounds nuw i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %36, i8 0, i64 224, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 3, ptr %37, align 4, !tbaa !46
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 1, ptr %38, align 8, !tbaa !47
  br label %39

39:                                               ; preds = %33, %15, %1
  %40 = phi ptr [ null, %1 ], [ %16, %33 ], [ null, %15 ]
  ret ptr %40
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ugt i64 %1, 5280
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  %7 = and i1 %3, %6
  br i1 %7, label %8, label %70

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5280
  %10 = icmp eq ptr %0, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 63
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %0, i8 0, i64 5280, i1 false)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %0, ptr %17, align 8, !tbaa !51
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr %12, ptr %18, align 8, !tbaa !51
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %9, ptr %19, align 8, !tbaa !51
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %9, ptr %20, align 8, !tbaa !51
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %9, ptr %21, align 8, !tbaa !51
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr %16, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %16, ptr %23, align 8, !tbaa !51
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 760
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %25, align 4, !tbaa !4
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 1, ptr %26, align 4, !tbaa !4
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %1, ptr %27, align 8, !tbaa !52
  %28 = add i64 %1, -5280
  %29 = sub i64 %28, %14
  %30 = icmp ult i64 %29, 20184
  br i1 %30, label %70, label %31

31:                                               ; preds = %11
  %32 = icmp samesign ult i64 %1, 10912
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store i8 1, ptr %24, align 8, !tbaa !53
  br label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 10912
  store ptr %35, ptr %19, align 8, !tbaa !54
  store ptr %35, ptr %20, align 8, !tbaa !55
  store ptr %35, ptr %21, align 8, !tbaa !56
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi ptr [ %9, %33 ], [ %35, %34 ]
  %38 = phi ptr [ null, %33 ], [ %9, %34 ]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  store ptr %38, ptr %39, align 8, !tbaa !57
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 5632
  %41 = icmp ugt ptr %40, %12
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i8 1, ptr %24, align 8, !tbaa !53
  br label %44

43:                                               ; preds = %36
  store ptr %40, ptr %19, align 8, !tbaa !54
  store ptr %40, ptr %20, align 8, !tbaa !55
  store ptr %40, ptr %21, align 8, !tbaa !56
  br label %44

44:                                               ; preds = %42, %43
  %45 = phi i64 [ 8920, %42 ], [ 14552, %43 ]
  %46 = phi ptr [ null, %42 ], [ %37, %43 ]
  %47 = phi ptr [ %37, %42 ], [ %40, %43 ]
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 %45
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %46, ptr %49, align 8, !tbaa !58
  %50 = icmp ugt ptr %48, %12
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i8 1, ptr %24, align 8, !tbaa !53
  br label %53

52:                                               ; preds = %44
  store ptr %48, ptr %19, align 8, !tbaa !54
  store ptr %48, ptr %20, align 8, !tbaa !55
  store ptr %48, ptr %21, align 8, !tbaa !56
  br label %53

53:                                               ; preds = %51, %52
  %54 = phi ptr [ null, %51 ], [ %47, %52 ]
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %54, ptr %55, align 8, !tbaa !59
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %56, align 8, !tbaa !60
  %57 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #35, !srcloc !10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #35, !srcloc !11
  %61 = icmp ugt i32 %57, 6
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #35, !srcloc !12
  %64 = extractvalue { i32, i32, i32 } %63, 1
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 1
  br label %67

67:                                               ; preds = %53, %59, %62
  %68 = phi i32 [ %66, %62 ], [ 0, %59 ], [ 0, %53 ]
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %68, ptr %69, align 8, !tbaa !13
  br label %70

70:                                               ; preds = %8, %11, %2, %67
  %71 = phi ptr [ null, %8 ], [ null, %2 ], [ null, %11 ], [ %0, %67 ]
  ret ptr %71
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCCtx(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr i8, ptr %0, i64 904
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i64 912
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = icmp eq ptr %18, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #36, !inline_history !63
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #36
  br label %27

27:                                               ; preds = %15, %25, %26
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #36, !inline_history !64
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #36
  br label %34

34:                                               ; preds = %33, %31, %27, %3, %1
  %35 = phi i64 [ -64, %3 ], [ 0, %1 ], [ 0, %27 ], [ 0, %31 ], [ 0, %33 ]
  ret i64 %35
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CCtx(ptr noundef readonly captures(address) %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %54, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %12), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %3
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %19, null
  %25 = select i1 %24, i64 0, i64 %21
  %26 = icmp eq ptr %23, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = icmp eq ptr %29, %23
  %31 = select i1 %30, i64 0, i64 6080
  %32 = getelementptr i8, ptr %23, i64 40
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %29 to i64
  %36 = sub i64 %34, %35
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %36), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %27
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  br label %42

42:                                               ; preds = %40, %16
  %43 = phi i64 [ %41, %40 ], [ 0, %16 ]
  %44 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %25, i64 %43), !nosanitize !8
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !8
  br i1 %45, label %46, label %47, !prof !9, !nosanitize !8

46:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

47:                                               ; preds = %42
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !8
  %49 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 %48), !nosanitize !8
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !8
  br i1 %50, label %51, label %52, !prof !9, !nosanitize !8

51:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

52:                                               ; preds = %47
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !8
  br label %54

54:                                               ; preds = %1, %52
  %55 = phi i64 [ %53, %52 ], [ 0, %1 ]
  ret i64 %55
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CStream(ptr noundef readonly captures(address) %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %54, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %12), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %3
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %19, null
  %25 = select i1 %24, i64 0, i64 %21
  %26 = icmp eq ptr %23, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = icmp eq ptr %29, %23
  %31 = select i1 %30, i64 0, i64 6080
  %32 = getelementptr i8, ptr %23, i64 40
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %29 to i64
  %36 = sub i64 %34, %35
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %36), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %27
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  br label %42

42:                                               ; preds = %40, %16
  %43 = phi i64 [ %41, %40 ], [ 0, %16 ]
  %44 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %25, i64 %43), !nosanitize !8
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !8
  br i1 %45, label %46, label %47, !prof !9, !nosanitize !8

46:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

47:                                               ; preds = %42
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !8
  %49 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 %48), !nosanitize !8
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !8
  br i1 %50, label %51, label %52, !prof !9, !nosanitize !8

51:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

52:                                               ; preds = %47
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !8
  br label %54

54:                                               ; preds = %1, %52
  %55 = phi i64 [ %53, %52 ], [ 0, %1 ]
  ret i64 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @ZSTD_getSeqStore(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 976
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtxParams() local_unnamed_addr #9 {
  %1 = tail call noalias dereferenceable_or_null(224) ptr @calloc(i64 noundef 1, i64 noundef 224) #38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 3, ptr %4, align 4, !tbaa !46
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %5, align 8, !tbaa !47
  br label %6

6:                                                ; preds = %0, %3
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCCtxParams(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i64 176
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i64 184
  %9 = load ptr, ptr %8, align 8
  tail call void %5(ptr noundef %9, ptr noundef nonnull %0) #36, !inline_history !64
  br label %11

10:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %0) #36
  br label %11

11:                                               ; preds = %10, %7, %1
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_reset(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %4, align 4, !tbaa !46
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %5, align 8, !tbaa !47
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ 0, %3 ], [ -1, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_init(ptr noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %5, align 4, !tbaa !46
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %6, align 8, !tbaa !47
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i64 [ 0, %4 ], [ -1, %2 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_CCtxParams_init_advanced(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !72
  %6 = add i32 %5, -32
  %7 = icmp ult i32 %6, -22
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !73
  %11 = add i32 %10, -31
  %12 = icmp ult i32 %11, -25
  br i1 %12, label %62, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = add i32 %15, -31
  %17 = icmp ult i32 %16, -25
  br i1 %17, label %62, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !75
  %21 = add i32 %20, -31
  %22 = icmp ult i32 %21, -30
  br i1 %22, label %62, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %25 = load i32, ptr %24, align 8, !tbaa !76
  %26 = add i32 %25, -8
  %27 = icmp ult i32 %26, -5
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 131072
  %31 = select i1 %27, i1 true, i1 %30
  br i1 %31, label %62, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %34 = load i32, ptr %33, align 8, !tbaa !77
  %35 = add i32 %34, -1
  %36 = icmp ult i32 %35, 9
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %38, ptr noundef nonnull readonly align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !78
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull readonly align 4 dereferenceable(12) %40, i64 12, i1 false), !tbaa.struct !79
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = add nsw i32 %34, -6
  %43 = icmp ult i32 %42, -3
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  store i32 2, ptr %41, align 8, !tbaa !80
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %46 = icmp samesign ugt i32 %34, 6
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  store i32 2, ptr %45, align 4, !tbaa !81
  br label %57

48:                                               ; preds = %37
  %49 = icmp samesign ugt i32 %5, 14
  %50 = select i1 %49, i32 1, i32 2
  store i32 %50, ptr %41, align 8, !tbaa !80
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 2, ptr %51, align 4, !tbaa !81
  br label %57

52:                                               ; preds = %44
  %53 = icmp samesign ugt i32 %5, 16
  %54 = select i1 %53, i32 1, i32 2
  store i32 %54, ptr %45, align 4, !tbaa !81
  %55 = icmp samesign ugt i32 %5, 26
  %56 = select i1 %55, i32 1, i32 2
  br label %57

57:                                               ; preds = %48, %47, %52
  %58 = phi i32 [ %56, %52 ], [ 2, %48 ], [ 2, %47 ]
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %58, ptr %59, align 8, !tbaa !82
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 131072, ptr %60, align 8, !tbaa !83
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 2, ptr %61, align 8, !tbaa !84
  br label %62

62:                                               ; preds = %8, %13, %18, %23, %4, %32, %2, %57
  %63 = phi i64 [ 0, %57 ], [ -42, %32 ], [ -1, %2 ], [ -42, %4 ], [ -42, %23 ], [ -42, %18 ], [ -42, %13 ], [ -42, %8 ]
  ret i64 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_checkCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #12 {
  %2 = load i32, ptr %0, align 8, !tbaa !72
  %3 = add i32 %2, -32
  %4 = icmp ult i32 %3, -22
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !73
  %8 = add i32 %7, -31
  %9 = icmp ult i32 %8, -25
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa !74
  %13 = add i32 %12, -31
  %14 = icmp ult i32 %13, -25
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !75
  %18 = add i32 %17, -31
  %19 = icmp ult i32 %18, -30
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = load i32, ptr %21, align 8, !tbaa !76
  %23 = add i32 %22, -8
  %24 = icmp ult i32 %23, -5
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 131072
  %28 = select i1 %24, i1 true, i1 %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load i32, ptr %30, align 8, !tbaa !77
  %32 = add i32 %31, -10
  %33 = icmp ult i32 %32, -9
  %34 = select i1 %33, i64 -42, i64 0
  br label %35

35:                                               ; preds = %29, %20, %15, %10, %5, %1
  %36 = phi i64 [ -42, %1 ], [ %34, %29 ], [ -42, %20 ], [ -42, %15 ], [ -42, %10 ], [ -42, %5 ]
  ret i64 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @ZSTD_cParam_getBounds(i32 noundef %0) local_unnamed_addr #8 {
  switch i32 %0, label %19 [
    i32 100, label %2
    i32 101, label %20
    i32 102, label %3
    i32 103, label %3
    i32 104, label %4
    i32 105, label %5
    i32 106, label %6
    i32 107, label %7
    i32 200, label %8
    i32 201, label %8
    i32 202, label %8
    i32 400, label %9
    i32 401, label %9
    i32 402, label %9
    i32 1005, label %8
    i32 160, label %10
    i32 161, label %3
    i32 162, label %11
    i32 163, label %12
    i32 164, label %13
    i32 500, label %8
    i32 1000, label %8
    i32 10, label %8
    i32 1001, label %14
    i32 1002, label %10
    i32 130, label %15
    i32 1004, label %16
    i32 1006, label %8
    i32 1007, label %8
    i32 1008, label %8
    i32 1009, label %8
    i32 1010, label %10
    i32 1017, label %17
    i32 1011, label %10
    i32 1012, label %8
    i32 1013, label %10
    i32 1014, label %8
    i32 1015, label %18
    i32 1016, label %10
  ]

2:                                                ; preds = %1
  br label %20

3:                                                ; preds = %1, %1, %1
  br label %20

4:                                                ; preds = %1
  br label %20

5:                                                ; preds = %1
  br label %20

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %20

9:                                                ; preds = %1, %1, %1
  br label %20

10:                                               ; preds = %1, %1, %1, %1, %1, %1
  br label %20

11:                                               ; preds = %1
  br label %20

12:                                               ; preds = %1
  br label %20

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  br label %20

16:                                               ; preds = %1
  br label %20

17:                                               ; preds = %1
  br label %20

18:                                               ; preds = %1
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %1, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %21 = phi i64 [ 0, %19 ], [ 98784116736, %2 ], [ 34359738369, %12 ], [ 128849018886, %3 ], [ 133143986186, %1 ], [ 128849018881, %4 ], [ 30064771075, %5 ], [ 562949953421312, %6 ], [ 38654705665, %7 ], [ 4294967296, %8 ], [ 562949953422336, %18 ], [ 107374182400, %13 ], [ 0, %9 ], [ 12884901888, %14 ], [ 9223372032559808512, %16 ], [ 562949953422652, %15 ], [ 8589934592, %10 ], [ 25769803776, %17 ], [ 17592186044420, %11 ]
  %22 = phi i64 [ -40, %19 ], [ 0, %2 ], [ 0, %12 ], [ 0, %3 ], [ 0, %1 ], [ 0, %4 ], [ 0, %5 ], [ 0, %6 ], [ 0, %7 ], [ 0, %8 ], [ 0, %18 ], [ 0, %13 ], [ 0, %9 ], [ 0, %14 ], [ 0, %16 ], [ 0, %15 ], [ 0, %10 ], [ 0, %17 ], [ 0, %11 ]
  %23 = insertvalue { i64, i64 } poison, i64 %22, 0
  %24 = insertvalue { i64, i64 } %23, i64 %21, 1
  ret { i64, i64 } %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_minCLevel() local_unnamed_addr #8 {
  ret i32 -131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_maxCLevel() local_unnamed_addr #8 {
  ret i32 22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 2147483648) i64 @ZSTD_CCtx_setParameter(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  switch i32 %1, label %20 [
    i32 100, label %8
    i32 102, label %8
    i32 103, label %8
    i32 104, label %8
    i32 105, label %8
    i32 106, label %8
    i32 107, label %8
    i32 1017, label %8
  ]

8:                                                ; preds = %7, %7, %7, %7, %7, %7, %7, %7
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %9, align 4, !tbaa !86
  br label %10

10:                                               ; preds = %8, %3
  switch i32 %1, label %20 [
    i32 400, label %11
    i32 100, label %17
    i32 101, label %17
    i32 102, label %17
    i32 103, label %17
    i32 104, label %17
    i32 105, label %17
    i32 106, label %17
    i32 107, label %17
    i32 164, label %17
    i32 10, label %17
    i32 200, label %17
    i32 201, label %17
    i32 202, label %17
    i32 1000, label %17
    i32 1001, label %17
    i32 1002, label %17
    i32 401, label %17
    i32 402, label %17
    i32 500, label %17
    i32 1005, label %17
    i32 160, label %17
    i32 161, label %17
    i32 162, label %17
    i32 163, label %17
    i32 130, label %17
    i32 1004, label %17
    i32 1006, label %17
    i32 1007, label %17
    i32 1008, label %17
    i32 1009, label %17
    i32 1010, label %17
    i32 1017, label %17
    i32 1011, label %17
    i32 1012, label %17
    i32 1013, label %17
    i32 1014, label %17
    i32 1015, label %17
    i32 1016, label %17
  ]

11:                                               ; preds = %10
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %15 = load i64, ptr %14, align 8, !tbaa !52
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %13, %11
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = tail call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %18, i32 noundef %1, i32 noundef %2)
  br label %20

20:                                               ; preds = %7, %10, %13, %17
  %21 = phi i64 [ -40, %13 ], [ -40, %10 ], [ %19, %17 ], [ -60, %7 ]
  ret i64 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -42, 2147483648) i64 @ZSTD_CCtxParams_setParameter(ptr noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  switch i32 %1, label %220 [
    i32 10, label %4
    i32 100, label %8
    i32 101, label %21
    i32 102, label %29
    i32 103, label %37
    i32 104, label %45
    i32 105, label %50
    i32 106, label %54
    i32 107, label %59
    i32 200, label %64
    i32 201, label %69
    i32 202, label %74
    i32 1000, label %80
    i32 1001, label %85
    i32 1002, label %90
    i32 400, label %95
    i32 401, label %98
    i32 402, label %101
    i32 500, label %104
    i32 1005, label %107
    i32 160, label %112
    i32 161, label %117
    i32 162, label %125
    i32 163, label %133
    i32 164, label %138
    i32 130, label %143
    i32 1004, label %152
    i32 1006, label %157
    i32 1007, label %162
    i32 1008, label %167
    i32 1009, label %172
    i32 1010, label %177
    i32 1017, label %182
    i32 1011, label %187
    i32 1012, label %192
    i32 1013, label %197
    i32 1014, label %202
    i32 1015, label %207
    i32 1016, label %215
  ]

4:                                                ; preds = %3
  %5 = icmp ugt i32 %2, 1
  br i1 %5, label %220, label %6

6:                                                ; preds = %4
  store i32 %2, ptr %0, align 8, !tbaa !87
  %7 = zext nneg i32 %2 to i64
  br label %220

8:                                                ; preds = %3
  %9 = icmp slt i32 %2, -131072
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = icmp sgt i32 %2, 22
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %15, align 4, !tbaa !46
  br label %220

16:                                               ; preds = %10, %8, %12
  %17 = phi i32 [ %2, %12 ], [ -131072, %8 ], [ 22, %10 ]
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %17, ptr %18, align 4, !tbaa !46
  %19 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %20 = zext nneg i32 %19 to i64
  br label %220

21:                                               ; preds = %3
  %22 = icmp ne i32 %2, 0
  %23 = add i32 %2, -32
  %24 = icmp ult i32 %23, -22
  %25 = and i1 %22, %24
  br i1 %25, label %220, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %27, align 4, !tbaa !88
  %28 = zext nneg i32 %2 to i64
  br label %220

29:                                               ; preds = %3
  %30 = icmp ne i32 %2, 0
  %31 = add i32 %2, -31
  %32 = icmp ult i32 %31, -25
  %33 = and i1 %30, %32
  br i1 %33, label %220, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %35, align 4, !tbaa !89
  %36 = zext nneg i32 %2 to i64
  br label %220

37:                                               ; preds = %3
  %38 = icmp ne i32 %2, 0
  %39 = add i32 %2, -31
  %40 = icmp ult i32 %39, -25
  %41 = and i1 %38, %40
  br i1 %41, label %220, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %43, align 4, !tbaa !90
  %44 = zext nneg i32 %2 to i64
  br label %220

45:                                               ; preds = %3
  %46 = icmp ugt i32 %2, 30
  br i1 %46, label %220, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %48, align 4, !tbaa !91
  %49 = zext nneg i32 %2 to i64
  br label %220

50:                                               ; preds = %3
  switch i32 %2, label %220 [
    i32 7, label %51
    i32 6, label %51
    i32 5, label %51
    i32 4, label %51
    i32 3, label %51
    i32 0, label %51
  ]

51:                                               ; preds = %50, %50, %50, %50, %50, %50
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %52, align 4, !tbaa !92
  %53 = zext nneg i32 %2 to i64
  br label %220

54:                                               ; preds = %3
  %55 = icmp ugt i32 %2, 131072
  br i1 %55, label %220, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %57, align 4, !tbaa !93
  %58 = zext nneg i32 %2 to i64
  br label %220

59:                                               ; preds = %3
  %60 = icmp ugt i32 %2, 9
  br i1 %60, label %220, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %62, align 4, !tbaa !94
  %63 = zext nneg i32 %2 to i64
  br label %220

64:                                               ; preds = %3
  %65 = icmp ne i32 %2, 0
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %66, ptr %67, align 8, !tbaa !47
  %68 = zext i1 %65 to i64
  br label %220

69:                                               ; preds = %3
  %70 = icmp ne i32 %2, 0
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %71, ptr %72, align 4, !tbaa !95
  %73 = zext i1 %70 to i64
  br label %220

74:                                               ; preds = %3
  %75 = icmp ne i32 %2, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %77, ptr %78, align 8, !tbaa !96
  %79 = zext i1 %75 to i64
  br label %220

80:                                               ; preds = %3
  %81 = icmp ne i32 %2, 0
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %82, ptr %83, align 8, !tbaa !97
  %84 = zext i1 %81 to i64
  br label %220

85:                                               ; preds = %3
  %86 = icmp ugt i32 %2, 3
  br i1 %86, label %220, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %2, ptr %88, align 4, !tbaa !98
  %89 = zext nneg i32 %2 to i64
  br label %220

90:                                               ; preds = %3
  %91 = icmp ugt i32 %2, 2
  br i1 %91, label %220, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %93, align 8, !tbaa !99
  %94 = zext nneg i32 %2 to i64
  br label %220

95:                                               ; preds = %3
  %96 = icmp eq i32 %2, 0
  %97 = select i1 %96, i64 0, i64 -40
  br label %220

98:                                               ; preds = %3
  %99 = icmp eq i32 %2, 0
  %100 = select i1 %99, i64 0, i64 -40
  br label %220

101:                                              ; preds = %3
  %102 = icmp eq i32 %2, 0
  %103 = select i1 %102, i64 0, i64 -40
  br label %220

104:                                              ; preds = %3
  %105 = icmp eq i32 %2, 0
  %106 = select i1 %105, i64 0, i64 -40
  br label %220

107:                                              ; preds = %3
  %108 = icmp ne i32 %2, 0
  %109 = zext i1 %108 to i32
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %109, ptr %110, align 8, !tbaa !100
  %111 = zext i1 %108 to i64
  br label %220

112:                                              ; preds = %3
  %113 = icmp ugt i32 %2, 2
  br i1 %113, label %220, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %2, ptr %115, align 8, !tbaa !82
  %116 = zext nneg i32 %2 to i64
  br label %220

117:                                              ; preds = %3
  %118 = icmp ne i32 %2, 0
  %119 = add i32 %2, -31
  %120 = icmp ult i32 %119, -25
  %121 = and i1 %118, %120
  br i1 %121, label %220, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %123, align 4, !tbaa !101
  %124 = zext nneg i32 %2 to i64
  br label %220

125:                                              ; preds = %3
  %126 = icmp ne i32 %2, 0
  %127 = add i32 %2, -4097
  %128 = icmp ult i32 %127, -4093
  %129 = and i1 %126, %128
  br i1 %129, label %220, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %2, ptr %131, align 4, !tbaa !102
  %132 = zext nneg i32 %2 to i64
  br label %220

133:                                              ; preds = %3
  %134 = icmp ult i32 %2, 9
  br i1 %134, label %135, label %220

135:                                              ; preds = %133
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %2, ptr %136, align 8, !tbaa !103
  %137 = zext nneg i32 %2 to i64
  br label %220

138:                                              ; preds = %3
  %139 = icmp ugt i32 %2, 25
  br i1 %139, label %220, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %2, ptr %141, align 8, !tbaa !104
  %142 = zext nneg i32 %2 to i64
  br label %220

143:                                              ; preds = %3
  %144 = icmp eq i32 %2, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %143
  %146 = tail call i32 @llvm.smax.i32(i32 %2, i32 1340)
  %147 = icmp sgt i32 %2, 131072
  br i1 %147, label %220, label %148

148:                                              ; preds = %145, %143
  %149 = phi i32 [ 0, %143 ], [ %146, %145 ]
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %150, ptr %151, align 8, !tbaa !105
  br label %220

152:                                              ; preds = %3
  %153 = icmp slt i32 %2, 0
  br i1 %153, label %220, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %2, ptr %155, align 8, !tbaa !106
  %156 = zext nneg i32 %2 to i64
  br label %220

157:                                              ; preds = %3
  %158 = icmp ugt i32 %2, 1
  br i1 %158, label %220, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %2, ptr %160, align 4, !tbaa !107
  %161 = zext nneg i32 %2 to i64
  br label %220

162:                                              ; preds = %3
  %163 = icmp ugt i32 %2, 1
  br i1 %163, label %220, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %2, ptr %165, align 8, !tbaa !108
  %166 = zext nneg i32 %2 to i64
  br label %220

167:                                              ; preds = %3
  %168 = icmp ugt i32 %2, 1
  br i1 %168, label %220, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %2, ptr %170, align 4, !tbaa !109
  %171 = zext nneg i32 %2 to i64
  br label %220

172:                                              ; preds = %3
  %173 = icmp ugt i32 %2, 1
  br i1 %173, label %220, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %2, ptr %175, align 8, !tbaa !110
  %176 = zext nneg i32 %2 to i64
  br label %220

177:                                              ; preds = %3
  %178 = icmp ugt i32 %2, 2
  br i1 %178, label %220, label %179

179:                                              ; preds = %177
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %2, ptr %180, align 4, !tbaa !81
  %181 = zext nneg i32 %2 to i64
  br label %220

182:                                              ; preds = %3
  %183 = icmp ugt i32 %2, 6
  br i1 %183, label %220, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %2, ptr %185, align 8, !tbaa !111
  %186 = zext nneg i32 %2 to i64
  br label %220

187:                                              ; preds = %3
  %188 = icmp ugt i32 %2, 2
  br i1 %188, label %220, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %2, ptr %190, align 8, !tbaa !80
  %191 = zext nneg i32 %2 to i64
  br label %220

192:                                              ; preds = %3
  %193 = icmp ugt i32 %2, 1
  br i1 %193, label %220, label %194

194:                                              ; preds = %192
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %2, ptr %195, align 4, !tbaa !112
  %196 = zext nneg i32 %2 to i64
  br label %220

197:                                              ; preds = %3
  %198 = icmp ugt i32 %2, 2
  br i1 %198, label %220, label %199

199:                                              ; preds = %197
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %2, ptr %200, align 8, !tbaa !113
  %201 = zext nneg i32 %2 to i64
  br label %220

202:                                              ; preds = %3
  %203 = icmp ugt i32 %2, 1
  br i1 %203, label %220, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %2, ptr %205, align 4, !tbaa !114
  %206 = zext nneg i32 %2 to i64
  br label %220

207:                                              ; preds = %3
  %208 = icmp ne i32 %2, 0
  %209 = add i32 %2, -131073
  %210 = icmp ult i32 %209, -130049
  %211 = and i1 %208, %210
  br i1 %211, label %220, label %212

212:                                              ; preds = %207
  %213 = zext nneg i32 %2 to i64
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %213, ptr %214, align 8, !tbaa !83
  br label %220

215:                                              ; preds = %3
  %216 = icmp ugt i32 %2, 2
  br i1 %216, label %220, label %217

217:                                              ; preds = %215
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %2, ptr %218, align 8, !tbaa !84
  %219 = zext nneg i32 %2 to i64
  br label %220

220:                                              ; preds = %14, %16, %133, %50, %207, %152, %138, %125, %117, %59, %45, %37, %29, %21, %3, %215, %202, %197, %192, %187, %182, %177, %172, %167, %162, %157, %145, %112, %104, %101, %98, %95, %92, %90, %87, %85, %54, %4, %6, %26, %34, %42, %47, %51, %56, %61, %64, %69, %74, %80, %107, %114, %122, %130, %135, %140, %148, %154, %159, %164, %169, %174, %179, %184, %189, %194, %199, %204, %212, %217
  %221 = phi i64 [ -42, %215 ], [ %7, %6 ], [ -42, %207 ], [ -40, %3 ], [ -42, %4 ], [ %213, %212 ], [ %28, %26 ], [ -42, %197 ], [ %36, %34 ], [ -42, %21 ], [ %44, %42 ], [ -42, %29 ], [ %49, %47 ], [ -42, %37 ], [ %53, %51 ], [ -42, %45 ], [ %58, %56 ], [ -42, %50 ], [ %63, %61 ], [ -42, %54 ], [ %68, %64 ], [ %73, %69 ], [ %79, %74 ], [ %84, %80 ], [ -42, %59 ], [ -42, %85 ], [ %97, %95 ], [ -42, %90 ], [ %100, %98 ], [ %94, %92 ], [ %103, %101 ], [ %89, %87 ], [ %106, %104 ], [ %219, %217 ], [ %111, %107 ], [ %116, %114 ], [ -42, %202 ], [ %124, %122 ], [ -42, %112 ], [ %132, %130 ], [ -42, %117 ], [ %137, %135 ], [ -42, %125 ], [ %142, %140 ], [ -42, %133 ], [ %150, %148 ], [ -42, %138 ], [ %156, %154 ], [ -42, %145 ], [ %161, %159 ], [ -42, %152 ], [ %166, %164 ], [ -42, %157 ], [ %171, %169 ], [ -42, %162 ], [ %176, %174 ], [ -42, %167 ], [ %181, %179 ], [ -42, %172 ], [ %186, %184 ], [ -42, %177 ], [ %191, %189 ], [ -42, %182 ], [ %196, %194 ], [ -42, %187 ], [ %201, %199 ], [ -42, %192 ], [ %206, %204 ], [ %20, %16 ], [ 3, %14 ]
  ret i64 %221
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtx_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = tail call i64 @ZSTD_CCtxParams_getParameter(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2)
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtxParams_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #11 {
  switch i32 %1, label %117 [
    i32 10, label %4
    i32 100, label %6
    i32 101, label %9
    i32 102, label %12
    i32 103, label %15
    i32 104, label %18
    i32 105, label %21
    i32 106, label %24
    i32 107, label %27
    i32 200, label %30
    i32 201, label %33
    i32 202, label %36
    i32 1000, label %41
    i32 1001, label %44
    i32 1002, label %47
    i32 400, label %50
    i32 1016, label %112
    i32 1015, label %108
    i32 1014, label %105
    i32 1005, label %53
    i32 160, label %56
    i32 161, label %59
    i32 162, label %62
    i32 163, label %65
    i32 164, label %68
    i32 130, label %71
    i32 1004, label %75
    i32 1006, label %78
    i32 1007, label %81
    i32 1008, label %84
    i32 1009, label %87
    i32 1010, label %90
    i32 1017, label %93
    i32 1011, label %96
    i32 1012, label %99
    i32 1013, label %102
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr %0, align 8, !tbaa !87
  br label %115

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %8 = load i32, ptr %7, align 4, !tbaa !46
  br label %115

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !88
  br label %115

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !89
  br label %115

15:                                               ; preds = %3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 4, !tbaa !90
  br label %115

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i32, ptr %19, align 4, !tbaa !91
  br label %115

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4, !tbaa !92
  br label %115

24:                                               ; preds = %3
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 4, !tbaa !93
  br label %115

27:                                               ; preds = %3
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %29 = load i32, ptr %28, align 4, !tbaa !94
  br label %115

30:                                               ; preds = %3
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %32 = load i32, ptr %31, align 8, !tbaa !47
  br label %115

33:                                               ; preds = %3
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %35 = load i32, ptr %34, align 4, !tbaa !95
  br label %115

36:                                               ; preds = %3
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %38 = load i32, ptr %37, align 8, !tbaa !96
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  br label %115

41:                                               ; preds = %3
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %43 = load i32, ptr %42, align 8, !tbaa !97
  br label %115

44:                                               ; preds = %3
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %46 = load i32, ptr %45, align 4, !tbaa !98
  br label %115

47:                                               ; preds = %3
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %49 = load i32, ptr %48, align 8, !tbaa !99
  br label %115

50:                                               ; preds = %3
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %52 = load i32, ptr %51, align 4, !tbaa !115
  br label %115

53:                                               ; preds = %3
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %55 = load i32, ptr %54, align 8, !tbaa !100
  br label %115

56:                                               ; preds = %3
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %58 = load i32, ptr %57, align 8, !tbaa !82
  br label %115

59:                                               ; preds = %3
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %61 = load i32, ptr %60, align 4, !tbaa !101
  br label %115

62:                                               ; preds = %3
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %64 = load i32, ptr %63, align 4, !tbaa !102
  br label %115

65:                                               ; preds = %3
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %67 = load i32, ptr %66, align 8, !tbaa !103
  br label %115

68:                                               ; preds = %3
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %70 = load i32, ptr %69, align 8, !tbaa !104
  br label %115

71:                                               ; preds = %3
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %73 = load i64, ptr %72, align 8, !tbaa !105
  %74 = trunc i64 %73 to i32
  br label %115

75:                                               ; preds = %3
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %77 = load i32, ptr %76, align 8, !tbaa !106
  br label %115

78:                                               ; preds = %3
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 124
  %80 = load i32, ptr %79, align 4, !tbaa !107
  br label %115

81:                                               ; preds = %3
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %83 = load i32, ptr %82, align 8, !tbaa !108
  br label %115

84:                                               ; preds = %3
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %86 = load i32, ptr %85, align 4, !tbaa !109
  br label %115

87:                                               ; preds = %3
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %89 = load i32, ptr %88, align 8, !tbaa !110
  br label %115

90:                                               ; preds = %3
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %92 = load i32, ptr %91, align 4, !tbaa !81
  br label %115

93:                                               ; preds = %3
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %95 = load i32, ptr %94, align 8, !tbaa !111
  br label %115

96:                                               ; preds = %3
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %98 = load i32, ptr %97, align 8, !tbaa !80
  br label %115

99:                                               ; preds = %3
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %101 = load i32, ptr %100, align 4, !tbaa !112
  br label %115

102:                                              ; preds = %3
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %104 = load i32, ptr %103, align 8, !tbaa !113
  br label %115

105:                                              ; preds = %3
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %107 = load i32, ptr %106, align 4, !tbaa !114
  br label %115

108:                                              ; preds = %3
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %110 = load i64, ptr %109, align 8, !tbaa !83
  %111 = trunc i64 %110 to i32
  br label %115

112:                                              ; preds = %3
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %114 = load i32, ptr %113, align 8, !tbaa !84
  br label %115

115:                                              ; preds = %4, %6, %9, %12, %15, %18, %21, %24, %27, %30, %33, %36, %41, %44, %47, %50, %53, %56, %59, %62, %65, %68, %71, %75, %78, %81, %84, %87, %90, %93, %96, %99, %102, %105, %108, %112
  %116 = phi i32 [ %114, %112 ], [ %111, %108 ], [ %107, %105 ], [ %104, %102 ], [ %101, %99 ], [ %98, %96 ], [ %95, %93 ], [ %92, %90 ], [ %89, %87 ], [ %86, %84 ], [ %83, %81 ], [ %80, %78 ], [ %77, %75 ], [ %74, %71 ], [ %70, %68 ], [ %67, %65 ], [ %64, %62 ], [ %61, %59 ], [ %58, %56 ], [ %55, %53 ], [ %52, %50 ], [ %49, %47 ], [ %46, %44 ], [ %43, %41 ], [ %40, %36 ], [ %35, %33 ], [ %32, %30 ], [ %29, %27 ], [ %26, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ], [ %5, %4 ]
  store i32 %116, ptr %2, align 4, !tbaa !4
  br label %117

117:                                              ; preds = %115, %3
  %118 = phi i64 [ -40, %3 ], [ 0, %115 ]
  ret i64 %118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParametersUsingCCtxParams(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !117
  br label %12

12:                                               ; preds = %6, %2, %10
  %13 = phi i64 [ 0, %10 ], [ -60, %2 ], [ -60, %6 ]
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 10) i64 @ZSTD_CCtx_setCParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1) local_unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !72
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !73
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %47, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %47, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !75
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %47, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !76
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !77
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %37 = load i32, ptr %36, align 8, !tbaa !85
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %40, align 4, !tbaa !88
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %8, ptr %41, align 4, !tbaa !90
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %13, ptr %42, align 4, !tbaa !89
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %18, ptr %43, align 4, !tbaa !91
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %23, ptr %44, align 4, !tbaa !92
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %27, ptr %45, align 4, !tbaa !93
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %32, ptr %46, align 4, !tbaa !94
  br label %47

47:                                               ; preds = %35, %6, %11, %16, %21, %2, %39, %30
  %48 = phi i64 [ -42, %30 ], [ 0, %39 ], [ -42, %2 ], [ -42, %21 ], [ -42, %11 ], [ -42, %16 ], [ -60, %35 ], [ -42, %6 ]
  ret i64 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setFParams(ptr noundef captures(none) %0, i64 %1, i32 %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = and i64 %1, 4294967295
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %10, ptr %11, align 8, !tbaa !47
  %12 = icmp ugt i64 %1, 4294967295
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %13, ptr %14, align 4, !tbaa !95
  %15 = icmp ne i32 %2, 0
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %16, ptr %17, align 8, !tbaa !96
  br label %18

18:                                               ; preds = %3, %7
  %19 = phi i64 [ 0, %7 ], [ -60, %3 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !72
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !73
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %61, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %61, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !75
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %61, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !76
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %61, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !77
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %37 = load i32, ptr %36, align 8, !tbaa !85
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %43 = load i64, ptr %42, align 4
  %44 = and i64 %43, 4294967295
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %46, ptr %47, align 8, !tbaa !47
  %48 = icmp ugt i64 %43, 4294967295
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %49, ptr %50, align 4, !tbaa !95
  %51 = icmp ne i32 %41, 0
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %52, ptr %53, align 8, !tbaa !96
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %54, align 4, !tbaa !88
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %8, ptr %55, align 8, !tbaa !90
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %13, ptr %56, align 4, !tbaa !89
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %18, ptr %57, align 8, !tbaa !91
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %23, ptr %58, align 4, !tbaa !92
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %27, ptr %59, align 8, !tbaa !93
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %32, ptr %60, align 4, !tbaa !94
  br label %61

61:                                               ; preds = %39, %35, %6, %11, %16, %21, %2, %30
  %62 = phi i64 [ -42, %30 ], [ -60, %35 ], [ -42, %6 ], [ -42, %2 ], [ -42, %21 ], [ -42, %16 ], [ -42, %11 ], [ 0, %39 ]
  ret i64 %62
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 1), !nosanitize !8
  %8 = extractvalue { i64, i1 } %7, 1, !nosanitize !8
  br i1 %8, label %9, label %10, !prof !9, !nosanitize !8

9:                                                ; preds = %6
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %6
  %11 = extractvalue { i64, i1 } %7, 0, !nosanitize !8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %11, ptr %12, align 8, !tbaa !119
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi i64 [ 0, %10 ], [ -60, %2 ]
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %7 = load i32, ptr %6, align 8, !tbaa !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %10 = icmp eq ptr %1, null
  %11 = icmp eq i64 %2, 0
  %12 = or i1 %10, %11
  br i1 %12, label %39, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %3, 1
  br i1 %14, label %34, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %17 = load i64, ptr %16, align 8, !tbaa !52
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i64 912
  %25 = load ptr, ptr %24, align 8
  %26 = tail call ptr %21(ptr noundef %25, i64 noundef %2) #36, !inline_history !50
  br label %29

27:                                               ; preds = %19
  %28 = tail call noalias ptr @malloc(i64 noundef %2) #37
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi ptr [ %26, %23 ], [ %28, %27 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr nonnull align 1 %1, i64 %2, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %30, ptr %33, align 8, !tbaa !120
  br label %34

34:                                               ; preds = %13, %32
  %35 = phi ptr [ %30, %32 ], [ %1, %13 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %35, ptr %36, align 8, !tbaa !121
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %37, align 8, !tbaa !122
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 %4, ptr %38, align 8, !tbaa !123
  br label %39

39:                                               ; preds = %29, %15, %9, %5, %34
  %40 = phi i64 [ 0, %9 ], [ -60, %5 ], [ 0, %34 ], [ -64, %15 ], [ -64, %29 ]
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_clearAllDicts(ptr noundef captures(none) initializes((3696, 3720), (3728, 3760)) %0) unnamed_addr #4 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = getelementptr i8, ptr %0, i64 904
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i64 912
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = icmp eq ptr %5, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void %5(ptr noundef %7, ptr noundef nonnull %3) #36, !inline_history !64
  br label %13

12:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %3) #36
  br label %13

13:                                               ; preds = %1, %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 6048
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 6056
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = icmp ugt ptr %23, %15
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = icmp uge ptr %15, %27
  br label %29

29:                                               ; preds = %25, %17
  %30 = phi i1 [ true, %17 ], [ %28, %25 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %22, i8 0, i64 72, i1 false)
  %31 = icmp eq ptr %23, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = icmp eq ptr %19, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  tail call void %19(ptr noundef %21, ptr noundef nonnull %23) #36, !inline_history !125
  br label %35

35:                                               ; preds = %34, %29
  br i1 %30, label %37, label %41

36:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %23) #36
  br i1 %30, label %40, label %41

37:                                               ; preds = %35
  %38 = icmp eq ptr %19, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void %19(ptr noundef %21, ptr noundef nonnull %15) #36, !inline_history !126
  br label %41

40:                                               ; preds = %37, %36
  tail call void @free(ptr noundef nonnull %15) #36
  br label %41

41:                                               ; preds = %13, %35, %36, %39, %40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_loadDictionary_byReference(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = icmp eq ptr %1, null
  %9 = icmp eq i64 %2, 0
  %10 = or i1 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %1, ptr %12, align 8, !tbaa !121
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %13, align 8, !tbaa !122
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %14, align 8, !tbaa !123
  br label %15

15:                                               ; preds = %3, %7, %11
  %16 = phi i64 [ 0, %7 ], [ -60, %3 ], [ 0, %11 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = icmp eq ptr %1, null
  %9 = icmp eq i64 %2, 0
  %10 = or i1 %8, %9
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %13 = load i64, ptr %12, align 8, !tbaa !52
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i64 912
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr %17(ptr noundef %21, i64 noundef %2) #36, !inline_history !127
  br label %25

23:                                               ; preds = %15
  %24 = tail call noalias ptr @malloc(i64 noundef %2) #37
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %22, %19 ], [ %24, %23 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %1, i64 %2, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %26, ptr %29, align 8, !tbaa !120
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %26, ptr %30, align 8, !tbaa !121
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %31, align 8, !tbaa !122
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %32, align 8, !tbaa !123
  br label %33

33:                                               ; preds = %3, %7, %11, %25, %28
  %34 = phi i64 [ 0, %7 ], [ -60, %3 ], [ 0, %28 ], [ -64, %11 ], [ -64, %25 ]
  ret i64 %34
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refCDict(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %7, align 8, !tbaa !116
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refThreadPool(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %1, ptr %7, align 8, !tbaa !128
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = icmp ne ptr %1, null
  %9 = icmp ne i64 %2, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  store ptr %1, ptr %12, align 8, !tbaa !129
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  store i64 %2, ptr %13, align 8, !tbaa !130
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  store i32 1, ptr %14, align 8, !tbaa !131
  br label %15

15:                                               ; preds = %3, %7, %11
  %16 = phi i64 [ -60, %3 ], [ 0, %7 ], [ 0, %11 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %6 = load i32, ptr %5, align 8, !tbaa !85
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %9 = icmp ne ptr %1, null
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  store ptr %1, ptr %13, align 8, !tbaa !129
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  store i64 %2, ptr %14, align 8, !tbaa !130
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  store i32 %3, ptr %15, align 8, !tbaa !131
  br label %16

16:                                               ; preds = %12, %8, %4
  %17 = phi i64 [ -60, %4 ], [ 0, %8 ], [ 0, %12 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_reset(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !85
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %7, align 8, !tbaa !119
  br label %8

8:                                                ; preds = %2, %5
  %9 = and i32 %1, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %16, i8 0, i64 224, i1 false)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 3, ptr %17, align 4, !tbaa !46
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %18, align 8, !tbaa !47
  br label %19

19:                                               ; preds = %8, %11, %15
  %20 = phi i64 [ -60, %11 ], [ 0, %15 ], [ 0, %8 ]
  ret i64 %20
}

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_cycleLog(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 5
  %4 = zext i1 %3 to i32
  %5 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %0, i32 %4), !nosanitize !8
  %6 = extractvalue { i32, i1 } %5, 1, !nosanitize !8
  br i1 %6, label %7, label %8, !prof !9, !nosanitize !8

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

8:                                                ; preds = %2
  %9 = extractvalue { i32, i1 } %5, 0, !nosanitize !8
  ret i32 %9
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @ZSTD_adjustCParams(ptr dead_on_unwind noalias readnone sret(%struct.ZSTD_compressionParameters) align 4 captures(none) %0, ptr noundef readnone byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

7:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind noalias readnone sret(%struct.ZSTD_compressionParameters) align 4 captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef readnone captures(none) %0) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

declare void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #17 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !132
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 3, ptr %4, align 4, !tbaa !46, !alias.scope !132
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %5, align 8, !tbaa !47, !alias.scope !132
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !77, !noalias !132
  %9 = icmp ugt i32 %8, 6
  %10 = load i32, ptr %2, align 8, !noalias !132
  %11 = icmp ugt i32 %10, 26
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 140
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 1, ptr %16, align 8, !tbaa !82, !alias.scope !132
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %16, ptr noundef nonnull align 8 %2) #36
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !81, !alias.scope !132
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, ptr %7, align 8, !tbaa !77, !noalias !132
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i32 [ %8, %13 ], [ %21, %20 ]
  %24 = phi ptr [ %14, %13 ], [ %17, %20 ]
  %25 = icmp ugt i32 %23, 6
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8, !tbaa !72, !noalias !132
  %28 = icmp ugt i32 %27, 16
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %26, %22, %15
  %31 = phi ptr [ %17, %15 ], [ %24, %22 ], [ %24, %26 ]
  %32 = phi i32 [ %18, %15 ], [ 2, %22 ], [ %29, %26 ]
  store i32 %32, ptr %31, align 4, !tbaa !81, !alias.scope !132
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %34 = load i32, ptr %33, align 8, !tbaa !77
  %35 = add i32 %34, -6
  %36 = icmp ult i32 %35, -3
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

38:                                               ; preds = %30
  call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCCtxSize(i32 noundef %0) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef readonly captures(none) %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

6:                                                ; preds = %1
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_estimateCStreamSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #4 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !135
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 3, ptr %4, align 4, !tbaa !46, !alias.scope !135
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %5, align 8, !tbaa !47, !alias.scope !135
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !77, !noalias !135
  %9 = icmp ugt i32 %8, 6
  %10 = load i32, ptr %2, align 8, !noalias !135
  %11 = icmp ugt i32 %10, 26
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 140
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 1, ptr %16, align 8, !tbaa !82, !alias.scope !135
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %16, ptr noundef nonnull align 8 %2) #36
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !81, !alias.scope !135
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, ptr %7, align 8, !tbaa !77, !noalias !135
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i32 [ %8, %13 ], [ %21, %20 ]
  %24 = phi ptr [ %14, %13 ], [ %17, %20 ]
  %25 = icmp ugt i32 %23, 6
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8, !tbaa !72, !noalias !135
  %28 = icmp ugt i32 %27, 16
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %26, %22, %15
  %31 = phi ptr [ %17, %15 ], [ %24, %22 ], [ %24, %26 ]
  %32 = phi i32 [ %18, %15 ], [ 2, %22 ], [ %29, %26 ]
  store i32 %32, ptr %31, align 4, !tbaa !81, !alias.scope !135
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %34 = load i32, ptr %33, align 8, !tbaa !77
  %35 = add i32 %34, -6
  %36 = icmp ult i32 %35, -3
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %38 = load i32, ptr %37, align 4, !tbaa !115
  %39 = icmp sgt i32 %38, 0
  br i1 %36, label %42, label %40

40:                                               ; preds = %30
  br i1 %39, label %44, label %41

41:                                               ; preds = %40
  call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

42:                                               ; preds = %30
  br i1 %39, label %44, label %43

43:                                               ; preds = %42
  call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

44:                                               ; preds = %40, %42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i64 -1
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCStreamSize(i32 noundef %0) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getFrameProgression(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_frameProgression) align 8 captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 3568
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 3592
  %8 = load i64, ptr %7, align 8, !tbaa !139
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 3584
  %10 = load i64, ptr %9, align 8, !tbaa !140
  %11 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %8, i64 %10), !nosanitize !8
  %12 = extractvalue { i64, i1 } %11, 0, !nosanitize !8
  %13 = extractvalue { i64, i1 } %11, 1, !nosanitize !8
  br i1 %13, label %14, label %15, !prof !9, !nosanitize !8

14:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

15:                                               ; preds = %6, %2
  %16 = phi i64 [ 0, %2 ], [ %12, %6 ]
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 792
  %18 = load i64, ptr %17, align 8, !tbaa !141
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 %16), !nosanitize !8
  %20 = extractvalue { i64, i1 } %19, 1, !nosanitize !8
  br i1 %20, label %21, label %22, !prof !9, !nosanitize !8

21:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

22:                                               ; preds = %15
  %23 = extractvalue { i64, i1 } %19, 0, !nosanitize !8
  store i64 %23, ptr %0, align 8, !tbaa !142
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %18, ptr %24, align 8, !tbaa !144
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 800
  %26 = load i64, ptr %25, align 8, !tbaa !145
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %26, ptr %27, align 8, !tbaa !146
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %26, ptr %28, align 8, !tbaa !147
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %29, align 8, !tbaa !148
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %30, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_toFlushNow(ptr noundef readnone captures(none) %0) local_unnamed_addr #8 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_reset_compressedBlockState(ptr noundef writeonly captures(none) initializes((2056, 2060), (5604, 5628)) %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %4, align 4, !tbaa !151
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %6, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ZSTD_invalidateRepCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #19 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 5616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false), !tbaa !4
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_copyCCtx(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

6:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @ZSTD_seqToCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #20 {
  %2 = load ptr, ptr %0, align 8, !tbaa !154
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !158
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %2 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %59, label %16

16:                                               ; preds = %1
  %17 = lshr exact i64 %13, 3
  %18 = and i64 %17, 4294967295
  br label %19

19:                                               ; preds = %16, %54
  %20 = phi i64 [ 0, %16 ], [ %57, %54 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load i16, ptr %22, align 4, !tbaa !159
  %24 = load i32, ptr %21, align 4, !tbaa !162
  %25 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %24, i1 true)
  %26 = getelementptr inbounds nuw i8, ptr %21, i64 6
  %27 = load i16, ptr %26, align 2, !tbaa !163
  %28 = zext i16 %27 to i32
  %29 = icmp ugt i16 %23, 63
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = zext i16 %23 to i32
  %32 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %31, i1 true)
  %33 = trunc nuw nsw i32 %32 to i8
  %34 = sub nuw nsw i8 50, %33
  br label %39

35:                                               ; preds = %19
  %36 = zext nneg i16 %23 to i64
  %37 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !164
  br label %39

39:                                               ; preds = %30, %35
  %40 = phi i8 [ %38, %35 ], [ %34, %30 ]
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 %20
  store i8 %40, ptr %41, align 1, !tbaa !164
  %42 = trunc nuw nsw i32 %25 to i8
  %43 = xor i8 %42, 31
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 %20
  store i8 %43, ptr %44, align 1, !tbaa !164
  %45 = icmp ugt i16 %27, 127
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %28, i1 true)
  %48 = trunc nuw nsw i32 %47 to i8
  %49 = sub nuw nsw i8 67, %48
  br label %54

50:                                               ; preds = %39
  %51 = zext nneg i16 %27 to i64
  %52 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !164
  br label %54

54:                                               ; preds = %46, %50
  %55 = phi i8 [ %53, %50 ], [ %49, %46 ]
  %56 = getelementptr inbounds nuw i8, ptr %8, i64 %20
  store i8 %55, ptr %56, align 1, !tbaa !164
  %57 = add nuw nsw i64 %20, 1
  %58 = icmp eq i64 %57, %18
  br i1 %58, label %59, label %19, !llvm.loop !165

59:                                               ; preds = %54, %1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %61 = load i32, ptr %60, align 8, !tbaa !167
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %65 = load i32, ptr %64, align 4, !tbaa !168
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 %66
  store i8 35, ptr %67, align 1, !tbaa !164
  %68 = load i32, ptr %60, align 8, !tbaa !167
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i32 [ %68, %63 ], [ %61, %59 ]
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %74 = load i32, ptr %73, align 4, !tbaa !168
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds nuw i8, ptr %8, i64 %75
  store i8 52, ptr %76, align 1, !tbaa !164
  br label %77

77:                                               ; preds = %72, %69
  ret i32 0
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @ZSTD_selectBlockCompressor(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = add i32 %0, -6
  %5 = icmp ult i32 %4, -3
  %6 = icmp ne i32 %1, 1
  %7 = or i1 %5, %6
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %8
  %10 = zext nneg i32 %0 to i64
  %11 = getelementptr [8 x i8], ptr %9, i64 %10
  %12 = getelementptr i8, ptr %11, i64 -24
  %13 = getelementptr inbounds [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %8
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %13, i64 %14
  %16 = select i1 %7, ptr %15, ptr %12
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  ret ptr %17
}

declare i64 @ZSTD_compressBlock_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_doubleFast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btlazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btopt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btultra(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btultra2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_fast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_doubleFast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btlazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btlazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_resetSeqStore(ptr noundef captures(none) initializes((8, 16), (24, 32), (72, 76)) %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %4, align 8, !tbaa !170
  %5 = load ptr, ptr %0, align 8, !tbaa !154
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %6, align 8, !tbaa !158
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %7, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 2, 6166929089745999191) i64 @ZSTD_sequenceBound(i64 noundef %0) local_unnamed_addr #8 {
  %2 = udiv i64 %0, 3
  %3 = lshr i64 %0, 10
  %4 = add nuw nsw i64 %3, 2
  %5 = add nuw nsw i64 %4, %2
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_generateSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = icmp ugt i64 %4, -71777214294589697
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = lshr i64 %4, 8
  %11 = add nuw i64 %10, %4
  %12 = icmp ult i64 %4, 131072
  %13 = sub nuw nsw i64 131072, %4
  %14 = lshr i64 %13, 11
  %15 = select i1 %12, i64 %14, i64 0
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 %15), !nosanitize !8
  %17 = freeze { i64, i1 } %16
  %18 = extractvalue { i64, i1 } %17, 1, !nosanitize !8
  br i1 %18, label %19, label %20, !prof !9, !nosanitize !8

19:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %9
  %21 = extractvalue { i64, i1 } %17, 0, !nosanitize !8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %5
  br label %24

24:                                               ; preds = %20, %23
  %25 = phi i64 [ -72, %23 ], [ %21, %20 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %27 = load i64, ptr %26, align 8, !tbaa !105
  %28 = and i64 %27, 4294967295
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %32 = load i32, ptr %31, align 4, !tbaa !115
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = tail call noalias ptr @malloc(i64 noundef %25) #37
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 1, ptr %38, align 8, !tbaa !4
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 944
  store ptr %1, ptr %39, align 8, !tbaa !51
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i64 0, ptr %40, align 8, !tbaa !118
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i64 %2, ptr %41, align 8, !tbaa !118
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %44, align 8, !tbaa !85
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %45, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr %35, ptr %6, align 8, !tbaa !171
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %25, ptr %46, align 8, !tbaa !173
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %47, align 8, !tbaa !174
  store ptr %3, ptr %7, align 8, !tbaa !175
  %48 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %48, align 8, !tbaa !176
  %49 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %49, align 8, !tbaa !177
  %50 = load <2 x i32>, ptr %42, align 4, !tbaa !4
  store i32 1, ptr %42, align 4, !tbaa !178
  store i32 1, ptr %43, align 8, !tbaa !179
  %51 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %52 = load i64, ptr %47, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  store <2 x i32> %50, ptr %42, align 4, !tbaa !4
  %53 = icmp ult i64 %51, -119
  %54 = icmp eq i64 %51, 0
  %55 = select i1 %54, i64 %52, i64 -70
  %56 = select i1 %53, i64 %55, i64 %51
  tail call void @free(ptr noundef nonnull %35) #36
  %57 = icmp ult i64 %56, -119
  br i1 %57, label %58, label %60

58:                                               ; preds = %37
  %59 = load i64, ptr %40, align 8, !tbaa !180
  br label %60

60:                                               ; preds = %34, %37, %30, %24, %58
  %61 = phi i64 [ -40, %24 ], [ %59, %58 ], [ %56, %37 ], [ -40, %30 ], [ -64, %34 ]
  ret i64 %61
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress2(ptr noundef initializes((784, 792), (3640, 3644)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %10, align 8, !tbaa !85
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %11, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr %1, ptr %6, align 8, !tbaa !171
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %12, align 8, !tbaa !173
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %13, align 8, !tbaa !174
  store ptr %3, ptr %7, align 8, !tbaa !175
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %14, align 8, !tbaa !176
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %15, align 8, !tbaa !177
  %16 = load <2 x i32>, ptr %8, align 4, !tbaa !4
  store i32 1, ptr %8, align 4, !tbaa !178
  store i32 1, ptr %9, align 8, !tbaa !179
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %18 = load i64, ptr %13, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  store <2 x i32> %16, ptr %8, align 4, !tbaa !4
  %19 = icmp ult i64 %17, -119
  %20 = icmp eq i64 %17, 0
  %21 = select i1 %20, i64 %18, i64 -70
  %22 = select i1 %19, i64 %21, i64 %17
  ret i64 %22
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local i64 @ZSTD_mergeBlockDelimiters(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  br label %6

6:                                                ; preds = %4, %35
  %7 = phi i64 [ 0, %4 ], [ %36, %35 ]
  %8 = phi i64 [ 0, %4 ], [ %37, %35 ]
  %9 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !181
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %14 = load i32, ptr %13, align 4, !tbaa !183
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = icmp eq i64 %8, %5
  br i1 %17, label %35, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !184
  %21 = getelementptr inbounds nuw i8, ptr %9, i64 20
  %22 = load i32, ptr %21, align 4, !tbaa !184
  %23 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %22, i32 %20), !nosanitize !8
  %24 = extractvalue { i32, i1 } %23, 1, !nosanitize !8
  br i1 %24, label %25, label %26, !prof !9, !nosanitize !8

25:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

26:                                               ; preds = %18
  %27 = extractvalue { i32, i1 } %23, 0, !nosanitize !8
  store i32 %27, ptr %21, align 4, !tbaa !184
  br label %35

28:                                               ; preds = %12, %6
  %29 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !185
  %30 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 1), !nosanitize !8
  %31 = extractvalue { i64, i1 } %30, 1, !nosanitize !8
  br i1 %31, label %32, label %33, !prof !9, !nosanitize !8

32:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

33:                                               ; preds = %28
  %34 = extractvalue { i64, i1 } %30, 0, !nosanitize !8
  br label %35

35:                                               ; preds = %16, %26, %33
  %36 = phi i64 [ %7, %26 ], [ %7, %16 ], [ %34, %33 ]
  %37 = add nuw i64 %8, 1
  %38 = icmp eq i64 %37, %1
  br i1 %38, label %39, label %6, !llvm.loop !186

39:                                               ; preds = %35, %2
  %40 = phi i64 [ 0, %2 ], [ %36, %35 ]
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_buildBlockEntropyStats(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 2064)) %2, ptr noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 {
  %8 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !169
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !94
  %19 = icmp ugt i32 %18, 7
  %20 = select i1 %19, i32 2, i32 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %22 = load i32, ptr %21, align 8, !tbaa !99
  switch i32 %22, label %24 [
    i32 1, label %26
    i32 2, label %23
  ]

23:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i32 255, ptr %9, align 4, !tbaa !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %102

24:                                               ; preds = %7
  %25 = icmp eq i32 %18, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %7, %24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i32 255, ptr %9, align 4, !tbaa !4
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %28 = load i32, ptr %27, align 8, !tbaa !187
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %31 = load i32, ptr %30, align 4, !tbaa !93
  %32 = icmp eq i32 %31, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i32 255, ptr %9, align 4, !tbaa !4
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %34 = load i32, ptr %33, align 8, !tbaa !187
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br i1 %32, label %35, label %102

35:                                               ; preds = %26, %29
  %36 = phi i32 [ %28, %26 ], [ %34, %29 ]
  %37 = phi ptr [ %27, %26 ], [ %33, %29 ]
  %38 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %39 = add nsw i64 %6, -1024
  %40 = load i32, ptr %37, align 8, !tbaa !187
  %41 = icmp eq i32 %40, 2
  %42 = select i1 %41, i64 6, i64 63
  %43 = icmp ugt i64 %16, %42
  br i1 %43, label %44, label %102

44:                                               ; preds = %35
  %45 = call i64 @HIST_count_wksp(ptr noundef %5, ptr noundef nonnull %9, ptr noundef %13, i64 noundef %16, ptr noundef %5, i64 noundef %6) #36
  %46 = icmp ult i64 %45, -119
  br i1 %46, label %47, label %105

47:                                               ; preds = %44
  %48 = icmp eq i64 %45, %16
  br i1 %48, label %102, label %49

49:                                               ; preds = %47
  %50 = lshr i64 %16, 7
  %51 = add nuw nsw i64 %50, 4
  %52 = icmp ugt i64 %45, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %49
  %54 = icmp eq i32 %36, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = load i32, ptr %9, align 4, !tbaa !4
  %57 = call i32 @HUF_validateCTable(ptr noundef nonnull %1, ptr noundef %5, i32 noundef %56) #36
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %59, %55 ], [ %36, %53 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %2, i8 0, i64 2056, i1 false)
  %62 = load i32, ptr %9, align 4, !tbaa !4
  %63 = call i32 @HUF_optimalTableLog(i32 noundef 11, i64 noundef %16, i32 noundef %62, ptr noundef nonnull %38, i64 noundef %39, ptr noundef nonnull %2, ptr noundef %5, i32 noundef range(i32 0, 3) %20) #36
  %64 = load i32, ptr %9, align 4, !tbaa !4
  %65 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %2, ptr noundef %5, i32 noundef %64, i32 noundef %63, ptr noundef nonnull %38, i64 noundef %39) #36
  %66 = icmp ult i64 %65, -119
  br i1 %66, label %67, label %105

67:                                               ; preds = %60
  %68 = trunc i64 %65 to i32
  %69 = load i32, ptr %9, align 4, !tbaa !4
  %70 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %69) #36
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %72 = load i32, ptr %9, align 4, !tbaa !4
  %73 = call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %71, i64 noundef 128, ptr noundef nonnull %2, i32 noundef %72, i32 noundef %68, ptr noundef nonnull %38, i64 noundef %39) #36
  %74 = icmp eq i32 %61, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %9, align 4, !tbaa !4
  %77 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef %76) #36
  %78 = icmp ult i64 %77, %16
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 %70), !nosanitize !8
  %81 = extractvalue { i64, i1 } %80, 1, !nosanitize !8
  br i1 %81, label %82, label %83, !prof !9, !nosanitize !8

82:                                               ; preds = %79
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

83:                                               ; preds = %79
  %84 = extractvalue { i64, i1 } %80, 0, !nosanitize !8
  %85 = icmp ugt i64 %77, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 12), !nosanitize !8
  %88 = extractvalue { i64, i1 } %87, 1, !nosanitize !8
  br i1 %88, label %89, label %90, !prof !9, !nosanitize !8

89:                                               ; preds = %86
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

90:                                               ; preds = %86
  %91 = extractvalue { i64, i1 } %87, 0, !nosanitize !8
  %92 = icmp ult i64 %91, %16
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %102

94:                                               ; preds = %90, %75, %67
  %95 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 %73), !nosanitize !8
  %96 = extractvalue { i64, i1 } %95, 1, !nosanitize !8
  br i1 %96, label %97, label %98, !prof !9, !nosanitize !8

97:                                               ; preds = %94
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

98:                                               ; preds = %94
  %99 = extractvalue { i64, i1 } %95, 0, !nosanitize !8
  %100 = icmp ult i64 %99, %16
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %102

102:                                              ; preds = %49, %47, %35, %29, %23, %93, %101
  %103 = phi i32 [ 0, %35 ], [ 0, %29 ], [ 3, %93 ], [ 0, %101 ], [ 1, %47 ], [ 0, %23 ], [ 0, %49 ]
  store i32 %103, ptr %4, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %104 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 0, ptr %104, align 8, !tbaa !189
  br label %112

105:                                              ; preds = %44, %60
  %106 = phi i64 [ %65, %60 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %107 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %106, ptr %107, align 8, !tbaa !189
  br label %158

108:                                              ; preds = %98
  store i32 2, ptr %4, align 8, !tbaa !188
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 2056
  store i32 1, ptr %109, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %73, ptr %110, align 8, !tbaa !189
  %111 = icmp ult i64 %73, -119
  br i1 %111, label %112, label %158

112:                                              ; preds = %102, %108
  %113 = getelementptr inbounds nuw i8, ptr %1, i64 2064
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 2064
  %115 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %116 = load i32, ptr %17, align 4, !tbaa !94
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %118 = load ptr, ptr %117, align 8, !tbaa !158
  %119 = load ptr, ptr %0, align 8, !tbaa !154
  %120 = ptrtoint ptr %118 to i64
  %121 = ptrtoint ptr %119 to i64
  %122 = sub i64 %120, %121
  %123 = ashr exact i64 %122, 3
  %124 = getelementptr inbounds nuw i8, ptr %4, i64 156
  %125 = getelementptr inbounds nuw i8, ptr %4, i64 289
  %126 = getelementptr inbounds nuw i8, ptr %5, i64 212
  %127 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 212), !nosanitize !8
  %128 = extractvalue { i64, i1 } %127, 0, !nosanitize !8
  %129 = extractvalue { i64, i1 } %127, 1, !nosanitize !8
  br i1 %129, label %130, label %131, !prof !9, !nosanitize !8

130:                                              ; preds = %112
  call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

131:                                              ; preds = %112
  %132 = icmp eq ptr %118, %119
  br i1 %132, label %133, label %137

133:                                              ; preds = %131
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 5612
  store i32 0, ptr %134, align 4, !tbaa !190, !noalias !191
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 5604
  store i32 0, ptr %135, align 4, !tbaa !194, !noalias !191
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 5608
  store i32 0, ptr %136, align 4, !tbaa !195, !noalias !191
  br label %146

137:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull readonly %0, i64 noundef %123, ptr noundef nonnull %113, ptr noundef nonnull %114, ptr noundef nonnull %124, ptr noundef nonnull %125, i32 noundef %116, ptr noundef %5, ptr noundef nonnull %126, i64 noundef %128)
  %138 = load <2 x i32>, ptr %8, align 8, !tbaa !4
  %139 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %140 = load i32, ptr %139, align 8, !tbaa !4
  %141 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %142 = load i64, ptr %141, align 8, !tbaa !118
  %143 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %144 = load i64, ptr %143, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %145 = icmp ult i64 %142, -119
  br i1 %145, label %146, label %153

146:                                              ; preds = %137, %133
  %147 = phi i32 [ 0, %133 ], [ %140, %137 ]
  %148 = phi i64 [ 0, %133 ], [ %142, %137 ]
  %149 = phi i64 [ 0, %133 ], [ %144, %137 ]
  %150 = phi <2 x i32> [ zeroinitializer, %133 ], [ %138, %137 ]
  store <2 x i32> %150, ptr %115, align 8, !tbaa !4
  %151 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i32 %147, ptr %151, align 8, !tbaa !196
  %152 = getelementptr inbounds nuw i8, ptr %4, i64 304
  store i64 %149, ptr %152, align 8, !tbaa !197
  br label %153

153:                                              ; preds = %137, %146
  %154 = phi i64 [ %142, %137 ], [ %148, %146 ]
  %155 = getelementptr inbounds nuw i8, ptr %4, i64 296
  store i64 %154, ptr %155, align 8, !tbaa !198
  %156 = icmp ult i64 %154, -119
  %157 = select i1 %156, i64 0, i64 %154
  br label %158

158:                                              ; preds = %105, %153, %108
  %159 = phi i64 [ %73, %108 ], [ %157, %153 ], [ %106, %105 ]
  ret i64 %159
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_writeSkippableFrame(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #14 {
  %6 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 8), !nosanitize !8
  %7 = extractvalue { i64, i1 } %6, 0, !nosanitize !8
  %8 = extractvalue { i64, i1 } %6, 1, !nosanitize !8
  br i1 %8, label %9, label %10, !prof !9, !nosanitize !8

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %5
  %11 = icmp ult i64 %1, %7
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = icmp ugt i64 %3, 4294967295
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = icmp ugt i32 %4, 15
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = or disjoint i32 %4, 407710288
  store i32 %17, ptr %0, align 1, !tbaa !4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = trunc nuw i64 %3 to i32
  store i32 %19, ptr %18, align 1, !tbaa !4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr align 1 %2, i64 %3, i1 false)
  br label %21

21:                                               ; preds = %14, %12, %10, %16
  %22 = phi i64 [ %7, %16 ], [ -70, %10 ], [ -72, %12 ], [ -42, %14 ]
  ret i64 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -70, 4) i64 @ZSTD_writeLastEmptyBlock(ptr noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = icmp ult i64 %1, 3
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  store i16 1, ptr %0, align 1, !tbaa !199
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %5, align 1, !tbaa !164
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ 3, %4 ], [ -70, %2 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_referenceExternalSequences(ptr noundef writeonly captures(none) initializes((3184, 3224)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store ptr %1, ptr %4, align 8, !tbaa !200
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store i64 %2, ptr %5, align 8, !tbaa !201
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3216
  store i64 %2, ptr %6, align 8, !tbaa !202
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #4 {
  %8 = alloca %struct.seqStoreSplits, align 8
  %9 = alloca %struct.repcodes_s, align 4
  %10 = alloca %struct.repcodes_s, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %12 = load i32, ptr %0, align 8, !tbaa !203
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %745, label %14

14:                                               ; preds = %7
  %15 = icmp ne i32 %5, 0
  %16 = icmp eq i32 %12, 1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %20 = load i64, ptr %19, align 8, !tbaa !119
  %21 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 1), !nosanitize !8
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !8
  br i1 %22, label %23, label %24, !prof !9, !nosanitize !8

23:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

24:                                               ; preds = %18
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %28 = load i32, ptr %27, align 8, !tbaa !204
  %29 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %26, i64 noundef %25, i32 noundef %28)
  %30 = icmp ult i64 %29, -119
  br i1 %30, label %31, label %745

31:                                               ; preds = %24
  %32 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %29), !nosanitize !8
  %33 = extractvalue { i64, i1 } %32, 1, !nosanitize !8
  br i1 %33, label %34, label %35, !prof !9, !nosanitize !8

34:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

35:                                               ; preds = %31
  %36 = extractvalue { i64, i1 } %32, 0, !nosanitize !8
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %29
  store i32 2, ptr %0, align 8, !tbaa !203
  br label %38

38:                                               ; preds = %35, %14
  %39 = phi i64 [ %29, %35 ], [ 0, %14 ]
  %40 = phi i64 [ %36, %35 ], [ %2, %14 ]
  %41 = phi ptr [ %37, %35 ], [ %1, %14 ]
  %42 = icmp eq i64 %4, 0
  br i1 %42, label %745, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %45 = load i32, ptr %44, align 8, !tbaa !205
  %46 = load ptr, ptr %11, align 8, !tbaa !206
  %47 = icmp ne ptr %3, %46
  %48 = icmp ne i32 %45, 0
  %49 = or i1 %48, %47
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 3256
  %52 = load ptr, ptr %51, align 8, !tbaa !207
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %54 = load i32, ptr %53, align 4, !tbaa !208
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %56 = load i32, ptr %55, align 8, !tbaa !209
  br label %77

57:                                               ; preds = %43
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %59 = load ptr, ptr %58, align 8, !tbaa !210
  %60 = ptrtoint ptr %46 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %64 = load i32, ptr %63, align 8, !tbaa !209
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  store i32 %64, ptr %65, align 4, !tbaa !208
  %66 = trunc i64 %62 to i32
  store i32 %66, ptr %63, align 8, !tbaa !209
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 3256
  store ptr %59, ptr %67, align 8, !tbaa !207
  %68 = sub i64 0, %62
  %69 = getelementptr inbounds i8, ptr %3, i64 %68
  store ptr %69, ptr %58, align 8, !tbaa !210
  %70 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %66, i32 %64), !nosanitize !8
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !8
  br i1 %71, label %72, label %73, !prof !9, !nosanitize !8

72:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

73:                                               ; preds = %57
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !8
  %75 = icmp ult i32 %74, 8
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 %66, ptr %65, align 4, !tbaa !208
  br label %77

77:                                               ; preds = %76, %73, %50
  %78 = phi i32 [ %56, %50 ], [ %66, %73 ], [ %66, %76 ]
  %79 = phi i32 [ %54, %50 ], [ %64, %73 ], [ %66, %76 ]
  %80 = phi ptr [ %52, %50 ], [ %59, %73 ], [ %59, %76 ]
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  store ptr %81, ptr %11, align 8, !tbaa !206
  %82 = zext i32 %79 to i64
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 %82
  %84 = icmp ugt ptr %81, %83
  %85 = zext i32 %78 to i64
  %86 = getelementptr inbounds nuw i8, ptr %80, i64 %85
  %87 = icmp ult ptr %3, %86
  %88 = and i1 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %91 = ptrtoint ptr %81 to i64
  %92 = ptrtoint ptr %80 to i64
  %93 = sub i64 %91, %92
  %94 = tail call i64 @llvm.umin.i64(i64 %93, i64 %85)
  %95 = trunc nuw i64 %94 to i32
  store i32 %95, ptr %90, align 4, !tbaa !208
  br label %96

96:                                               ; preds = %77, %89
  br i1 %49, label %97, label %99

97:                                               ; preds = %96
  store i32 0, ptr %44, align 8, !tbaa !205
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  store i32 %78, ptr %98, align 4, !tbaa !211
  br label %99

99:                                               ; preds = %97, %96
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %102 = load i32, ptr %101, align 8, !tbaa !212
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %153

104:                                              ; preds = %99
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %106 = load ptr, ptr %105, align 8, !tbaa !206
  %107 = icmp eq ptr %3, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %110 = load ptr, ptr %109, align 8, !tbaa !207
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %112 = load i32, ptr %111, align 4, !tbaa !208
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %114 = load i32, ptr %113, align 8, !tbaa !209
  br label %135

115:                                              ; preds = %104
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %117 = load ptr, ptr %116, align 8, !tbaa !210
  %118 = ptrtoint ptr %106 to i64
  %119 = ptrtoint ptr %117 to i64
  %120 = sub i64 %118, %119
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %122 = load i32, ptr %121, align 8, !tbaa !209
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i32 %122, ptr %123, align 4, !tbaa !208
  %124 = trunc i64 %120 to i32
  store i32 %124, ptr %121, align 8, !tbaa !209
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %117, ptr %125, align 8, !tbaa !207
  %126 = sub i64 0, %120
  %127 = getelementptr inbounds i8, ptr %3, i64 %126
  store ptr %127, ptr %116, align 8, !tbaa !210
  %128 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %124, i32 %122), !nosanitize !8
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !8
  br i1 %129, label %130, label %131, !prof !9, !nosanitize !8

130:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

131:                                              ; preds = %115
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !8
  %133 = icmp ult i32 %132, 8
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 %124, ptr %123, align 4, !tbaa !208
  br label %135

135:                                              ; preds = %134, %131, %108
  %136 = phi i32 [ %114, %108 ], [ %124, %131 ], [ %124, %134 ]
  %137 = phi i32 [ %112, %108 ], [ %122, %131 ], [ %124, %134 ]
  %138 = phi ptr [ %110, %108 ], [ %117, %131 ], [ %117, %134 ]
  store ptr %81, ptr %105, align 8, !tbaa !206
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 %139
  %141 = icmp ugt ptr %81, %140
  %142 = zext i32 %136 to i64
  %143 = getelementptr inbounds nuw i8, ptr %138, i64 %142
  %144 = icmp ult ptr %3, %143
  %145 = and i1 %141, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %135
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %148 = ptrtoint ptr %81 to i64
  %149 = ptrtoint ptr %138 to i64
  %150 = sub i64 %148, %149
  %151 = tail call i64 @llvm.umin.i64(i64 %150, i64 %142)
  %152 = trunc nuw i64 %151 to i32
  store i32 %152, ptr %147, align 4, !tbaa !208
  br label %153

153:                                              ; preds = %146, %135, %99
  br i1 %15, label %157, label %154

154:                                              ; preds = %153
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %155, ptr noundef nonnull %100, ptr noundef %3, ptr noundef nonnull %81)
  %156 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef %41, i64 noundef %40, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  br label %715

157:                                              ; preds = %153
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %159 = load i64, ptr %158, align 8, !tbaa !213
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %161 = load i32, ptr %160, align 4, !tbaa !214
  %162 = icmp ult i32 %161, 32
  br i1 %162, label %164, label %163, !prof !215, !nosanitize !8

163:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

164:                                              ; preds = %157
  %165 = shl nuw i32 1, %161
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %167 = load i64, ptr %166, align 8, !tbaa !141
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %169 = load i64, ptr %168, align 8, !tbaa !145
  %170 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %167, i64 %169), !nosanitize !8
  %171 = extractvalue { i64, i1 } %170, 1, !nosanitize !8
  br i1 %171, label %172, label %173, !prof !9, !nosanitize !8

172:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 21) #39, !nosanitize !8
  unreachable, !nosanitize !8

173:                                              ; preds = %164
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %175 = load i32, ptr %174, align 4, !tbaa !216
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %179 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %178, ptr noundef captures(none) %3, i64 noundef range(i64 1, 0) %4) #36
  br label %180

180:                                              ; preds = %177, %173
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %183 = icmp ult i64 %159, 131072
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %193 = getelementptr i8, ptr %0, i64 296
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %200 = getelementptr i8, ptr %0, i64 380
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 4088
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 4008
  %204 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 4084
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 4024
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 4032
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 936
  br label %213

213:                                              ; preds = %702, %180
  %214 = phi { i64, i1 } [ %170, %180 ], [ %691, %702 ]
  %215 = phi i64 [ %40, %180 ], [ %703, %702 ]
  %216 = phi i64 [ %4, %180 ], [ %695, %702 ]
  %217 = phi ptr [ %3, %180 ], [ %250, %702 ]
  %218 = phi ptr [ %41, %180 ], [ %704, %702 ]
  %219 = extractvalue { i64, i1 } %214, 0
  %220 = load i32, ptr %181, align 8, !tbaa !217
  %221 = load i32, ptr %182, align 4, !tbaa !218
  %222 = icmp ult i64 %216, 131072
  %223 = or i1 %183, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %213
  %225 = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %216, i64 %159)
  br label %244

226:                                              ; preds = %213
  %227 = icmp slt i64 %219, 3
  br i1 %227, label %244, label %228

228:                                              ; preds = %226
  switch i32 %220, label %233 [
    i32 1, label %244
    i32 0, label %229
  ]

229:                                              ; preds = %228
  %230 = zext i32 %221 to i64
  %231 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_optimalBlockSize.splitLevels, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !4
  br label %239

233:                                              ; preds = %228
  %234 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %220, i32 -2)
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !8
  br i1 %235, label %236, label %237, !prof !9, !nosanitize !8

236:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 21) #39, !nosanitize !8
  unreachable, !nosanitize !8

237:                                              ; preds = %233
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !8
  br label %239

239:                                              ; preds = %237, %229
  %240 = phi i32 [ %232, %229 ], [ %238, %237 ]
  %241 = load ptr, ptr %184, align 8, !tbaa !59
  %242 = load i64, ptr %185, align 8, !tbaa !60
  %243 = tail call i64 @ZSTD_splitBlock(ptr noundef %217, i64 noundef %159, i32 noundef %240, ptr noundef %241, i64 noundef %242) #36
  br label %244

244:                                              ; preds = %239, %228, %226, %224
  %245 = phi i64 [ %225, %224 ], [ %243, %239 ], [ 131072, %226 ], [ 131072, %228 ]
  %246 = icmp eq i64 %245, %216
  %247 = select i1 %246, i32 %6, i32 0
  %248 = icmp ult i64 %215, 6
  br i1 %248, label %745, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds nuw i8, ptr %217, i64 %245
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %186, ptr noundef nonnull %100, ptr noundef %217, ptr noundef %250)
  %251 = load i32, ptr %187, align 4, !tbaa !4
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 range(i32 1, -2147483647) %165), !nosanitize !8
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !8
  br i1 %253, label %254, label %255, !prof !9, !nosanitize !8

254:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

255:                                              ; preds = %249
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !8
  %257 = ptrtoint ptr %250 to i64
  %258 = load ptr, ptr %189, align 8, !tbaa !210
  %259 = ptrtoint ptr %258 to i64
  %260 = sub i64 %257, %259
  %261 = trunc i64 %260 to i32
  %262 = icmp ult i32 %256, %261
  br i1 %262, label %266, label %263

263:                                              ; preds = %255
  %264 = load i32, ptr %190, align 8, !tbaa !209
  %265 = icmp eq i32 %251, %264
  br i1 %265, label %267, label %266

266:                                              ; preds = %263, %255
  store i32 0, ptr %187, align 4, !tbaa !4
  store ptr null, ptr %188, align 8, !tbaa !219
  br label %267

267:                                              ; preds = %266, %263
  %268 = phi i32 [ %251, %263 ], [ 0, %266 ]
  %269 = ptrtoint ptr %217 to i64
  %270 = sub i64 %269, %259
  %271 = trunc i64 %270 to i32
  %272 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 range(i32 1, -2147483647) %165, i32 %268), !nosanitize !8
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !8
  br i1 %273, label %274, label %275, !prof !9, !nosanitize !8

274:                                              ; preds = %267
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

275:                                              ; preds = %267
  %276 = extractvalue { i32, i1 } %272, 0, !nosanitize !8
  %277 = icmp ult i32 %276, %271
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = load i32, ptr %191, align 4, !tbaa !220
  br label %295

280:                                              ; preds = %275
  %281 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %271, i32 range(i32 1, -2147483647) %165), !nosanitize !8
  %282 = extractvalue { i32, i1 } %281, 0, !nosanitize !8
  %283 = extractvalue { i32, i1 } %281, 1, !nosanitize !8
  br i1 %283, label %284, label %285, !prof !9, !nosanitize !8

284:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

285:                                              ; preds = %280
  %286 = load i32, ptr %191, align 4, !tbaa !208
  %287 = icmp ult i32 %286, %282
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  store i32 %282, ptr %191, align 4, !tbaa !208
  br label %289

289:                                              ; preds = %288, %285
  %290 = phi i32 [ %282, %288 ], [ %286, %285 ]
  %291 = load i32, ptr %190, align 8, !tbaa !209
  %292 = icmp ult i32 %291, %290
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  store i32 %290, ptr %190, align 8, !tbaa !209
  br label %294

294:                                              ; preds = %293, %289
  store i32 0, ptr %187, align 4, !tbaa !4
  store ptr null, ptr %188, align 8, !tbaa !219
  br label %295

295:                                              ; preds = %294, %278
  %296 = phi i32 [ %279, %278 ], [ %290, %294 ]
  %297 = load i32, ptr %192, align 4, !tbaa !211
  %298 = icmp ult i32 %297, %296
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  store i32 %296, ptr %192, align 4, !tbaa !211
  br label %300

300:                                              ; preds = %299, %295
  %301 = load i64, ptr %193, align 8, !tbaa !105
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %395, label %303

303:                                              ; preds = %300
  %304 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %217, i64 noundef %245)
  %305 = icmp ult i64 %304, -119
  br i1 %305, label %306, label %745

306:                                              ; preds = %303
  %307 = icmp eq i64 %304, 0
  br i1 %307, label %308, label %373

308:                                              ; preds = %306
  %309 = load i32, ptr %194, align 8, !tbaa !221
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %342

311:                                              ; preds = %308
  %312 = load ptr, ptr %196, align 8, !tbaa !158
  %313 = load ptr, ptr %195, align 8, !tbaa !154
  %314 = ptrtoint ptr %312 to i64
  %315 = ptrtoint ptr %313 to i64
  %316 = sub i64 %314, %315
  %317 = load ptr, ptr %197, align 8, !tbaa !170
  %318 = load ptr, ptr %198, align 8, !tbaa !169
  %319 = ptrtoint ptr %317 to i64
  %320 = ptrtoint ptr %318 to i64
  %321 = sub i64 %319, %320
  %322 = icmp ugt i64 %316, 31
  %323 = icmp ugt i64 %321, 9
  %324 = select i1 %322, i1 true, i1 %323
  br i1 %324, label %342, label %325

325:                                              ; preds = %311
  %326 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %217, i64 noundef %245)
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %342, label %328

328:                                              ; preds = %325
  %329 = icmp ult i64 %245, 2305843009213693952
  br i1 %329, label %331, label %330, !prof !215, !nosanitize !8

330:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

331:                                              ; preds = %328
  %332 = load i8, ptr %217, align 1, !tbaa !164
  %333 = trunc i64 %245 to i32
  %334 = shl i32 %333, 3
  %335 = or disjoint i32 %334, %247
  %336 = trunc i32 %335 to i16
  %337 = or disjoint i16 %336, 2
  store i16 %337, ptr %218, align 1, !tbaa !199
  %338 = lshr i32 %334, 16
  %339 = trunc i32 %338 to i8
  %340 = getelementptr inbounds nuw i8, ptr %218, i64 2
  store i8 %339, ptr %340, align 1, !tbaa !164
  %341 = getelementptr inbounds nuw i8, ptr %218, i64 3
  store i8 %332, ptr %341, align 1, !tbaa !164
  br label %388

342:                                              ; preds = %325, %311, %308
  %343 = tail call i64 @ZSTD_compressSuperBlock(ptr noundef nonnull %0, ptr noundef %218, i64 noundef range(i64 6, 0) %215, ptr noundef %217, i64 noundef %245, i32 noundef range(i32 0, 2) %247) #36
  %344 = icmp eq i64 %343, -70
  br i1 %344, label %373, label %345

345:                                              ; preds = %342
  %346 = load i32, ptr %182, align 4, !tbaa !218
  %347 = icmp ult i32 %346, 65
  br i1 %347, label %349, label %348, !prof !215, !nosanitize !8

348:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 20) #39, !nosanitize !8
  unreachable, !nosanitize !8

349:                                              ; preds = %345
  %350 = tail call i32 @llvm.umax.i32(i32 %346, i32 7)
  %351 = add nsw i32 %350, -1
  %352 = zext nneg i32 %351 to i64
  %353 = lshr i64 %245, %352
  %354 = add nuw nsw i64 %353, 2
  %355 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %245, i64 %354), !nosanitize !8
  %356 = extractvalue { i64, i1 } %355, 0, !nosanitize !8
  %357 = extractvalue { i64, i1 } %355, 1, !nosanitize !8
  br i1 %357, label %358, label %359, !prof !9, !nosanitize !8

358:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

359:                                              ; preds = %349
  %360 = icmp ult i64 %343, -119
  br i1 %360, label %361, label %745

361:                                              ; preds = %359
  %362 = icmp eq i64 %343, 0
  br i1 %362, label %373, label %363

363:                                              ; preds = %361
  %364 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %356, i64 3), !nosanitize !8
  %365 = extractvalue { i64, i1 } %364, 1, !nosanitize !8
  br i1 %365, label %366, label %367, !prof !9, !nosanitize !8

366:                                              ; preds = %363
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

367:                                              ; preds = %363
  %368 = extractvalue { i64, i1 } %364, 0, !nosanitize !8
  %369 = icmp ult i64 %343, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %367
  %371 = load <2 x ptr>, ptr %199, align 8, !tbaa !51
  %372 = shufflevector <2 x ptr> %371, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %372, ptr %199, align 8, !tbaa !51
  br label %388

373:                                              ; preds = %367, %361, %342, %306
  %374 = icmp ult i64 %245, 2305843009213693952
  br i1 %374, label %376, label %375, !prof !215, !nosanitize !8

375:                                              ; preds = %373
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

376:                                              ; preds = %373
  %377 = add nuw nsw i64 %245, 3
  %378 = icmp ugt i64 %377, %215
  br i1 %378, label %745, label %379

379:                                              ; preds = %376
  %380 = trunc i64 %245 to i32
  %381 = shl i32 %380, 3
  %382 = or disjoint i32 %381, %247
  %383 = trunc i32 %382 to i16
  store i16 %383, ptr %218, align 1, !tbaa !199
  %384 = lshr i32 %381, 16
  %385 = trunc i32 %384 to i8
  %386 = getelementptr inbounds nuw i8, ptr %218, i64 2
  store i8 %385, ptr %386, align 1, !tbaa !164
  %387 = getelementptr inbounds nuw i8, ptr %218, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %387, ptr readonly align 1 %217, i64 %245, i1 false)
  br label %388

388:                                              ; preds = %379, %370, %331
  %389 = phi i64 [ %377, %379 ], [ %343, %370 ], [ 4, %331 ]
  %390 = load ptr, ptr %199, align 8, !tbaa !57
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 5604
  %392 = load i32, ptr %391, align 4, !tbaa !151
  %393 = icmp eq i32 %392, 2
  br i1 %393, label %394, label %685

394:                                              ; preds = %388
  store i32 1, ptr %391, align 4, !tbaa !151
  br label %685

395:                                              ; preds = %300
  %396 = load i32, ptr %200, align 4, !tbaa !81
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %398, label %641

398:                                              ; preds = %395
  %399 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %217, i64 noundef %245)
  %400 = icmp ult i64 %399, -119
  br i1 %400, label %401, label %745

401:                                              ; preds = %398
  %402 = icmp eq i64 %399, 1
  br i1 %402, label %403, label %427

403:                                              ; preds = %401
  %404 = load ptr, ptr %199, align 8, !tbaa !57
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 5604
  %406 = load i32, ptr %405, align 4, !tbaa !151
  %407 = icmp eq i32 %406, 2
  br i1 %407, label %408, label %409

408:                                              ; preds = %403
  store i32 1, ptr %405, align 4, !tbaa !151
  br label %409

409:                                              ; preds = %408, %403
  %410 = load i32, ptr %212, align 8, !tbaa !222
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %745

412:                                              ; preds = %409
  %413 = icmp ult i64 %245, 2305843009213693952
  br i1 %413, label %415, label %414, !prof !215, !nosanitize !8

414:                                              ; preds = %412
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

415:                                              ; preds = %412
  %416 = add nuw nsw i64 %245, 3
  %417 = icmp ugt i64 %416, %215
  br i1 %417, label %745, label %418

418:                                              ; preds = %415
  %419 = trunc i64 %245 to i32
  %420 = shl i32 %419, 3
  %421 = or disjoint i32 %420, %247
  %422 = trunc i32 %421 to i16
  store i16 %422, ptr %218, align 1, !tbaa !199
  %423 = lshr i32 %420, 16
  %424 = trunc i32 %423 to i8
  %425 = getelementptr inbounds nuw i8, ptr %218, i64 2
  store i8 %424, ptr %425, align 1, !tbaa !164
  %426 = getelementptr inbounds nuw i8, ptr %218, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %426, ptr readonly align 1 %217, i64 %245, i1 false)
  br label %685

427:                                              ; preds = %401
  %428 = load ptr, ptr %196, align 8, !tbaa !223
  %429 = load ptr, ptr %195, align 8, !tbaa !224
  %430 = ptrtoint ptr %428 to i64
  %431 = ptrtoint ptr %429 to i64
  %432 = sub i64 %430, %431
  %433 = lshr exact i64 %432, 3
  %434 = trunc i64 %433 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %201, ptr %8, align 8, !tbaa !225
  store i64 0, ptr %204, align 8, !tbaa !227
  %435 = icmp ult i32 %434, 5
  br i1 %435, label %441, label %436

436:                                              ; preds = %427
  %437 = and i64 %433, 4294967295
  call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %8, i64 noundef 0, i64 noundef %437, ptr noundef nonnull %0, ptr noundef nonnull %195)
  %438 = load ptr, ptr %8, align 8, !tbaa !225
  %439 = load i64, ptr %204, align 8, !tbaa !227
  %440 = getelementptr inbounds nuw [4 x i8], ptr %438, i64 %439
  store i32 %434, ptr %440, align 4, !tbaa !4
  br label %441

441:                                              ; preds = %436, %427
  %442 = phi i64 [ %439, %436 ], [ 0, %427 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %443 = load ptr, ptr %199, align 8, !tbaa !57
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %444, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %444, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %202, i8 0, i64 80, i1 false)
  %445 = icmp eq i64 %442, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %441
  %447 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %195, ptr noundef %9, ptr noundef %10, ptr noundef %218, i64 noundef range(i64 6, 0) %215, ptr noundef %217, i64 noundef %245, i32 noundef range(i32 0, 2) %247, i32 noundef 0)
  br label %637

448:                                              ; preds = %441
  %449 = load i32, ptr %201, align 4, !tbaa !4
  %450 = zext i32 %449 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %203, ptr noundef nonnull readonly align 8 dereferenceable(80) %195, i64 80, i1 false), !tbaa.struct !228
  %451 = load i32, ptr %205, align 8, !tbaa !167
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %448
  %454 = load i32, ptr %206, align 4, !tbaa !168
  %455 = icmp ult i32 %449, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %453
  store i32 0, ptr %207, align 8, !tbaa !167
  br label %457

457:                                              ; preds = %456, %453, %448
  %458 = load ptr, ptr %195, align 8, !tbaa !154
  store ptr %458, ptr %203, align 8, !tbaa !154
  %459 = shl nuw nsw i64 %450, 3
  %460 = getelementptr inbounds nuw i8, ptr %458, i64 %459
  store ptr %460, ptr %208, align 8, !tbaa !158
  %461 = load ptr, ptr %196, align 8, !tbaa !158
  %462 = ptrtoint ptr %461 to i64
  %463 = ptrtoint ptr %458 to i64
  %464 = sub i64 %462, %463
  %465 = ashr exact i64 %464, 3
  %466 = icmp eq i64 %465, %450
  br i1 %466, label %501, label %467

467:                                              ; preds = %457
  %468 = icmp eq i32 %449, 0
  br i1 %468, label %497, label %469

469:                                              ; preds = %467, %493
  %470 = phi i64 [ %494, %493 ], [ 0, %467 ]
  %471 = phi i64 [ %495, %493 ], [ 0, %467 ]
  %472 = getelementptr inbounds nuw [8 x i8], ptr %458, i64 %471
  %473 = getelementptr inbounds nuw i8, ptr %472, i64 4
  %474 = load i16, ptr %473, align 4, !tbaa !199
  %475 = zext i16 %474 to i64
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 %475), !nosanitize !8
  %477 = extractvalue { i64, i1 } %476, 0, !nosanitize !8
  %478 = extractvalue { i64, i1 } %476, 1, !nosanitize !8
  br i1 %478, label %479, label %480, !prof !9, !nosanitize !8

479:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

480:                                              ; preds = %469
  %481 = load i32, ptr %209, align 4, !tbaa !168
  %482 = zext i32 %481 to i64
  %483 = icmp eq i64 %471, %482
  br i1 %483, label %484, label %493

484:                                              ; preds = %480
  %485 = load i32, ptr %207, align 8, !tbaa !167
  %486 = icmp eq i32 %485, 1
  br i1 %486, label %487, label %493

487:                                              ; preds = %484
  %488 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %477, i64 65536), !nosanitize !8
  %489 = extractvalue { i64, i1 } %488, 1, !nosanitize !8
  br i1 %489, label %490, label %491, !prof !9, !nosanitize !8

490:                                              ; preds = %487
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

491:                                              ; preds = %487
  %492 = extractvalue { i64, i1 } %488, 0, !nosanitize !8
  br label %493

493:                                              ; preds = %491, %484, %480
  %494 = phi i64 [ %492, %491 ], [ %477, %484 ], [ %477, %480 ]
  %495 = add nuw nsw i64 %471, 1
  %496 = icmp eq i64 %495, %450
  br i1 %496, label %497, label %469, !llvm.loop !231

497:                                              ; preds = %493, %467
  %498 = phi i64 [ 0, %467 ], [ %494, %493 ]
  %499 = load ptr, ptr %210, align 8, !tbaa !169
  %500 = getelementptr inbounds nuw i8, ptr %499, i64 %498
  store ptr %500, ptr %211, align 8, !tbaa !170
  br label %501

501:                                              ; preds = %497, %457
  br label %502

502:                                              ; preds = %501, %630
  %503 = phi i64 [ %619, %630 ], [ %215, %501 ]
  %504 = phi i64 [ %631, %630 ], [ 0, %501 ]
  %505 = phi ptr [ %616, %630 ], [ %217, %501 ]
  %506 = phi ptr [ %617, %630 ], [ %218, %501 ]
  %507 = phi i64 [ %632, %630 ], [ 0, %501 ]
  %508 = phi i64 [ %582, %630 ], [ 0, %501 ]
  %509 = icmp eq i64 %507, %442
  %510 = load ptr, ptr %208, align 8, !tbaa !158
  %511 = load ptr, ptr %203, align 8, !tbaa !154
  %512 = icmp eq ptr %510, %511
  br i1 %512, label %575, label %513

513:                                              ; preds = %502
  %514 = ptrtoint ptr %510 to i64
  %515 = ptrtoint ptr %511 to i64
  %516 = sub i64 %514, %515
  %517 = ashr exact i64 %516, 3
  br label %518

518:                                              ; preds = %542, %513
  %519 = phi i64 [ 0, %513 ], [ %543, %542 ]
  %520 = phi i64 [ 0, %513 ], [ %544, %542 ]
  %521 = getelementptr inbounds nuw [8 x i8], ptr %511, i64 %520
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 4
  %523 = load i16, ptr %522, align 4, !tbaa !199
  %524 = zext i16 %523 to i64
  %525 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %519, i64 %524), !nosanitize !8
  %526 = extractvalue { i64, i1 } %525, 0, !nosanitize !8
  %527 = extractvalue { i64, i1 } %525, 1, !nosanitize !8
  br i1 %527, label %528, label %529, !prof !9, !nosanitize !8

528:                                              ; preds = %518
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

529:                                              ; preds = %518
  %530 = load i32, ptr %209, align 4, !tbaa !168
  %531 = zext i32 %530 to i64
  %532 = icmp eq i64 %520, %531
  br i1 %532, label %533, label %542

533:                                              ; preds = %529
  %534 = load i32, ptr %207, align 8, !tbaa !167
  %535 = icmp eq i32 %534, 1
  br i1 %535, label %536, label %542

536:                                              ; preds = %533
  %537 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %526, i64 65536), !nosanitize !8
  %538 = extractvalue { i64, i1 } %537, 1, !nosanitize !8
  br i1 %538, label %539, label %540, !prof !9, !nosanitize !8

539:                                              ; preds = %536
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

540:                                              ; preds = %536
  %541 = extractvalue { i64, i1 } %537, 0, !nosanitize !8
  br label %542

542:                                              ; preds = %540, %533, %529
  %543 = phi i64 [ %541, %540 ], [ %526, %533 ], [ %526, %529 ]
  %544 = add nuw i64 %520, 1
  %545 = icmp eq i64 %544, %517
  br i1 %545, label %546, label %518, !llvm.loop !231

546:                                              ; preds = %542, %569
  %547 = phi i64 [ %570, %569 ], [ 0, %542 ]
  %548 = phi i64 [ %571, %569 ], [ 0, %542 ]
  %549 = getelementptr inbounds nuw [8 x i8], ptr %511, i64 %548
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 6
  %551 = load i16, ptr %550, align 2, !tbaa !199
  %552 = zext i16 %551 to i64
  %553 = add nuw nsw i64 %552, 3
  %554 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %547, i64 %553), !nosanitize !8
  %555 = extractvalue { i64, i1 } %554, 0, !nosanitize !8
  %556 = extractvalue { i64, i1 } %554, 1, !nosanitize !8
  br i1 %556, label %557, label %558, !prof !9, !nosanitize !8

557:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

558:                                              ; preds = %546
  %559 = icmp eq i64 %548, %531
  br i1 %559, label %560, label %569

560:                                              ; preds = %558
  %561 = load i32, ptr %207, align 8, !tbaa !167
  %562 = icmp eq i32 %561, 2
  br i1 %562, label %563, label %569

563:                                              ; preds = %560
  %564 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %555, i64 65536), !nosanitize !8
  %565 = extractvalue { i64, i1 } %564, 1, !nosanitize !8
  br i1 %565, label %566, label %567, !prof !9, !nosanitize !8

566:                                              ; preds = %563
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

567:                                              ; preds = %563
  %568 = extractvalue { i64, i1 } %564, 0, !nosanitize !8
  br label %569

569:                                              ; preds = %567, %560, %558
  %570 = phi i64 [ %568, %567 ], [ %555, %560 ], [ %555, %558 ]
  %571 = add nuw i64 %548, 1
  %572 = icmp eq i64 %571, %517
  br i1 %572, label %573, label %546, !llvm.loop !232

573:                                              ; preds = %569
  %574 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %543, i64 %570)
  br label %575

575:                                              ; preds = %573, %502
  %576 = phi { i64, i1 } [ zeroinitializer, %502 ], [ %574, %573 ]
  %577 = extractvalue { i64, i1 } %576, 0, !nosanitize !8
  %578 = extractvalue { i64, i1 } %576, 1, !nosanitize !8
  br i1 %578, label %579, label %580, !prof !9, !nosanitize !8

579:                                              ; preds = %575
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

580:                                              ; preds = %575
  %581 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %508, i64 %577), !nosanitize !8
  %582 = extractvalue { i64, i1 } %581, 0, !nosanitize !8
  %583 = extractvalue { i64, i1 } %581, 1, !nosanitize !8
  br i1 %583, label %584, label %585, !prof !9, !nosanitize !8

584:                                              ; preds = %580
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

585:                                              ; preds = %580
  br i1 %509, label %586, label %597

586:                                              ; preds = %585
  %587 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %245, i64 %582), !nosanitize !8
  %588 = extractvalue { i64, i1 } %587, 1, !nosanitize !8
  br i1 %588, label %589, label %590, !prof !9, !nosanitize !8

589:                                              ; preds = %586
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

590:                                              ; preds = %586
  %591 = extractvalue { i64, i1 } %587, 0, !nosanitize !8
  %592 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %577, i64 %591), !nosanitize !8
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !8
  br i1 %593, label %594, label %595, !prof !9, !nosanitize !8

594:                                              ; preds = %590
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

595:                                              ; preds = %590
  %596 = extractvalue { i64, i1 } %592, 0, !nosanitize !8
  br label %609

597:                                              ; preds = %585
  %598 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %507, i64 1), !nosanitize !8
  %599 = extractvalue { i64, i1 } %598, 1, !nosanitize !8
  br i1 %599, label %600, label %601, !prof !9, !nosanitize !8

600:                                              ; preds = %597
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

601:                                              ; preds = %597
  %602 = extractvalue { i64, i1 } %598, 0, !nosanitize !8
  %603 = getelementptr inbounds nuw [4 x i8], ptr %201, i64 %507
  %604 = load i32, ptr %603, align 4, !tbaa !4
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds nuw [4 x i8], ptr %201, i64 %602
  %607 = load i32, ptr %606, align 4, !tbaa !4
  %608 = zext i32 %607 to i64
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %202, ptr noundef nonnull %195, i64 noundef %605, i64 noundef %608)
  br label %609

609:                                              ; preds = %601, %595
  %610 = phi i32 [ %247, %595 ], [ 0, %601 ]
  %611 = phi i64 [ %596, %595 ], [ %577, %601 ]
  %612 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %203, ptr noundef %9, ptr noundef %10, ptr noundef %506, i64 noundef %503, ptr noundef %505, i64 noundef %611, i32 noundef %610, i32 noundef 1)
  %613 = icmp ult i64 %612, -119
  br i1 %613, label %615, label %614

614:                                              ; preds = %609
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %745

615:                                              ; preds = %609
  %616 = getelementptr inbounds nuw i8, ptr %505, i64 %611
  %617 = getelementptr inbounds nuw i8, ptr %506, i64 %612
  %618 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %503, i64 %612), !nosanitize !8
  %619 = extractvalue { i64, i1 } %618, 0, !nosanitize !8
  %620 = extractvalue { i64, i1 } %618, 1, !nosanitize !8
  br i1 %620, label %621, label %622, !prof !9, !nosanitize !8

621:                                              ; preds = %615
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

622:                                              ; preds = %615
  %623 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %504, i64 %612), !nosanitize !8
  %624 = extractvalue { i64, i1 } %623, 1, !nosanitize !8
  br i1 %624, label %625, label %626, !prof !9, !nosanitize !8

625:                                              ; preds = %622
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

626:                                              ; preds = %622
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %203, ptr noundef nonnull align 8 dereferenceable(80) %202, i64 80, i1 false), !tbaa.struct !228
  %627 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %507, i64 1), !nosanitize !8
  %628 = extractvalue { i64, i1 } %627, 1, !nosanitize !8
  br i1 %628, label %629, label %630, !prof !9, !nosanitize !8

629:                                              ; preds = %626
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

630:                                              ; preds = %626
  %631 = extractvalue { i64, i1 } %623, 0, !nosanitize !8
  %632 = extractvalue { i64, i1 } %627, 0, !nosanitize !8
  %633 = icmp ugt i64 %632, %442
  br i1 %633, label %634, label %502, !llvm.loop !233

634:                                              ; preds = %630
  %635 = load ptr, ptr %199, align 8, !tbaa !57
  %636 = getelementptr inbounds nuw i8, ptr %635, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %636, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false)
  br label %637

637:                                              ; preds = %634, %446
  %638 = phi i64 [ %447, %446 ], [ %631, %634 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %639 = icmp ult i64 %638, -119
  br i1 %639, label %685, label %745

640:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

641:                                              ; preds = %395
  %642 = add i64 %215, -3
  %643 = getelementptr inbounds nuw i8, ptr %218, i64 3
  %644 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef nonnull %643, i64 noundef %642, ptr noundef %217, i64 noundef %245, i32 noundef 1)
  %645 = icmp ult i64 %644, -119
  br i1 %645, label %646, label %745

646:                                              ; preds = %641
  switch i64 %644, label %669 [
    i64 0, label %647
    i64 1, label %661
  ]

647:                                              ; preds = %646
  %648 = icmp ult i64 %245, 2305843009213693952
  br i1 %648, label %650, label %649, !prof !215, !nosanitize !8

649:                                              ; preds = %647
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

650:                                              ; preds = %647
  %651 = add nuw nsw i64 %245, 3
  %652 = icmp ugt i64 %651, %215
  br i1 %652, label %745, label %653

653:                                              ; preds = %650
  %654 = trunc i64 %245 to i32
  %655 = shl i32 %654, 3
  %656 = or disjoint i32 %655, %247
  %657 = trunc i32 %656 to i16
  store i16 %657, ptr %218, align 1, !tbaa !199
  %658 = lshr i32 %655, 16
  %659 = trunc i32 %658 to i8
  %660 = getelementptr inbounds nuw i8, ptr %218, i64 2
  store i8 %659, ptr %660, align 1, !tbaa !164
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %643, ptr readonly align 1 %217, i64 %245, i1 false)
  br label %685

661:                                              ; preds = %646
  %662 = icmp ult i64 %245, 2305843009213693952
  br i1 %662, label %664, label %663, !prof !215, !nosanitize !8

663:                                              ; preds = %661
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

664:                                              ; preds = %661
  %665 = trunc i64 %245 to i32
  %666 = shl i32 %665, 3
  %667 = or disjoint i32 %247, %666
  %668 = or disjoint i32 %667, 2
  br label %677

669:                                              ; preds = %646
  %670 = icmp ult i64 %644, 2305843009213693952
  br i1 %670, label %672, label %671, !prof !215, !nosanitize !8

671:                                              ; preds = %669
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

672:                                              ; preds = %669
  %673 = trunc i64 %644 to i32
  %674 = shl i32 %673, 3
  %675 = or disjoint i32 %674, %247
  %676 = or disjoint i32 %675, 4
  br label %677

677:                                              ; preds = %672, %664
  %678 = phi i32 [ %668, %664 ], [ %676, %672 ]
  %679 = trunc i32 %678 to i16
  store i16 %679, ptr %218, align 1, !tbaa !199
  %680 = lshr i32 %678, 16
  %681 = trunc i32 %680 to i8
  %682 = getelementptr inbounds nuw i8, ptr %218, i64 2
  store i8 %681, ptr %682, align 1, !tbaa !164
  %683 = add nuw nsw i64 %644, 3
  br label %685

684:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

685:                                              ; preds = %677, %653, %637, %418, %394, %388
  %686 = phi i64 [ %416, %418 ], [ %638, %637 ], [ %651, %653 ], [ %683, %677 ], [ %389, %388 ], [ %389, %394 ]
  %687 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %245, i64 %686), !nosanitize !8
  %688 = extractvalue { i64, i1 } %687, 1, !nosanitize !8
  br i1 %688, label %640, label %689, !prof !9, !nosanitize !8

689:                                              ; preds = %685
  %690 = extractvalue { i64, i1 } %687, 0, !nosanitize !8
  %691 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %219, i64 %690), !nosanitize !8
  %692 = extractvalue { i64, i1 } %691, 1, !nosanitize !8
  br i1 %692, label %684, label %693, !prof !9, !nosanitize !8

693:                                              ; preds = %689
  %694 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %216, i64 %245), !nosanitize !8
  %695 = extractvalue { i64, i1 } %694, 0, !nosanitize !8
  %696 = extractvalue { i64, i1 } %694, 1, !nosanitize !8
  br i1 %696, label %697, label %698, !prof !9, !nosanitize !8

697:                                              ; preds = %693
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

698:                                              ; preds = %693
  %699 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %215, i64 %686), !nosanitize !8
  %700 = extractvalue { i64, i1 } %699, 1, !nosanitize !8
  br i1 %700, label %701, label %702, !prof !9, !nosanitize !8

701:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

702:                                              ; preds = %698
  %703 = extractvalue { i64, i1 } %699, 0, !nosanitize !8
  %704 = getelementptr inbounds nuw i8, ptr %218, i64 %686
  store i32 0, ptr %194, align 8, !tbaa !221
  %705 = icmp eq i64 %695, 0
  br i1 %705, label %706, label %213, !llvm.loop !234

706:                                              ; preds = %702
  %707 = icmp ne i32 %6, 0
  %708 = icmp ugt ptr %704, %41
  %709 = select i1 %707, i1 %708, i1 false
  br i1 %709, label %710, label %711

710:                                              ; preds = %706
  store i32 3, ptr %0, align 8, !tbaa !203
  br label %711

711:                                              ; preds = %710, %706
  %712 = ptrtoint ptr %704 to i64
  %713 = ptrtoint ptr %41 to i64
  %714 = sub i64 %712, %713
  br label %715

715:                                              ; preds = %711, %154
  %716 = phi i64 [ %156, %154 ], [ %714, %711 ]
  %717 = icmp ult i64 %716, -119
  br i1 %717, label %718, label %745

718:                                              ; preds = %715
  %719 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %720 = load i64, ptr %719, align 8, !tbaa !141
  %721 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %720, i64 %4), !nosanitize !8
  %722 = extractvalue { i64, i1 } %721, 1, !nosanitize !8
  br i1 %722, label %723, label %724, !prof !9, !nosanitize !8

723:                                              ; preds = %718
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

724:                                              ; preds = %718
  %725 = extractvalue { i64, i1 } %721, 0, !nosanitize !8
  store i64 %725, ptr %719, align 8, !tbaa !141
  %726 = add i64 %716, %39
  %727 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %728 = load i64, ptr %727, align 8, !tbaa !145
  %729 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %728, i64 %726), !nosanitize !8
  %730 = extractvalue { i64, i1 } %729, 1, !nosanitize !8
  br i1 %730, label %731, label %732, !prof !9, !nosanitize !8

731:                                              ; preds = %724
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

732:                                              ; preds = %724
  %733 = extractvalue { i64, i1 } %729, 0, !nosanitize !8
  store i64 %733, ptr %727, align 8, !tbaa !145
  %734 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %735 = load i64, ptr %734, align 8, !tbaa !119
  %736 = icmp eq i64 %735, 0
  br i1 %736, label %744, label %737

737:                                              ; preds = %732
  %738 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %725, i64 1), !nosanitize !8
  %739 = extractvalue { i64, i1 } %738, 1, !nosanitize !8
  br i1 %739, label %740, label %741, !prof !9, !nosanitize !8

740:                                              ; preds = %737
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

741:                                              ; preds = %737
  %742 = extractvalue { i64, i1 } %738, 0, !nosanitize !8
  %743 = icmp ugt i64 %742, %735
  br i1 %743, label %745, label %744

744:                                              ; preds = %732, %741
  br label %745

745:                                              ; preds = %303, %641, %398, %637, %244, %376, %359, %415, %409, %650, %614, %744, %715, %741, %38, %7, %24
  %746 = phi i64 [ %29, %24 ], [ %39, %38 ], [ -60, %7 ], [ %716, %715 ], [ %726, %744 ], [ -72, %741 ], [ %612, %614 ], [ -70, %650 ], [ -106, %409 ], [ -70, %415 ], [ %343, %359 ], [ -70, %376 ], [ -70, %244 ], [ %638, %637 ], [ %399, %398 ], [ %644, %641 ], [ %304, %303 ]
  ret i64 %746
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local range(i64 0, -9223372036854775807) i64 @ZSTD_getBlockSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #18 {
  %2 = getelementptr i8, ptr %0, i64 244
  %3 = load i32, ptr %2, align 4, !tbaa !4
  %4 = icmp ult i32 %3, 64
  br i1 %4, label %6, label %5, !prof !215, !nosanitize !8

5:                                                ; preds = %1
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i64 392
  %8 = load i64, ptr %7, align 8, !tbaa !235
  %9 = zext nneg i32 %3 to i64
  %10 = shl nuw i64 1, %9
  %11 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %8, i64 %10)
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %8 = icmp ult i32 %7, 64
  br i1 %8, label %10, label %9, !prof !215, !nosanitize !8

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %0, i64 392
  %12 = load i64, ptr %11, align 8, !tbaa !235
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %12, i64 %14)
  %16 = icmp ugt i64 %4, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %19

19:                                               ; preds = %10, %17
  %20 = phi i64 [ %18, %17 ], [ -72, %10 ]
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %8 = icmp ult i32 %7, 64
  br i1 %8, label %10, label %9, !prof !215, !nosanitize !8

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %0, i64 392
  %12 = load i64, ptr %11, align 8, !tbaa !235
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %12, i64 %14)
  %16 = icmp ugt i64 %4, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %19

19:                                               ; preds = %10, %17
  %20 = phi i64 [ %18, %17 ], [ -72, %10 ]
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_loadCEntropy(ptr noundef initializes((2056, 2060)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
  %5 = alloca [32 x i16], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [53 x i16], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [36 x i16], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i32 31, ptr %6, align 4, !tbaa !4
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 1, ptr %18, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store i32 255, ptr %7, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 1, ptr %8, align 4, !tbaa !4
  %19 = ptrtoint ptr %16 to i64
  %20 = add i64 %3, -8
  %21 = call i64 @HUF_readCTable(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef %20, ptr noundef nonnull %8) #36
  %22 = load i32, ptr %8, align 4, !tbaa !4
  %23 = icmp eq i32 %22, 0
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 255
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 2, ptr %18, align 8, !tbaa !150
  br label %28

28:                                               ; preds = %4, %27
  %29 = icmp ult i64 %21, -119
  %30 = getelementptr inbounds nuw i8, ptr %17, i64 %21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br i1 %29, label %31, label %206

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %32 = sub i64 %20, %21
  %33 = call i64 @FSE_readNCount(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %30, i64 noundef %32) #36
  %34 = icmp ult i64 %33, -119
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, ptr %9, align 4, !tbaa !4
  %37 = icmp ugt i32 %36, 8
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %206

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %41 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %40, ptr noundef nonnull %5, i32 noundef 31, i32 noundef %36, ptr noundef %1, i64 noundef 8704) #36
  %42 = icmp ult i64 %41, -119
  %43 = getelementptr inbounds nuw i8, ptr %30, i64 %33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br i1 %42, label %44, label %206

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  store i32 52, ptr %11, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %45 = add i64 %21, %33
  %46 = sub i64 %20, %45
  %47 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %43, i64 noundef %46) #36
  %48 = icmp ult i64 %47, -119
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = load i32, ptr %12, align 4, !tbaa !4
  %51 = icmp ugt i32 %50, 9
  br i1 %51, label %85, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %11, align 4, !tbaa !4
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %55 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %54, ptr noundef nonnull %10, i32 noundef %53, i32 noundef %50, ptr noundef %1, i64 noundef 8704) #36
  %56 = icmp ult i64 %55, -119
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load i32, ptr %11, align 4, !tbaa !4
  %59 = icmp ult i32 %58, 52
  %60 = load <48 x i16>, ptr %10, align 16
  %61 = freeze <48 x i16> %60
  %62 = icmp eq <48 x i16> %61, zeroinitializer
  %63 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %64 = load <4 x i16>, ptr %63, align 16
  %65 = freeze <4 x i16> %64
  %66 = icmp eq <4 x i16> %65, zeroinitializer
  %67 = getelementptr inbounds nuw i8, ptr %10, i64 104
  %68 = load i16, ptr %67, align 8
  %69 = icmp eq i16 %68, 0
  %70 = shufflevector <48 x i1> %62, <48 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %71 = or <4 x i1> %70, %66
  %72 = shufflevector <4 x i1> %71, <4 x i1> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %73 = shufflevector <48 x i1> %72, <48 x i1> %62, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>
  %74 = bitcast <48 x i1> %73 to i48
  %75 = icmp ne i48 %74, 0
  %76 = select i1 %59, i1 true, i1 %75
  %77 = select i1 %76, i1 true, i1 %69
  %78 = select i1 %77, i32 1, i32 2
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 %78, ptr %79, align 8, !tbaa !152
  %80 = getelementptr inbounds nuw i8, ptr %43, i64 %47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  store i32 35, ptr %14, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %81 = ptrtoint ptr %80 to i64
  %82 = sub i64 %19, %81
  %83 = call i64 @FSE_readNCount(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %80, i64 noundef %82) #36
  %84 = icmp ult i64 %83, -119
  br i1 %84, label %86, label %116

85:                                               ; preds = %44, %49, %52
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %206

86:                                               ; preds = %57
  %87 = load i32, ptr %15, align 4, !tbaa !4
  %88 = icmp ugt i32 %87, 9
  br i1 %88, label %116, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %14, align 4, !tbaa !4
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %92 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %91, ptr noundef nonnull %13, i32 noundef %90, i32 noundef %87, ptr noundef %1, i64 noundef 8704) #36
  %93 = icmp ult i64 %92, -119
  br i1 %93, label %94, label %116

94:                                               ; preds = %89
  %95 = load i32, ptr %14, align 4, !tbaa !4
  %96 = icmp ult i32 %95, 35
  %97 = load <32 x i16>, ptr %13, align 16
  %98 = freeze <32 x i16> %97
  %99 = icmp eq <32 x i16> %98, zeroinitializer
  %100 = getelementptr inbounds nuw i8, ptr %13, i64 64
  %101 = load <4 x i16>, ptr %100, align 16
  %102 = freeze <4 x i16> %101
  %103 = icmp eq <4 x i16> %102, zeroinitializer
  %104 = shufflevector <32 x i1> %99, <32 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %105 = or <4 x i1> %104, %103
  %106 = shufflevector <4 x i1> %105, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %107 = shufflevector <32 x i1> %106, <32 x i1> %99, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %108 = bitcast <32 x i1> %107 to i32
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %96, i1 true, i1 %109
  %111 = select i1 %110, i32 1, i32 2
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 %111, ptr %112, align 4, !tbaa !153
  %113 = getelementptr inbounds nuw i8, ptr %80, i64 %83
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 12
  %115 = icmp ugt ptr %114, %16
  br i1 %115, label %206, label %117

116:                                              ; preds = %57, %86, %89
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %206

117:                                              ; preds = %94
  %118 = load i32, ptr %113, align 1, !tbaa !4
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store i32 %118, ptr %119, align 8, !tbaa !4
  %120 = getelementptr inbounds nuw i8, ptr %113, i64 4
  %121 = load i32, ptr %120, align 1, !tbaa !4
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 5620
  store i32 %121, ptr %122, align 4, !tbaa !4
  %123 = getelementptr inbounds nuw i8, ptr %113, i64 8
  %124 = load i32, ptr %123, align 1, !tbaa !4
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store i32 %124, ptr %125, align 8, !tbaa !4
  %126 = ptrtoint ptr %114 to i64
  %127 = sub i64 %19, %126
  %128 = icmp ult i64 %127, 4294836224
  %129 = trunc nuw i64 %127 to i32
  %130 = add nuw i32 %129, 131072
  %131 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %130, i1 true)
  %132 = xor i32 %131, 31
  %133 = select i1 %128, i32 %132, i32 31
  %134 = load i32, ptr %6, align 4, !tbaa !4
  %135 = icmp ult i32 %134, %133
  br i1 %135, label %186, label %136

136:                                              ; preds = %117
  %137 = zext nneg i32 %133 to i64
  %138 = add nuw nsw i64 %137, 1
  %139 = icmp samesign ult i32 %133, 7
  br i1 %139, label %176, label %140

140:                                              ; preds = %136
  %141 = and i64 %138, 56
  %142 = load <8 x i16>, ptr %5, align 16, !tbaa !199
  %143 = freeze <8 x i16> %142
  %144 = icmp eq <8 x i16> %143, zeroinitializer
  %145 = bitcast <8 x i1> %144 to i8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %140
  %148 = icmp eq i64 %141, 8
  br i1 %148, label %174, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %151 = load <8 x i16>, ptr %150, align 16, !tbaa !199
  %152 = freeze <8 x i16> %151
  %153 = icmp eq <8 x i16> %152, zeroinitializer
  %154 = bitcast <8 x i1> %153 to i8
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %149
  %157 = icmp eq i64 %141, 16
  br i1 %157, label %174, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %160 = load <8 x i16>, ptr %159, align 16, !tbaa !199
  %161 = freeze <8 x i16> %160
  %162 = icmp eq <8 x i16> %161, zeroinitializer
  %163 = bitcast <8 x i1> %162 to i8
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %158
  %166 = icmp eq i64 %141, 24
  br i1 %166, label %174, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %169 = load <8 x i16>, ptr %168, align 16, !tbaa !199
  %170 = freeze <8 x i16> %169
  %171 = icmp eq <8 x i16> %170, zeroinitializer
  %172 = bitcast <8 x i1> %171 to i8
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %167, %165, %156, %147
  %175 = icmp eq i64 %138, %141
  br i1 %175, label %186, label %176

176:                                              ; preds = %136, %174
  %177 = phi i64 [ 0, %136 ], [ %141, %174 ]
  br label %181

178:                                              ; preds = %181
  %179 = add nuw nsw i64 %182, 1
  %180 = icmp eq i64 %182, %137
  br i1 %180, label %186, label %181, !llvm.loop !236

181:                                              ; preds = %176, %178
  %182 = phi i64 [ %179, %178 ], [ %177, %176 ]
  %183 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !199
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %178

186:                                              ; preds = %140, %149, %158, %167, %178, %181, %174, %117
  %187 = phi i32 [ 1, %117 ], [ 2, %174 ], [ 1, %181 ], [ 2, %178 ], [ 1, %167 ], [ 1, %158 ], [ 1, %149 ], [ 1, %140 ]
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 %187, ptr %188, align 4, !tbaa !151
  %189 = icmp eq i32 %118, 0
  %190 = zext i32 %118 to i64
  %191 = icmp ult i64 %127, %190
  %192 = or i1 %189, %191
  br i1 %192, label %206, label %193

193:                                              ; preds = %186
  %194 = icmp eq i32 %121, 0
  %195 = zext i32 %121 to i64
  %196 = icmp ult i64 %127, %195
  %197 = or i1 %194, %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %193
  %199 = icmp eq i32 %124, 0
  %200 = zext i32 %124 to i64
  %201 = icmp ult i64 %127, %200
  %202 = or i1 %199, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = ptrtoint ptr %2 to i64
  %205 = sub i64 %126, %204
  br label %206

206:                                              ; preds = %186, %193, %198, %116, %85, %38, %94, %39, %28, %203
  %207 = phi i64 [ -30, %28 ], [ %205, %203 ], [ -30, %38 ], [ -30, %116 ], [ -30, %85 ], [ -30, %39 ], [ -30, %94 ], [ -30, %198 ], [ -30, %193 ], [ -30, %186 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret i64 %207
}

declare i64 @HUF_readCTable(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #16

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 0) i64 @ZSTD_compressBegin_advanced_internal(ptr noundef %0, ptr noundef readnone captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly captures(address_is_null) %5, ptr noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #4 {
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %10 = load <4 x i32>, ptr %9, align 4, !tbaa !4
  %11 = freeze <4 x i32> %10
  %12 = add <4 x i32> %11, <i32 -32, i32 -31, i32 -31, i32 -31>
  %13 = icmp ult <4 x i32> %12, <i32 -22, i32 -25, i32 -25, i32 -30>
  %14 = bitcast <4 x i1> %13 to i4
  %15 = icmp eq i4 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %8
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !4
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %20 = load i32, ptr %19, align 4, !tbaa !4
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %22 = load i32, ptr %21, align 4, !tbaa !4
  %23 = add i32 %22, -3
  %24 = icmp ult i32 %23, 5
  %25 = icmp ult i32 %20, 131073
  %26 = select i1 %24, i1 %25, i1 false
  %27 = add i32 %18, -1
  %28 = icmp ult i32 %27, 9
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = tail call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, i64 noundef %2, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0)
  br label %32

32:                                               ; preds = %16, %8, %30
  %33 = phi i64 [ %31, %30 ], [ -42, %16 ], [ -42, %8 ]
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 0) i64 @ZSTD_compressBegin_internal(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %8 = icmp eq ptr %2, null
  %9 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #36
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %6 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %13, ptr %14, align 8, !tbaa !239
  br i1 %8, label %68, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !240
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %68, label %19

19:                                               ; preds = %15
  %20 = icmp ult i64 %4, 131072
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %17, i64 6), !nosanitize !8
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !8
  br i1 %23, label %24, label %25, !prof !9, !nosanitize !8

24:                                               ; preds = %21
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

25:                                               ; preds = %21
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !8
  %27 = icmp ult i64 %4, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %68, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 244
  %35 = load i32, ptr %34, align 4, !tbaa !241
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 384
  %38 = load i32, ptr %37, align 8, !tbaa !4
  br i1 %36, label %39, label %51

39:                                               ; preds = %33
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !118
  %43 = icmp ugt i64 %4, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

45:                                               ; preds = %39
  %46 = icmp eq i32 %31, 2
  br i1 %46, label %60, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %49 = load i32, ptr %48, align 8, !tbaa !97
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %60

51:                                               ; preds = %33
  %52 = add i32 %38, -3
  %53 = icmp ult i32 %52, 3
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 368
  %56 = load i32, ptr %55, align 8, !tbaa !4
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %59, !prof !9, !nosanitize !8

58:                                               ; preds = %54
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

59:                                               ; preds = %54, %51, %47
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

60:                                               ; preds = %45, %47
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, ptr noundef nonnull readonly align 8 dereferenceable(224) %3, i64 224, i1 false)
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 360
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %63 = load i32, ptr %62, align 4, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %62, ptr noundef nonnull readonly align 4 dereferenceable(28) %61, i64 28, i1 false), !tbaa.struct !78
  store i32 %63, ptr %62, align 4, !tbaa !88
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 6072
  %65 = load i32, ptr %64, align 8, !tbaa !242
  %66 = getelementptr inbounds nuw i8, ptr %7, i64 160
  store i32 %65, ptr %66, align 8, !tbaa !80
  %67 = call fastcc range(i64 -119, 0) i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull align 8 %7, i64 noundef %4, i32 noundef range(i32 0, 2) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %70

68:                                               ; preds = %12, %15, %29
  %69 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %70

70:                                               ; preds = %68, %60
  %71 = phi i64 [ %67, %60 ], [ %69, %68 ]
  ret i64 %71
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 0) i64 @ZSTD_compressBegin_advanced(ptr noundef %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !78
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull readonly align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !79
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 160
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %12 = load i32, ptr %11, align 8, !tbaa !77
  %13 = add i32 %12, -6
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  store i32 2, ptr %10, align 8, !tbaa !80
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 140
  %17 = icmp ugt i32 %12, 6
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  store i32 2, ptr %16, align 4, !tbaa !81
  br label %30

19:                                               ; preds = %5
  %20 = load i32, ptr %3, align 8, !tbaa !72
  %21 = icmp ugt i32 %20, 14
  %22 = select i1 %21, i32 1, i32 2
  store i32 %22, ptr %10, align 8, !tbaa !80
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %23, align 4, !tbaa !81
  br label %30

24:                                               ; preds = %15
  %25 = load i32, ptr %3, align 8, !tbaa !72
  %26 = icmp ugt i32 %25, 16
  %27 = select i1 %26, i32 1, i32 2
  store i32 %27, ptr %16, align 4, !tbaa !81
  %28 = icmp ugt i32 %25, 26
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %19, %18, %24
  %31 = phi i32 [ %29, %24 ], [ 2, %19 ], [ 2, %18 ]
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %31, ptr %32, align 8, !tbaa !82
  %33 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 131072, ptr %33, align 8, !tbaa !83
  %34 = getelementptr inbounds nuw i8, ptr %6, i64 216
  store i32 2, ptr %34, align 8, !tbaa !84
  %35 = load <4 x i32>, ptr %7, align 4, !tbaa !4
  %36 = freeze <4 x i32> %35
  %37 = add <4 x i32> %36, <i32 -32, i32 -31, i32 -31, i32 -31>
  %38 = icmp ult <4 x i32> %37, <i32 -22, i32 -25, i32 -25, i32 -30>
  %39 = bitcast <4 x i1> %38 to i4
  %40 = icmp eq i4 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %30
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 28
  %43 = load i32, ptr %42, align 4, !tbaa !4
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %45 = load i32, ptr %44, align 8, !tbaa !4
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %47 = load i32, ptr %46, align 4, !tbaa !4
  %48 = add i32 %47, -3
  %49 = icmp ult i32 %48, 5
  %50 = icmp ult i32 %45, 131073
  %51 = select i1 %49, i1 %50, i1 false
  %52 = add i32 %43, -1
  %53 = icmp ult i32 %52, 9
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %63

55:                                               ; preds = %41
  %56 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #36
  br label %59

59:                                               ; preds = %55, %57
  %60 = phi i64 [ %58, %57 ], [ 0, %55 ]
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %60, ptr %61, align 8, !tbaa !239
  %62 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, i64 noundef %4, i32 noundef 0)
  br label %63

63:                                               ; preds = %30, %41, %59
  %64 = phi i64 [ %62, %59 ], [ -42, %41 ], [ -42, %30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret i64 %64
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin_usingDict(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin(ptr noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind uwtable
define dso_local void @ZSTD_CCtx_trace(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.ZSTD_Trace, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %5 = load i64, ptr %4, align 8, !tbaa !239
  %6 = icmp ne i64 %5, 0
  %7 = icmp ne ptr @ZSTD_trace_compress_end, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %46

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %11 = load i64, ptr %10, align 8, !tbaa !243
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %15 = load i64, ptr %14, align 8, !tbaa !244
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %19 = load i32, ptr %18, align 4, !tbaa !245
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %17, %13, %9
  %23 = phi i32 [ 1, %13 ], [ 1, %9 ], [ %21, %17 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, i8 0, i64 56, i1 false)
  store i32 10600, ptr %3, align 8, !tbaa !246
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %23, ptr %25, align 4, !tbaa !251
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %27 = load i32, ptr %26, align 8, !tbaa !204
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %27, ptr %28, align 8, !tbaa !252
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %30 = load i64, ptr %29, align 8, !tbaa !253
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %30, ptr %31, align 8, !tbaa !254
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %33 = load i64, ptr %32, align 8, !tbaa !141
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %33, ptr %34, align 8, !tbaa !255
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %36 = load i64, ptr %35, align 8, !tbaa !145
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 %1), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %22
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %41, ptr %42, align 8, !tbaa !256
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %43, ptr %44, align 8, !tbaa !257
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %45, align 8, !tbaa !258
  call void @ZSTD_trace_compress_end(i64 noundef %5, ptr noundef nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %46

46:                                               ; preds = %2, %40
  store i64 0, ptr %4, align 8, !tbaa !239
  ret void
}

declare extern_weak void @ZSTD_trace_compress_end(i64 noundef, ptr noundef) #16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ZSTD_Trace, align 8
  %7 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 1)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %144

9:                                                ; preds = %5
  %10 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %7), !nosanitize !8
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !8
  br i1 %11, label %12, label %13, !prof !9, !nosanitize !8

12:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

13:                                               ; preds = %9
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %16 = load i32, ptr %0, align 8, !tbaa !203
  switch i32 %16, label %58 [
    i32 0, label %144
    i32 1, label %17
    i32 3, label %64
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %20 = load i32, ptr %19, align 4, !tbaa !95
  %21 = icmp sgt i32 %20, 0
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %23 = load i32, ptr %22, align 4, !tbaa !88
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %26, label %25, !prof !215, !nosanitize !8

25:                                               ; preds = %17
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

26:                                               ; preds = %17
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %28 = load i32, ptr %27, align 8, !tbaa !47
  %29 = icmp eq i32 %28, 0
  %30 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %23, i32 10), !nosanitize !8
  %31 = extractvalue { i32, i1 } %30, 0, !nosanitize !8
  %32 = extractvalue { i32, i1 } %30, 1, !nosanitize !8
  br i1 %32, label %33, label %34, !prof !9, !nosanitize !8

33:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %26
  %35 = icmp ult i32 %31, 536870912
  br i1 %35, label %37, label %36, !prof !215, !nosanitize !8

36:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

37:                                               ; preds = %34
  %38 = trunc nuw nsw i32 %31 to i8
  %39 = shl nuw i8 %38, 3
  %40 = select i1 %21, i8 4, i8 0
  %41 = select i1 %29, i8 0, i8 32
  %42 = or disjoint i8 %41, %40
  %43 = icmp ult i64 %14, 18
  br i1 %43, label %144, label %44

44:                                               ; preds = %37
  %45 = load i32, ptr %18, align 8, !tbaa !87
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 -47205080, ptr %15, align 1, !tbaa !4
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i64 [ 4, %47 ], [ 0, %44 ]
  %50 = getelementptr inbounds nuw i8, ptr %15, i64 %49
  store i8 %42, ptr %50, align 1, !tbaa !164
  %51 = select i1 %29, i8 %39, i8 0
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 1
  store i8 %51, ptr %52, align 1, !tbaa !164
  store i32 2, ptr %0, align 8, !tbaa !203
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 2
  store i16 1, ptr %53, align 1, !tbaa !199
  %54 = getelementptr inbounds nuw i8, ptr %50, i64 4
  store i8 0, ptr %54, align 1, !tbaa !164
  %55 = add i64 %14, -5
  %56 = sub nuw i64 %55, %49
  %57 = getelementptr inbounds nuw i8, ptr %50, i64 5
  br label %64

58:                                               ; preds = %13
  %59 = icmp ugt i64 %14, 2
  br i1 %59, label %60, label %144

60:                                               ; preds = %58
  store i16 1, ptr %15, align 1, !tbaa !199
  %61 = getelementptr inbounds nuw i8, ptr %15, i64 2
  store i8 0, ptr %61, align 1, !tbaa !164
  %62 = add i64 %14, -3
  %63 = getelementptr inbounds nuw i8, ptr %15, i64 3
  br label %64

64:                                               ; preds = %60, %48, %13
  %65 = phi ptr [ %57, %48 ], [ %15, %13 ], [ %63, %60 ]
  %66 = phi i64 [ %56, %48 ], [ %14, %13 ], [ %62, %60 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %68 = load i32, ptr %67, align 4, !tbaa !216
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = icmp ugt i64 %66, 3
  br i1 %71, label %72, label %144

72:                                               ; preds = %70
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %74 = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %73) #40
  %75 = trunc i64 %74 to i32
  store i32 %75, ptr %65, align 1, !tbaa !4
  %76 = getelementptr inbounds nuw i8, ptr %65, i64 4
  br label %77

77:                                               ; preds = %64, %72
  %78 = phi ptr [ %76, %72 ], [ %65, %64 ]
  store i32 0, ptr %0, align 8, !tbaa !203
  %79 = ptrtoint ptr %78 to i64
  %80 = ptrtoint ptr %15 to i64
  %81 = sub i64 %79, %80
  %82 = icmp ult i64 %81, -119
  br i1 %82, label %83, label %144

83:                                               ; preds = %77
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %85 = load i64, ptr %84, align 8, !tbaa !119
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %89 = load i64, ptr %88, align 8, !tbaa !141
  %90 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %89, i64 1), !nosanitize !8
  %91 = extractvalue { i64, i1 } %90, 1, !nosanitize !8
  br i1 %91, label %92, label %93, !prof !9, !nosanitize !8

92:                                               ; preds = %87
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

93:                                               ; preds = %87
  %94 = extractvalue { i64, i1 } %90, 0, !nosanitize !8
  %95 = icmp eq i64 %85, %94
  br i1 %95, label %96, label %144

96:                                               ; preds = %93, %83
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %98 = load i64, ptr %97, align 8, !tbaa !239
  %99 = icmp ne i64 %98, 0
  %100 = icmp ne ptr @ZSTD_trace_compress_end, null
  %101 = and i1 %100, %99
  br i1 %101, label %102, label %138

102:                                              ; preds = %96
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %104 = load i64, ptr %103, align 8, !tbaa !243
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %108 = load i64, ptr %107, align 8, !tbaa !244
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %112 = load i32, ptr %111, align 4, !tbaa !245
  %113 = icmp sgt i32 %112, 0
  %114 = zext i1 %113 to i32
  br label %115

115:                                              ; preds = %110, %106, %102
  %116 = phi i32 [ 1, %106 ], [ 1, %102 ], [ %114, %110 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %117 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %117, i8 0, i64 56, i1 false)
  store i32 10600, ptr %6, align 8, !tbaa !246
  %118 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %116, ptr %118, align 4, !tbaa !251
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %120 = load i32, ptr %119, align 8, !tbaa !204
  store i32 %120, ptr %117, align 8, !tbaa !252
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %122 = load i64, ptr %121, align 8, !tbaa !253
  %123 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %122, ptr %123, align 8, !tbaa !254
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %125 = load i64, ptr %124, align 8, !tbaa !141
  %126 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %125, ptr %126, align 8, !tbaa !255
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %128 = load i64, ptr %127, align 8, !tbaa !145
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 %81), !nosanitize !8
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !8
  br i1 %130, label %131, label %132, !prof !9, !nosanitize !8

131:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

132:                                              ; preds = %115
  %133 = extractvalue { i64, i1 } %129, 0, !nosanitize !8
  %134 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %133, ptr %134, align 8, !tbaa !256
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %136 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %135, ptr %136, align 8, !tbaa !257
  %137 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %0, ptr %137, align 8, !tbaa !258
  call void @ZSTD_trace_compress_end(i64 noundef %98, ptr noundef nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %138

138:                                              ; preds = %96, %132
  store i64 0, ptr %97, align 8, !tbaa !239
  %139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %81), !nosanitize !8
  %140 = extractvalue { i64, i1 } %139, 1, !nosanitize !8
  br i1 %140, label %141, label %142, !prof !9, !nosanitize !8

141:                                              ; preds = %138
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

142:                                              ; preds = %138
  %143 = extractvalue { i64, i1 } %139, 0, !nosanitize !8
  br label %144

144:                                              ; preds = %37, %70, %13, %58, %93, %77, %5, %142
  %145 = phi i64 [ %7, %5 ], [ %143, %142 ], [ %81, %77 ], [ -72, %93 ], [ -70, %37 ], [ -70, %70 ], [ -60, %13 ], [ -70, %58 ]
  ret i64 %145
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 0) i64 @ZSTD_compress_advanced(ptr noundef %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %7) local_unnamed_addr #4 {
  %9 = load i32, ptr %7, align 8, !tbaa !72
  %10 = add i32 %9, -32
  %11 = icmp ult i32 %10, -22
  br i1 %11, label %74, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !73
  %15 = add i32 %14, -31
  %16 = icmp ult i32 %15, -25
  br i1 %16, label %74, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %19 = load i32, ptr %18, align 8, !tbaa !74
  %20 = add i32 %19, -31
  %21 = icmp ult i32 %20, -25
  br i1 %21, label %74, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !75
  %25 = add i32 %24, -31
  %26 = icmp ult i32 %25, -30
  br i1 %26, label %74, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %29 = load i32, ptr %28, align 8, !tbaa !76
  %30 = add i32 %29, -8
  %31 = icmp ult i32 %30, -5
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 131072
  %35 = select i1 %31, i1 true, i1 %34
  br i1 %35, label %74, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %38 = load i32, ptr %37, align 8, !tbaa !77
  %39 = add i32 %38, -1
  %40 = icmp ult i32 %39, 9
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %42, i8 0, i64 224, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %43, ptr noundef nonnull readonly align 8 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !78
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %44, ptr noundef nonnull readonly align 4 dereferenceable(12) %45, i64 12, i1 false), !tbaa.struct !79
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %47 = add nsw i32 %38, -6
  %48 = icmp ult i32 %47, -3
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  store i32 2, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 604
  %51 = icmp samesign ugt i32 %38, 6
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  store i32 2, ptr %50, align 4, !tbaa !81
  br label %62

53:                                               ; preds = %41
  %54 = icmp samesign ugt i32 %9, 14
  %55 = select i1 %54, i32 1, i32 2
  store i32 %55, ptr %46, align 8, !tbaa !80
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 2, ptr %56, align 4, !tbaa !81
  br label %62

57:                                               ; preds = %49
  %58 = icmp samesign ugt i32 %9, 16
  %59 = select i1 %58, i32 1, i32 2
  store i32 %59, ptr %50, align 4, !tbaa !81
  %60 = icmp samesign ugt i32 %9, 26
  %61 = select i1 %60, i32 1, i32 2
  br label %62

62:                                               ; preds = %53, %52, %57
  %63 = phi i32 [ %61, %57 ], [ 2, %53 ], [ 2, %52 ]
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %63, ptr %64, align 8, !tbaa !82
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %65, align 8, !tbaa !83
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 2, ptr %66, align 8, !tbaa !84
  %67 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef nonnull %0) #36
  br label %70

70:                                               ; preds = %62, %68
  %71 = phi i64 [ %69, %68 ], [ 0, %62 ]
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %71, ptr %72, align 8, !tbaa !239
  %73 = tail call fastcc range(i64 -119, 0) i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %42, i64 noundef %4, i32 noundef 0)
  br label %74

74:                                               ; preds = %12, %17, %22, %27, %8, %36, %70
  %75 = phi i64 [ %73, %70 ], [ -42, %36 ], [ -42, %8 ], [ -42, %27 ], [ -42, %22 ], [ -42, %17 ], [ -42, %12 ]
  ret i64 %75
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 0) i64 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6, ptr noundef readonly captures(none) %7) local_unnamed_addr #4 {
  %9 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #36
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %11, %10 ], [ 0, %8 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %13, ptr %14, align 8, !tbaa !239
  %15 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef readonly %7, i64 noundef %4, i32 noundef 0)
  ret i64 %15
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compress_usingDict(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressCCtx(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i64 @ZSTD_compress(ptr noundef readnone captures(none) %0, i64 noundef %1, ptr noundef readnone captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #17 {
  %6 = alloca %struct.ZSTD_CCtx_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %7 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #35, !srcloc !10
  %8 = icmp eq i32 %7, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %6, i8 0, i64 5280, i1 false)
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #35, !srcloc !11
  %11 = icmp ugt i32 %7, 6
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #35, !srcloc !12
  %14 = extractvalue { i32, i32, i32 } %13, 1
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = lshr i32 %14, 8
  %19 = and i32 %18, 1
  br label %20

20:                                               ; preds = %5, %9, %12, %17
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ], [ 0, %9 ], [ 0, %5 ]
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %21, ptr %22, align 8, !tbaa !13
  call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %6)
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @ZSTD_estimateCDictSize_advanced(i64 noundef %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %6, -3
  %8 = load i32, ptr %1, align 8
  %9 = icmp ult i32 %8, 15
  %10 = select i1 %7, i1 true, i1 %9
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !73
  %13 = icmp ult i32 %12, 64
  br i1 %13, label %15, label %14, !prof !215, !nosanitize !8

14:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

15:                                               ; preds = %3
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !74
  %18 = icmp ult i32 %17, 64
  br i1 %18, label %20, label %19, !prof !215, !nosanitize !8

19:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %15
  %21 = zext nneg i32 %12 to i64
  %22 = zext nneg i32 %17 to i64
  %23 = shl nuw i64 1, %22
  %24 = shl i64 4, %21
  %25 = icmp samesign ugt i32 %12, 61
  br i1 %25, label %26, label %27, !prof !9, !nosanitize !8

26:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

27:                                               ; preds = %20
  %28 = icmp samesign ult i32 %17, 62
  br i1 %28, label %30, label %29, !prof !215, !nosanitize !8

29:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

30:                                               ; preds = %27
  %31 = shl nuw i64 4, %22
  %32 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %24, i64 %31), !nosanitize !8
  %33 = extractvalue { i64, i1 } %32, 1, !nosanitize !8
  br i1 %33, label %34, label %35, !prof !9, !nosanitize !8

34:                                               ; preds = %30
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

35:                                               ; preds = %30
  %36 = extractvalue { i64, i1 } %32, 0, !nosanitize !8
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 128), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %35
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %35
  %41 = add nuw i64 %23, 63
  %42 = and i64 %41, -64
  %43 = select i1 %10, i64 0, i64 %42
  %44 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  %45 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %44, i64 %43), !nosanitize !8
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !8
  br i1 %46, label %47, label %48, !prof !9, !nosanitize !8

47:                                               ; preds = %40
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

48:                                               ; preds = %40
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !8
  %50 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %49, i64 14784), !nosanitize !8
  %51 = extractvalue { i64, i1 } %50, 0, !nosanitize !8
  %52 = extractvalue { i64, i1 } %50, 1, !nosanitize !8
  br i1 %52, label %53, label %54, !prof !9, !nosanitize !8

53:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

54:                                               ; preds = %48
  %55 = icmp eq i32 %2, 1
  br i1 %55, label %63, label %56

56:                                               ; preds = %54
  %57 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 7), !nosanitize !8
  %58 = extractvalue { i64, i1 } %57, 1, !nosanitize !8
  br i1 %58, label %59, label %60, !prof !9, !nosanitize !8

59:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

60:                                               ; preds = %56
  %61 = extractvalue { i64, i1 } %57, 0, !nosanitize !8
  %62 = and i64 %61, -8
  br label %63

63:                                               ; preds = %54, %60
  %64 = phi i64 [ %62, %60 ], [ 0, %54 ]
  %65 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %51, i64 %64), !nosanitize !8
  %66 = extractvalue { i64, i1 } %65, 1, !nosanitize !8
  br i1 %66, label %67, label %68, !prof !9, !nosanitize !8

67:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

68:                                               ; preds = %63
  %69 = extractvalue { i64, i1 } %65, 0, !nosanitize !8
  ret i64 %69
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCDictSize(i64 noundef %0, i32 noundef %1) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @ZSTD_sizeof_CDict(ptr noundef readonly captures(address) %0) local_unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 6080
  %8 = getelementptr i8, ptr %0, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %12), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %3
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !8
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi i64 [ %17, %16 ], [ 0, %1 ]
  ret i64 %19
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noalias noundef ptr @ZSTD_createCDict_advanced(ptr noundef readnone captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #18 {
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %7, null
  %11 = icmp eq ptr %9, null
  %12 = xor i1 %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

14:                                               ; preds = %6
  ret ptr null
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noalias noundef ptr @ZSTD_createCDict_advanced2(ptr noundef readnone captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #18 {
  %7 = load ptr, ptr %5, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  %12 = xor i1 %8, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %15 = load i32, ptr %14, align 8, !tbaa !4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

19:                                               ; preds = %6
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCDict(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 6048
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 6056
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %3, %11
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %17 = icmp eq ptr %9, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %5, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  tail call void %5(ptr noundef %7, ptr noundef nonnull %9) #36, !inline_history !259
  br label %21

21:                                               ; preds = %15, %20
  br i1 %16, label %23, label %27

22:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %9) #36
  br i1 %16, label %26, label %27

23:                                               ; preds = %21
  %24 = icmp eq ptr %5, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %5(ptr noundef %7, ptr noundef nonnull %0) #36, !inline_history !64
  br label %27

26:                                               ; preds = %22, %23
  tail call void @free(ptr noundef nonnull %0) #36
  br label %27

27:                                               ; preds = %21, %22, %25, %26, %1
  ret i64 0
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noalias noundef nonnull ptr @ZSTD_createCDict(ptr noundef readnone captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noalias noundef nonnull ptr @ZSTD_createCDict_byReference(ptr noundef readnone captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ZSTD_initStaticCDict(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %6) local_unnamed_addr #4 {
  %8 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %9 = alloca { i32, i32, i32, i32, i32, i32 }, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = add i32 %11, -6
  %13 = icmp ult i32 %12, -3
  %14 = load i32, ptr %6, align 8
  %15 = icmp ult i32 %14, 15
  %16 = select i1 %13, i1 true, i1 %15
  %17 = select i1 %16, i32 2, i32 1
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = icmp ult i32 %19, 64
  br i1 %20, label %22, label %21, !prof !215, !nosanitize !8

21:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

22:                                               ; preds = %7
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %24 = load i32, ptr %23, align 8, !tbaa !74
  %25 = icmp ult i32 %24, 64
  br i1 %25, label %27, label %26, !prof !215, !nosanitize !8

26:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

27:                                               ; preds = %22
  %28 = zext nneg i32 %19 to i64
  %29 = zext nneg i32 %24 to i64
  %30 = shl nuw i64 1, %29
  %31 = shl i64 4, %28
  %32 = icmp samesign ugt i32 %19, 61
  br i1 %32, label %33, label %34, !prof !9, !nosanitize !8

33:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %27
  %35 = icmp samesign ult i32 %24, 62
  br i1 %35, label %37, label %36, !prof !215, !nosanitize !8

36:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

37:                                               ; preds = %34
  %38 = shl nuw i64 4, %29
  %39 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %38), !nosanitize !8
  %40 = extractvalue { i64, i1 } %39, 1, !nosanitize !8
  br i1 %40, label %41, label %42, !prof !9, !nosanitize !8

41:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

42:                                               ; preds = %37
  %43 = extractvalue { i64, i1 } %39, 0, !nosanitize !8
  %44 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %43, i64 128), !nosanitize !8
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !8
  br i1 %45, label %46, label %47, !prof !9, !nosanitize !8

46:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

47:                                               ; preds = %42
  %48 = add nuw i64 %30, 63
  %49 = and i64 %48, -64
  %50 = select i1 %16, i64 0, i64 %49
  %51 = extractvalue { i64, i1 } %44, 0, !nosanitize !8
  %52 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %51, i64 %50), !nosanitize !8
  %53 = extractvalue { i64, i1 } %52, 1, !nosanitize !8
  br i1 %53, label %54, label %55, !prof !9, !nosanitize !8

54:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

55:                                               ; preds = %47
  %56 = extractvalue { i64, i1 } %52, 0, !nosanitize !8
  %57 = icmp eq i32 %4, 1
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 7), !nosanitize !8
  %60 = extractvalue { i64, i1 } %59, 1, !nosanitize !8
  br i1 %60, label %61, label %62, !prof !9, !nosanitize !8

61:                                               ; preds = %58
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

62:                                               ; preds = %58
  %63 = extractvalue { i64, i1 } %59, 0, !nosanitize !8
  %64 = and i64 %63, -8
  %65 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 6080)
  br label %66

66:                                               ; preds = %55, %62
  %67 = phi { i64, i1 } [ %65, %62 ], [ { i64 6080, i1 false }, %55 ]
  %68 = extractvalue { i64, i1 } %67, 1, !nosanitize !8
  br i1 %68, label %69, label %70, !prof !9, !nosanitize !8

69:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

70:                                               ; preds = %66
  %71 = extractvalue { i64, i1 } %67, 0, !nosanitize !8
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 8704), !nosanitize !8
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !8
  br i1 %73, label %74, label %75, !prof !9, !nosanitize !8

74:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

75:                                               ; preds = %70
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !8
  %77 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %76, i64 %56), !nosanitize !8
  %78 = extractvalue { i64, i1 } %77, 0, !nosanitize !8
  %79 = extractvalue { i64, i1 } %77, 1, !nosanitize !8
  br i1 %79, label %80, label %81, !prof !9, !nosanitize !8

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

81:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %82 = ptrtoint ptr %0 to i64
  %83 = and i64 %82, 7
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %331

85:                                               ; preds = %81
  %86 = icmp samesign ult i64 %1, 6080
  %87 = icmp eq ptr %0, null
  %88 = or i1 %87, %86
  br i1 %88, label %331, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %92 = ptrtoint ptr %90 to i64
  %93 = and i64 %92, 63
  %94 = sub nsw i64 0, %93
  %95 = getelementptr inbounds i8, ptr %90, i64 %94
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %96, align 8, !tbaa !51
  %97 = getelementptr i8, ptr %0, i64 40
  store ptr %90, ptr %97, align 8, !tbaa !51
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %91, ptr %98, align 8, !tbaa !51
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %91, ptr %99, align 8, !tbaa !51
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %91, ptr %100, align 8, !tbaa !51
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %95, ptr %101, align 8, !tbaa !51
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %95, ptr %102, align 8, !tbaa !51
  %103 = getelementptr i8, ptr %0, i64 88
  store i8 0, ptr %103, align 8, !tbaa !164
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %104, align 4, !tbaa !4
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %105, align 8, !tbaa !4
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %106, align 4, !tbaa !4
  %107 = icmp ult i64 %1, %78
  br i1 %107, label %331, label %108

108:                                              ; preds = %89
  %109 = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %109, i8 0, i64 112, i1 false)
  %110 = getelementptr inbounds nuw i8, ptr %8, i64 164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %110, i8 0, i64 60, i1 false)
  %111 = load i32, ptr %6, align 8, !tbaa !4
  %112 = zext i32 %111 to i64
  %113 = shl nuw i64 %112, 32
  %114 = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(24) %114, i64 24, i1 false), !tbaa.struct !260
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 6072
  store i32 %17, ptr %115, align 8, !tbaa !242
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 6068
  store i32 0, ptr %116, align 4, !tbaa !261
  store i64 %113, ptr %8, align 8
  %117 = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %117, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %118 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %118, align 8
  %119 = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i64 0, ptr %119, align 4
  %120 = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i32 %17, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %124 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %123, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false)
  %125 = getelementptr inbounds nuw i8, ptr %8, i64 120
  %126 = load i32, ptr %125, align 8, !tbaa !100
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 %126, ptr %127, align 4, !tbaa !241
  %128 = icmp ne i32 %4, 1
  %129 = icmp ne ptr %2, null
  %130 = and i1 %129, %128
  %131 = icmp ne i64 %3, 0
  %132 = and i1 %131, %130
  br i1 %132, label %134, label %133

133:                                              ; preds = %108
  store ptr %2, ptr %0, align 8, !tbaa !262
  br label %146

134:                                              ; preds = %108
  %135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 7), !nosanitize !8
  %136 = extractvalue { i64, i1 } %135, 1, !nosanitize !8
  br i1 %136, label %137, label %138, !prof !9, !nosanitize !8

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

138:                                              ; preds = %134
  %139 = extractvalue { i64, i1 } %135, 0, !nosanitize !8
  %140 = and i64 %139, -8
  %141 = add nuw nsw i64 %140, 6080
  %142 = icmp samesign ugt i64 %141, %1
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i8 1, ptr %103, align 8, !tbaa !53
  br label %329

144:                                              ; preds = %138
  %145 = getelementptr inbounds nuw i8, ptr %91, i64 %140
  store ptr %145, ptr %98, align 8, !tbaa !54
  store ptr %145, ptr %99, align 8, !tbaa !55
  store ptr %145, ptr %100, align 8, !tbaa !56
  store ptr %91, ptr %0, align 8, !tbaa !262
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %91, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %146

146:                                              ; preds = %133, %144
  %147 = phi ptr [ %145, %144 ], [ %91, %133 ]
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %148, align 8, !tbaa !240
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %5, ptr %149, align 8, !tbaa !263
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 8704
  %151 = icmp ugt ptr %150, %90
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i8 1, ptr %103, align 8, !tbaa !53
  br label %154

153:                                              ; preds = %146
  store ptr %150, ptr %98, align 8, !tbaa !54
  br label %154

154:                                              ; preds = %153, %152
  %155 = phi i8 [ 1, %152 ], [ 0, %153 ]
  %156 = phi ptr [ %147, %152 ], [ %150, %153 ]
  %157 = phi ptr [ null, %152 ], [ %147, %153 ]
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %157, ptr %158, align 8, !tbaa !264
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 6024
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %160, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 2464
  store i32 0, ptr %161, align 8, !tbaa !150
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 6012
  store i32 0, ptr %162, align 4, !tbaa !151
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 6016
  store i32 0, ptr %163, align 8, !tbaa !152
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 6020
  store i32 0, ptr %164, align 4, !tbaa !153
  %165 = getelementptr inbounds nuw i8, ptr %8, i64 28
  %166 = icmp eq i32 %126, 0
  %167 = load i32, ptr %165, align 4, !tbaa !77
  br i1 %166, label %168, label %174

168:                                              ; preds = %154
  %169 = icmp eq i32 %167, 1
  br i1 %169, label %183, label %170

170:                                              ; preds = %168
  %171 = add i32 %167, -6
  %172 = icmp ult i32 %171, -3
  %173 = or i1 %172, %16
  br i1 %173, label %174, label %183

174:                                              ; preds = %170, %154
  %175 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %176 = load i32, ptr %175, align 8, !tbaa !73
  %177 = icmp ult i32 %176, 64
  br i1 %177, label %179, label %178, !prof !215, !nosanitize !8

178:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

179:                                              ; preds = %174
  %180 = zext nneg i32 %176 to i64
  %181 = shl nuw i64 1, %180
  %182 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %181, i64 4)
  br label %183

183:                                              ; preds = %179, %170, %168
  %184 = phi { i64, i1 } [ %182, %179 ], [ zeroinitializer, %170 ], [ zeroinitializer, %168 ]
  %185 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %186 = load i32, ptr %185, align 4, !tbaa !74
  %187 = icmp ult i32 %186, 64
  br i1 %187, label %189, label %188, !prof !215, !nosanitize !8

188:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

189:                                              ; preds = %183
  %190 = zext nneg i32 %186 to i64
  %191 = shl nuw i64 1, %190
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %192, align 8
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str, ptr %193, align 8, !tbaa !210
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @.str, ptr %194, align 8, !tbaa !207
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 132
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %122, align 8, !tbaa !206
  store ptr %156, ptr %100, align 8, !tbaa !56
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %197, align 8, !tbaa !265
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 0, ptr %198, align 4, !tbaa !266
  store i32 2, ptr %196, align 4, !tbaa !208
  store i32 2, ptr %195, align 8, !tbaa !209
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 2, ptr %199, align 4, !tbaa !211
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %200, align 8, !tbaa !267
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %201, align 4, !tbaa !268
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %202, align 8, !tbaa !269
  store ptr %156, ptr %99, align 8, !tbaa !55
  %203 = icmp samesign ult i32 %186, 62
  br i1 %203, label %205, label %204, !prof !215, !nosanitize !8

204:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

205:                                              ; preds = %189
  %206 = shl nuw i64 4, %190
  store ptr %95, ptr %102, align 8, !tbaa !270
  %207 = ptrtoint ptr %156 to i64
  %208 = sub i64 0, %207
  %209 = and i64 %208, 63
  %210 = getelementptr inbounds nuw i8, ptr %156, i64 %209
  %211 = icmp ugt ptr %210, %90
  br i1 %211, label %227, label %212

212:                                              ; preds = %205
  store ptr %210, ptr %98, align 8, !tbaa !54
  store ptr %210, ptr %99, align 8, !tbaa !55
  %213 = icmp eq i64 %209, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %212
  store ptr %210, ptr %100, align 8, !tbaa !56
  br label %215

215:                                              ; preds = %212, %214
  %216 = phi ptr [ %210, %214 ], [ %156, %212 ]
  store i32 1, ptr %105, align 8, !tbaa !271
  %217 = getelementptr inbounds nuw i8, ptr %210, i64 %206
  %218 = icmp ugt ptr %217, %95
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store i8 1, ptr %103, align 8, !tbaa !53
  br label %221

220:                                              ; preds = %215
  store ptr %217, ptr %99, align 8, !tbaa !55
  br label %221

221:                                              ; preds = %220, %219
  %222 = phi i8 [ %155, %220 ], [ 1, %219 ]
  %223 = phi ptr [ %217, %220 ], [ %210, %219 ]
  %224 = phi ptr [ %210, %220 ], [ null, %219 ]
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %224, ptr %225, align 8, !tbaa !272
  %226 = extractvalue { i64, i1 } %184, 1, !nosanitize !8
  br i1 %226, label %230, label %231, !prof !9, !nosanitize !8

227:                                              ; preds = %205
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %228, align 8, !tbaa !272
  %229 = extractvalue { i64, i1 } %184, 1, !nosanitize !8
  br i1 %229, label %230, label %237, !prof !9, !nosanitize !8

230:                                              ; preds = %227, %221
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

231:                                              ; preds = %221
  %232 = extractvalue { i64, i1 } %184, 0
  %233 = getelementptr inbounds nuw i8, ptr %223, i64 %232
  %234 = icmp ugt ptr %233, %95
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store i8 1, ptr %103, align 8, !tbaa !53
  br label %239

236:                                              ; preds = %231
  store ptr %233, ptr %99, align 8, !tbaa !55
  br label %239

237:                                              ; preds = %227
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %238, align 8, !tbaa !273
  br label %248

239:                                              ; preds = %236, %235
  %240 = phi i8 [ 1, %235 ], [ %222, %236 ]
  %241 = phi ptr [ %223, %235 ], [ %233, %236 ]
  %242 = phi ptr [ null, %235 ], [ %223, %236 ]
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %242, ptr %243, align 8, !tbaa !273
  %244 = icmp ugt ptr %241, %95
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  store i8 1, ptr %103, align 8, !tbaa !53
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %246, align 8, !tbaa !274
  br label %329

247:                                              ; preds = %239
  store ptr %241, ptr %99, align 8, !tbaa !55
  br label %248

248:                                              ; preds = %247, %237
  %249 = phi i8 [ %240, %247 ], [ %155, %237 ]
  %250 = phi ptr [ %241, %247 ], [ %156, %237 ]
  %251 = phi ptr [ %216, %247 ], [ %156, %237 ]
  %252 = phi ptr [ %241, %247 ], [ null, %237 ]
  %253 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %252, ptr %253, align 8, !tbaa !274
  %254 = icmp eq i8 %249, 0
  br i1 %254, label %255, label %329

255:                                              ; preds = %248
  %256 = icmp ult ptr %251, %250
  br i1 %256, label %257, label %265

257:                                              ; preds = %255
  %258 = ptrtoint ptr %250 to i64
  %259 = ptrtoint ptr %251 to i64
  %260 = sub i64 %258, %259
  tail call void @llvm.memset.p0.i64(ptr align 1 %251, i8 0, i64 %260, i1 false)
  %261 = load ptr, ptr %100, align 8, !tbaa !56
  %262 = load ptr, ptr %99, align 8, !tbaa !55
  %263 = icmp ult ptr %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  store ptr %262, ptr %100, align 8, !tbaa !56
  br label %265

265:                                              ; preds = %264, %257, %255
  %266 = phi ptr [ %251, %255 ], [ %261, %257 ], [ %262, %264 ]
  %267 = phi ptr [ %250, %255 ], [ %262, %257 ], [ %262, %264 ]
  %268 = add i32 %167, -6
  %269 = icmp ult i32 %268, -3
  %270 = or i1 %16, %269
  br i1 %270, label %317, label %271

271:                                              ; preds = %265
  %272 = add nuw i64 %191, 63
  %273 = and i64 %272, -64
  %274 = load i32, ptr %105, align 8, !tbaa !271
  %275 = icmp ult i32 %274, 2
  br i1 %275, label %276, label %295

276:                                              ; preds = %271
  %277 = icmp eq i32 %274, 0
  br i1 %277, label %278, label %292

278:                                              ; preds = %276
  %279 = load ptr, ptr %98, align 8, !tbaa !54
  store ptr %279, ptr %100, align 8, !tbaa !56
  %280 = load ptr, ptr %97, align 8, !tbaa !62
  %281 = ptrtoint ptr %280 to i64
  %282 = and i64 %281, 63
  %283 = sub nsw i64 0, %282
  %284 = getelementptr inbounds i8, ptr %280, i64 %283
  store ptr %284, ptr %102, align 8, !tbaa !270
  %285 = ptrtoint ptr %279 to i64
  %286 = sub i64 0, %285
  %287 = and i64 %286, 63
  %288 = getelementptr inbounds nuw i8, ptr %279, i64 %287
  %289 = icmp ule ptr %288, %280
  tail call void @llvm.assume(i1 %289)
  store ptr %288, ptr %98, align 8, !tbaa !54
  store ptr %288, ptr %99, align 8, !tbaa !55
  %290 = icmp eq i64 %287, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %278
  store ptr %288, ptr %100, align 8, !tbaa !56
  br label %292

292:                                              ; preds = %291, %278, %276
  %293 = phi ptr [ %288, %291 ], [ %279, %278 ], [ %266, %276 ]
  %294 = phi ptr [ %288, %291 ], [ %288, %278 ], [ %267, %276 ]
  store i32 2, ptr %105, align 8, !tbaa !271
  br label %295

295:                                              ; preds = %292, %271
  %296 = phi ptr [ %266, %271 ], [ %293, %292 ]
  %297 = phi ptr [ %267, %271 ], [ %294, %292 ]
  %298 = load ptr, ptr %101, align 8, !tbaa !275
  %299 = sub i64 0, %273
  %300 = getelementptr inbounds i8, ptr %298, i64 %299
  %301 = icmp uge ptr %300, %297
  tail call void @llvm.assume(i1 %301)
  %302 = icmp ult ptr %300, %296
  br i1 %302, label %303, label %304

303:                                              ; preds = %295
  store ptr %300, ptr %100, align 8, !tbaa !56
  br label %304

304:                                              ; preds = %303, %295
  store ptr %300, ptr %101, align 8, !tbaa !275
  %305 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %300, ptr %305, align 8, !tbaa !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %300, i8 0, i64 %191, i1 false)
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %306, align 8, !tbaa !277
  %307 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %308 = load i32, ptr %307, align 8, !tbaa !75
  %309 = tail call i32 @llvm.umax.i32(i32 %308, i32 4)
  %310 = tail call i32 @llvm.umin.i32(i32 %309, i32 6)
  %311 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %310), !nosanitize !8
  %312 = extractvalue { i32, i1 } %311, 1, !nosanitize !8
  br i1 %312, label %313, label %314, !prof !9, !nosanitize !8

313:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

314:                                              ; preds = %304
  %315 = extractvalue { i32, i1 } %311, 0, !nosanitize !8
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %315, ptr %316, align 4, !tbaa !278
  br label %317

317:                                              ; preds = %314, %265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %123, ptr noundef nonnull readonly align 4 dereferenceable(28) %124, i64 28, i1 false), !tbaa.struct !78
  %318 = load i8, ptr %103, align 8, !tbaa !53
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %317
  store i32 3, ptr %120, align 4, !tbaa !46
  store i32 1, ptr %118, align 8, !tbaa !47
  %321 = load ptr, ptr %0, align 8, !tbaa !262
  %322 = load i64, ptr %148, align 8, !tbaa !240
  %323 = load ptr, ptr %158, align 8, !tbaa !264
  %324 = call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef nonnull %159, ptr noundef nonnull %122, ptr noundef null, ptr noundef nonnull %96, ptr noundef nonnull align 8 %8, ptr noundef %321, i64 noundef %322, i32 noundef %5, i32 noundef 1, i32 noundef 1, ptr noundef %323)
  %325 = icmp ult i64 %324, -119
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  %327 = trunc nuw i64 %324 to i32
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 6064
  store i32 %327, ptr %328, align 8, !tbaa !279
  br label %329

329:                                              ; preds = %245, %143, %248, %317, %320, %326
  %330 = phi ptr [ %0, %326 ], [ null, %248 ], [ null, %317 ], [ null, %143 ], [ null, %320 ], [ null, %245 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %331

331:                                              ; preds = %85, %329, %89, %81
  %332 = phi ptr [ null, %81 ], [ null, %89 ], [ %330, %329 ], [ null, %85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret ptr %332
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getCParamsFromCDict(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromCDict(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 6064
  %5 = load i32, ptr %4, align 8, !tbaa !279
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #18 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %5
  %8 = icmp ult i64 %4, 131072
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !240
  %12 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 6), !nosanitize !8
  %13 = extractvalue { i64, i1 } %12, 1, !nosanitize !8
  br i1 %13, label %14, label %15, !prof !9, !nosanitize !8

14:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

15:                                               ; preds = %9
  %16 = extractvalue { i64, i1 } %12, 0, !nosanitize !8
  %17 = icmp ult i64 %4, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

19:                                               ; preds = %15, %7
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %5
  ret i64 -32
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin_usingCDict(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compress_usingCDict_advanced(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readonly captures(address_is_null) %5, ptr noundef readonly byval(%struct.ZSTD_frameParameters) align 8 captures(none) %6) local_unnamed_addr #18 {
  %8 = icmp eq ptr %5, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %7
  %10 = icmp ult i64 %4, 131072
  br i1 %10, label %21, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !240
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 6), !nosanitize !8
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !8
  br i1 %15, label %16, label %17, !prof !9, !nosanitize !8

16:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

17:                                               ; preds = %11
  %18 = extractvalue { i64, i1 } %14, 0, !nosanitize !8
  %19 = icmp ult i64 %4, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

21:                                               ; preds = %17, %9
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

22:                                               ; preds = %7
  ret i64 -32
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compress_usingCDict(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readonly captures(address_is_null) %5) local_unnamed_addr #18 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  %9 = icmp ult i64 %4, 131072
  br i1 %9, label %20, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !240
  %13 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 6), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %10
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !8
  %18 = icmp ult i64 %4, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %16, %8
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

21:                                               ; preds = %6
  ret i64 -32
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ZSTD_createCStream() local_unnamed_addr #4 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #35, !srcloc !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #35, !srcloc !11
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #35, !srcloc !12
  %11 = extractvalue { i32, i32, i32 } %10, 1
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = lshr i32 %11, 8
  %16 = and i32 %15, 1
  br label %17

17:                                               ; preds = %14, %9, %6, %3
  %18 = phi i32 [ 0, %9 ], [ %16, %14 ], [ 0, %6 ], [ 0, %3 ]
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %18, ptr %19, align 8, !tbaa !13
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 3, ptr %21, align 4, !tbaa !46
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %22, align 8, !tbaa !47
  br label %23

23:                                               ; preds = %0, %17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCStream_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %4, null
  %9 = xor i1 %7, %8
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  br i1 %7, label %13, label %11

11:                                               ; preds = %10
  %12 = tail call ptr %2(ptr noundef %6, i64 noundef 5280) #36, !inline_history !280
  br label %15

13:                                               ; preds = %10
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #37
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %16, i8 0, i64 5280, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 896
  store ptr %2, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 904
  store ptr %4, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 912
  store ptr %6, ptr %21, align 8
  %22 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #35, !srcloc !10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #35, !srcloc !11
  %26 = icmp ugt i32 %22, 6
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #35, !srcloc !12
  %29 = extractvalue { i32, i32, i32 } %28, 1
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = lshr i32 %29, 8
  %34 = and i32 %33, 1
  br label %35

35:                                               ; preds = %32, %27, %24, %18
  %36 = phi i32 [ 0, %27 ], [ %34, %32 ], [ 0, %24 ], [ 0, %18 ]
  %37 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %36, ptr %37, align 8, !tbaa !13
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %38, i8 0, i64 224, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 3, ptr %39, align 4, !tbaa !46
  %40 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 1, ptr %40, align 8, !tbaa !47
  br label %41

41:                                               ; preds = %1, %15, %35
  %42 = phi ptr [ null, %1 ], [ %16, %35 ], [ null, %15 ]
  ret ptr %42
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticCStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCStream(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr i8, ptr %0, i64 904
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i64 912
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = icmp eq ptr %18, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #36, !inline_history !281
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #36
  br label %27

27:                                               ; preds = %26, %25, %15
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #36, !inline_history !282
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #36
  br label %34

34:                                               ; preds = %1, %3, %27, %31, %33
  %35 = phi i64 [ -64, %3 ], [ 0, %1 ], [ 0, %27 ], [ 0, %31 ], [ 0, %33 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_CStreamInSize() local_unnamed_addr #8 {
  ret i64 131072
}

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local range(i64 8, 0) i64 @ZSTD_CStreamOutSize() local_unnamed_addr #0 {
  %1 = freeze { i64, i1 } { i64 131584, i1 false }
  %2 = extractvalue { i64, i1 } %1, 1, !nosanitize !8
  br i1 %2, label %3, label %4, !prof !9, !nosanitize !8

3:                                                ; preds = %0
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

4:                                                ; preds = %0
  %5 = extractvalue { i64, i1 } %1, 0, !nosanitize !8
  %6 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 3)
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %8, label %9, !prof !9, !nosanitize !8

8:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

9:                                                ; preds = %4
  %10 = icmp ne i64 %5, 0
  %11 = extractvalue { i64, i1 } %6, 0
  %12 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 4)
  %13 = extractvalue { i64, i1 } %12, 1
  %14 = and i1 %10, %13
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %9
  %17 = extractvalue { i64, i1 } %12, 0
  %18 = select i1 %10, i64 %17, i64 -65
  ret i64 %18
}

; Function Attrs: nounwind memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_resetCStream(ptr noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #21 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !85
  %7 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 1), !nosanitize !8
  %8 = extractvalue { i64, i1 } %7, 1, !nosanitize !8
  br i1 %8, label %9, label %10, !prof !9, !nosanitize !8

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %12 = extractvalue { i64, i1 } %7, 0, !nosanitize !8
  store i64 %12, ptr %11, align 8, !tbaa !119
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_internal(ptr noundef captures(none) initializes((3640, 3644)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #4 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %7, align 8, !tbaa !85
  %8 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 1), !nosanitize !8
  %9 = extractvalue { i64, i1 } %8, 1, !nosanitize !8
  br i1 %9, label %10, label %11, !prof !9, !nosanitize !8

10:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %13 = extractvalue { i64, i1 } %8, 0, !nosanitize !8
  store i64 %13, ptr %12, align 8, !tbaa !119
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %14, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !117
  %15 = icmp eq ptr %1, null
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  br i1 %15, label %40, label %16

16:                                               ; preds = %11
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %20 = load i64, ptr %19, align 8, !tbaa !52
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i64 912
  %28 = load ptr, ptr %27, align 8
  %29 = tail call ptr %24(ptr noundef %28, i64 noundef %2) #36, !inline_history !283
  br label %32

30:                                               ; preds = %22
  %31 = tail call noalias ptr @malloc(i64 noundef %2) #37
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi ptr [ %29, %26 ], [ %31, %30 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %33, ptr %36, align 8, !tbaa !120
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %33, ptr %37, align 8, !tbaa !121
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %38, align 8, !tbaa !122
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %39, align 8, !tbaa !123
  br label %42

40:                                               ; preds = %11
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %3, ptr %41, align 8, !tbaa !116
  br label %42

42:                                               ; preds = %32, %18, %35, %16, %40
  %43 = phi i64 [ 0, %35 ], [ 0, %40 ], [ 0, %16 ], [ -64, %18 ], [ -64, %32 ]
  ret i64 %43
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict_advanced(ptr noundef captures(none) initializes((3640, 3644)) %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !85
  %7 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 1), !nosanitize !8
  %8 = extractvalue { i64, i1 } %7, 1, !nosanitize !8
  br i1 %8, label %9, label %10, !prof !9, !nosanitize !8

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %12 = extractvalue { i64, i1 } %7, 0, !nosanitize !8
  store i64 %12, ptr %11, align 8, !tbaa !119
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %14, align 8, !tbaa !4
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %15, align 8, !tbaa !116
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %4, align 8, !tbaa !119
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %5, align 8, !tbaa !116
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_advanced(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = icmp eq i64 %4, 0
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %13, align 8, !tbaa !85
  %14 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 1), !nosanitize !8
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !8
  br i1 %15, label %16, label %17, !prof !9, !nosanitize !8

16:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %19 = extractvalue { i64, i1 } %14, 0, !nosanitize !8
  store i64 %19, ptr %18, align 8, !tbaa !119
  %20 = load i32, ptr %3, align 8, !tbaa !72
  %21 = add i32 %20, -32
  %22 = icmp ult i32 %21, -22
  br i1 %22, label %81, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = add i32 %25, -31
  %27 = icmp ult i32 %26, -25
  br i1 %27, label %81, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !74
  %31 = add i32 %30, -31
  %32 = icmp ult i32 %31, -25
  br i1 %32, label %81, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %35 = load i32, ptr %34, align 4, !tbaa !75
  %36 = add i32 %35, -31
  %37 = icmp ult i32 %36, -30
  br i1 %37, label %81, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %40 = load i32, ptr %39, align 8, !tbaa !76
  %41 = add i32 %40, -8
  %42 = icmp ult i32 %41, -5
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %44, 131072
  %46 = select i1 %42, i1 true, i1 %45
  br i1 %46, label %81, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %49 = load i32, ptr %48, align 8, !tbaa !77
  %50 = add i32 %49, -1
  %51 = icmp ult i32 %50, 9
  br i1 %51, label %52, label %81

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %53, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !78
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %54, ptr noundef nonnull readonly align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !79
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %55, align 4, !tbaa !46
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %56 = icmp eq ptr %1, null
  %57 = icmp eq i64 %2, 0
  %58 = or i1 %56, %57
  br i1 %58, label %81, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %61 = load i64, ptr %60, align 8, !tbaa !52
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %0, i64 912
  %69 = load ptr, ptr %68, align 8
  %70 = tail call ptr %65(ptr noundef %69, i64 noundef %2) #36, !inline_history !283
  br label %73

71:                                               ; preds = %63
  %72 = tail call noalias ptr @malloc(i64 noundef %2) #37
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %70, %67 ], [ %72, %71 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %74, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %74, ptr %77, align 8, !tbaa !120
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %74, ptr %78, align 8, !tbaa !121
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %79, align 8, !tbaa !122
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %80, align 8, !tbaa !123
  br label %81

81:                                               ; preds = %76, %73, %59, %52, %23, %28, %33, %38, %17, %47
  %82 = phi i64 [ -42, %47 ], [ -42, %23 ], [ -42, %17 ], [ -42, %38 ], [ -42, %33 ], [ -42, %28 ], [ 0, %52 ], [ -64, %73 ], [ 0, %76 ], [ -64, %59 ]
  ret i64 %82
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_usingDict(ptr noundef captures(none) initializes((60, 64), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %6, align 8, !tbaa !119
  %7 = icmp slt i32 %3, -131072
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %3, 22
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 0
  %12 = select i1 %11, i32 3, i32 %3
  br label %13

13:                                               ; preds = %10, %4, %8
  %14 = phi i32 [ %12, %10 ], [ -131072, %4 ], [ 22, %8 ]
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %14, ptr %15, align 4, !tbaa !46
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = icmp eq ptr %1, null
  %17 = icmp eq i64 %2, 0
  %18 = or i1 %16, %17
  br i1 %18, label %41, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %21 = load i64, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i64 912
  %29 = load ptr, ptr %28, align 8
  %30 = tail call ptr %25(ptr noundef %29, i64 noundef %2) #36, !inline_history !283
  br label %33

31:                                               ; preds = %23
  %32 = tail call noalias ptr @malloc(i64 noundef %2) #37
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %30, %27 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %34, ptr %37, align 8, !tbaa !120
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %34, ptr %38, align 8, !tbaa !121
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %39, align 8, !tbaa !122
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %40, align 8, !tbaa !123
  br label %41

41:                                               ; preds = %36, %33, %19, %13
  %42 = phi i64 [ 0, %13 ], [ -64, %33 ], [ 0, %36 ], [ -64, %19 ]
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_initCStream_srcSize(ptr noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %7, align 8, !tbaa !85
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %8, align 8, !tbaa !119
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr null, ptr %9, align 8, !tbaa !116
  %10 = load i32, ptr %7, align 8, !tbaa !85
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %13, align 4, !tbaa !86
  br label %14

14:                                               ; preds = %6, %12
  %15 = icmp slt i32 %1, -131072
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = icmp sgt i32 %1, 22
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %1, 0
  %20 = select i1 %19, i32 3, i32 %1
  br label %21

21:                                               ; preds = %18, %14, %16
  %22 = phi i32 [ %20, %18 ], [ -131072, %14 ], [ 22, %16 ]
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %22, ptr %23, align 4, !tbaa !46
  br i1 %11, label %24, label %30

24:                                               ; preds = %21
  %25 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 1), !nosanitize !8
  %26 = extractvalue { i64, i1 } %25, 1, !nosanitize !8
  br i1 %26, label %27, label %28, !prof !9, !nosanitize !8

27:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

28:                                               ; preds = %24
  %29 = extractvalue { i64, i1 } %25, 0, !nosanitize !8
  store i64 %29, ptr %8, align 8, !tbaa !119
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ 0, %28 ], [ -60, %21 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %4, align 8, !tbaa !119
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr null, ptr %5, align 8, !tbaa !116
  %6 = load i32, ptr %3, align 8, !tbaa !85
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %9, align 4, !tbaa !86
  br label %10

10:                                               ; preds = %2, %8
  %11 = icmp slt i32 %1, -131072
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = icmp sgt i32 %1, 22
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %1, 0
  %16 = select i1 %15, i32 3, i32 %1
  br label %17

17:                                               ; preds = %14, %10, %12
  %18 = phi i32 [ %16, %14 ], [ -131072, %10 ], [ 22, %12 ]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %18, ptr %19, align 4, !tbaa !46
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #4 {
  %4 = tail call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %8 = load i32, ptr %7, align 4, !tbaa !284
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %12 = load i64, ptr %11, align 8, !tbaa !213
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %14 = load i64, ptr %13, align 8, !tbaa !285
  %15 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %12, i64 %14), !nosanitize !8
  %16 = extractvalue { i64, i1 } %15, 1, !nosanitize !8
  br i1 %16, label %17, label %18, !prof !9, !nosanitize !8

17:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

18:                                               ; preds = %10
  %19 = extractvalue { i64, i1 } %15, 0, !nosanitize !8
  br label %34

20:                                               ; preds = %6
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %22 = load i64, ptr %21, align 8, !tbaa !286
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %24 = load i64, ptr %23, align 8, !tbaa !139
  %25 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %22, i64 %24), !nosanitize !8
  %26 = extractvalue { i64, i1 } %25, 1, !nosanitize !8
  br i1 %26, label %27, label %28, !prof !9, !nosanitize !8

27:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

28:                                               ; preds = %20
  %29 = extractvalue { i64, i1 } %25, 0, !nosanitize !8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %33 = load i64, ptr %32, align 8, !tbaa !213
  br label %34

34:                                               ; preds = %31, %28, %18, %3
  %35 = phi i64 [ %4, %3 ], [ %19, %18 ], [ %33, %31 ], [ %29, %28 ]
  ret i64 %35
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load i64, ptr %5, align 8, !tbaa !174
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !173
  %9 = icmp ugt i64 %6, %8
  br i1 %9, label %489, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !177
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !176
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %489, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i32 %3, 2
  br i1 %17, label %489, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %20 = load i32, ptr %19, align 8, !tbaa !85
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %127

22:                                               ; preds = %18
  %23 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %14, i64 %12), !nosanitize !8
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !8
  br i1 %24, label %25, label %26, !prof !9, !nosanitize !8

25:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

26:                                               ; preds = %22
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %29 = load i64, ptr %28, align 8, !tbaa !285
  %30 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %29), !nosanitize !8
  %31 = extractvalue { i64, i1 } %30, 0, !nosanitize !8
  %32 = extractvalue { i64, i1 } %30, 1, !nosanitize !8
  br i1 %32, label %33, label %34, !prof !9, !nosanitize !8

33:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %26
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %37 = load i32, ptr %36, align 4, !tbaa !178
  %38 = icmp eq i32 %37, 1
  %39 = icmp eq i32 %3, 0
  %40 = and i1 %39, %38
  %41 = icmp ult i64 %31, 131072
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %59

43:                                               ; preds = %34
  %44 = icmp eq i64 %29, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %2, align 8, !tbaa !175
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %48 = load ptr, ptr %47, align 8, !tbaa !287
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %489

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %52 = load i64, ptr %51, align 8, !tbaa !288
  %53 = icmp eq i64 %12, %52
  br i1 %53, label %54, label %489

54:                                               ; preds = %43, %50
  store i64 %14, ptr %11, align 8, !tbaa !177
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !289
  store i64 %31, ptr %28, align 8, !tbaa !285
  %56 = load i32, ptr %35, align 8, !tbaa !290
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i64 6, i64 2
  br label %489

59:                                               ; preds = %34
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %63 = load ptr, ptr %62, align 8, !tbaa !291
  %64 = icmp eq ptr %63, null
  br i1 %64, label %83, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %67 = load ptr, ptr %66, align 8, !tbaa !292
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 904
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %71, null
  %75 = icmp eq ptr %73, null
  %76 = xor i1 %74, %75
  br i1 %76, label %489, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %79 = load i32, ptr %78, align 8, !tbaa !4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

82:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

83:                                               ; preds = %65, %59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %85 = load ptr, ptr %84, align 8, !tbaa !116
  %86 = icmp eq ptr %85, null
  %87 = icmp eq i32 %3, 2
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %90 = load i64, ptr %89, align 8, !tbaa !119
  br label %98

91:                                               ; preds = %83
  %92 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 1), !nosanitize !8
  %93 = extractvalue { i64, i1 } %92, 1, !nosanitize !8
  br i1 %93, label %94, label %95, !prof !9, !nosanitize !8

94:                                               ; preds = %91
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

95:                                               ; preds = %91
  %96 = extractvalue { i64, i1 } %92, 0, !nosanitize !8
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %96, ptr %97, align 8, !tbaa !119
  br label %98

98:                                               ; preds = %88, %95
  %99 = phi i64 [ %90, %88 ], [ %96, %95 ]
  %100 = icmp eq ptr %61, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br i1 %86, label %105, label %107

102:                                              ; preds = %98
  %103 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %99, i64 1), !nosanitize !8
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !8
  br i1 %104, label %110, label %111, !prof !9, !nosanitize !8

105:                                              ; preds = %101
  %106 = icmp eq i64 %99, 0
  br i1 %106, label %110, label %126, !prof !9, !nosanitize !8

107:                                              ; preds = %101
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %99, i64 1), !nosanitize !8
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !8
  br i1 %109, label %110, label %112, !prof !9, !nosanitize !8

110:                                              ; preds = %107, %105, %102
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

111:                                              ; preds = %102
  br i1 %86, label %126, label %112

112:                                              ; preds = %111, %107
  %113 = phi { i64, i1 } [ %103, %111 ], [ %108, %107 ]
  %114 = getelementptr inbounds nuw i8, ptr %85, i64 244
  %115 = load i32, ptr %114, align 4, !tbaa !241
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = extractvalue { i64, i1 } %113, 0
  %119 = getelementptr inbounds nuw i8, ptr %85, i64 384
  %120 = load i32, ptr %119, align 8, !tbaa !293
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !118
  %124 = icmp ugt i64 %118, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

126:                                              ; preds = %117, %112, %111, %105
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

127:                                              ; preds = %18
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %129 = load i32, ptr %128, align 4, !tbaa !284
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %133 = load ptr, ptr %132, align 8, !tbaa !51
  %134 = load ptr, ptr %2, align 8, !tbaa !175
  %135 = icmp eq ptr %133, %134
  br i1 %135, label %136, label %489

136:                                              ; preds = %131
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %138 = load i64, ptr %137, align 8, !tbaa !118
  %139 = icmp eq i64 %138, %12
  br i1 %139, label %140, label %489

140:                                              ; preds = %136, %127
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %142 = load i32, ptr %141, align 8, !tbaa !294
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %8, i64 %6), !nosanitize !8
  %146 = extractvalue { i64, i1 } %145, 1, !nosanitize !8
  br i1 %146, label %147, label %148, !prof !9, !nosanitize !8

147:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

148:                                              ; preds = %144
  %149 = extractvalue { i64, i1 } %145, 0, !nosanitize !8
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %151 = load i64, ptr %150, align 8, !tbaa !295
  %152 = icmp eq i64 %151, %149
  br i1 %152, label %153, label %489

153:                                              ; preds = %148, %140
  %154 = load ptr, ptr %2, align 8, !tbaa !175
  %155 = icmp eq ptr %154, null
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 %14
  %157 = getelementptr inbounds nuw i8, ptr %154, i64 %12
  %158 = select i1 %155, ptr null, ptr %156
  %159 = select i1 %155, ptr null, ptr %157
  %160 = load ptr, ptr %1, align 8, !tbaa !171
  %161 = icmp eq ptr %160, null
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 %8
  %163 = ptrtoint ptr %162 to i64
  %164 = getelementptr inbounds nuw i8, ptr %160, i64 %6
  %165 = select i1 %161, i64 0, i64 %163
  %166 = select i1 %161, ptr null, ptr %164
  br i1 %130, label %167, label %179

167:                                              ; preds = %153
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %169 = load i64, ptr %168, align 8, !tbaa !285
  %170 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %12, i64 %169), !nosanitize !8
  %171 = extractvalue { i64, i1 } %170, 1, !nosanitize !8
  br i1 %171, label %172, label %173, !prof !9, !nosanitize !8

172:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

173:                                              ; preds = %167
  %174 = extractvalue { i64, i1 } %170, 0, !nosanitize !8
  store i64 %174, ptr %11, align 8, !tbaa !177
  %175 = icmp eq ptr %159, null
  %176 = sub i64 0, %169
  %177 = getelementptr inbounds i8, ptr %159, i64 %176
  %178 = select i1 %175, ptr null, ptr %177
  store i64 0, ptr %168, align 8, !tbaa !285
  br label %179

179:                                              ; preds = %173, %153
  %180 = phi ptr [ %178, %173 ], [ %159, %153 ]
  %181 = icmp eq i32 %3, 2
  %182 = ptrtoint ptr %158 to i64
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %196

196:                                              ; preds = %425, %179
  %197 = phi i32 [ %20, %179 ], [ %426, %425 ]
  %198 = phi ptr [ %180, %179 ], [ %427, %425 ]
  %199 = phi ptr [ %166, %179 ], [ %428, %425 ]
  br label %200

200:                                              ; preds = %196, %200
  switch i32 %197, label %200 [
    i32 0, label %489
    i32 1, label %204
    i32 2, label %201
  ], !llvm.loop !296

201:                                              ; preds = %200
  %202 = load i64, ptr %193, align 8, !tbaa !297
  %203 = load i64, ptr %194, align 8, !tbaa !298
  br label %394

204:                                              ; preds = %200
  br i1 %181, label %205, label %240

205:                                              ; preds = %204
  %206 = ptrtoint ptr %199 to i64
  %207 = sub i64 %165, %206
  %208 = ptrtoint ptr %198 to i64
  %209 = sub i64 %182, %208
  %210 = icmp ugt i64 %209, -71777214294589697
  br i1 %210, label %225, label %211

211:                                              ; preds = %205
  %212 = lshr i64 %209, 8
  %213 = add nuw i64 %212, %209
  %214 = icmp ult i64 %209, 131072
  %215 = sub nuw nsw i64 131072, %209
  %216 = lshr i64 %215, 11
  %217 = select i1 %214, i64 %216, i64 0
  %218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %213, i64 %217), !nosanitize !8
  %219 = freeze { i64, i1 } %218
  %220 = extractvalue { i64, i1 } %219, 1, !nosanitize !8
  br i1 %220, label %221, label %222, !prof !9, !nosanitize !8

221:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

222:                                              ; preds = %211
  %223 = extractvalue { i64, i1 } %219, 0, !nosanitize !8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %222, %205
  br label %226

226:                                              ; preds = %225, %222
  %227 = phi i64 [ -72, %225 ], [ %223, %222 ]
  %228 = icmp ult i64 %207, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, ptr %141, align 8, !tbaa !294
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %240

232:                                              ; preds = %229, %226
  %233 = load i64, ptr %183, align 8, !tbaa !139
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %199, i64 noundef %207, ptr noundef %198, i64 noundef %209)
  %237 = icmp ult i64 %236, -119
  br i1 %237, label %238, label %489

238:                                              ; preds = %235
  %239 = getelementptr inbounds nuw i8, ptr %199, i64 %236
  store i32 1, ptr %191, align 4, !tbaa !299
  store i32 0, ptr %19, align 8, !tbaa !85
  store i64 0, ptr %195, align 8, !tbaa !119
  br label %429

240:                                              ; preds = %232, %229, %204
  %241 = load i32, ptr %128, align 4, !tbaa !284
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %275

243:                                              ; preds = %240
  %244 = load i64, ptr %186, align 8, !tbaa !286
  %245 = load i64, ptr %183, align 8, !tbaa !139
  %246 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %244, i64 %245), !nosanitize !8
  %247 = extractvalue { i64, i1 } %246, 1, !nosanitize !8
  br i1 %247, label %248, label %249, !prof !9, !nosanitize !8

248:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

249:                                              ; preds = %243
  %250 = extractvalue { i64, i1 } %246, 0, !nosanitize !8
  %251 = ptrtoint ptr %198 to i64
  %252 = sub i64 %182, %251
  %253 = tail call i64 @llvm.umin.i64(i64 %250, i64 %252)
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %249
  %256 = load ptr, ptr %187, align 8, !tbaa !138
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 %245
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %257, ptr readonly align 1 %198, i64 %253, i1 false)
  %258 = load i64, ptr %183, align 8, !tbaa !139
  br label %259

259:                                              ; preds = %255, %249
  %260 = phi i64 [ %245, %249 ], [ %258, %255 ]
  %261 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %260, i64 %253), !nosanitize !8
  %262 = extractvalue { i64, i1 } %261, 1, !nosanitize !8
  br i1 %262, label %263, label %264, !prof !9, !nosanitize !8

263:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

264:                                              ; preds = %259
  %265 = extractvalue { i64, i1 } %261, 0, !nosanitize !8
  store i64 %265, ptr %183, align 8, !tbaa !139
  %266 = icmp eq ptr %198, null
  %267 = getelementptr inbounds nuw i8, ptr %198, i64 %253
  %268 = select i1 %266, ptr null, ptr %267
  switch i32 %3, label %287 [
    i32 0, label %269
    i32 1, label %272
  ]

269:                                              ; preds = %264
  %270 = load i64, ptr %186, align 8, !tbaa !286
  %271 = icmp ult i64 %265, %270
  br i1 %271, label %429, label %287

272:                                              ; preds = %264
  %273 = load i64, ptr %188, align 8, !tbaa !140
  %274 = icmp eq i64 %265, %273
  br i1 %274, label %429, label %287

275:                                              ; preds = %240
  switch i32 %3, label %284 [
    i32 0, label %276
    i32 1, label %282
  ]

276:                                              ; preds = %275
  %277 = ptrtoint ptr %198 to i64
  %278 = sub i64 %182, %277
  %279 = load i64, ptr %184, align 8, !tbaa !213
  %280 = icmp ult i64 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  store i64 %278, ptr %185, align 8, !tbaa !285
  br label %429

282:                                              ; preds = %275
  %283 = icmp eq ptr %198, %158
  br i1 %283, label %429, label %284

284:                                              ; preds = %282, %275
  %285 = ptrtoint ptr %199 to i64
  %286 = sub i64 %165, %285
  br label %300

287:                                              ; preds = %276, %272, %269, %264
  %288 = phi ptr [ %268, %269 ], [ %268, %264 ], [ %268, %272 ], [ %198, %276 ]
  %289 = load i32, ptr %128, align 4, !tbaa !284
  %290 = icmp eq i32 %289, 0
  %291 = ptrtoint ptr %199 to i64
  %292 = sub i64 %165, %291
  br i1 %290, label %293, label %300

293:                                              ; preds = %287
  %294 = load i64, ptr %183, align 8, !tbaa !139
  %295 = load i64, ptr %188, align 8, !tbaa !140
  %296 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %294, i64 %295), !nosanitize !8
  %297 = extractvalue { i64, i1 } %296, 0, !nosanitize !8
  %298 = extractvalue { i64, i1 } %296, 1, !nosanitize !8
  br i1 %298, label %299, label %307, !prof !9, !nosanitize !8

299:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

300:                                              ; preds = %287, %284
  %301 = phi i64 [ %286, %284 ], [ %292, %287 ]
  %302 = phi ptr [ %198, %284 ], [ %288, %287 ]
  %303 = ptrtoint ptr %302 to i64
  %304 = sub i64 %182, %303
  %305 = load i64, ptr %184, align 8, !tbaa !213
  %306 = tail call i64 @llvm.umin.i64(i64 %304, i64 %305)
  br label %307

307:                                              ; preds = %300, %293
  %308 = phi i64 [ %292, %293 ], [ %301, %300 ]
  %309 = phi i1 [ true, %293 ], [ false, %300 ]
  %310 = phi ptr [ %288, %293 ], [ %302, %300 ]
  %311 = phi i64 [ %297, %293 ], [ %306, %300 ]
  %312 = icmp ugt i64 %311, -71777214294589697
  br i1 %312, label %327, label %313

313:                                              ; preds = %307
  %314 = lshr i64 %311, 8
  %315 = add nuw i64 %314, %311
  %316 = icmp ult i64 %311, 131072
  %317 = sub nuw nsw i64 131072, %311
  %318 = lshr i64 %317, 11
  %319 = select i1 %316, i64 %318, i64 0
  %320 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %315, i64 %319), !nosanitize !8
  %321 = freeze { i64, i1 } %320
  %322 = extractvalue { i64, i1 } %321, 1, !nosanitize !8
  br i1 %322, label %323, label %324, !prof !9, !nosanitize !8

323:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

324:                                              ; preds = %313
  %325 = extractvalue { i64, i1 } %321, 0, !nosanitize !8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %324, %307
  br label %328

328:                                              ; preds = %327, %324
  %329 = phi i64 [ -72, %327 ], [ %325, %324 ]
  %330 = icmp ult i64 %308, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  %332 = load i32, ptr %141, align 8, !tbaa !294
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load ptr, ptr %189, align 8, !tbaa !300
  %336 = load i64, ptr %190, align 8, !tbaa !244
  br label %337

337:                                              ; preds = %334, %331, %328
  %338 = phi i64 [ %336, %334 ], [ %308, %331 ], [ %308, %328 ]
  %339 = phi ptr [ %335, %334 ], [ %199, %331 ], [ %199, %328 ]
  br i1 %309, label %340, label %367

340:                                              ; preds = %337
  %341 = icmp eq ptr %310, %158
  %342 = select i1 %181, i1 %341, i1 false
  %343 = zext i1 %342 to i32
  %344 = load ptr, ptr %187, align 8, !tbaa !138
  %345 = load i64, ptr %188, align 8, !tbaa !140
  %346 = getelementptr inbounds nuw i8, ptr %344, i64 %345
  br i1 %342, label %347, label %349

347:                                              ; preds = %340
  %348 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %339, i64 noundef %338, ptr noundef %346, i64 noundef %311)
  br label %351

349:                                              ; preds = %340
  %350 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %339, i64 noundef %338, ptr noundef %346, i64 noundef %311, i32 noundef 1, i32 noundef 0)
  br label %351

351:                                              ; preds = %349, %347
  %352 = phi i64 [ %348, %347 ], [ %350, %349 ]
  %353 = icmp ult i64 %352, -119
  br i1 %353, label %354, label %489

354:                                              ; preds = %351
  store i32 %343, ptr %191, align 4, !tbaa !299
  %355 = load i64, ptr %183, align 8, !tbaa !139
  %356 = load i64, ptr %184, align 8, !tbaa !213
  %357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %355, i64 %356), !nosanitize !8
  %358 = extractvalue { i64, i1 } %357, 1, !nosanitize !8
  br i1 %358, label %359, label %360, !prof !9, !nosanitize !8

359:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

360:                                              ; preds = %354
  %361 = extractvalue { i64, i1 } %357, 0, !nosanitize !8
  store i64 %361, ptr %186, align 8, !tbaa !286
  %362 = load i64, ptr %192, align 8, !tbaa !243
  %363 = icmp ugt i64 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  store i64 0, ptr %183, align 8, !tbaa !139
  store i64 %356, ptr %186, align 8, !tbaa !286
  br label %365

365:                                              ; preds = %364, %360
  %366 = phi i64 [ %355, %360 ], [ 0, %364 ]
  store i64 %366, ptr %188, align 8, !tbaa !140
  br label %382

367:                                              ; preds = %337
  %368 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  %369 = icmp eq ptr %368, %158
  %370 = select i1 %181, i1 %369, i1 false
  %371 = zext i1 %370 to i32
  br i1 %370, label %372, label %374

372:                                              ; preds = %367
  %373 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %339, i64 noundef %338, ptr noundef %310, i64 noundef %311)
  br label %376

374:                                              ; preds = %367
  %375 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %339, i64 noundef %338, ptr noundef %310, i64 noundef %311, i32 noundef 1, i32 noundef 0)
  br label %376

376:                                              ; preds = %374, %372
  %377 = phi i64 [ %373, %372 ], [ %375, %374 ]
  %378 = icmp ult i64 %377, -119
  br i1 %378, label %379, label %489

379:                                              ; preds = %376
  %380 = icmp eq ptr %310, null
  %381 = select i1 %380, ptr null, ptr %368
  store i32 %371, ptr %191, align 4, !tbaa !299
  br label %382

382:                                              ; preds = %379, %365
  %383 = phi i32 [ %343, %365 ], [ %371, %379 ]
  %384 = phi i64 [ %352, %365 ], [ %377, %379 ]
  %385 = phi ptr [ %310, %365 ], [ %381, %379 ]
  %386 = icmp eq ptr %339, %199
  br i1 %386, label %387, label %393

387:                                              ; preds = %382
  %388 = getelementptr inbounds nuw i8, ptr %199, i64 %384
  %389 = icmp eq i32 %383, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %387
  %391 = load i32, ptr %19, align 8, !tbaa !85
  br label %425

392:                                              ; preds = %387
  store i32 0, ptr %19, align 8, !tbaa !85
  store i64 0, ptr %195, align 8, !tbaa !119
  br label %429

393:                                              ; preds = %382
  store i64 %384, ptr %193, align 8, !tbaa !297
  store i64 0, ptr %194, align 8, !tbaa !298
  store i32 2, ptr %19, align 8, !tbaa !85
  br label %394

394:                                              ; preds = %393, %201
  %395 = phi i64 [ 0, %393 ], [ %203, %201 ]
  %396 = phi i64 [ %384, %393 ], [ %202, %201 ]
  %397 = phi ptr [ %385, %393 ], [ %198, %201 ]
  %398 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %396, i64 %395), !nosanitize !8
  %399 = extractvalue { i64, i1 } %398, 0, !nosanitize !8
  %400 = extractvalue { i64, i1 } %398, 1, !nosanitize !8
  br i1 %400, label %401, label %402, !prof !9, !nosanitize !8

401:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

402:                                              ; preds = %394
  %403 = ptrtoint ptr %199 to i64
  %404 = sub i64 %165, %403
  %405 = tail call i64 @llvm.umin.i64(i64 %404, i64 %399)
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %402
  %408 = load ptr, ptr %189, align 8, !tbaa !300
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %395
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %199, ptr readonly align 1 %409, i64 %405, i1 false)
  %410 = load i64, ptr %194, align 8, !tbaa !298
  br label %411

411:                                              ; preds = %407, %402
  %412 = phi i64 [ %395, %402 ], [ %410, %407 ]
  %413 = getelementptr inbounds nuw i8, ptr %199, i64 %405
  %414 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %412, i64 %405), !nosanitize !8
  %415 = extractvalue { i64, i1 } %414, 1, !nosanitize !8
  br i1 %415, label %416, label %417, !prof !9, !nosanitize !8

416:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

417:                                              ; preds = %411
  %418 = extractvalue { i64, i1 } %414, 0, !nosanitize !8
  store i64 %418, ptr %194, align 8, !tbaa !298
  %419 = icmp ugt i64 %399, %404
  br i1 %419, label %429, label %420

420:                                              ; preds = %417
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %193, i8 0, i64 16, i1 false)
  %421 = load i32, ptr %191, align 4, !tbaa !299
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %424, label %423

423:                                              ; preds = %420
  store i32 0, ptr %19, align 8, !tbaa !85
  store i64 0, ptr %195, align 8, !tbaa !119
  br label %429

424:                                              ; preds = %420
  store i32 1, ptr %19, align 8, !tbaa !85
  br label %425

425:                                              ; preds = %424, %390
  %426 = phi i32 [ %391, %390 ], [ 1, %424 ]
  %427 = phi ptr [ %385, %390 ], [ %397, %424 ]
  %428 = phi ptr [ %388, %390 ], [ %413, %424 ]
  br label %196, !llvm.loop !296

429:                                              ; preds = %417, %282, %272, %269, %423, %392, %281, %238
  %430 = phi ptr [ %388, %392 ], [ %413, %423 ], [ %239, %238 ], [ %199, %281 ], [ %199, %269 ], [ %413, %417 ], [ %199, %272 ], [ %199, %282 ]
  %431 = phi ptr [ %385, %392 ], [ %397, %423 ], [ %158, %238 ], [ %158, %281 ], [ %268, %269 ], [ %397, %417 ], [ %268, %272 ], [ %158, %282 ]
  %432 = ptrtoint ptr %431 to i64
  %433 = ptrtoint ptr %154 to i64
  %434 = sub i64 %432, %433
  store i64 %434, ptr %11, align 8, !tbaa !177
  %435 = ptrtoint ptr %430 to i64
  %436 = ptrtoint ptr %160 to i64
  %437 = sub i64 %435, %436
  store i64 %437, ptr %5, align 8, !tbaa !174
  %438 = load i32, ptr %191, align 4, !tbaa !299
  %439 = icmp eq i32 %438, 0
  %440 = load i32, ptr %128, align 4, !tbaa !284
  br i1 %439, label %441, label %465

441:                                              ; preds = %429
  %442 = icmp eq i32 %440, 1
  br i1 %442, label %443, label %451

443:                                              ; preds = %441
  %444 = load i64, ptr %184, align 8, !tbaa !213
  %445 = load i64, ptr %185, align 8, !tbaa !285
  %446 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %444, i64 %445), !nosanitize !8
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !8
  br i1 %447, label %448, label %449, !prof !9, !nosanitize !8

448:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

449:                                              ; preds = %443
  %450 = extractvalue { i64, i1 } %446, 0, !nosanitize !8
  br label %462

451:                                              ; preds = %441
  %452 = load i64, ptr %186, align 8, !tbaa !286
  %453 = load i64, ptr %183, align 8, !tbaa !139
  %454 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %452, i64 %453), !nosanitize !8
  %455 = extractvalue { i64, i1 } %454, 1, !nosanitize !8
  br i1 %455, label %456, label %457, !prof !9, !nosanitize !8

456:                                              ; preds = %451
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

457:                                              ; preds = %451
  %458 = extractvalue { i64, i1 } %454, 0, !nosanitize !8
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %457
  %461 = load i64, ptr %184, align 8, !tbaa !213
  br label %462

462:                                              ; preds = %449, %457, %460
  %463 = phi i64 [ %450, %449 ], [ %461, %460 ], [ %458, %457 ]
  %464 = icmp ult i64 %463, -119
  br i1 %464, label %465, label %489

465:                                              ; preds = %429, %462
  %466 = icmp eq i32 %440, 1
  br i1 %466, label %467, label %469

467:                                              ; preds = %465
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %468, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !289
  br label %469

469:                                              ; preds = %467, %465
  %470 = load i32, ptr %141, align 8, !tbaa !294
  %471 = icmp eq i32 %470, 1
  br i1 %471, label %472, label %481

472:                                              ; preds = %469
  %473 = load i64, ptr %7, align 8, !tbaa !173
  %474 = load i64, ptr %5, align 8, !tbaa !174
  %475 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %473, i64 %474), !nosanitize !8
  %476 = extractvalue { i64, i1 } %475, 1, !nosanitize !8
  br i1 %476, label %477, label %478, !prof !9, !nosanitize !8

477:                                              ; preds = %472
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

478:                                              ; preds = %472
  %479 = extractvalue { i64, i1 } %475, 0, !nosanitize !8
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i64 %479, ptr %480, align 8, !tbaa !295
  br label %481

481:                                              ; preds = %469, %478
  %482 = load i64, ptr %193, align 8, !tbaa !297
  %483 = load i64, ptr %194, align 8, !tbaa !298
  %484 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %482, i64 %483), !nosanitize !8
  %485 = extractvalue { i64, i1 } %484, 1, !nosanitize !8
  br i1 %485, label %486, label %487, !prof !9, !nosanitize !8

486:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

487:                                              ; preds = %481
  %488 = extractvalue { i64, i1 } %484, 0, !nosanitize !8
  br label %489

489:                                              ; preds = %200, %376, %351, %235, %131, %136, %148, %54, %45, %50, %69, %462, %16, %10, %4, %487
  %490 = phi i64 [ -42, %16 ], [ -70, %4 ], [ -72, %10 ], [ %488, %487 ], [ %463, %462 ], [ -50, %131 ], [ -50, %50 ], [ -50, %45 ], [ %58, %54 ], [ -64, %69 ], [ -50, %148 ], [ -50, %136 ], [ %236, %235 ], [ -62, %200 ], [ %377, %376 ], [ %352, %351 ]
  ret i64 %490
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2_simpleArgs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef captures(none) %6, i32 noundef %7) local_unnamed_addr #4 {
  %9 = alloca %struct.ZSTD_outBuffer_s, align 8
  %10 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %1, ptr %9, align 8, !tbaa !171
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %11, align 8, !tbaa !173
  %12 = load i64, ptr %3, align 8, !tbaa !118
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %12, ptr %13, align 8, !tbaa !174
  store ptr %4, ptr %10, align 8, !tbaa !175
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %5, ptr %14, align 8, !tbaa !176
  %15 = load i64, ptr %6, align 8, !tbaa !118
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %15, ptr %16, align 8, !tbaa !177
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %7)
  %18 = load i64, ptr %13, align 8, !tbaa !174
  store i64 %18, ptr %3, align 8, !tbaa !118
  %19 = load i64, ptr %16, align 8, !tbaa !177
  store i64 %19, ptr %6, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  ret i64 %17
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef i64 @ZSTD_compressSequences(ptr noundef captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6) local_unnamed_addr #22 {
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %10 = load ptr, ptr %9, align 8, !tbaa !291
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %14 = load ptr, ptr %13, align 8, !tbaa !292
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 904
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %18, null
  %22 = icmp eq ptr %20, null
  %23 = xor i1 %21, %22
  br i1 %23, label %54, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %26 = load i32, ptr %25, align 8, !tbaa !4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

29:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

30:                                               ; preds = %12, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 1), !nosanitize !8
  %34 = extractvalue { i64, i1 } %33, 1, !nosanitize !8
  br i1 %34, label %35, label %36, !prof !9, !nosanitize !8

35:                                               ; preds = %30
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

36:                                               ; preds = %30
  %37 = icmp eq ptr %32, null
  %38 = extractvalue { i64, i1 } %33, 0, !nosanitize !8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %38, ptr %39, align 8, !tbaa !119
  br i1 %37, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 244
  %42 = load i32, ptr %41, align 4, !tbaa !241
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = add i64 %38, -1
  %46 = getelementptr inbounds nuw i8, ptr %32, i64 384
  %47 = load i32, ptr %46, align 8, !tbaa !293
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !118
  %51 = icmp ugt i64 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

53:                                               ; preds = %36, %44, %40
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

54:                                               ; preds = %16
  ret i64 -64
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc range(i64 -70, 20) i64 @ZSTD_writeFrameHeader(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #14 {
  %6 = icmp ne i32 %4, 0
  %7 = zext i1 %6 to i32
  %8 = icmp ugt i32 %4, 255
  %9 = zext i1 %8 to i32
  %10 = add nuw nsw i32 %7, %9
  %11 = icmp ugt i32 %4, 65535
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %10, %12
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %15 = load i32, ptr %14, align 8, !tbaa !96
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 %13, i32 0
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !95
  %20 = icmp sgt i32 %19, 0
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %22 = load i32, ptr %21, align 4, !tbaa !88
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %25, label %24, !prof !215, !nosanitize !8

24:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

25:                                               ; preds = %5
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %27 = shl nuw i32 1, %22
  %28 = load i32, ptr %26, align 8, !tbaa !47
  %29 = icmp ne i32 %28, 0
  %30 = zext i32 %27 to i64
  %31 = icmp ule i64 %3, %30
  %32 = select i1 %29, i1 %31, i1 false
  %33 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %22, i32 10), !nosanitize !8
  %34 = extractvalue { i32, i1 } %33, 0, !nosanitize !8
  %35 = extractvalue { i32, i1 } %33, 1, !nosanitize !8
  br i1 %35, label %36, label %37, !prof !9, !nosanitize !8

36:                                               ; preds = %25
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

37:                                               ; preds = %25
  %38 = icmp ult i32 %34, 536870912
  br i1 %38, label %40, label %39, !prof !215, !nosanitize !8

39:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %37
  %41 = trunc nuw nsw i32 %34 to i8
  %42 = shl nuw i8 %41, 3
  br i1 %29, label %43, label %52

43:                                               ; preds = %40
  %44 = icmp ugt i64 %3, 255
  %45 = zext i1 %44 to i32
  %46 = icmp ugt i64 %3, 65791
  %47 = zext i1 %46 to i32
  %48 = add nuw nsw i32 %45, %47
  %49 = icmp ugt i64 %3, 4294967294
  %50 = zext i1 %49 to i32
  %51 = add nuw nsw i32 %48, %50
  br label %52

52:                                               ; preds = %43, %40
  %53 = phi i32 [ %51, %43 ], [ 0, %40 ]
  %54 = select i1 %20, i32 4, i32 0
  %55 = add nuw nsw i32 %54, %17
  %56 = select i1 %32, i32 32, i32 0
  %57 = or disjoint i32 %56, %55
  %58 = shl nuw nsw i32 %53, 6
  %59 = or disjoint i32 %58, %57
  %60 = trunc nuw i32 %59 to i8
  %61 = icmp ult i64 %1, 18
  br i1 %61, label %109, label %62

62:                                               ; preds = %52
  %63 = load i32, ptr %2, align 8, !tbaa !87
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 -47205080, ptr %0, align 1, !tbaa !4
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i64 [ 4, %65 ], [ 0, %62 ]
  %68 = or disjoint i64 %67, 1
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 %67
  store i8 %60, ptr %69, align 1, !tbaa !164
  br i1 %32, label %73, label %70

70:                                               ; preds = %66
  %71 = or disjoint i64 %67, 2
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 %68
  store i8 %42, ptr %72, align 1, !tbaa !164
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i64 [ %68, %66 ], [ %71, %70 ]
  switch i32 %17, label %86 [
    i32 3, label %83
    i32 1, label %75
    i32 2, label %79
  ]

75:                                               ; preds = %73
  %76 = trunc i32 %4 to i8
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  store i8 %76, ptr %77, align 1, !tbaa !164
  %78 = add nuw nsw i64 %74, 1
  br label %86

79:                                               ; preds = %73
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  %81 = trunc i32 %4 to i16
  store i16 %81, ptr %80, align 1, !tbaa !199
  %82 = add nuw nsw i64 %74, 2
  br label %86

83:                                               ; preds = %73
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  store i32 %4, ptr %84, align 1, !tbaa !4
  %85 = add nuw nsw i64 %74, 4
  br label %86

86:                                               ; preds = %73, %83, %79, %75
  %87 = phi i64 [ %74, %73 ], [ %85, %83 ], [ %78, %75 ], [ %82, %79 ]
  switch i32 %53, label %88 [
    i32 3, label %106
    i32 1, label %93
    i32 2, label %102
  ]

88:                                               ; preds = %86
  br i1 %32, label %89, label %109

89:                                               ; preds = %88
  %90 = add nuw nsw i64 %87, 1
  %91 = trunc i64 %3 to i8
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  store i8 %91, ptr %92, align 1, !tbaa !164
  br label %109

93:                                               ; preds = %86
  %94 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %3, i64 256), !nosanitize !8
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !8
  br i1 %95, label %96, label %97, !prof !9, !nosanitize !8

96:                                               ; preds = %93
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

97:                                               ; preds = %93
  %98 = extractvalue { i64, i1 } %94, 0, !nosanitize !8
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %100 = trunc i64 %98 to i16
  store i16 %100, ptr %99, align 1, !tbaa !199
  %101 = add nuw nsw i64 %87, 2
  br label %109

102:                                              ; preds = %86
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %104 = trunc i64 %3 to i32
  store i32 %104, ptr %103, align 1, !tbaa !4
  %105 = add nuw nsw i64 %87, 4
  br label %109

106:                                              ; preds = %86
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  store i64 %3, ptr %107, align 1, !tbaa !118
  %108 = add nuw nsw i64 %87, 8
  br label %109

109:                                              ; preds = %97, %102, %106, %89, %88, %52
  %110 = phi i64 [ -70, %52 ], [ %90, %89 ], [ %87, %88 ], [ %108, %106 ], [ %101, %97 ], [ %105, %102 ]
  ret i64 %110
}

declare i32 @ZSTD_XXH64_update(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local i64 @convertSequences_noRepcodes(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %50, label %5

5:                                                ; preds = %3, %46
  %6 = phi i64 [ %48, %46 ], [ 0, %3 ]
  %7 = phi i64 [ %47, %46 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !181
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %9, i32 3), !nosanitize !8
  %11 = extractvalue { i32, i1 } %10, 1, !nosanitize !8
  br i1 %11, label %12, label %13, !prof !9, !nosanitize !8

12:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

13:                                               ; preds = %5
  %14 = extractvalue { i32, i1 } %10, 0, !nosanitize !8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %6
  store i32 %14, ptr %15, align 4, !tbaa !162
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !184
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i16 %18, ptr %19, align 4, !tbaa !159
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %21 = load i32, ptr %20, align 4, !tbaa !183
  %22 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %21, i32 3), !nosanitize !8
  %23 = extractvalue { i32, i1 } %22, 1, !nosanitize !8
  br i1 %23, label %24, label %25, !prof !9, !nosanitize !8

24:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

25:                                               ; preds = %13
  %26 = extractvalue { i32, i1 } %22, 0, !nosanitize !8
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 6
  store i16 %27, ptr %28, align 2, !tbaa !163
  %29 = icmp ugt i32 %21, 65538
  br i1 %29, label %30, label %32, !prof !301

30:                                               ; preds = %25
  %31 = add nuw i64 %6, 1
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi i64 [ %31, %30 ], [ %7, %25 ]
  %34 = icmp ugt i32 %17, 65535
  br i1 %34, label %35, label %46, !prof !301

35:                                               ; preds = %32
  %36 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 %2), !nosanitize !8
  %37 = extractvalue { i64, i1 } %36, 1, !nosanitize !8
  br i1 %37, label %38, label %39, !prof !9, !nosanitize !8

38:                                               ; preds = %35
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

39:                                               ; preds = %35
  %40 = extractvalue { i64, i1 } %36, 0, !nosanitize !8
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %40, i64 1), !nosanitize !8
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !8
  br i1 %42, label %43, label %44, !prof !9, !nosanitize !8

43:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

44:                                               ; preds = %39
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !8
  br label %46

46:                                               ; preds = %44, %32
  %47 = phi i64 [ %45, %44 ], [ %33, %32 ]
  %48 = add nuw i64 %6, 1
  %49 = icmp eq i64 %48, %2
  br i1 %49, label %50, label %5, !llvm.loop !302

50:                                               ; preds = %46, %3
  %51 = phi i64 [ 0, %3 ], [ %47, %46 ]
  ret i64 %51
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -107, 1) i64 @ZSTD_convertBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #24 {
  %5 = alloca %struct.repcodes_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %8 = load i64, ptr %7, align 8, !tbaa !303
  %9 = icmp ult i64 %2, %8
  br i1 %9, label %10, label %258

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false)
  %14 = icmp eq i32 %3, 0
  %15 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 1), !nosanitize !8
  br i1 %14, label %30, label %16

16:                                               ; preds = %10
  %17 = extractvalue { i64, i1 } %15, 1, !nosanitize !8
  br i1 %17, label %107, label %18, !prof !304, !nosanitize !8

18:                                               ; preds = %16
  %19 = extractvalue { i64, i1 } %15, 0, !nosanitize !8
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %25 = icmp eq i64 %19, 0
  br i1 %25, label %212, label %26

26:                                               ; preds = %18
  %27 = load i32, ptr %21, align 8
  %28 = load i32, ptr %20, align 4
  %29 = load i32, ptr %5, align 8
  br label %108

30:                                               ; preds = %10
  %31 = extractvalue { i64, i1 } %15, 0, !nosanitize !8
  %32 = extractvalue { i64, i1 } %15, 1, !nosanitize !8
  br i1 %32, label %33, label %34, !prof !9, !nosanitize !8

33:                                               ; preds = %30
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8, !tbaa !224
  %36 = icmp eq i64 %31, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %2
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %39, ptr %40, align 8, !tbaa !223
  br label %212

41:                                               ; preds = %34, %82
  %42 = phi i64 [ %84, %82 ], [ 0, %34 ]
  %43 = phi i64 [ %83, %82 ], [ 0, %34 ]
  %44 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %42
  %45 = load i32, ptr %44, align 4, !tbaa !181
  %46 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %45, i32 3), !nosanitize !8
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !8
  br i1 %47, label %48, label %49, !prof !9, !nosanitize !8

48:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

49:                                               ; preds = %41
  %50 = extractvalue { i32, i1 } %46, 0, !nosanitize !8
  %51 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %42
  store i32 %50, ptr %51, align 4, !tbaa !162
  %52 = getelementptr inbounds nuw i8, ptr %44, i64 4
  %53 = load i32, ptr %52, align 4, !tbaa !184
  %54 = trunc i32 %53 to i16
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 4
  store i16 %54, ptr %55, align 4, !tbaa !159
  %56 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %57 = load i32, ptr %56, align 4, !tbaa !183
  %58 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 3), !nosanitize !8
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !8
  br i1 %59, label %60, label %61, !prof !9, !nosanitize !8

60:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

61:                                               ; preds = %49
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !8
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds nuw i8, ptr %51, i64 6
  store i16 %63, ptr %64, align 2, !tbaa !163
  %65 = icmp ugt i32 %57, 65538
  br i1 %65, label %66, label %68, !prof !301

66:                                               ; preds = %61
  %67 = add nuw i64 %42, 1
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i64 [ %67, %66 ], [ %43, %61 ]
  %70 = icmp ugt i32 %53, 65535
  br i1 %70, label %71, label %82, !prof !301

71:                                               ; preds = %68
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %42, i64 %31), !nosanitize !8
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !8
  br i1 %73, label %74, label %75, !prof !9, !nosanitize !8

74:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

75:                                               ; preds = %71
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !8
  %77 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %76, i64 1), !nosanitize !8
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !8
  br i1 %78, label %79, label %80, !prof !9, !nosanitize !8

79:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

80:                                               ; preds = %75
  %81 = extractvalue { i64, i1 } %77, 0, !nosanitize !8
  br label %82

82:                                               ; preds = %80, %68
  %83 = phi i64 [ %81, %80 ], [ %69, %68 ]
  %84 = add nuw i64 %42, 1
  %85 = icmp eq i64 %84, %31
  br i1 %85, label %86, label %41, !llvm.loop !302

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %2
  %88 = getelementptr inbounds i8, ptr %87, i64 -8
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %88, ptr %89, align 8, !tbaa !223
  %90 = icmp eq i64 %83, 0
  br i1 %90, label %212, label %91

91:                                               ; preds = %86
  %92 = icmp ugt i64 %83, %31
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  br i1 %92, label %98, label %94

94:                                               ; preds = %91
  store i32 2, ptr %93, align 8, !tbaa !305
  %95 = trunc i64 %83 to i32
  %96 = add i32 %95, -1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i32 %96, ptr %97, align 4, !tbaa !306
  br label %212

98:                                               ; preds = %91
  store i32 1, ptr %93, align 8, !tbaa !305
  %99 = sub nuw i64 %83, %31
  %100 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %99, i64 1), !nosanitize !8
  %101 = extractvalue { i64, i1 } %100, 1, !nosanitize !8
  br i1 %101, label %102, label %103, !prof !9, !nosanitize !8

102:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

103:                                              ; preds = %98
  %104 = extractvalue { i64, i1 } %100, 0, !nosanitize !8
  %105 = trunc i64 %104 to i32
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i32 %105, ptr %106, align 4, !tbaa !306
  br label %212

107:                                              ; preds = %16
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

108:                                              ; preds = %26, %206
  %109 = phi i32 [ %29, %26 ], [ %209, %206 ]
  %110 = phi i64 [ 0, %26 ], [ %210, %206 ]
  %111 = phi i32 [ %28, %26 ], [ %208, %206 ]
  %112 = phi i32 [ %27, %26 ], [ %207, %206 ]
  %113 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %110
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 4
  %115 = load i32, ptr %114, align 4, !tbaa !184
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds nuw i8, ptr %113, i64 8
  %119 = load i32, ptr %118, align 4, !tbaa !183
  %120 = load i32, ptr %113, align 4, !tbaa !181
  %121 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %120, i32 3), !nosanitize !8
  %122 = extractvalue { i32, i1 } %121, 0, !nosanitize !8
  %123 = extractvalue { i32, i1 } %121, 1, !nosanitize !8
  br i1 %123, label %124, label %125, !prof !9, !nosanitize !8

124:                                              ; preds = %108
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

125:                                              ; preds = %108
  %126 = icmp ne i32 %120, %109
  %127 = select i1 %116, i1 true, i1 %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = icmp eq i32 %120, %111
  br i1 %129, label %130, label %132

130:                                              ; preds = %128
  %131 = select i1 %116, i32 1, i32 2
  br label %146

132:                                              ; preds = %128
  %133 = icmp eq i32 %120, %112
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = xor i32 %117, 3
  br label %146

136:                                              ; preds = %132
  br i1 %116, label %137, label %146

137:                                              ; preds = %136
  %138 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %109, i32 1), !nosanitize !8
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !8
  br i1 %139, label %140, label %141, !prof !9, !nosanitize !8

140:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

141:                                              ; preds = %137
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !8
  %143 = icmp eq i32 %120, %142
  %144 = select i1 %143, i32 3, i32 %122
  %145 = load ptr, ptr %23, align 8, !tbaa !158
  br label %157

146:                                              ; preds = %125, %130, %134, %136
  %147 = phi i32 [ %131, %130 ], [ %135, %134 ], [ 1, %125 ], [ %122, %136 ]
  %148 = icmp ugt i32 %115, 65535
  %149 = load ptr, ptr %23, align 8, !tbaa !158
  br i1 %148, label %150, label %157, !prof !307

150:                                              ; preds = %146
  store i32 1, ptr %22, align 8, !tbaa !167
  %151 = load ptr, ptr %6, align 8, !tbaa !154
  %152 = ptrtoint ptr %149 to i64
  %153 = ptrtoint ptr %151 to i64
  %154 = sub i64 %152, %153
  %155 = lshr exact i64 %154, 3
  %156 = trunc i64 %155 to i32
  store i32 %156, ptr %24, align 4, !tbaa !168
  br label %157

157:                                              ; preds = %141, %150, %146
  %158 = phi ptr [ %145, %141 ], [ %149, %150 ], [ %149, %146 ]
  %159 = phi i32 [ %144, %141 ], [ %147, %150 ], [ %147, %146 ]
  %160 = zext i32 %119 to i64
  %161 = trunc i32 %115 to i16
  %162 = getelementptr inbounds nuw i8, ptr %158, i64 4
  store i16 %161, ptr %162, align 4, !tbaa !159
  store i32 %159, ptr %158, align 4, !tbaa !162
  %163 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 range(i64 0, 4294967296) %160, i64 3), !nosanitize !8
  %164 = extractvalue { i64, i1 } %163, 0, !nosanitize !8
  %165 = extractvalue { i64, i1 } %163, 1, !nosanitize !8
  br i1 %165, label %166, label %167, !prof !9, !nosanitize !8

166:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

167:                                              ; preds = %157
  %168 = icmp ugt i64 %164, 65535
  br i1 %168, label %169, label %176, !prof !301

169:                                              ; preds = %167
  store i32 2, ptr %22, align 8, !tbaa !167
  %170 = load ptr, ptr %6, align 8, !tbaa !154
  %171 = ptrtoint ptr %158 to i64
  %172 = ptrtoint ptr %170 to i64
  %173 = sub i64 %171, %172
  %174 = lshr exact i64 %173, 3
  %175 = trunc i64 %174 to i32
  store i32 %175, ptr %24, align 4, !tbaa !168
  br label %176

176:                                              ; preds = %167, %169
  %177 = trunc i64 %164 to i16
  %178 = getelementptr inbounds nuw i8, ptr %158, i64 6
  store i16 %177, ptr %178, align 2, !tbaa !163
  %179 = getelementptr inbounds nuw i8, ptr %158, i64 8
  store ptr %179, ptr %23, align 8, !tbaa !158
  %180 = icmp ugt i32 %159, 3
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  store i32 %111, ptr %21, align 8, !tbaa !4
  store i32 %109, ptr %20, align 4, !tbaa !4
  %182 = add i32 %159, -3
  br label %203

183:                                              ; preds = %176
  %184 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %159, i32 1), !nosanitize !8
  %185 = extractvalue { i32, i1 } %184, 1, !nosanitize !8
  br i1 %185, label %186, label %187, !prof !9, !nosanitize !8

186:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

187:                                              ; preds = %183
  %188 = extractvalue { i32, i1 } %184, 0, !nosanitize !8
  %189 = add nuw nsw i32 %188, %117
  switch i32 %189, label %195 [
    i32 0, label %206
    i32 3, label %190
  ]

190:                                              ; preds = %187
  %191 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %109, i32 1), !nosanitize !8
  %192 = extractvalue { i32, i1 } %191, 0, !nosanitize !8
  %193 = extractvalue { i32, i1 } %191, 1, !nosanitize !8
  br i1 %193, label %194, label %199, !prof !9, !nosanitize !8

194:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

195:                                              ; preds = %187
  %196 = zext nneg i32 %189 to i64
  %197 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !4
  br label %199

199:                                              ; preds = %195, %190
  %200 = phi i32 [ %198, %195 ], [ %192, %190 ]
  %201 = icmp eq i32 %189, 1
  %202 = select i1 %201, i32 %112, i32 %111
  store i32 %202, ptr %21, align 8, !tbaa !4
  store i32 %109, ptr %20, align 4, !tbaa !4
  br label %203

203:                                              ; preds = %199, %181
  %204 = phi i32 [ %202, %199 ], [ %111, %181 ]
  %205 = phi i32 [ %200, %199 ], [ %182, %181 ]
  store i32 %205, ptr %5, align 8, !tbaa !4
  br label %206

206:                                              ; preds = %203, %187
  %207 = phi i32 [ %204, %203 ], [ %112, %187 ]
  %208 = phi i32 [ %109, %203 ], [ %111, %187 ]
  %209 = phi i32 [ %205, %203 ], [ %109, %187 ]
  %210 = add i64 %110, 1
  %211 = icmp eq i64 %210, %19
  br i1 %211, label %212, label %108

212:                                              ; preds = %206, %18, %37, %86, %103, %94
  %213 = icmp ugt i64 %2, 1
  %214 = and i1 %213, %14
  br i1 %214, label %215, label %254

215:                                              ; preds = %212
  %216 = icmp ugt i64 %2, 3
  br i1 %216, label %217, label %240

217:                                              ; preds = %215
  %218 = trunc i64 %2 to i32
  %219 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %218, i32 2), !nosanitize !8
  %220 = extractvalue { i32, i1 } %219, 0, !nosanitize !8
  %221 = extractvalue { i32, i1 } %219, 1, !nosanitize !8
  br i1 %221, label %222, label %223, !prof !9, !nosanitize !8

222:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

223:                                              ; preds = %217
  %224 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %220, i32 2), !nosanitize !8
  %225 = extractvalue { i32, i1 } %224, 1, !nosanitize !8
  br i1 %225, label %226, label %227, !prof !9, !nosanitize !8

226:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

227:                                              ; preds = %223
  %228 = extractvalue { i32, i1 } %224, 0, !nosanitize !8
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !181
  %232 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %231, ptr %232, align 8, !tbaa !4
  %233 = add i32 %220, -1
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !181
  %237 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %236, ptr %237, align 4, !tbaa !4
  %238 = zext i32 %220 to i64
  %239 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %238
  br label %251

240:                                              ; preds = %215
  %241 = icmp eq i64 %2, 3
  br i1 %241, label %242, label %248

242:                                              ; preds = %240
  %243 = load i32, ptr %5, align 8, !tbaa !4
  %244 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %243, ptr %244, align 8, !tbaa !4
  %245 = load i32, ptr %1, align 4, !tbaa !181
  %246 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %245, ptr %246, align 4, !tbaa !4
  %247 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %251

248:                                              ; preds = %240
  %249 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %250 = load <2 x i32>, ptr %5, align 8, !tbaa !4
  store <2 x i32> %250, ptr %249, align 4, !tbaa !4
  br label %251

251:                                              ; preds = %242, %248, %227
  %252 = phi ptr [ %239, %227 ], [ %1, %248 ], [ %247, %242 ]
  %253 = load i32, ptr %252, align 4, !tbaa !181
  store i32 %253, ptr %5, align 8, !tbaa !4
  br label %254

254:                                              ; preds = %251, %212
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %256 = load ptr, ptr %255, align 8, !tbaa !58
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %257, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  br label %258

258:                                              ; preds = %4, %254
  %259 = phi i64 [ 0, %254 ], [ -107, %4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret i64 %259
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @ZSTD_get1BlockSummary(ptr dead_on_unwind noalias writable writeonly sret(%struct.BlockSummary) align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp ugt i64 %2, 3
  br i1 %4, label %5, label %58

5:                                                ; preds = %3
  %6 = add i64 %2, -3
  br label %7

7:                                                ; preds = %5, %55
  %8 = phi i64 [ %28, %55 ], [ 0, %5 ]
  %9 = phi i64 [ %39, %55 ], [ 0, %5 ]
  %10 = phi i64 [ %50, %55 ], [ 0, %5 ]
  %11 = phi i64 [ %56, %55 ], [ 0, %5 ]
  %12 = phi i64 [ %17, %55 ], [ 0, %5 ]
  %13 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %11
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = load i64, ptr %14, align 1, !tbaa !118
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %12, i64 %15), !nosanitize !8
  %17 = extractvalue { i64, i1 } %16, 0, !nosanitize !8
  %18 = extractvalue { i64, i1 } %16, 1, !nosanitize !8
  br i1 %18, label %19, label %20, !prof !9, !nosanitize !8

19:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %7
  %21 = icmp ugt i64 %15, 4294967295
  br i1 %21, label %22, label %81

22:                                               ; preds = %20
  %23 = or disjoint i64 %11, 1
  %24 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %26 = load i64, ptr %25, align 1, !tbaa !118
  %27 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %26), !nosanitize !8
  %28 = extractvalue { i64, i1 } %27, 0, !nosanitize !8
  %29 = extractvalue { i64, i1 } %27, 1, !nosanitize !8
  br i1 %29, label %30, label %31, !prof !9, !nosanitize !8

30:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

31:                                               ; preds = %22
  %32 = icmp ugt i64 %26, 4294967295
  br i1 %32, label %33, label %81

33:                                               ; preds = %31
  %34 = or disjoint i64 %11, 2
  %35 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %37 = load i64, ptr %36, align 1, !tbaa !118
  %38 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %9, i64 %37), !nosanitize !8
  %39 = extractvalue { i64, i1 } %38, 0, !nosanitize !8
  %40 = extractvalue { i64, i1 } %38, 1, !nosanitize !8
  br i1 %40, label %41, label %42, !prof !9, !nosanitize !8

41:                                               ; preds = %33
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

42:                                               ; preds = %33
  %43 = icmp ugt i64 %37, 4294967295
  br i1 %43, label %44, label %81

44:                                               ; preds = %42
  %45 = or disjoint i64 %11, 3
  %46 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %48 = load i64, ptr %47, align 1, !tbaa !118
  %49 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %10, i64 %48), !nosanitize !8
  %50 = extractvalue { i64, i1 } %49, 0, !nosanitize !8
  %51 = extractvalue { i64, i1 } %49, 1, !nosanitize !8
  br i1 %51, label %52, label %53, !prof !9, !nosanitize !8

52:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

53:                                               ; preds = %44
  %54 = icmp ugt i64 %48, 4294967295
  br i1 %54, label %55, label %81

55:                                               ; preds = %53
  %56 = add nuw i64 %11, 4
  %57 = icmp ult i64 %56, %6
  br i1 %57, label %7, label %58, !llvm.loop !308

58:                                               ; preds = %55, %3
  %59 = phi i64 [ 0, %3 ], [ %28, %55 ]
  %60 = phi i64 [ 0, %3 ], [ %39, %55 ]
  %61 = phi i64 [ 0, %3 ], [ %50, %55 ]
  %62 = phi i64 [ 0, %3 ], [ %56, %55 ]
  %63 = phi i64 [ 0, %3 ], [ %17, %55 ]
  %64 = icmp ult i64 %62, %2
  br i1 %64, label %65, label %80

65:                                               ; preds = %58, %77
  %66 = phi i64 [ %72, %77 ], [ %63, %58 ]
  %67 = phi i64 [ %78, %77 ], [ %62, %58 ]
  %68 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %70 = load i64, ptr %69, align 1, !tbaa !118
  %71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 %70), !nosanitize !8
  %72 = extractvalue { i64, i1 } %71, 0, !nosanitize !8
  %73 = extractvalue { i64, i1 } %71, 1, !nosanitize !8
  br i1 %73, label %74, label %75, !prof !9, !nosanitize !8

74:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

75:                                               ; preds = %65
  %76 = icmp ugt i64 %70, 4294967295
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = add i64 %67, 1
  %79 = icmp eq i64 %78, %2
  br i1 %79, label %80, label %65, !llvm.loop !309

80:                                               ; preds = %77, %58
  store i64 -107, ptr %0, align 8, !tbaa !310
  br label %108

81:                                               ; preds = %20, %31, %42, %53, %75
  %82 = phi i64 [ %59, %75 ], [ %28, %31 ], [ %28, %42 ], [ %28, %53 ], [ %8, %20 ]
  %83 = phi i64 [ %60, %75 ], [ %9, %31 ], [ %39, %42 ], [ %39, %53 ], [ %9, %20 ]
  %84 = phi i64 [ %61, %75 ], [ %10, %31 ], [ %10, %42 ], [ %50, %53 ], [ %10, %20 ]
  %85 = phi i64 [ %67, %75 ], [ %23, %31 ], [ %34, %42 ], [ %45, %53 ], [ %11, %20 ]
  %86 = phi i64 [ %72, %75 ], [ %17, %53 ], [ %17, %42 ], [ %17, %31 ], [ %17, %20 ]
  %87 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %82, i64 %83), !nosanitize !8
  %88 = extractvalue { i64, i1 } %87, 1, !nosanitize !8
  br i1 %88, label %89, label %90, !prof !9, !nosanitize !8

89:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

90:                                               ; preds = %81
  %91 = extractvalue { i64, i1 } %87, 0, !nosanitize !8
  %92 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %91, i64 %84), !nosanitize !8
  %93 = extractvalue { i64, i1 } %92, 1, !nosanitize !8
  br i1 %93, label %94, label %95, !prof !9, !nosanitize !8

94:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %92, 0, !nosanitize !8
  %97 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 %96), !nosanitize !8
  %98 = extractvalue { i64, i1 } %97, 1, !nosanitize !8
  br i1 %98, label %99, label %100, !prof !9, !nosanitize !8

99:                                               ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

100:                                              ; preds = %95
  %101 = extractvalue { i64, i1 } %97, 0, !nosanitize !8
  %102 = add nuw i64 %85, 1
  store i64 %102, ptr %0, align 8, !tbaa !310
  %103 = and i64 %101, 4294967295
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %103, ptr %104, align 8, !tbaa !312
  %105 = lshr i64 %101, 32
  %106 = add nuw nsw i64 %103, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %106, ptr %107, align 8, !tbaa !313
  br label %108

108:                                              ; preds = %100, %80
  ret void
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -66, -63) i64 @ZSTD_compressSequencesAndLiterals(ptr noundef captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #22 {
  %10 = icmp ult i64 %7, %6
  br i1 %10, label %58, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %14 = load ptr, ptr %13, align 8, !tbaa !291
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %18 = load ptr, ptr %17, align 8, !tbaa !292
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 904
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %22, null
  %26 = icmp eq ptr %24, null
  %27 = xor i1 %25, %26
  br i1 %27, label %58, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %30 = load i32, ptr %29, align 8, !tbaa !4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

33:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %16, %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %36 = load ptr, ptr %35, align 8, !tbaa !116
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %34
  %41 = icmp eq ptr %36, null
  %42 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %42, ptr %43, align 8, !tbaa !119
  br i1 %41, label %57, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %36, i64 244
  %46 = load i32, ptr %45, align 4, !tbaa !241
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = add i64 %42, -1
  %50 = getelementptr inbounds nuw i8, ptr %36, i64 384
  %51 = load i32, ptr %50, align 8, !tbaa !293
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !118
  %55 = icmp ugt i64 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

57:                                               ; preds = %40, %48, %44
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

58:                                               ; preds = %20, %9
  %59 = phi i64 [ -64, %20 ], [ -66, %9 ]
  ret i64 %59
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_flushStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #4 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %5 = load i32, ptr %4, align 4, !tbaa !284, !noalias !314
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !289
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !177
  br label %12

11:                                               ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !314
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i64 [ %10, %7 ], [ 0, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %13, ptr %14, align 8, !tbaa !176
  %15 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_endStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #4 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %5 = load i32, ptr %4, align 4, !tbaa !284, !noalias !317
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !289
  br label %10

9:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !317
  br label %10

10:                                               ; preds = %7, %9
  %11 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2)
  %12 = icmp ult i64 %11, -119
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %15 = load i32, ptr %14, align 4, !tbaa !245
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %19 = load i32, ptr %18, align 4, !tbaa !299
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i64 3, i64 0
  br i1 %20, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %24 = load i32, ptr %23, align 4, !tbaa !216
  %25 = shl nsw i32 %24, 2
  %26 = add i32 %24, 536870912
  %27 = icmp ult i32 %26, 1073741824
  br i1 %27, label %29, label %28, !prof !215, !nosanitize !8

28:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 12) #39, !nosanitize !8
  unreachable, !nosanitize !8

29:                                               ; preds = %17, %22
  %30 = phi i32 [ 0, %17 ], [ %25, %22 ]
  %31 = add nuw i64 %11, %21
  %32 = sext i32 %30 to i64
  %33 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %32), !nosanitize !8
  %34 = extractvalue { i64, i1 } %33, 1, !nosanitize !8
  br i1 %34, label %35, label %36, !prof !9, !nosanitize !8

35:                                               ; preds = %29
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

36:                                               ; preds = %29
  %37 = extractvalue { i64, i1 } %33, 0, !nosanitize !8
  br label %38

38:                                               ; preds = %13, %10, %36
  %39 = phi i64 [ %11, %10 ], [ %37, %36 ], [ %11, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_defaultCLevel() local_unnamed_addr #8 {
  ret i32 3
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getCParams(ptr dead_on_unwind noalias readnone sret(%struct.ZSTD_compressionParameters) align 4 captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

7:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getParams(ptr dead_on_unwind noalias readnone sret(%struct.ZSTD_parameters) align 4 captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

7:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((216, 232)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %2, ptr %6, align 8, !tbaa !320
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %5, ptr %7, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_CCtxParams_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((200, 216)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %6, align 8, !tbaa !320
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %5, ptr %7, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

declare i64 @ZSTD_ldm_getTableSize(ptr noundef byval(%struct.ldmParams_t) align 8) local_unnamed_addr #16

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 0) i64 @ZSTD_resetCCtx_internal(ptr noundef initializes((240, 464), (968, 972)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #4 {
  %5 = alloca %struct.ldmParams_t, align 8
  %6 = alloca %struct.ldmParams_t, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i32 1, ptr %8, align 8, !tbaa !221
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %9, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !117
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %10, ptr noundef nonnull %14) #36
  br label %15

15:                                               ; preds = %13, %4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %17 = load i32, ptr %16, align 4, !tbaa !88
  %18 = icmp ult i32 %17, 64
  br i1 %18, label %20, label %19, !prof !215, !nosanitize !8

19:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %15
  %21 = zext nneg i32 %17 to i64
  %22 = shl nuw i64 1, %21
  %23 = icmp eq i64 %2, 0
  %24 = tail call i64 @llvm.umin.i64(i64 %22, i64 %2)
  %25 = select i1 %23, i64 1, i64 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %27 = load i64, ptr %26, align 8, !tbaa !83
  %28 = tail call i64 @llvm.umin.i64(i64 %27, i64 %25)
  %29 = getelementptr i8, ptr %0, i64 448
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %65, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %33 = load i32, ptr %32, align 8, !tbaa !108
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = lshr i64 %28, 8
  %37 = add nuw i64 %36, %28
  %38 = icmp ult i64 %28, 131072
  %39 = sub nuw nsw i64 131072, %28
  %40 = lshr i64 %39, 11
  %41 = select i1 %38, i64 %40, i64 0
  %42 = add nuw i64 %37, %41
  %43 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %42, 0
  %44 = freeze { i64, i1 } %43
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !8
  br i1 %45, label %46, label %47, !prof !9, !nosanitize !8

46:                                               ; preds = %35
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

47:                                               ; preds = %35
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !8
  %49 = icmp eq i64 %48, 0
  %50 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %48, i64 1)
  %51 = extractvalue { i64, i1 } %50, 0
  %52 = select i1 %49, i64 -71, i64 %51
  %53 = extractvalue { i64, i1 } %50, 1
  br i1 %53, label %54, label %55, !prof !9, !nosanitize !8

54:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

55:                                               ; preds = %31, %47
  %56 = phi i64 [ 0, %31 ], [ %52, %47 ]
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %58 = load i32, ptr %57, align 4, !tbaa !107
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %25, i64 %28), !nosanitize !8
  %62 = extractvalue { i64, i1 } %61, 0, !nosanitize !8
  %63 = extractvalue { i64, i1 } %61, 1, !nosanitize !8
  br i1 %63, label %64, label %65, !prof !9, !nosanitize !8

64:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

65:                                               ; preds = %20, %55, %60
  %66 = phi i64 [ %56, %60 ], [ %56, %55 ], [ 0, %20 ]
  %67 = phi i64 [ %62, %60 ], [ 0, %55 ], [ 0, %20 ]
  %68 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10, i64 noundef %28) #36
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %71 = load i64, ptr %70, align 8, !tbaa !52
  %72 = icmp eq i64 %71, 0
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %74 = load i32, ptr %73, align 8, !tbaa !80
  %75 = load ptr, ptr %29, align 8, !tbaa !320
  %76 = icmp ne ptr %75, null
  %77 = load i64, ptr %26, align 8, !tbaa !83
  %78 = load i32, ptr %16, align 4, !tbaa !72
  %79 = freeze i32 %78
  %80 = icmp ult i32 %79, 64
  br i1 %80, label %82, label %81, !prof !215, !nosanitize !8

81:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

82:                                               ; preds = %65
  br i1 %23, label %90, label %83

83:                                               ; preds = %82
  %84 = zext nneg i32 %79 to i64
  %85 = shl nuw i64 1, %84
  %86 = tail call i64 @llvm.umin.i64(i64 %85, i64 %2)
  %87 = icmp eq i64 %77, 0
  %88 = select i1 %87, i64 131072, i64 %77
  %89 = tail call i64 @llvm.umin.i64(i64 %88, i64 %86)
  br label %90

90:                                               ; preds = %83, %82
  %91 = phi i64 [ 1, %82 ], [ %89, %83 ]
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %93 = load i32, ptr %92, align 4, !tbaa !76
  %94 = icmp eq i32 %93, 3
  %95 = or i1 %76, %94
  %96 = select i1 %95, i64 3, i64 4
  %97 = udiv i64 %91, %96
  %98 = add nuw i64 %91, 32
  %99 = icmp samesign ult i64 %97, 2305843009213693952
  br i1 %99, label %101, label %100, !prof !215, !nosanitize !8

100:                                              ; preds = %90
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

101:                                              ; preds = %90
  %102 = shl nuw i64 %97, 3
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %102, i64 63), !nosanitize !8
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !8
  br i1 %104, label %105, label %106, !prof !9, !nosanitize !8

105:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

106:                                              ; preds = %101
  %107 = extractvalue { i64, i1 } %103, 0, !nosanitize !8
  %108 = and i64 %107, -64
  %109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %98, i64 %108), !nosanitize !8
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !8
  br i1 %110, label %111, label %112, !prof !9, !nosanitize !8

111:                                              ; preds = %106
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

112:                                              ; preds = %106
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !8
  %114 = mul nuw nsw i64 %97, 3
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 %114), !nosanitize !8
  %116 = extractvalue { i64, i1 } %115, 0, !nosanitize !8
  %117 = extractvalue { i64, i1 } %115, 1, !nosanitize !8
  br i1 %117, label %118, label %119, !prof !9, !nosanitize !8

118:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

119:                                              ; preds = %112
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %121 = load i32, ptr %120, align 4, !tbaa !77
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %137, label %123

123:                                              ; preds = %119
  %124 = add i32 %121, -3
  %125 = icmp ult i32 %124, 3
  %126 = icmp eq i32 %74, 1
  %127 = and i1 %126, %125
  br i1 %127, label %137, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %130 = load i32, ptr %129, align 4, !tbaa !73
  %131 = icmp ult i32 %130, 64
  br i1 %131, label %133, label %132, !prof !215, !nosanitize !8

132:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

133:                                              ; preds = %128
  %134 = zext nneg i32 %130 to i64
  %135 = shl nuw i64 1, %134
  %136 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %135, i64 4)
  br label %137

137:                                              ; preds = %133, %123, %119
  %138 = phi { i64, i1 } [ %136, %133 ], [ zeroinitializer, %123 ], [ zeroinitializer, %119 ]
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %140 = load i32, ptr %139, align 4, !tbaa !74
  %141 = icmp ult i32 %140, 64
  br i1 %141, label %143, label %142, !prof !215, !nosanitize !8

142:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

143:                                              ; preds = %137
  %144 = zext nneg i32 %140 to i64
  %145 = shl nuw i64 1, %144
  br i1 %94, label %146, label %152

146:                                              ; preds = %143
  %147 = icmp samesign ugt i32 %79, 17
  br i1 %147, label %153, label %148

148:                                              ; preds = %146
  %149 = icmp eq i32 %79, 0
  %150 = zext nneg i32 %79 to i64
  %151 = shl nuw nsw i64 4, %150
  br i1 %149, label %152, label %153

152:                                              ; preds = %148, %143
  br label %153

153:                                              ; preds = %152, %148, %146
  %154 = phi i64 [ 0, %152 ], [ %151, %148 ], [ 524288, %146 ]
  %155 = extractvalue { i64, i1 } %138, 0, !nosanitize !8
  %156 = extractvalue { i64, i1 } %138, 1, !nosanitize !8
  br i1 %156, label %157, label %158, !prof !9, !nosanitize !8

157:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

158:                                              ; preds = %153
  %159 = icmp samesign ult i32 %140, 62
  br i1 %159, label %161, label %160, !prof !215, !nosanitize !8

160:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

161:                                              ; preds = %158
  %162 = shl nuw i64 4, %144
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %155, i64 %162), !nosanitize !8
  %164 = extractvalue { i64, i1 } %163, 1, !nosanitize !8
  br i1 %164, label %165, label %166, !prof !9, !nosanitize !8

165:                                              ; preds = %161
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

166:                                              ; preds = %161
  %167 = extractvalue { i64, i1 } %163, 0, !nosanitize !8
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %167, i64 %154), !nosanitize !8
  %169 = extractvalue { i64, i1 } %168, 1, !nosanitize !8
  br i1 %169, label %170, label %171, !prof !9, !nosanitize !8

170:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

171:                                              ; preds = %166
  %172 = extractvalue { i64, i1 } %168, 0, !nosanitize !8
  %173 = add i32 %121, -6
  %174 = icmp ult i32 %173, -3
  %175 = icmp ne i32 %74, 1
  %176 = or i1 %175, %174
  %177 = add nuw i64 %145, 63
  %178 = and i64 %177, -64
  %179 = select i1 %176, i64 0, i64 %178
  %180 = icmp ult i32 %121, 7
  %181 = select i1 %180, i64 0, i64 149248
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %172, i64 %181), !nosanitize !8
  %183 = extractvalue { i64, i1 } %182, 1, !nosanitize !8
  br i1 %183, label %184, label %185, !prof !9, !nosanitize !8

184:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

185:                                              ; preds = %171
  %186 = extractvalue { i64, i1 } %182, 0, !nosanitize !8
  %187 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 128), !nosanitize !8
  %188 = extractvalue { i64, i1 } %187, 1, !nosanitize !8
  br i1 %188, label %189, label %190, !prof !9, !nosanitize !8

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

190:                                              ; preds = %185
  %191 = extractvalue { i64, i1 } %187, 0, !nosanitize !8
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %191, i64 %179), !nosanitize !8
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !8
  br i1 %193, label %194, label %195, !prof !9, !nosanitize !8

194:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

195:                                              ; preds = %190
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 4 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !260
  %197 = tail call i64 @ZSTD_ldm_getTableSize(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 4 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !260
  %198 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %6, i64 noundef %91) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %199 = load i32, ptr %10, align 4, !tbaa !322
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %198, i64 12), !nosanitize !8
  %203 = extractvalue { i64, i1 } %202, 1, !nosanitize !8
  br i1 %203, label %204, label %205, !prof !9, !nosanitize !8

204:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

205:                                              ; preds = %201
  %206 = extractvalue { i64, i1 } %202, 0, !nosanitize !8
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %206, i64 63), !nosanitize !8
  %208 = extractvalue { i64, i1 } %207, 1, !nosanitize !8
  br i1 %208, label %209, label %210, !prof !9, !nosanitize !8

209:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

210:                                              ; preds = %205
  %211 = extractvalue { i64, i1 } %207, 0, !nosanitize !8
  %212 = and i64 %211, -64
  br label %213

213:                                              ; preds = %210, %195
  %214 = phi i64 [ %212, %210 ], [ 0, %195 ]
  %215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 range(i64 2, 1) %66), !nosanitize !8
  %216 = extractvalue { i64, i1 } %215, 0, !nosanitize !8
  %217 = extractvalue { i64, i1 } %215, 1, !nosanitize !8
  br i1 %217, label %218, label %219, !prof !9, !nosanitize !8

218:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

219:                                              ; preds = %213
  %220 = udiv i64 %91, 3
  %221 = lshr i64 %91, 10
  %222 = add nuw nsw i64 %221, 2
  %223 = add nuw nsw i64 %222, %220
  br i1 %76, label %224, label %235

224:                                              ; preds = %219
  %225 = icmp samesign ult i64 %223, 1152921504606846976
  br i1 %225, label %227, label %226, !prof !215, !nosanitize !8

226:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

227:                                              ; preds = %224
  %228 = shl nuw i64 %223, 4
  %229 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %228, i64 63), !nosanitize !8
  %230 = extractvalue { i64, i1 } %229, 1, !nosanitize !8
  br i1 %230, label %231, label %232, !prof !9, !nosanitize !8

231:                                              ; preds = %227
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

232:                                              ; preds = %227
  %233 = extractvalue { i64, i1 } %229, 0, !nosanitize !8
  %234 = and i64 %233, -64
  br label %235

235:                                              ; preds = %232, %219
  %236 = phi i64 [ %234, %232 ], [ 0, %219 ]
  %237 = select i1 %72, i64 20184, i64 25464
  %238 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %237, i64 %197), !nosanitize !8
  %239 = extractvalue { i64, i1 } %238, 1, !nosanitize !8
  br i1 %239, label %240, label %241, !prof !9, !nosanitize !8

240:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

241:                                              ; preds = %235
  %242 = extractvalue { i64, i1 } %238, 0, !nosanitize !8
  %243 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 %214), !nosanitize !8
  %244 = extractvalue { i64, i1 } %243, 1, !nosanitize !8
  br i1 %244, label %245, label %246, !prof !9, !nosanitize !8

245:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

246:                                              ; preds = %241
  %247 = extractvalue { i64, i1 } %243, 0, !nosanitize !8
  %248 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %247, i64 %196), !nosanitize !8
  %249 = extractvalue { i64, i1 } %248, 1, !nosanitize !8
  br i1 %249, label %250, label %251, !prof !9, !nosanitize !8

250:                                              ; preds = %246
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

251:                                              ; preds = %246
  %252 = extractvalue { i64, i1 } %248, 0, !nosanitize !8
  %253 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %252, i64 %116), !nosanitize !8
  %254 = extractvalue { i64, i1 } %253, 1, !nosanitize !8
  br i1 %254, label %255, label %256, !prof !9, !nosanitize !8

255:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

256:                                              ; preds = %251
  %257 = extractvalue { i64, i1 } %253, 0, !nosanitize !8
  %258 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %257, i64 %216), !nosanitize !8
  %259 = extractvalue { i64, i1 } %258, 1, !nosanitize !8
  br i1 %259, label %260, label %261, !prof !9, !nosanitize !8

260:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

261:                                              ; preds = %256
  %262 = extractvalue { i64, i1 } %258, 0, !nosanitize !8
  %263 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %262, i64 %236), !nosanitize !8
  %264 = extractvalue { i64, i1 } %263, 1, !nosanitize !8
  br i1 %264, label %265, label %266, !prof !9, !nosanitize !8

265:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

266:                                              ; preds = %261
  %267 = extractvalue { i64, i1 } %263, 0, !nosanitize !8
  %268 = icmp ult i64 %267, -119
  br i1 %268, label %269, label %388

269:                                              ; preds = %266
  %270 = load i64, ptr %70, align 8, !tbaa !52
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %269
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 764
  %274 = load i32, ptr %273, align 4, !tbaa !323
  %275 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %274, i32 1), !nosanitize !8
  %276 = extractvalue { i32, i1 } %275, 1, !nosanitize !8
  br i1 %276, label %277, label %278, !prof !9, !nosanitize !8

277:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #39, !nosanitize !8
  unreachable, !nosanitize !8

278:                                              ; preds = %272
  %279 = extractvalue { i32, i1 } %275, 0, !nosanitize !8
  store i32 %279, ptr %273, align 4, !tbaa !323
  br label %280

280:                                              ; preds = %278, %269
  %281 = load ptr, ptr %7, align 8, !tbaa !61
  %282 = getelementptr i8, ptr %0, i64 712
  %283 = load ptr, ptr %282, align 8, !tbaa !62
  %284 = ptrtoint ptr %283 to i64
  %285 = ptrtoint ptr %281 to i64
  %286 = sub i64 %284, %285
  %287 = icmp ult i64 %286, %267
  %288 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %267, i64 3), !nosanitize !8
  %289 = extractvalue { i64, i1 } %288, 1, !nosanitize !8
  br i1 %289, label %290, label %291, !prof !9, !nosanitize !8

290:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

291:                                              ; preds = %280
  %292 = extractvalue { i64, i1 } %288, 0, !nosanitize !8
  %293 = getelementptr i8, ptr %0, i64 728
  %294 = load ptr, ptr %293, align 8, !tbaa !55
  %295 = getelementptr i8, ptr %0, i64 744
  %296 = load ptr, ptr %295, align 8, !tbaa !275
  %297 = ptrtoint ptr %296 to i64
  %298 = ptrtoint ptr %294 to i64
  %299 = sub i64 %297, %298
  %300 = icmp ult i64 %299, %292
  br i1 %300, label %305, label %301

301:                                              ; preds = %291
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 764
  %303 = load i32, ptr %302, align 4, !tbaa !323
  %304 = icmp sgt i32 %303, 128
  br label %305

305:                                              ; preds = %291, %301
  %306 = phi i1 [ false, %291 ], [ %304, %301 ]
  %307 = select i1 %287, i1 true, i1 %306
  br i1 %307, label %308, label %363

308:                                              ; preds = %305
  br i1 %271, label %309, label %388

309:                                              ; preds = %308
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %311 = getelementptr i8, ptr %0, i64 904
  %312 = load ptr, ptr %311, align 8
  %313 = getelementptr i8, ptr %0, i64 912
  %314 = load ptr, ptr %313, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %315 = icmp eq ptr %281, null
  br i1 %315, label %320, label %316

316:                                              ; preds = %309
  %317 = icmp eq ptr %312, null
  br i1 %317, label %319, label %318

318:                                              ; preds = %316
  tail call void %312(ptr noundef %314, ptr noundef nonnull %281) #36, !inline_history !259
  br label %320

319:                                              ; preds = %316
  tail call void @free(ptr noundef nonnull %281) #36
  br label %320

320:                                              ; preds = %309, %318, %319
  %321 = load ptr, ptr %310, align 8, !tbaa !48
  %322 = icmp eq ptr %321, null
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = load ptr, ptr %313, align 8
  %325 = tail call ptr %321(ptr noundef %324, i64 noundef %267) #36, !inline_history !324
  br label %328

326:                                              ; preds = %320
  %327 = tail call noalias ptr @malloc(i64 noundef %267) #37
  br label %328

328:                                              ; preds = %326, %323
  %329 = phi ptr [ %325, %323 ], [ %327, %326 ]
  %330 = icmp eq ptr %329, null
  br i1 %330, label %388, label %331

331:                                              ; preds = %328
  store ptr %329, ptr %7, align 8, !tbaa !61
  %332 = getelementptr inbounds nuw i8, ptr %329, i64 %267
  store ptr %332, ptr %282, align 8, !tbaa !62
  %333 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %329, ptr %333, align 8, !tbaa !54
  %334 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %329, ptr %334, align 8, !tbaa !56
  %335 = ptrtoint ptr %332 to i64
  %336 = and i64 %335, 63
  %337 = sub nsw i64 0, %336
  %338 = getelementptr inbounds i8, ptr %332, i64 %337
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %338, ptr %339, align 8, !tbaa !270
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i32 0, ptr %340, align 8, !tbaa !271
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 0, ptr %341, align 4, !tbaa !325
  store ptr %329, ptr %293, align 8, !tbaa !55
  store ptr %338, ptr %295, align 8, !tbaa !275
  %342 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %342, align 8, !tbaa !53
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %343, align 4, !tbaa !323
  %344 = getelementptr inbounds nuw i8, ptr %329, i64 5632
  %345 = icmp samesign ult i64 %267, 5632
  br i1 %345, label %346, label %347

346:                                              ; preds = %331
  store i8 1, ptr %342, align 8, !tbaa !53
  store ptr null, ptr %69, align 8, !tbaa !57
  br label %388

347:                                              ; preds = %331
  store ptr %344, ptr %333, align 8, !tbaa !54
  store ptr %344, ptr %293, align 8, !tbaa !55
  store ptr %344, ptr %334, align 8, !tbaa !56
  store ptr %329, ptr %69, align 8, !tbaa !57
  %348 = getelementptr inbounds nuw i8, ptr %329, i64 11264
  %349 = icmp samesign ult i64 %267, 11264
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  store i8 1, ptr %342, align 8, !tbaa !53
  %351 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr null, ptr %351, align 8, !tbaa !58
  br label %388

352:                                              ; preds = %347
  store ptr %348, ptr %333, align 8, !tbaa !54
  store ptr %348, ptr %293, align 8, !tbaa !55
  store ptr %348, ptr %334, align 8, !tbaa !56
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %344, ptr %353, align 8, !tbaa !58
  %354 = icmp samesign ult i64 %267, 20184
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  store i8 1, ptr %342, align 8, !tbaa !53
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr null, ptr %356, align 8, !tbaa !59
  br label %388

357:                                              ; preds = %352
  %358 = getelementptr inbounds nuw i8, ptr %329, i64 20184
  store ptr %358, ptr %333, align 8, !tbaa !54
  store ptr %358, ptr %334, align 8, !tbaa !56
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %348, ptr %359, align 8, !tbaa !59
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %360, align 8, !tbaa !60
  store ptr %358, ptr %293, align 8, !tbaa !55
  %361 = getelementptr inbounds i8, ptr %332, i64 %337
  store ptr %361, ptr %295, align 8, !tbaa !275
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %362, align 8, !tbaa !53
  br label %375

363:                                              ; preds = %305
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %365 = load ptr, ptr %364, align 8, !tbaa !54
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %367 = load i32, ptr %366, align 8, !tbaa !271
  %368 = and i64 %284, 63
  %369 = sub nsw i64 0, %368
  %370 = icmp ugt i32 %367, 1
  store ptr %365, ptr %293, align 8, !tbaa !55
  %371 = getelementptr inbounds i8, ptr %283, i64 %369
  store ptr %371, ptr %295, align 8, !tbaa !275
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %372, align 8, !tbaa !53
  br i1 %370, label %373, label %375

373:                                              ; preds = %363
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i32 1, ptr %374, align 8, !tbaa !271
  br label %375

375:                                              ; preds = %357, %363, %373
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 3496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %376, ptr noundef nonnull align 4 dereferenceable(28) %16, i64 28, i1 false), !tbaa.struct !78
  %377 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %378 = load i32, ptr %377, align 8, !tbaa !113
  %379 = icmp eq i32 %378, 1
  %380 = zext i1 %379 to i32
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store i32 %380, ptr %381, align 8, !tbaa !326
  %382 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 1), !nosanitize !8
  %383 = extractvalue { i64, i1 } %382, 1, !nosanitize !8
  br i1 %383, label %384, label %385, !prof !9, !nosanitize !8

384:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

385:                                              ; preds = %375
  %386 = extractvalue { i64, i1 } %382, 0, !nosanitize !8
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %386, ptr %387, align 8, !tbaa !119
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable

388:                                              ; preds = %328, %355, %350, %346, %308, %266
  %389 = phi i64 [ %267, %266 ], [ -64, %355 ], [ -64, %350 ], [ -64, %346 ], [ -64, %328 ], [ -64, %308 ]
  ret i64 %389
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #28

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i32 @HUF_validateCTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare i32 @HUF_optimalTableLog(i32 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i64 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((24, 32)) %0, ptr noundef readonly captures(none) %1, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) unnamed_addr #4 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 2224
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 772
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !155
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %22 = load ptr, ptr %21, align 8, !tbaa !157
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %23, align 8, !tbaa !327
  %24 = load ptr, ptr %1, align 8, !tbaa !154
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !158
  %27 = ptrtoint ptr %26 to i64
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %27, %28
  %30 = and i64 %29, 34359738360
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %75, label %32

32:                                               ; preds = %11
  %33 = lshr exact i64 %29, 3
  %34 = and i64 %33, 4294967295
  br label %35

35:                                               ; preds = %70, %32
  %36 = phi i64 [ 0, %32 ], [ %73, %70 ]
  %37 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %39 = load i16, ptr %38, align 4, !tbaa !159
  %40 = load i32, ptr %37, align 4, !tbaa !162
  %41 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %40, i1 true)
  %42 = getelementptr inbounds nuw i8, ptr %37, i64 6
  %43 = load i16, ptr %42, align 2, !tbaa !163
  %44 = zext i16 %43 to i32
  %45 = icmp ugt i16 %39, 63
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = zext i16 %39 to i32
  %48 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %47, i1 true)
  %49 = trunc nuw nsw i32 %48 to i8
  %50 = sub nuw nsw i8 50, %49
  br label %55

51:                                               ; preds = %35
  %52 = zext nneg i16 %39 to i64
  %53 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !164
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i8 [ %54, %51 ], [ %50, %46 ]
  %57 = getelementptr inbounds nuw i8, ptr %20, i64 %36
  store i8 %56, ptr %57, align 1, !tbaa !164
  %58 = trunc nuw nsw i32 %41 to i8
  %59 = xor i8 %58, 31
  %60 = getelementptr inbounds nuw i8, ptr %18, i64 %36
  store i8 %59, ptr %60, align 1, !tbaa !164
  %61 = icmp ugt i16 %43, 127
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %44, i1 true)
  %64 = trunc nuw nsw i32 %63 to i8
  %65 = sub nuw nsw i8 67, %64
  br label %70

66:                                               ; preds = %55
  %67 = zext nneg i16 %43 to i64
  %68 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !164
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i8 [ %69, %66 ], [ %65, %62 ]
  %72 = getelementptr inbounds nuw i8, ptr %22, i64 %36
  store i8 %71, ptr %72, align 1, !tbaa !164
  %73 = add nuw nsw i64 %36, 1
  %74 = icmp eq i64 %73, %34
  br i1 %74, label %75, label %35, !llvm.loop !165

75:                                               ; preds = %70, %11
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %77 = load i32, ptr %76, align 8, !tbaa !167
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %81 = load i32, ptr %80, align 4, !tbaa !168
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw i8, ptr %20, i64 %82
  store i8 35, ptr %83, align 1, !tbaa !164
  %84 = load i32, ptr %76, align 8, !tbaa !167
  br label %85

85:                                               ; preds = %79, %75
  %86 = phi i32 [ %84, %79 ], [ %77, %75 ]
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %90 = load i32, ptr %89, align 4, !tbaa !168
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds nuw i8, ptr %22, i64 %91
  store i8 52, ptr %92, align 1, !tbaa !164
  br label %93

93:                                               ; preds = %85, %88
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %94, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  store i32 35, ptr %12, align 4, !tbaa !4
  %95 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %12, ptr noundef %20, i64 noundef %2, ptr noundef %9, i64 noundef %10) #36
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %97 = load i32, ptr %96, align 4, !tbaa !190
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 3548
  store i32 %97, ptr %98, align 4, !tbaa !190
  %99 = load i32, ptr %12, align 4, !tbaa !4
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 2224
  %101 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %98, ptr noundef %8, i32 noundef %99, i64 noundef %95, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %100, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #36
  store i32 %101, ptr %0, align 8, !tbaa !330
  %102 = ptrtoint ptr %6 to i64
  %103 = ptrtoint ptr %5 to i64
  %104 = sub i64 %102, %103
  %105 = load i32, ptr %12, align 4, !tbaa !4
  %106 = call i64 @ZSTD_buildCTable(ptr noundef %5, i64 noundef %104, ptr noundef nonnull %15, i32 noundef 9, i32 noundef %101, ptr noundef %8, i32 noundef %105, ptr noundef %20, i64 noundef %2, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %100, i64 noundef 1316, ptr noundef %9, i64 noundef %10) #36
  %107 = icmp ult i64 %106, -119
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = icmp eq i32 %101, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  store i64 %106, ptr %23, align 8, !tbaa !327
  br label %113

111:                                              ; preds = %93
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %106, ptr %112, align 8, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %158

113:                                              ; preds = %108, %110
  %114 = getelementptr inbounds nuw i8, ptr %5, i64 %106
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i32 31, ptr %13, align 4, !tbaa !4
  %115 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %13, ptr noundef %18, i64 noundef %2, ptr noundef %9, i64 noundef %10) #36
  %116 = load i32, ptr %13, align 4, !tbaa !4
  %117 = icmp ult i32 %116, 29
  %118 = zext i1 %117 to i32
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %120 = load i32, ptr %119, align 4, !tbaa !194
  %121 = getelementptr inbounds nuw i8, ptr %4, i64 3540
  store i32 %120, ptr %121, align 4, !tbaa !194
  %122 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %121, ptr noundef %8, i32 noundef %116, i64 noundef %115, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %118, i32 noundef %7) #36
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %122, ptr %123, align 4, !tbaa !332
  %124 = ptrtoint ptr %114 to i64
  %125 = sub i64 %102, %124
  %126 = load i32, ptr %13, align 4, !tbaa !4
  %127 = call i64 @ZSTD_buildCTable(ptr noundef %114, i64 noundef %125, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %122, ptr noundef %8, i32 noundef %126, ptr noundef %18, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #36
  %128 = icmp ult i64 %127, -119
  br i1 %128, label %129, label %132

129:                                              ; preds = %113
  %130 = icmp eq i32 %122, 2
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  store i64 %127, ptr %23, align 8, !tbaa !327
  br label %134

132:                                              ; preds = %113
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %127, ptr %133, align 8, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %158

134:                                              ; preds = %129, %131
  %135 = getelementptr inbounds nuw i8, ptr %114, i64 %127
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  store i32 52, ptr %14, align 4, !tbaa !4
  %136 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %14, ptr noundef %22, i64 noundef %2, ptr noundef %9, i64 noundef %10) #36
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %138 = load i32, ptr %137, align 4, !tbaa !195
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 3544
  store i32 %138, ptr %139, align 4, !tbaa !195
  %140 = load i32, ptr %14, align 4, !tbaa !4
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 772
  %142 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %139, ptr noundef %8, i32 noundef %140, i64 noundef %136, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %141, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #36
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %142, ptr %143, align 8, !tbaa !333
  %144 = ptrtoint ptr %135 to i64
  %145 = sub i64 %102, %144
  %146 = load i32, ptr %14, align 4, !tbaa !4
  %147 = call i64 @ZSTD_buildCTable(ptr noundef %135, i64 noundef %145, ptr noundef nonnull %16, i32 noundef 9, i32 noundef %142, ptr noundef %8, i32 noundef %146, ptr noundef %22, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %141, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #36
  %148 = icmp ult i64 %147, -119
  br i1 %148, label %149, label %152

149:                                              ; preds = %134
  %150 = icmp eq i32 %142, 2
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  store i64 %147, ptr %23, align 8, !tbaa !327
  br label %154

152:                                              ; preds = %134
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %147, ptr %153, align 8, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %158

154:                                              ; preds = %149, %151
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %155 = add nuw nsw i64 %127, %106
  %156 = add nuw nsw i64 %155, %147
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %156, ptr %157, align 8, !tbaa !331
  br label %158

158:                                              ; preds = %152, %132, %111, %154
  ret void
}

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare i64 @ZSTD_buildCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #24 {
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = load i32, ptr %6, align 4, !tbaa !90
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = icmp ugt i32 %9, 5
  %11 = zext i1 %10 to i32
  %12 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %7, i32 %11), !nosanitize !8
  %13 = extractvalue { i32, i1 } %12, 1, !nosanitize !8
  br i1 %13, label %14, label %15, !prof !9, !nosanitize !8

14:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %17 = extractvalue { i32, i1 } %12, 0, !nosanitize !8
  %18 = load i32, ptr %16, align 4, !tbaa !88
  %19 = icmp ult i32 %18, 32
  br i1 %19, label %21, label %20, !prof !215, !nosanitize !8

20:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

21:                                               ; preds = %15
  %22 = shl nuw i32 1, %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = getelementptr i8, ptr %0, i64 8
  %25 = load ptr, ptr %24, align 8, !tbaa !210
  %26 = ptrtoint ptr %4 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = icmp ult i32 %29, -624951295
  br i1 %30, label %353, label %31

31:                                               ; preds = %21
  %32 = icmp ult i32 %17, 32
  br i1 %32, label %34, label %33, !prof !215, !nosanitize !8

33:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %31
  %35 = shl nuw i32 1, %17
  %36 = ptrtoint ptr %3 to i64
  %37 = sub i64 %36, %27
  %38 = trunc i64 %37 to i32
  %39 = add i32 %35, -1
  %40 = and i32 %39, %38
  %41 = icmp samesign ult i32 %40, 2
  %42 = tail call i32 @llvm.umax.i32(i32 %35, i32 2)
  %43 = select i1 %41, i32 %42, i32 0
  %44 = add nuw i32 %43, %40
  %45 = tail call i32 @llvm.umax.i32(i32 range(i32 1, -2147483647) %22, i32 %35)
  %46 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %45), !nosanitize !8
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !8
  br i1 %47, label %48, label %49, !prof !9, !nosanitize !8

48:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

49:                                               ; preds = %34
  %50 = extractvalue { i32, i1 } %46, 0, !nosanitize !8
  %51 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %38, i32 %50), !nosanitize !8
  %52 = extractvalue { i32, i1 } %51, 0, !nosanitize !8
  %53 = extractvalue { i32, i1 } %51, 1, !nosanitize !8
  br i1 %53, label %54, label %55, !prof !9, !nosanitize !8

54:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

55:                                               ; preds = %49
  %56 = zext i32 %52 to i64
  %57 = getelementptr inbounds nuw i8, ptr %25, i64 %56
  store ptr %57, ptr %24, align 8, !tbaa !210
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %59 = load ptr, ptr %58, align 8, !tbaa !207
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 %56
  store ptr %60, ptr %58, align 8, !tbaa !207
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %62 = load i32, ptr %61, align 4, !tbaa !208
  %63 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %52, i32 2), !nosanitize !8
  %64 = extractvalue { i32, i1 } %63, 0, !nosanitize !8
  %65 = extractvalue { i32, i1 } %63, 1, !nosanitize !8
  br i1 %65, label %66, label %67, !prof !9, !nosanitize !8

66:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

67:                                               ; preds = %55
  %68 = icmp ult i32 %62, %64
  br i1 %68, label %75, label %69

69:                                               ; preds = %67
  %70 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %62, i32 %52), !nosanitize !8
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !8
  br i1 %71, label %72, label %73, !prof !9, !nosanitize !8

72:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

73:                                               ; preds = %69
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !8
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ %74, %73 ], [ 2, %67 ]
  store i32 %76, ptr %61, align 4, !tbaa !208
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %78 = load i32, ptr %77, align 8, !tbaa !209
  %79 = icmp ult i32 %78, %64
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %78, i32 %52), !nosanitize !8
  %82 = extractvalue { i32, i1 } %81, 1, !nosanitize !8
  br i1 %82, label %83, label %84, !prof !9, !nosanitize !8

83:                                               ; preds = %80
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

84:                                               ; preds = %80
  %85 = extractvalue { i32, i1 } %81, 0, !nosanitize !8
  br label %86

86:                                               ; preds = %84, %75
  %87 = phi i32 [ %85, %84 ], [ 2, %75 ]
  store i32 %87, ptr %77, align 8, !tbaa !209
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %89 = load i32, ptr %88, align 8, !tbaa !334
  %90 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %89, i32 1), !nosanitize !8
  %91 = extractvalue { i32, i1 } %90, 1, !nosanitize !8
  br i1 %91, label %92, label %93, !prof !9, !nosanitize !8

92:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

93:                                               ; preds = %86
  %94 = extractvalue { i32, i1 } %90, 0, !nosanitize !8
  store i32 %94, ptr %88, align 8, !tbaa !334
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %96 = load ptr, ptr %95, align 8, !tbaa !54
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %96, ptr %97, align 8, !tbaa !56
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %99 = load i32, ptr %98, align 4, !tbaa !89
  %100 = icmp ult i32 %99, 32
  br i1 %100, label %102, label %101, !prof !215, !nosanitize !8

101:                                              ; preds = %93
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

102:                                              ; preds = %93
  %103 = shl nuw i32 1, %99
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %105 = load ptr, ptr %104, align 8, !tbaa !272
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %105, i32 noundef %103, i32 noundef %52)
  %106 = load i32, ptr %8, align 4, !tbaa !94
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %108 = load i32, ptr %107, align 8, !tbaa !80
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %110 = load i32, ptr %109, align 4, !tbaa !335
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = icmp eq i32 %106, 1
  br i1 %113, label %331, label %114

114:                                              ; preds = %112
  %115 = add i32 %106, -3
  %116 = icmp ult i32 %115, 3
  %117 = icmp eq i32 %108, 1
  %118 = and i1 %116, %117
  br i1 %118, label %331, label %119

119:                                              ; preds = %114, %102
  %120 = load i32, ptr %6, align 4, !tbaa !90
  %121 = icmp ult i32 %120, 32
  br i1 %121, label %123, label %122, !prof !215, !nosanitize !8

122:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

123:                                              ; preds = %119
  %124 = shl nuw i32 1, %120
  %125 = icmp eq i32 %106, 6
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %127 = load ptr, ptr %126, align 8, !tbaa !273
  br i1 %125, label %128, label %330

128:                                              ; preds = %123
  %129 = sdiv i32 %124, 16
  %130 = icmp sgt i32 %124, 15
  br i1 %130, label %131, label %331

131:                                              ; preds = %128, %326
  %132 = phi i64 [ %134, %326 ], [ 0, %128 ]
  %133 = phi i32 [ %328, %326 ], [ 0, %128 ]
  %134 = add nuw nsw i64 %132, 16
  %135 = getelementptr inbounds nuw [4 x i8], ptr %127, i64 %132
  %136 = load i32, ptr %135, align 4, !tbaa !4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %146, label %138

138:                                              ; preds = %131
  %139 = icmp ult i32 %136, %64
  br i1 %139, label %146, label %140

140:                                              ; preds = %138
  %141 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %136, i32 %52), !nosanitize !8
  %142 = extractvalue { i32, i1 } %141, 1, !nosanitize !8
  br i1 %142, label %143, label %144, !prof !9, !nosanitize !8

143:                                              ; preds = %321, %309, %297, %285, %273, %261, %249, %237, %225, %213, %201, %189, %177, %165, %153, %140
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

144:                                              ; preds = %140
  %145 = extractvalue { i32, i1 } %141, 0, !nosanitize !8
  br label %146

146:                                              ; preds = %144, %138, %131
  %147 = phi i32 [ %145, %144 ], [ 1, %131 ], [ 0, %138 ]
  store i32 %147, ptr %135, align 4, !tbaa !4
  %148 = getelementptr inbounds nuw i8, ptr %135, i64 4
  %149 = load i32, ptr %148, align 4, !tbaa !4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = icmp ult i32 %149, %64
  br i1 %152, label %158, label %153

153:                                              ; preds = %151
  %154 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %52), !nosanitize !8
  %155 = extractvalue { i32, i1 } %154, 1, !nosanitize !8
  br i1 %155, label %143, label %156, !prof !9, !nosanitize !8

156:                                              ; preds = %153
  %157 = extractvalue { i32, i1 } %154, 0, !nosanitize !8
  br label %158

158:                                              ; preds = %156, %151, %146
  %159 = phi i32 [ %157, %156 ], [ 1, %146 ], [ 0, %151 ]
  store i32 %159, ptr %148, align 4, !tbaa !4
  %160 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %161 = load i32, ptr %160, align 4, !tbaa !4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %170, label %163

163:                                              ; preds = %158
  %164 = icmp ult i32 %161, %64
  br i1 %164, label %170, label %165

165:                                              ; preds = %163
  %166 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %161, i32 %52), !nosanitize !8
  %167 = extractvalue { i32, i1 } %166, 1, !nosanitize !8
  br i1 %167, label %143, label %168, !prof !9, !nosanitize !8

168:                                              ; preds = %165
  %169 = extractvalue { i32, i1 } %166, 0, !nosanitize !8
  br label %170

170:                                              ; preds = %168, %163, %158
  %171 = phi i32 [ %169, %168 ], [ 1, %158 ], [ 0, %163 ]
  store i32 %171, ptr %160, align 4, !tbaa !4
  %172 = getelementptr inbounds nuw i8, ptr %135, i64 12
  %173 = load i32, ptr %172, align 4, !tbaa !4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %182, label %175

175:                                              ; preds = %170
  %176 = icmp ult i32 %173, %64
  br i1 %176, label %182, label %177

177:                                              ; preds = %175
  %178 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %173, i32 %52), !nosanitize !8
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !8
  br i1 %179, label %143, label %180, !prof !9, !nosanitize !8

180:                                              ; preds = %177
  %181 = extractvalue { i32, i1 } %178, 0, !nosanitize !8
  br label %182

182:                                              ; preds = %180, %175, %170
  %183 = phi i32 [ %181, %180 ], [ 1, %170 ], [ 0, %175 ]
  store i32 %183, ptr %172, align 4, !tbaa !4
  %184 = getelementptr inbounds nuw i8, ptr %135, i64 16
  %185 = load i32, ptr %184, align 4, !tbaa !4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %194, label %187

187:                                              ; preds = %182
  %188 = icmp ult i32 %185, %64
  br i1 %188, label %194, label %189

189:                                              ; preds = %187
  %190 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %185, i32 %52), !nosanitize !8
  %191 = extractvalue { i32, i1 } %190, 1, !nosanitize !8
  br i1 %191, label %143, label %192, !prof !9, !nosanitize !8

192:                                              ; preds = %189
  %193 = extractvalue { i32, i1 } %190, 0, !nosanitize !8
  br label %194

194:                                              ; preds = %192, %187, %182
  %195 = phi i32 [ %193, %192 ], [ 1, %182 ], [ 0, %187 ]
  store i32 %195, ptr %184, align 4, !tbaa !4
  %196 = getelementptr inbounds nuw i8, ptr %135, i64 20
  %197 = load i32, ptr %196, align 4, !tbaa !4
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %206, label %199

199:                                              ; preds = %194
  %200 = icmp ult i32 %197, %64
  br i1 %200, label %206, label %201

201:                                              ; preds = %199
  %202 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %197, i32 %52), !nosanitize !8
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !8
  br i1 %203, label %143, label %204, !prof !9, !nosanitize !8

204:                                              ; preds = %201
  %205 = extractvalue { i32, i1 } %202, 0, !nosanitize !8
  br label %206

206:                                              ; preds = %204, %199, %194
  %207 = phi i32 [ %205, %204 ], [ 1, %194 ], [ 0, %199 ]
  store i32 %207, ptr %196, align 4, !tbaa !4
  %208 = getelementptr inbounds nuw i8, ptr %135, i64 24
  %209 = load i32, ptr %208, align 4, !tbaa !4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %218, label %211

211:                                              ; preds = %206
  %212 = icmp ult i32 %209, %64
  br i1 %212, label %218, label %213

213:                                              ; preds = %211
  %214 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %209, i32 %52), !nosanitize !8
  %215 = extractvalue { i32, i1 } %214, 1, !nosanitize !8
  br i1 %215, label %143, label %216, !prof !9, !nosanitize !8

216:                                              ; preds = %213
  %217 = extractvalue { i32, i1 } %214, 0, !nosanitize !8
  br label %218

218:                                              ; preds = %216, %211, %206
  %219 = phi i32 [ %217, %216 ], [ 1, %206 ], [ 0, %211 ]
  store i32 %219, ptr %208, align 4, !tbaa !4
  %220 = getelementptr inbounds nuw i8, ptr %135, i64 28
  %221 = load i32, ptr %220, align 4, !tbaa !4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %230, label %223

223:                                              ; preds = %218
  %224 = icmp ult i32 %221, %64
  br i1 %224, label %230, label %225

225:                                              ; preds = %223
  %226 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %221, i32 %52), !nosanitize !8
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !8
  br i1 %227, label %143, label %228, !prof !9, !nosanitize !8

228:                                              ; preds = %225
  %229 = extractvalue { i32, i1 } %226, 0, !nosanitize !8
  br label %230

230:                                              ; preds = %228, %223, %218
  %231 = phi i32 [ %229, %228 ], [ 1, %218 ], [ 0, %223 ]
  store i32 %231, ptr %220, align 4, !tbaa !4
  %232 = getelementptr inbounds nuw i8, ptr %135, i64 32
  %233 = load i32, ptr %232, align 4, !tbaa !4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %242, label %235

235:                                              ; preds = %230
  %236 = icmp ult i32 %233, %64
  br i1 %236, label %242, label %237

237:                                              ; preds = %235
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %52), !nosanitize !8
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !8
  br i1 %239, label %143, label %240, !prof !9, !nosanitize !8

240:                                              ; preds = %237
  %241 = extractvalue { i32, i1 } %238, 0, !nosanitize !8
  br label %242

242:                                              ; preds = %240, %235, %230
  %243 = phi i32 [ %241, %240 ], [ 1, %230 ], [ 0, %235 ]
  store i32 %243, ptr %232, align 4, !tbaa !4
  %244 = getelementptr inbounds nuw i8, ptr %135, i64 36
  %245 = load i32, ptr %244, align 4, !tbaa !4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %254, label %247

247:                                              ; preds = %242
  %248 = icmp ult i32 %245, %64
  br i1 %248, label %254, label %249

249:                                              ; preds = %247
  %250 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %245, i32 %52), !nosanitize !8
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !8
  br i1 %251, label %143, label %252, !prof !9, !nosanitize !8

252:                                              ; preds = %249
  %253 = extractvalue { i32, i1 } %250, 0, !nosanitize !8
  br label %254

254:                                              ; preds = %252, %247, %242
  %255 = phi i32 [ %253, %252 ], [ 1, %242 ], [ 0, %247 ]
  store i32 %255, ptr %244, align 4, !tbaa !4
  %256 = getelementptr inbounds nuw i8, ptr %135, i64 40
  %257 = load i32, ptr %256, align 4, !tbaa !4
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %266, label %259

259:                                              ; preds = %254
  %260 = icmp ult i32 %257, %64
  br i1 %260, label %266, label %261

261:                                              ; preds = %259
  %262 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %257, i32 %52), !nosanitize !8
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !8
  br i1 %263, label %143, label %264, !prof !9, !nosanitize !8

264:                                              ; preds = %261
  %265 = extractvalue { i32, i1 } %262, 0, !nosanitize !8
  br label %266

266:                                              ; preds = %264, %259, %254
  %267 = phi i32 [ %265, %264 ], [ 1, %254 ], [ 0, %259 ]
  store i32 %267, ptr %256, align 4, !tbaa !4
  %268 = getelementptr inbounds nuw i8, ptr %135, i64 44
  %269 = load i32, ptr %268, align 4, !tbaa !4
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %278, label %271

271:                                              ; preds = %266
  %272 = icmp ult i32 %269, %64
  br i1 %272, label %278, label %273

273:                                              ; preds = %271
  %274 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %269, i32 %52), !nosanitize !8
  %275 = extractvalue { i32, i1 } %274, 1, !nosanitize !8
  br i1 %275, label %143, label %276, !prof !9, !nosanitize !8

276:                                              ; preds = %273
  %277 = extractvalue { i32, i1 } %274, 0, !nosanitize !8
  br label %278

278:                                              ; preds = %276, %271, %266
  %279 = phi i32 [ %277, %276 ], [ 1, %266 ], [ 0, %271 ]
  store i32 %279, ptr %268, align 4, !tbaa !4
  %280 = getelementptr inbounds nuw i8, ptr %135, i64 48
  %281 = load i32, ptr %280, align 4, !tbaa !4
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %290, label %283

283:                                              ; preds = %278
  %284 = icmp ult i32 %281, %64
  br i1 %284, label %290, label %285

285:                                              ; preds = %283
  %286 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %281, i32 %52), !nosanitize !8
  %287 = extractvalue { i32, i1 } %286, 1, !nosanitize !8
  br i1 %287, label %143, label %288, !prof !9, !nosanitize !8

288:                                              ; preds = %285
  %289 = extractvalue { i32, i1 } %286, 0, !nosanitize !8
  br label %290

290:                                              ; preds = %288, %283, %278
  %291 = phi i32 [ %289, %288 ], [ 1, %278 ], [ 0, %283 ]
  store i32 %291, ptr %280, align 4, !tbaa !4
  %292 = getelementptr inbounds nuw i8, ptr %135, i64 52
  %293 = load i32, ptr %292, align 4, !tbaa !4
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %302, label %295

295:                                              ; preds = %290
  %296 = icmp ult i32 %293, %64
  br i1 %296, label %302, label %297

297:                                              ; preds = %295
  %298 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %293, i32 %52), !nosanitize !8
  %299 = extractvalue { i32, i1 } %298, 1, !nosanitize !8
  br i1 %299, label %143, label %300, !prof !9, !nosanitize !8

300:                                              ; preds = %297
  %301 = extractvalue { i32, i1 } %298, 0, !nosanitize !8
  br label %302

302:                                              ; preds = %300, %295, %290
  %303 = phi i32 [ %301, %300 ], [ 1, %290 ], [ 0, %295 ]
  store i32 %303, ptr %292, align 4, !tbaa !4
  %304 = getelementptr inbounds nuw i8, ptr %135, i64 56
  %305 = load i32, ptr %304, align 4, !tbaa !4
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %314, label %307

307:                                              ; preds = %302
  %308 = icmp ult i32 %305, %64
  br i1 %308, label %314, label %309

309:                                              ; preds = %307
  %310 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %305, i32 %52), !nosanitize !8
  %311 = extractvalue { i32, i1 } %310, 1, !nosanitize !8
  br i1 %311, label %143, label %312, !prof !9, !nosanitize !8

312:                                              ; preds = %309
  %313 = extractvalue { i32, i1 } %310, 0, !nosanitize !8
  br label %314

314:                                              ; preds = %312, %307, %302
  %315 = phi i32 [ %313, %312 ], [ 1, %302 ], [ 0, %307 ]
  store i32 %315, ptr %304, align 4, !tbaa !4
  %316 = getelementptr inbounds nuw i8, ptr %135, i64 60
  %317 = load i32, ptr %316, align 4, !tbaa !4
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %326, label %319

319:                                              ; preds = %314
  %320 = icmp ult i32 %317, %64
  br i1 %320, label %326, label %321

321:                                              ; preds = %319
  %322 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %317, i32 %52), !nosanitize !8
  %323 = extractvalue { i32, i1 } %322, 1, !nosanitize !8
  br i1 %323, label %143, label %324, !prof !9, !nosanitize !8

324:                                              ; preds = %321
  %325 = extractvalue { i32, i1 } %322, 0, !nosanitize !8
  br label %326

326:                                              ; preds = %324, %319, %314
  %327 = phi i32 [ %325, %324 ], [ 1, %314 ], [ 0, %319 ]
  store i32 %327, ptr %316, align 4, !tbaa !4
  %328 = add nuw nsw i32 %133, 1
  %329 = icmp eq i32 %328, %129
  br i1 %329, label %331, label %131, !llvm.loop !336

330:                                              ; preds = %123
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %127, i32 noundef %124, i32 noundef %52)
  br label %331

331:                                              ; preds = %326, %330, %128, %114, %112
  %332 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %333 = load i32, ptr %332, align 8, !tbaa !265
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %342, label %335

335:                                              ; preds = %331
  %336 = icmp ult i32 %333, 32
  br i1 %336, label %338, label %337, !prof !215, !nosanitize !8

337:                                              ; preds = %335
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

338:                                              ; preds = %335
  %339 = shl nuw i32 1, %333
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %341 = load ptr, ptr %340, align 8, !tbaa !274
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %341, i32 noundef %339, i32 noundef %52)
  br label %342

342:                                              ; preds = %331, %338
  %343 = load ptr, ptr %97, align 8, !tbaa !56
  %344 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %345 = load ptr, ptr %344, align 8, !tbaa !55
  %346 = icmp ult ptr %343, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %342
  store ptr %345, ptr %97, align 8, !tbaa !56
  br label %348

348:                                              ; preds = %342, %347
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %350 = load i32, ptr %349, align 4, !tbaa !211
  %351 = tail call i32 @llvm.usub.sat.i32(i32 %350, i32 %52)
  store i32 %351, ptr %349, align 4, !tbaa !211
  store i32 0, ptr %23, align 8, !tbaa !267
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %352, align 8, !tbaa !269
  br label %353

353:                                              ; preds = %348, %21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
  %7 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %3, i64 noundef %4)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %97

9:                                                ; preds = %6
  %10 = icmp eq i64 %7, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %12 = load i32, ptr %11, align 8, !tbaa !222
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %14, label %15

14:                                               ; preds = %9
  br i1 %13, label %89, label %97

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  br i1 %13, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 5616
  %21 = tail call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %11, ptr noundef nonnull %16, ptr noundef nonnull %20)
  %22 = icmp ult i64 %21, -119
  br i1 %22, label %23, label %97

23:                                               ; preds = %19
  %24 = load <2 x ptr>, ptr %17, align 8, !tbaa !51
  %25 = shufflevector <2 x ptr> %24, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %25, ptr %17, align 8, !tbaa !51
  br label %97

26:                                               ; preds = %15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %33 = load i64, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8, !tbaa !13
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %37 = load ptr, ptr %36, align 8, !tbaa !169
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %39 = load ptr, ptr %38, align 8, !tbaa !170
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %37 to i64
  %42 = sub i64 %40, %41
  %43 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %1, i64 noundef %2, ptr noundef %37, i64 noundef %42, ptr noundef nonnull readonly %16, ptr noundef %18, ptr noundef %28, ptr noundef nonnull readonly %29, ptr noundef %31, i64 noundef %33, i32 noundef %35)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %26
  %46 = icmp eq i64 %43, -70
  %47 = icmp ule i64 %4, %2
  %48 = and i1 %47, %46
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = icmp ult i64 %43, -119
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %53 = load i32, ptr %52, align 4, !tbaa !94
  %54 = icmp ult i32 %53, 65
  br i1 %54, label %56, label %55, !prof !215, !nosanitize !8

55:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 20) #39, !nosanitize !8
  unreachable, !nosanitize !8

56:                                               ; preds = %51
  %57 = tail call i32 @llvm.umax.i32(i32 %53, i32 7)
  %58 = add nsw i32 %57, -1
  %59 = zext nneg i32 %58 to i64
  %60 = lshr i64 %4, %59
  %61 = add nuw nsw i64 %60, 2
  %62 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 %61), !nosanitize !8
  %63 = extractvalue { i64, i1 } %62, 1, !nosanitize !8
  br i1 %63, label %64, label %65, !prof !9, !nosanitize !8

64:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

65:                                               ; preds = %56
  %66 = extractvalue { i64, i1 } %62, 0, !nosanitize !8
  %67 = icmp ult i64 %43, %66
  %68 = select i1 %67, i64 %43, i64 0
  br label %69

69:                                               ; preds = %26, %45, %49, %65
  %70 = phi i64 [ %43, %49 ], [ 0, %26 ], [ 0, %45 ], [ %68, %65 ]
  %71 = icmp eq i32 %5, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %74 = load i32, ptr %73, align 8, !tbaa !221
  %75 = icmp eq i32 %74, 0
  %76 = icmp ult i64 %70, 25
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i64 noundef %4)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load i8, ptr %3, align 1, !tbaa !164
  store i8 %82, ptr %1, align 1, !tbaa !164
  br label %89

83:                                               ; preds = %69, %72, %78
  %84 = add i64 %70, -2
  %85 = icmp ult i64 %84, -121
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load <2 x ptr>, ptr %17, align 8, !tbaa !51
  %88 = shufflevector <2 x ptr> %87, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %88, ptr %17, align 8, !tbaa !51
  br label %89

89:                                               ; preds = %14, %81, %86, %83
  %90 = phi i64 [ %70, %83 ], [ %70, %86 ], [ 0, %14 ], [ 1, %81 ]
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %92 = load ptr, ptr %91, align 8, !tbaa !57
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 5604
  %94 = load i32, ptr %93, align 4, !tbaa !151
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 1, ptr %93, align 4, !tbaa !151
  br label %97

97:                                               ; preds = %6, %14, %89, %96, %19, %23
  %98 = phi i64 [ %90, %89 ], [ 0, %23 ], [ %21, %19 ], [ %90, %96 ], [ %7, %6 ], [ -106, %14 ]
  ret i64 %98
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @ZSTD_reduceTable(ptr noundef captures(none) %0, i32 noundef range(i32 1, -2147483647) %1, i32 noundef %2) unnamed_addr #14 {
  %4 = sdiv i32 %1, 16
  %5 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 2), !nosanitize !8
  %6 = extractvalue { i32, i1 } %5, 0, !nosanitize !8
  %7 = extractvalue { i32, i1 } %5, 1, !nosanitize !8
  br i1 %7, label %10, label %8, !prof !9, !nosanitize !8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %1, 15
  br i1 %9, label %11, label %194

10:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

11:                                               ; preds = %8, %190
  %12 = phi i32 [ %15, %190 ], [ 0, %8 ]
  %13 = phi i32 [ %192, %190 ], [ 0, %8 ]
  %14 = zext nneg i32 %12 to i64
  %15 = add nuw nsw i32 %12, 16
  %16 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !4
  %18 = icmp ult i32 %17, %6
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %2), !nosanitize !8
  %21 = extractvalue { i32, i1 } %20, 1, !nosanitize !8
  br i1 %21, label %22, label %23, !prof !9, !nosanitize !8

22:                                               ; preds = %185, %174, %163, %152, %141, %130, %119, %108, %97, %86, %75, %64, %53, %42, %31, %19
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

23:                                               ; preds = %19
  %24 = extractvalue { i32, i1 } %20, 0, !nosanitize !8
  br label %25

25:                                               ; preds = %11, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %11 ]
  store i32 %26, ptr %16, align 4, !tbaa !4
  %27 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %29 = load i32, ptr %28, align 4, !tbaa !4
  %30 = icmp ult i32 %29, %6
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %2), !nosanitize !8
  %33 = extractvalue { i32, i1 } %32, 1, !nosanitize !8
  br i1 %33, label %22, label %34, !prof !9, !nosanitize !8

34:                                               ; preds = %31
  %35 = extractvalue { i32, i1 } %32, 0, !nosanitize !8
  br label %36

36:                                               ; preds = %25, %34
  %37 = phi i32 [ %35, %34 ], [ 0, %25 ]
  store i32 %37, ptr %28, align 4, !tbaa !4
  %38 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %40 = load i32, ptr %39, align 4, !tbaa !4
  %41 = icmp ult i32 %40, %6
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %40, i32 %2), !nosanitize !8
  %44 = extractvalue { i32, i1 } %43, 1, !nosanitize !8
  br i1 %44, label %22, label %45, !prof !9, !nosanitize !8

45:                                               ; preds = %42
  %46 = extractvalue { i32, i1 } %43, 0, !nosanitize !8
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi i32 [ %46, %45 ], [ 0, %36 ]
  store i32 %48, ptr %39, align 4, !tbaa !4
  %49 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 12
  %51 = load i32, ptr %50, align 4, !tbaa !4
  %52 = icmp ult i32 %51, %6
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %51, i32 %2), !nosanitize !8
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !8
  br i1 %55, label %22, label %56, !prof !9, !nosanitize !8

56:                                               ; preds = %53
  %57 = extractvalue { i32, i1 } %54, 0, !nosanitize !8
  br label %58

58:                                               ; preds = %47, %56
  %59 = phi i32 [ %57, %56 ], [ 0, %47 ]
  store i32 %59, ptr %50, align 4, !tbaa !4
  %60 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %62 = load i32, ptr %61, align 4, !tbaa !4
  %63 = icmp ult i32 %62, %6
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %62, i32 %2), !nosanitize !8
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !8
  br i1 %66, label %22, label %67, !prof !9, !nosanitize !8

67:                                               ; preds = %64
  %68 = extractvalue { i32, i1 } %65, 0, !nosanitize !8
  br label %69

69:                                               ; preds = %58, %67
  %70 = phi i32 [ %68, %67 ], [ 0, %58 ]
  store i32 %70, ptr %61, align 4, !tbaa !4
  %71 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 20
  %73 = load i32, ptr %72, align 4, !tbaa !4
  %74 = icmp ult i32 %73, %6
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %73, i32 %2), !nosanitize !8
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !8
  br i1 %77, label %22, label %78, !prof !9, !nosanitize !8

78:                                               ; preds = %75
  %79 = extractvalue { i32, i1 } %76, 0, !nosanitize !8
  br label %80

80:                                               ; preds = %69, %78
  %81 = phi i32 [ %79, %78 ], [ 0, %69 ]
  store i32 %81, ptr %72, align 4, !tbaa !4
  %82 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 24
  %84 = load i32, ptr %83, align 4, !tbaa !4
  %85 = icmp ult i32 %84, %6
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %84, i32 %2), !nosanitize !8
  %88 = extractvalue { i32, i1 } %87, 1, !nosanitize !8
  br i1 %88, label %22, label %89, !prof !9, !nosanitize !8

89:                                               ; preds = %86
  %90 = extractvalue { i32, i1 } %87, 0, !nosanitize !8
  br label %91

91:                                               ; preds = %80, %89
  %92 = phi i32 [ %90, %89 ], [ 0, %80 ]
  store i32 %92, ptr %83, align 4, !tbaa !4
  %93 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 28
  %95 = load i32, ptr %94, align 4, !tbaa !4
  %96 = icmp ult i32 %95, %6
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %2), !nosanitize !8
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !8
  br i1 %99, label %22, label %100, !prof !9, !nosanitize !8

100:                                              ; preds = %97
  %101 = extractvalue { i32, i1 } %98, 0, !nosanitize !8
  br label %102

102:                                              ; preds = %91, %100
  %103 = phi i32 [ %101, %100 ], [ 0, %91 ]
  store i32 %103, ptr %94, align 4, !tbaa !4
  %104 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 32
  %106 = load i32, ptr %105, align 4, !tbaa !4
  %107 = icmp ult i32 %106, %6
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %106, i32 %2), !nosanitize !8
  %110 = extractvalue { i32, i1 } %109, 1, !nosanitize !8
  br i1 %110, label %22, label %111, !prof !9, !nosanitize !8

111:                                              ; preds = %108
  %112 = extractvalue { i32, i1 } %109, 0, !nosanitize !8
  br label %113

113:                                              ; preds = %102, %111
  %114 = phi i32 [ %112, %111 ], [ 0, %102 ]
  store i32 %114, ptr %105, align 4, !tbaa !4
  %115 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 36
  %117 = load i32, ptr %116, align 4, !tbaa !4
  %118 = icmp ult i32 %117, %6
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %117, i32 %2), !nosanitize !8
  %121 = extractvalue { i32, i1 } %120, 1, !nosanitize !8
  br i1 %121, label %22, label %122, !prof !9, !nosanitize !8

122:                                              ; preds = %119
  %123 = extractvalue { i32, i1 } %120, 0, !nosanitize !8
  br label %124

124:                                              ; preds = %113, %122
  %125 = phi i32 [ %123, %122 ], [ 0, %113 ]
  store i32 %125, ptr %116, align 4, !tbaa !4
  %126 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 40
  %128 = load i32, ptr %127, align 4, !tbaa !4
  %129 = icmp ult i32 %128, %6
  br i1 %129, label %135, label %130

130:                                              ; preds = %124
  %131 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %128, i32 %2), !nosanitize !8
  %132 = extractvalue { i32, i1 } %131, 1, !nosanitize !8
  br i1 %132, label %22, label %133, !prof !9, !nosanitize !8

133:                                              ; preds = %130
  %134 = extractvalue { i32, i1 } %131, 0, !nosanitize !8
  br label %135

135:                                              ; preds = %124, %133
  %136 = phi i32 [ %134, %133 ], [ 0, %124 ]
  store i32 %136, ptr %127, align 4, !tbaa !4
  %137 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 44
  %139 = load i32, ptr %138, align 4, !tbaa !4
  %140 = icmp ult i32 %139, %6
  br i1 %140, label %146, label %141

141:                                              ; preds = %135
  %142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 %2), !nosanitize !8
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !8
  br i1 %143, label %22, label %144, !prof !9, !nosanitize !8

144:                                              ; preds = %141
  %145 = extractvalue { i32, i1 } %142, 0, !nosanitize !8
  br label %146

146:                                              ; preds = %135, %144
  %147 = phi i32 [ %145, %144 ], [ 0, %135 ]
  store i32 %147, ptr %138, align 4, !tbaa !4
  %148 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 48
  %150 = load i32, ptr %149, align 4, !tbaa !4
  %151 = icmp ult i32 %150, %6
  br i1 %151, label %157, label %152

152:                                              ; preds = %146
  %153 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 %2), !nosanitize !8
  %154 = extractvalue { i32, i1 } %153, 1, !nosanitize !8
  br i1 %154, label %22, label %155, !prof !9, !nosanitize !8

155:                                              ; preds = %152
  %156 = extractvalue { i32, i1 } %153, 0, !nosanitize !8
  br label %157

157:                                              ; preds = %146, %155
  %158 = phi i32 [ %156, %155 ], [ 0, %146 ]
  store i32 %158, ptr %149, align 4, !tbaa !4
  %159 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 52
  %161 = load i32, ptr %160, align 4, !tbaa !4
  %162 = icmp ult i32 %161, %6
  br i1 %162, label %168, label %163

163:                                              ; preds = %157
  %164 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %161, i32 %2), !nosanitize !8
  %165 = extractvalue { i32, i1 } %164, 1, !nosanitize !8
  br i1 %165, label %22, label %166, !prof !9, !nosanitize !8

166:                                              ; preds = %163
  %167 = extractvalue { i32, i1 } %164, 0, !nosanitize !8
  br label %168

168:                                              ; preds = %157, %166
  %169 = phi i32 [ %167, %166 ], [ 0, %157 ]
  store i32 %169, ptr %160, align 4, !tbaa !4
  %170 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 56
  %172 = load i32, ptr %171, align 4, !tbaa !4
  %173 = icmp ult i32 %172, %6
  br i1 %173, label %179, label %174

174:                                              ; preds = %168
  %175 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %172, i32 %2), !nosanitize !8
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !8
  br i1 %176, label %22, label %177, !prof !9, !nosanitize !8

177:                                              ; preds = %174
  %178 = extractvalue { i32, i1 } %175, 0, !nosanitize !8
  br label %179

179:                                              ; preds = %168, %177
  %180 = phi i32 [ %178, %177 ], [ 0, %168 ]
  store i32 %180, ptr %171, align 4, !tbaa !4
  %181 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 60
  %183 = load i32, ptr %182, align 4, !tbaa !4
  %184 = icmp ult i32 %183, %6
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  %186 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %183, i32 %2), !nosanitize !8
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !8
  br i1 %187, label %22, label %188, !prof !9, !nosanitize !8

188:                                              ; preds = %185
  %189 = extractvalue { i32, i1 } %186, 0, !nosanitize !8
  br label %190

190:                                              ; preds = %179, %188
  %191 = phi i32 [ %189, %188 ], [ 0, %179 ]
  store i32 %191, ptr %182, align 4, !tbaa !4
  %192 = add nuw nsw i32 %13, 1
  %193 = icmp eq i32 %192, %4
  br i1 %193, label %194, label %11, !llvm.loop !336

194:                                              ; preds = %190, %8
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #3

declare i64 @ZSTD_splitBlock(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 2) i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #4 {
  %4 = alloca %struct.RawSeqStore_t, align 8
  %5 = alloca %struct.ZSTD_SequencePosition, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %8 = icmp ult i64 %2, 7
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %11 = load i32, ptr %10, align 4, !tbaa !218
  %12 = icmp ugt i32 %11, 6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  br i1 %12, label %14, label %15

14:                                               ; preds = %9
  tail call void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef nonnull %13, i64 noundef %2) #36
  br label %267

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %17 = load i32, ptr %16, align 4, !tbaa !337
  tail call void @ZSTD_ldm_skipSequences(ptr noundef nonnull %13, i64 noundef %2, i32 noundef %17) #36
  br label %267

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %22 = load ptr, ptr %21, align 8, !tbaa !169
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %22, ptr %23, align 8, !tbaa !170
  %24 = load ptr, ptr %20, align 8, !tbaa !154
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %24, ptr %25, align 8, !tbaa !158
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 0, ptr %26, align 8, !tbaa !167
  %27 = load ptr, ptr %19, align 8, !tbaa !57
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 3472
  store ptr %27, ptr %28, align 8, !tbaa !338
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %30 = load i32, ptr %29, align 8, !tbaa !339
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store i32 %30, ptr %31, align 8, !tbaa !340
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %33 = load ptr, ptr %32, align 8, !tbaa !341
  %34 = ptrtoint ptr %1 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %39 = load i32, ptr %38, align 4, !tbaa !211
  %40 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 384), !nosanitize !8
  %41 = extractvalue { i32, i1 } %40, 1, !nosanitize !8
  br i1 %41, label %42, label %43, !prof !9, !nosanitize !8

42:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

43:                                               ; preds = %18
  %44 = extractvalue { i32, i1 } %40, 0, !nosanitize !8
  %45 = icmp ult i32 %44, %37
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %37, i32 %39), !nosanitize !8
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !8
  br i1 %48, label %49, label %50, !prof !9, !nosanitize !8

49:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

50:                                               ; preds = %46
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !8
  %52 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %51, i32 384), !nosanitize !8
  %53 = extractvalue { i32, i1 } %52, 1, !nosanitize !8
  br i1 %53, label %54, label %55, !prof !9, !nosanitize !8

54:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

55:                                               ; preds = %50
  %56 = extractvalue { i32, i1 } %52, 0, !nosanitize !8
  %57 = tail call i32 @llvm.umin.i32(i32 %56, i32 192)
  %58 = sub nuw i32 %37, %57
  store i32 %58, ptr %38, align 4, !tbaa !211
  br label %59

59:                                               ; preds = %55, %43
  %60 = getelementptr i8, ptr %0, i64 3264
  %61 = load i32, ptr %60, align 8, !tbaa !209
  %62 = getelementptr i8, ptr %0, i64 3268
  %63 = load i32, ptr %62, align 4, !tbaa !208
  %64 = icmp ult i32 %63, %61
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %67 = load ptr, ptr %66, align 8, !tbaa !269
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %67, i64 140
  %71 = load i32, ptr %70, align 4, !tbaa !335
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i64 2, i64 3
  br label %74

74:                                               ; preds = %59, %65, %69
  %75 = phi i64 [ 1, %59 ], [ %73, %69 ], [ 0, %65 ]
  %76 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %78 = load ptr, ptr %77, align 8, !tbaa !58
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 5616
  %80 = load i32, ptr %76, align 4, !tbaa !4
  store i32 %80, ptr %79, align 4, !tbaa !4
  %81 = getelementptr inbounds nuw i8, ptr %27, i64 5620
  %82 = load i32, ptr %81, align 4, !tbaa !4
  %83 = getelementptr inbounds nuw i8, ptr %78, i64 5620
  store i32 %82, ptr %83, align 4, !tbaa !4
  %84 = getelementptr inbounds nuw i8, ptr %27, i64 5624
  %85 = load i32, ptr %84, align 4, !tbaa !4
  %86 = getelementptr inbounds nuw i8, ptr %78, i64 5624
  store i32 %85, ptr %86, align 4, !tbaa !4
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %89 = load i64, ptr %88, align 8, !tbaa !342
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %91 = load i64, ptr %90, align 8, !tbaa !201
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %74
  %94 = getelementptr i8, ptr %0, i64 448
  %95 = load ptr, ptr %94, align 8, !tbaa !320
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %267

97:                                               ; preds = %93
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %99 = load i32, ptr %98, align 8, !tbaa !343
  %100 = tail call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %87, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %79, i32 noundef %99, ptr noundef %1, i64 noundef %2) #36
  br label %259

101:                                              ; preds = %74
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %103 = load i32, ptr %102, align 8, !tbaa !212
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %106 = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %106, i8 0, i64 24, i1 false)
  %107 = getelementptr i8, ptr %0, i64 448
  %108 = load ptr, ptr %107, align 8, !tbaa !320
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %112 = load ptr, ptr %111, align 8, !tbaa !344
  store ptr %112, ptr %4, align 8, !tbaa !345
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %114 = load i64, ptr %113, align 8, !tbaa !346
  %115 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %114, ptr %115, align 8, !tbaa !347
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %117 = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %116, ptr noundef nonnull %4, ptr noundef nonnull %102, ptr noundef %1, i64 noundef %2) #36
  %118 = icmp ult i64 %117, -119
  br i1 %118, label %121, label %119

119:                                              ; preds = %110, %105
  %120 = phi i64 [ -41, %105 ], [ %117, %110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %267

121:                                              ; preds = %110
  %122 = load ptr, ptr %77, align 8, !tbaa !58
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 5616
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %125 = load i32, ptr %124, align 8, !tbaa !343
  %126 = call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %123, i32 noundef %125, ptr noundef %1, i64 noundef %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %259

127:                                              ; preds = %101
  %128 = getelementptr i8, ptr %0, i64 448
  %129 = load ptr, ptr %128, align 8, !tbaa !320
  %130 = icmp eq ptr %129, null
  br i1 %130, label %239, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %7, align 4, !tbaa !214
  %133 = icmp ult i32 %132, 32
  br i1 %133, label %135, label %134, !prof !215, !nosanitize !8

134:                                              ; preds = %131
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

135:                                              ; preds = %131
  %136 = shl nuw i32 1, %132
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %138 = load ptr, ptr %137, align 8, !tbaa !348
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 5264
  %140 = load ptr, ptr %139, align 8, !tbaa !349
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 5272
  %142 = load i64, ptr %141, align 8, !tbaa !350
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %144 = load i32, ptr %143, align 4, !tbaa !351
  %145 = zext i32 %136 to i64
  %146 = tail call i64 %129(ptr noundef %138, ptr noundef %140, i64 noundef %142, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %144, i64 noundef %145) #36
  %147 = load i64, ptr %141, align 8, !tbaa !350
  %148 = add i64 %146, -1
  %149 = icmp ult i64 %148, %147
  br i1 %149, label %150, label %212

150:                                              ; preds = %135
  %151 = load ptr, ptr %139, align 8, !tbaa !349
  %152 = getelementptr [16 x i8], ptr %151, i64 %146
  %153 = getelementptr i8, ptr %152, i64 -16
  %154 = load i32, ptr %153, align 4, !tbaa !4
  %155 = getelementptr i8, ptr %152, i64 -8
  %156 = load i32, ptr %155, align 4, !tbaa !4
  %157 = icmp eq i32 %154, 0
  %158 = icmp eq i32 %156, 0
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %168, label %160

160:                                              ; preds = %150
  %161 = icmp eq i64 %146, %147
  br i1 %161, label %212, label %162

162:                                              ; preds = %160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %152, i8 0, i64 16, i1 false)
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %146, i64 1), !nosanitize !8
  %164 = extractvalue { i64, i1 } %163, 1, !nosanitize !8
  br i1 %164, label %165, label %166, !prof !9, !nosanitize !8

165:                                              ; preds = %162
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

166:                                              ; preds = %162
  %167 = extractvalue { i64, i1 } %163, 0, !nosanitize !8
  br label %168

168:                                              ; preds = %150, %166
  %169 = phi i64 [ %167, %166 ], [ %146, %150 ]
  %170 = icmp ult i64 %169, -119
  br i1 %170, label %171, label %212

171:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %172 = load ptr, ptr %139, align 8, !tbaa !349
  br label %178

173:                                              ; preds = %189
  %174 = add nuw i64 %179, 1
  %175 = extractvalue { i64, i1 } %186, 0, !nosanitize !8
  %176 = extractvalue { i64, i1 } %193, 0, !nosanitize !8
  %177 = icmp eq i64 %174, %169
  br i1 %177, label %196, label %178, !llvm.loop !352

178:                                              ; preds = %171, %173
  %179 = phi i64 [ %174, %173 ], [ 0, %171 ]
  %180 = phi i64 [ %175, %173 ], [ 0, %171 ]
  %181 = phi i64 [ %176, %173 ], [ 0, %171 ]
  %182 = getelementptr inbounds nuw [16 x i8], ptr %172, i64 %179
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %184 = load i32, ptr %183, align 4, !tbaa !184
  %185 = zext i32 %184 to i64
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %180, i64 %185), !nosanitize !8
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !8
  br i1 %187, label %188, label %189, !prof !9, !nosanitize !8

188:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

189:                                              ; preds = %178
  %190 = getelementptr inbounds nuw i8, ptr %182, i64 8
  %191 = load i32, ptr %190, align 4, !tbaa !183
  %192 = zext i32 %191 to i64
  %193 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %181, i64 %192), !nosanitize !8
  %194 = extractvalue { i64, i1 } %193, 1, !nosanitize !8
  br i1 %194, label %195, label %173, !prof !9, !nosanitize !8

195:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

196:                                              ; preds = %173
  %197 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %176)
  %198 = extractvalue { i64, i1 } %197, 1, !nosanitize !8
  br i1 %198, label %199, label %200, !prof !9, !nosanitize !8

199:                                              ; preds = %196
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

200:                                              ; preds = %196
  %201 = extractvalue { i64, i1 } %197, 0, !nosanitize !8
  %202 = icmp ugt i64 %201, %2
  br i1 %202, label %210, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %205 = load i32, ptr %204, align 8, !tbaa !353
  %206 = call fastcc i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %172, i64 noundef %169, ptr noundef %1, i64 noundef %2, i32 noundef %205)
  %207 = icmp ult i64 %206, -119
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %209, align 8, !tbaa !354
  br label %210

210:                                              ; preds = %200, %203, %208
  %211 = phi i64 [ %206, %203 ], [ 0, %208 ], [ -107, %200 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %267

212:                                              ; preds = %135, %160, %168
  %213 = phi i64 [ %169, %168 ], [ -106, %160 ], [ -106, %135 ]
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 436
  %215 = load i32, ptr %214, align 4, !tbaa !355
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %267, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %219 = load i32, ptr %218, align 4, !tbaa !218
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %221 = load i32, ptr %220, align 8, !tbaa !343
  %222 = add i32 %219, -6
  %223 = icmp ult i32 %222, -3
  %224 = icmp ne i32 %221, 1
  %225 = or i1 %223, %224
  %226 = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %75
  %227 = zext nneg i32 %219 to i64
  %228 = getelementptr [8 x i8], ptr %226, i64 %227
  %229 = getelementptr i8, ptr %228, i64 -24
  %230 = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %75
  %231 = sext i32 %219 to i64
  %232 = getelementptr inbounds [8 x i8], ptr %230, i64 %231
  %233 = select i1 %225, ptr %232, ptr %229
  %234 = load ptr, ptr %233, align 8, !tbaa !51
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %235, align 8, !tbaa !354
  %236 = load ptr, ptr %77, align 8, !tbaa !58
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 5616
  %238 = tail call i64 %234(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %237, ptr noundef %1, i64 noundef %2) #36
  br label %259

239:                                              ; preds = %127
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %241 = load i32, ptr %240, align 4, !tbaa !218
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %243 = load i32, ptr %242, align 8, !tbaa !343
  %244 = add i32 %241, -6
  %245 = icmp ult i32 %244, -3
  %246 = icmp ne i32 %243, 1
  %247 = or i1 %245, %246
  %248 = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %75
  %249 = zext nneg i32 %241 to i64
  %250 = getelementptr [8 x i8], ptr %248, i64 %249
  %251 = getelementptr i8, ptr %250, i64 -24
  %252 = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %75
  %253 = sext i32 %241 to i64
  %254 = getelementptr inbounds [8 x i8], ptr %252, i64 %253
  %255 = select i1 %247, ptr %254, ptr %251
  %256 = load ptr, ptr %255, align 8, !tbaa !51
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %257, align 8, !tbaa !354
  %258 = tail call i64 %256(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %79, ptr noundef %1, i64 noundef %2) #36
  br label %259

259:                                              ; preds = %217, %121, %239, %97
  %260 = phi i64 [ %100, %97 ], [ %126, %121 ], [ %238, %217 ], [ %258, %239 ]
  %261 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %262 = sub i64 0, %260
  %263 = getelementptr inbounds i8, ptr %261, i64 %262
  %264 = load ptr, ptr %23, align 8, !tbaa !170
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %264, ptr nonnull readonly align 1 %263, i64 %260, i1 false)
  %265 = load ptr, ptr %23, align 8, !tbaa !170
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 %260
  store ptr %266, ptr %23, align 8, !tbaa !170
  br label %267

267:                                              ; preds = %212, %210, %93, %119, %15, %14, %259
  %268 = phi i64 [ 1, %15 ], [ 0, %259 ], [ 1, %14 ], [ -41, %93 ], [ %120, %119 ], [ %213, %212 ], [ %211, %210 ]
  ret i64 %268
}

declare void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i64 noundef) local_unnamed_addr #16

declare void @ZSTD_ldm_skipSequences(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #16

declare i64 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #29 {
  %8 = alloca %struct.repcodes_s, align 8
  %9 = load i32, ptr %1, align 8, !tbaa !356
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !240
  br label %24

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %23 = load i64, ptr %22, align 8, !tbaa !130
  br label %24

24:                                               ; preds = %17, %21, %14
  %25 = phi i64 [ %16, %14 ], [ %23, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %28, i64 12, i1 false)
  %29 = zext i32 %9 to i64
  %30 = icmp ugt i64 %3, %29
  br i1 %30, label %31, label %384

31:                                               ; preds = %24
  %32 = load i32, ptr %8, align 8
  %33 = icmp eq i32 %6, 2
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %40 = and i64 %25, 4294967295
  %41 = getelementptr i8, ptr %0, i64 448
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %44 = getelementptr inbounds i8, ptr %10, i64 -32
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %46 = ptrtoint ptr %44 to i64
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %50 = load i32, ptr %34, align 4
  %51 = load i32, ptr %35, align 8
  br label %52

52:                                               ; preds = %31, %377
  %53 = phi i32 [ %51, %31 ], [ %134, %377 ]
  %54 = phi i32 [ %50, %31 ], [ %135, %377 ]
  %55 = phi i64 [ %29, %31 ], [ %382, %377 ]
  %56 = phi ptr [ %4, %31 ], [ %380, %377 ]
  %57 = phi i32 [ %32, %31 ], [ %136, %377 ]
  %58 = ptrtoint ptr %56 to i64
  %59 = trunc nuw i64 %55 to i32
  %60 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %55
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !183
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, ptr %60, align 4, !tbaa !181
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %384, label %67

67:                                               ; preds = %52, %64
  %68 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %69 = load i32, ptr %68, align 4, !tbaa !184
  br i1 %33, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, ptr %60, align 4, !tbaa !181
  %72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 3), !nosanitize !8
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !8
  br i1 %73, label %74, label %75, !prof !9, !nosanitize !8

74:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

75:                                               ; preds = %70
  %76 = extractvalue { i32, i1 } %72, 0, !nosanitize !8
  br label %133

77:                                               ; preds = %67
  %78 = icmp eq i32 %69, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, ptr %60, align 4, !tbaa !181
  %81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %80, i32 3), !nosanitize !8
  %82 = extractvalue { i32, i1 } %81, 0, !nosanitize !8
  %83 = extractvalue { i32, i1 } %81, 1, !nosanitize !8
  br i1 %83, label %84, label %85, !prof !9, !nosanitize !8

84:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

85:                                               ; preds = %77
  %86 = icmp ne i32 %80, %57
  %87 = select i1 %78, i1 true, i1 %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = icmp eq i32 %80, %54
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = select i1 %78, i32 1, i32 2
  br label %108

92:                                               ; preds = %88
  %93 = icmp eq i32 %80, %53
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = xor i32 %79, 3
  br label %108

96:                                               ; preds = %92
  br i1 %78, label %97, label %104

97:                                               ; preds = %96
  %98 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !8
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !8
  br i1 %99, label %100, label %101, !prof !9, !nosanitize !8

100:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

101:                                              ; preds = %97
  %102 = extractvalue { i32, i1 } %98, 0, !nosanitize !8
  %103 = icmp eq i32 %80, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %101, %96
  %105 = icmp ugt i32 %82, 3
  br i1 %105, label %106, label %108

106:                                              ; preds = %104
  store i32 %54, ptr %35, align 8, !tbaa !4
  store i32 %57, ptr %34, align 4, !tbaa !4
  %107 = add i32 %82, -3
  br label %129

108:                                              ; preds = %85, %101, %94, %90, %104
  %109 = phi i32 [ %82, %104 ], [ %91, %90 ], [ 1, %85 ], [ %95, %94 ], [ 3, %101 ]
  %110 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %109, i32 1), !nosanitize !8
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !8
  br i1 %111, label %112, label %113, !prof !9, !nosanitize !8

112:                                              ; preds = %108
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

113:                                              ; preds = %108
  %114 = extractvalue { i32, i1 } %110, 0, !nosanitize !8
  %115 = add nuw nsw i32 %114, %79
  switch i32 %115, label %121 [
    i32 0, label %133
    i32 3, label %116
  ]

116:                                              ; preds = %113
  %117 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !8
  %118 = extractvalue { i32, i1 } %117, 0, !nosanitize !8
  %119 = extractvalue { i32, i1 } %117, 1, !nosanitize !8
  br i1 %119, label %120, label %125, !prof !9, !nosanitize !8

120:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

121:                                              ; preds = %113
  %122 = zext nneg i32 %115 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !4
  br label %125

125:                                              ; preds = %121, %116
  %126 = phi i32 [ %124, %121 ], [ %118, %116 ]
  %127 = icmp eq i32 %115, 1
  %128 = select i1 %127, i32 %53, i32 %54
  store i32 %128, ptr %35, align 8, !tbaa !4
  store i32 %57, ptr %34, align 4, !tbaa !4
  br label %129

129:                                              ; preds = %125, %106
  %130 = phi i32 [ %128, %125 ], [ %54, %106 ]
  %131 = phi i32 [ %109, %125 ], [ %82, %106 ]
  %132 = phi i32 [ %126, %125 ], [ %107, %106 ]
  store i32 %132, ptr %8, align 8, !tbaa !4
  br label %133

133:                                              ; preds = %129, %113, %75
  %134 = phi i32 [ %53, %75 ], [ %53, %113 ], [ %130, %129 ]
  %135 = phi i32 [ %54, %75 ], [ %54, %113 ], [ %57, %129 ]
  %136 = phi i32 [ %57, %75 ], [ %57, %113 ], [ %132, %129 ]
  %137 = phi i32 [ %76, %75 ], [ %109, %113 ], [ %131, %129 ]
  %138 = load i32, ptr %36, align 8, !tbaa !358
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %174, label %140

140:                                              ; preds = %133
  %141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %69, i32 %62), !nosanitize !8
  %142 = extractvalue { i32, i1 } %141, 1, !nosanitize !8
  br i1 %142, label %143, label %144, !prof !9, !nosanitize !8

143:                                              ; preds = %140
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

144:                                              ; preds = %140
  %145 = extractvalue { i32, i1 } %141, 0, !nosanitize !8
  %146 = zext i32 %145 to i64
  %147 = load i64, ptr %37, align 8, !tbaa !359
  %148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 %146), !nosanitize !8
  %149 = extractvalue { i64, i1 } %148, 1, !nosanitize !8
  br i1 %149, label %150, label %151, !prof !9, !nosanitize !8

150:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

151:                                              ; preds = %144
  %152 = extractvalue { i64, i1 } %148, 0, !nosanitize !8
  store i64 %152, ptr %37, align 8, !tbaa !359
  %153 = load i32, ptr %38, align 4, !tbaa !214
  %154 = icmp ult i32 %153, 32
  br i1 %154, label %156, label %155, !prof !215, !nosanitize !8

155:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

156:                                              ; preds = %151
  %157 = load ptr, ptr %41, align 8, !tbaa !320
  %158 = icmp ne ptr %157, null
  %159 = load i32, ptr %39, align 4, !tbaa !337
  %160 = shl nuw i32 1, %153
  %161 = zext i32 %160 to i64
  %162 = icmp ugt i64 %152, %161
  %163 = add nuw nsw i64 %152, %40
  %164 = select i1 %162, i64 %161, i64 %163
  %165 = add nuw nsw i64 %164, 3
  %166 = icmp eq i32 %159, 3
  %167 = or i1 %166, %158
  %168 = select i1 %167, i64 3, i64 4
  %169 = zext i32 %137 to i64
  %170 = icmp samesign uge i64 %165, %169
  %171 = zext i32 %62 to i64
  %172 = icmp samesign ule i64 %168, %171
  %173 = select i1 %170, i1 %172, i1 false
  br i1 %173, label %174, label %467

174:                                              ; preds = %133, %156
  %175 = load i32, ptr %1, align 8, !tbaa !356
  %176 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 %175), !nosanitize !8
  %177 = extractvalue { i32, i1 } %176, 1, !nosanitize !8
  br i1 %177, label %178, label %179, !prof !9, !nosanitize !8

178:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

179:                                              ; preds = %174
  %180 = extractvalue { i32, i1 } %176, 0, !nosanitize !8
  %181 = zext i32 %180 to i64
  %182 = load i64, ptr %42, align 8, !tbaa !303
  %183 = icmp ugt i64 %182, %181
  br i1 %183, label %184, label %467

184:                                              ; preds = %179
  %185 = zext i32 %69 to i64
  %186 = zext i32 %62 to i64
  %187 = getelementptr inbounds nuw i8, ptr %56, i64 %185
  %188 = icmp ugt ptr %187, %44
  %189 = load ptr, ptr %45, align 8, !tbaa !170
  br i1 %188, label %212, label %190

190:                                              ; preds = %184
  %191 = load <2 x i64>, ptr %56, align 1, !tbaa !164
  store <2 x i64> %191, ptr %189, align 1, !tbaa !164
  %192 = icmp ugt i32 %69, 16
  br i1 %192, label %193, label %333

193:                                              ; preds = %190
  %194 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %195 = load ptr, ptr %45, align 8, !tbaa !170
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 16
  %197 = getelementptr i8, ptr %195, i64 %185
  %198 = load <2 x i64>, ptr %194, align 1, !tbaa !164
  store <2 x i64> %198, ptr %196, align 1, !tbaa !164
  %199 = icmp ult i32 %69, 33
  br i1 %199, label %333, label %200

200:                                              ; preds = %193
  %201 = getelementptr inbounds nuw i8, ptr %195, i64 32
  br label %202

202:                                              ; preds = %202, %200
  %203 = phi ptr [ %201, %200 ], [ %210, %202 ]
  %204 = phi ptr [ %194, %200 ], [ %208, %202 ]
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 16
  %206 = load <2 x i64>, ptr %205, align 1, !tbaa !164
  store <2 x i64> %206, ptr %203, align 1, !tbaa !164
  %207 = getelementptr inbounds nuw i8, ptr %203, i64 16
  %208 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %209 = load <2 x i64>, ptr %208, align 1, !tbaa !164
  store <2 x i64> %209, ptr %207, align 1, !tbaa !164
  %210 = getelementptr inbounds nuw i8, ptr %203, i64 32
  %211 = icmp ult ptr %210, %197
  br i1 %211, label %202, label %337, !llvm.loop !360

212:                                              ; preds = %184
  %213 = icmp ugt ptr %56, %44
  br i1 %213, label %232, label %214

214:                                              ; preds = %212
  %215 = ptrtoint ptr %56 to i64
  %216 = sub i64 %46, %215
  %217 = getelementptr inbounds i8, ptr %189, i64 %216
  %218 = load <2 x i64>, ptr %56, align 1, !tbaa !164
  store <2 x i64> %218, ptr %189, align 1, !tbaa !164
  %219 = icmp ult i64 %216, 17
  br i1 %219, label %232, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds nuw i8, ptr %189, i64 16
  br label %222

222:                                              ; preds = %222, %220
  %223 = phi ptr [ %221, %220 ], [ %230, %222 ]
  %224 = phi ptr [ %56, %220 ], [ %228, %222 ]
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 16
  %226 = load <2 x i64>, ptr %225, align 1, !tbaa !164
  store <2 x i64> %226, ptr %223, align 1, !tbaa !164
  %227 = getelementptr inbounds nuw i8, ptr %223, i64 16
  %228 = getelementptr inbounds nuw i8, ptr %224, i64 32
  %229 = load <2 x i64>, ptr %228, align 1, !tbaa !164
  store <2 x i64> %229, ptr %227, align 1, !tbaa !164
  %230 = getelementptr inbounds nuw i8, ptr %223, i64 32
  %231 = icmp ult ptr %230, %217
  br i1 %231, label %222, label %232, !llvm.loop !360

232:                                              ; preds = %222, %214, %212
  %233 = phi ptr [ %56, %212 ], [ %44, %214 ], [ %44, %222 ]
  %234 = phi ptr [ %189, %212 ], [ %217, %214 ], [ %217, %222 ]
  %235 = icmp ult ptr %233, %187
  br i1 %235, label %236, label %337

236:                                              ; preds = %232
  %237 = ptrtoaddr ptr %233 to i64
  %238 = ptrtoaddr ptr %234 to i64
  %239 = ptrtoint ptr %233 to i64
  %240 = add i64 %58, %185
  %241 = sub i64 %240, %239
  %242 = icmp ult i64 %241, 4
  %243 = sub i64 %238, %237
  %244 = icmp ult i64 %243, 32
  %245 = select i1 %242, i1 true, i1 %244
  br i1 %245, label %281, label %246

246:                                              ; preds = %236
  %247 = icmp ult i64 %241, 32
  br i1 %247, label %267, label %248

248:                                              ; preds = %246
  %249 = and i64 %241, 28
  %250 = and i64 %241, -32
  %251 = getelementptr i8, ptr %234, i64 %250
  %252 = getelementptr i8, ptr %233, i64 %250
  br label %253

253:                                              ; preds = %253, %248
  %254 = phi i64 [ 0, %248 ], [ %261, %253 ]
  %255 = getelementptr i8, ptr %234, i64 %254
  %256 = getelementptr i8, ptr %233, i64 %254
  %257 = getelementptr i8, ptr %256, i64 16
  %258 = load <16 x i8>, ptr %256, align 1, !tbaa !164
  %259 = load <16 x i8>, ptr %257, align 1, !tbaa !164
  %260 = getelementptr i8, ptr %255, i64 16
  store <16 x i8> %258, ptr %255, align 1, !tbaa !164
  store <16 x i8> %259, ptr %260, align 1, !tbaa !164
  %261 = add nuw i64 %254, 32
  %262 = icmp eq i64 %261, %250
  br i1 %262, label %263, label %253, !llvm.loop !361

263:                                              ; preds = %253
  %264 = icmp eq i64 %241, %250
  br i1 %264, label %337, label %265

265:                                              ; preds = %263
  %266 = icmp eq i64 %249, 0
  br i1 %266, label %281, label %267, !prof !362

267:                                              ; preds = %246, %265
  %268 = phi i64 [ %250, %265 ], [ 0, %246 ]
  %269 = and i64 %241, -4
  %270 = getelementptr i8, ptr %234, i64 %269
  %271 = getelementptr i8, ptr %233, i64 %269
  br label %272

272:                                              ; preds = %272, %267
  %273 = phi i64 [ %268, %267 ], [ %277, %272 ]
  %274 = getelementptr i8, ptr %234, i64 %273
  %275 = getelementptr i8, ptr %233, i64 %273
  %276 = load <4 x i8>, ptr %275, align 1, !tbaa !164
  store <4 x i8> %276, ptr %274, align 1, !tbaa !164
  %277 = add nuw i64 %273, 4
  %278 = icmp eq i64 %277, %269
  br i1 %278, label %279, label %272, !llvm.loop !363

279:                                              ; preds = %272
  %280 = icmp eq i64 %241, %269
  br i1 %280, label %337, label %281

281:                                              ; preds = %236, %265, %279
  %282 = phi ptr [ %234, %236 ], [ %251, %265 ], [ %270, %279 ]
  %283 = phi ptr [ %233, %236 ], [ %252, %265 ], [ %271, %279 ]
  %284 = add i64 %58, %185
  %285 = ptrtoint ptr %283 to i64
  %286 = sub i64 %284, %285
  %287 = add i64 %58, -1
  %288 = add i64 %287, %185
  %289 = sub i64 %288, %285
  %290 = and i64 %286, 7
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %301, label %292

292:                                              ; preds = %281, %292
  %293 = phi ptr [ %298, %292 ], [ %282, %281 ]
  %294 = phi ptr [ %296, %292 ], [ %283, %281 ]
  %295 = phi i64 [ %299, %292 ], [ 0, %281 ]
  %296 = getelementptr inbounds nuw i8, ptr %294, i64 1
  %297 = load i8, ptr %294, align 1, !tbaa !164
  %298 = getelementptr inbounds nuw i8, ptr %293, i64 1
  store i8 %297, ptr %293, align 1, !tbaa !164
  %299 = add i64 %295, 1
  %300 = icmp eq i64 %299, %290
  br i1 %300, label %301, label %292, !llvm.loop !364

301:                                              ; preds = %292, %281
  %302 = phi ptr [ %282, %281 ], [ %298, %292 ]
  %303 = phi ptr [ %283, %281 ], [ %296, %292 ]
  %304 = icmp ult i64 %289, 7
  br i1 %304, label %337, label %305

305:                                              ; preds = %301, %305
  %306 = phi ptr [ %331, %305 ], [ %302, %301 ]
  %307 = phi ptr [ %329, %305 ], [ %303, %301 ]
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 1
  %309 = load i8, ptr %307, align 1, !tbaa !164
  %310 = getelementptr inbounds nuw i8, ptr %306, i64 1
  store i8 %309, ptr %306, align 1, !tbaa !164
  %311 = getelementptr inbounds nuw i8, ptr %307, i64 2
  %312 = load i8, ptr %308, align 1, !tbaa !164
  %313 = getelementptr inbounds nuw i8, ptr %306, i64 2
  store i8 %312, ptr %310, align 1, !tbaa !164
  %314 = getelementptr inbounds nuw i8, ptr %307, i64 3
  %315 = load i8, ptr %311, align 1, !tbaa !164
  %316 = getelementptr inbounds nuw i8, ptr %306, i64 3
  store i8 %315, ptr %313, align 1, !tbaa !164
  %317 = getelementptr inbounds nuw i8, ptr %307, i64 4
  %318 = load i8, ptr %314, align 1, !tbaa !164
  %319 = getelementptr inbounds nuw i8, ptr %306, i64 4
  store i8 %318, ptr %316, align 1, !tbaa !164
  %320 = getelementptr inbounds nuw i8, ptr %307, i64 5
  %321 = load i8, ptr %317, align 1, !tbaa !164
  %322 = getelementptr inbounds nuw i8, ptr %306, i64 5
  store i8 %321, ptr %319, align 1, !tbaa !164
  %323 = getelementptr inbounds nuw i8, ptr %307, i64 6
  %324 = load i8, ptr %320, align 1, !tbaa !164
  %325 = getelementptr inbounds nuw i8, ptr %306, i64 6
  store i8 %324, ptr %322, align 1, !tbaa !164
  %326 = getelementptr inbounds nuw i8, ptr %307, i64 7
  %327 = load i8, ptr %323, align 1, !tbaa !164
  %328 = getelementptr inbounds nuw i8, ptr %306, i64 7
  store i8 %327, ptr %325, align 1, !tbaa !164
  %329 = getelementptr inbounds nuw i8, ptr %307, i64 8
  %330 = load i8, ptr %326, align 1, !tbaa !164
  %331 = getelementptr inbounds nuw i8, ptr %306, i64 8
  store i8 %330, ptr %328, align 1, !tbaa !164
  %332 = icmp eq ptr %329, %187
  br i1 %332, label %337, label %305, !llvm.loop !366

333:                                              ; preds = %193, %190
  %334 = load ptr, ptr %45, align 8, !tbaa !170
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %185
  store ptr %335, ptr %45, align 8, !tbaa !170
  %336 = load ptr, ptr %48, align 8, !tbaa !158
  br label %349

337:                                              ; preds = %202, %301, %305, %263, %279, %232
  %338 = load ptr, ptr %45, align 8, !tbaa !170
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %185
  store ptr %339, ptr %45, align 8, !tbaa !170
  %340 = icmp ugt i32 %69, 65535
  %341 = load ptr, ptr %48, align 8, !tbaa !158
  br i1 %340, label %342, label %349, !prof !367

342:                                              ; preds = %337
  store i32 1, ptr %47, align 8, !tbaa !167
  %343 = load ptr, ptr %43, align 8, !tbaa !154
  %344 = ptrtoint ptr %341 to i64
  %345 = ptrtoint ptr %343 to i64
  %346 = sub i64 %344, %345
  %347 = lshr exact i64 %346, 3
  %348 = trunc i64 %347 to i32
  store i32 %348, ptr %49, align 4, !tbaa !168
  br label %349

349:                                              ; preds = %333, %342, %337
  %350 = phi ptr [ %336, %333 ], [ %341, %342 ], [ %341, %337 ]
  %351 = trunc i32 %69 to i16
  %352 = getelementptr inbounds nuw i8, ptr %350, i64 4
  store i16 %351, ptr %352, align 4, !tbaa !159
  store i32 %137, ptr %350, align 4, !tbaa !162
  %353 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 range(i64 0, 4294967296) %186, i64 3), !nosanitize !8
  %354 = extractvalue { i64, i1 } %353, 0, !nosanitize !8
  %355 = extractvalue { i64, i1 } %353, 1, !nosanitize !8
  br i1 %355, label %356, label %357, !prof !9, !nosanitize !8

356:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

357:                                              ; preds = %349
  %358 = icmp ugt i64 %354, 65535
  br i1 %358, label %359, label %366, !prof !301

359:                                              ; preds = %357
  store i32 2, ptr %47, align 8, !tbaa !167
  %360 = load ptr, ptr %43, align 8, !tbaa !154
  %361 = ptrtoint ptr %350 to i64
  %362 = ptrtoint ptr %360 to i64
  %363 = sub i64 %361, %362
  %364 = lshr exact i64 %363, 3
  %365 = trunc i64 %364 to i32
  store i32 %365, ptr %49, align 4, !tbaa !168
  br label %366

366:                                              ; preds = %357, %359
  %367 = trunc i64 %354 to i16
  %368 = getelementptr inbounds nuw i8, ptr %350, i64 6
  store i16 %367, ptr %368, align 2, !tbaa !163
  %369 = getelementptr inbounds nuw i8, ptr %350, i64 8
  store ptr %369, ptr %48, align 8, !tbaa !158
  %370 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %62, i32 %69), !nosanitize !8
  %371 = extractvalue { i32, i1 } %370, 1, !nosanitize !8
  br i1 %371, label %372, label %373, !prof !9, !nosanitize !8

372:                                              ; preds = %366
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

373:                                              ; preds = %366
  %374 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %59, i32 1), !nosanitize !8
  %375 = extractvalue { i32, i1 } %374, 1, !nosanitize !8
  br i1 %375, label %376, label %377, !prof !9, !nosanitize !8

376:                                              ; preds = %373
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

377:                                              ; preds = %373
  %378 = extractvalue { i32, i1 } %370, 0, !nosanitize !8
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds nuw i8, ptr %56, i64 %379
  %381 = extractvalue { i32, i1 } %374, 0, !nosanitize !8
  %382 = zext i32 %381 to i64
  %383 = icmp ugt i64 %3, %382
  br i1 %383, label %52, label %384, !llvm.loop !368

384:                                              ; preds = %377, %64, %24
  %385 = phi ptr [ %4, %24 ], [ %56, %64 ], [ %380, %377 ]
  %386 = phi i32 [ %9, %24 ], [ %59, %64 ], [ %381, %377 ]
  %387 = phi i64 [ %29, %24 ], [ %55, %64 ], [ %382, %377 ]
  %388 = icmp eq i64 %3, %387
  br i1 %388, label %467, label %389

389:                                              ; preds = %384
  %390 = icmp ne i32 %6, 2
  %391 = icmp eq i32 %386, %9
  %392 = select i1 %390, i1 true, i1 %391
  br i1 %392, label %434, label %393

393:                                              ; preds = %389
  %394 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %386, i32 1), !nosanitize !8
  %395 = extractvalue { i32, i1 } %394, 0, !nosanitize !8
  %396 = extractvalue { i32, i1 } %394, 1, !nosanitize !8
  br i1 %396, label %397, label %398, !prof !9, !nosanitize !8

397:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

398:                                              ; preds = %393
  %399 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %9, i32 2), !nosanitize !8
  %400 = extractvalue { i32, i1 } %399, 1, !nosanitize !8
  br i1 %400, label %401, label %402, !prof !9, !nosanitize !8

401:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

402:                                              ; preds = %398
  %403 = extractvalue { i32, i1 } %399, 0, !nosanitize !8
  %404 = icmp ult i32 %395, %403
  br i1 %404, label %416, label %405

405:                                              ; preds = %402
  %406 = add i32 %395, -2
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %407
  %409 = load i32, ptr %408, align 4, !tbaa !181
  %410 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %409, ptr %410, align 8, !tbaa !4
  %411 = add i32 %395, -1
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !181
  %415 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %414, ptr %415, align 4, !tbaa !4
  br label %430

416:                                              ; preds = %402
  %417 = add nuw i32 %9, 1
  %418 = icmp eq i32 %395, %417
  br i1 %418, label %419, label %427

419:                                              ; preds = %416
  %420 = load i32, ptr %8, align 8, !tbaa !4
  %421 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %420, ptr %421, align 8, !tbaa !4
  %422 = add i32 %395, -1
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %423
  %425 = load i32, ptr %424, align 4, !tbaa !181
  %426 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %425, ptr %426, align 4, !tbaa !4
  br label %430

427:                                              ; preds = %416
  %428 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %429 = load <2 x i32>, ptr %8, align 8, !tbaa !4
  store <2 x i32> %429, ptr %428, align 4, !tbaa !4
  br label %430

430:                                              ; preds = %419, %427, %405
  %431 = zext i32 %395 to i64
  %432 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !181
  store i32 %433, ptr %8, align 8, !tbaa !4
  br label %434

434:                                              ; preds = %430, %389
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %436 = load ptr, ptr %435, align 8, !tbaa !58
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %437, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  %438 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %387
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 4
  %440 = load i32, ptr %439, align 4, !tbaa !184
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %458, label %442

442:                                              ; preds = %434
  %443 = zext i32 %440 to i64
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %445 = load ptr, ptr %444, align 8, !tbaa !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %445, ptr readonly align 1 %385, i64 %443, i1 false)
  %446 = load ptr, ptr %444, align 8, !tbaa !170
  %447 = getelementptr inbounds nuw i8, ptr %446, i64 %443
  store ptr %447, ptr %444, align 8, !tbaa !170
  %448 = load i32, ptr %439, align 4, !tbaa !184
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %451 = load i64, ptr %450, align 8, !tbaa !359
  %452 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %451, i64 %449), !nosanitize !8
  %453 = extractvalue { i64, i1 } %452, 1, !nosanitize !8
  br i1 %453, label %454, label %455, !prof !9, !nosanitize !8

454:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

455:                                              ; preds = %442
  %456 = extractvalue { i64, i1 } %452, 0, !nosanitize !8
  %457 = getelementptr inbounds nuw i8, ptr %385, i64 %449
  store i64 %456, ptr %450, align 8, !tbaa !359
  br label %458

458:                                              ; preds = %434, %455
  %459 = phi ptr [ %457, %455 ], [ %385, %434 ]
  %460 = icmp eq ptr %459, %10
  br i1 %460, label %461, label %467

461:                                              ; preds = %458
  %462 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %386, i32 1), !nosanitize !8
  %463 = extractvalue { i32, i1 } %462, 1, !nosanitize !8
  br i1 %463, label %464, label %465, !prof !9, !nosanitize !8

464:                                              ; preds = %461
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

465:                                              ; preds = %461
  %466 = extractvalue { i32, i1 } %462, 0, !nosanitize !8
  store i32 %466, ptr %1, align 8, !tbaa !356
  br label %467

467:                                              ; preds = %179, %156, %458, %384, %465
  %468 = phi i64 [ -107, %458 ], [ %5, %465 ], [ -107, %384 ], [ -107, %156 ], [ -107, %179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  ret i64 %468
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc range(i32 0, 2) i32 @ZSTD_isRLE(ptr noundef %0, i64 noundef %1) unnamed_addr #18 {
  %3 = load i8, ptr %0, align 1, !tbaa !164
  %4 = zext i8 %3 to i64
  %5 = mul nuw i64 %4, 72340172838076673
  %6 = and i64 %1, 31
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %110, label %8

8:                                                ; preds = %2
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %13 = getelementptr inbounds i8, ptr %12, i64 -7
  %14 = icmp samesign ugt i64 %6, 8
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i64, ptr %0, align 1, !tbaa !118
  %17 = load i64, ptr %11, align 1, !tbaa !118
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = xor i64 %17, %16
  %21 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %20, i1 true)
  %22 = lshr i64 %21, 3
  br label %80

23:                                               ; preds = %15, %29
  %24 = phi ptr [ %27, %29 ], [ %0, %15 ]
  %25 = phi ptr [ %26, %29 ], [ %11, %15 ]
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %28 = icmp ult ptr %26, %13
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i64, ptr %27, align 1, !tbaa !118
  %31 = load i64, ptr %26, align 1, !tbaa !118
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %23, label %33

33:                                               ; preds = %29
  %34 = xor i64 %31, %30
  %35 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %34, i1 true)
  %36 = lshr i64 %35, 3
  %37 = getelementptr inbounds nuw i8, ptr %26, i64 %36
  %38 = ptrtoint ptr %37 to i64
  %39 = ptrtoint ptr %11 to i64
  %40 = sub i64 %38, %39
  br label %80

41:                                               ; preds = %23, %10
  %42 = phi ptr [ %0, %10 ], [ %27, %23 ]
  %43 = phi ptr [ %11, %10 ], [ %26, %23 ]
  %44 = getelementptr inbounds i8, ptr %12, i64 -3
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, ptr %42, align 1, !tbaa !4
  %48 = load i32, ptr %43, align 1, !tbaa !4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %43, i64 4
  %52 = getelementptr inbounds nuw i8, ptr %42, i64 4
  br label %53

53:                                               ; preds = %50, %46, %41
  %54 = phi ptr [ %52, %50 ], [ %42, %46 ], [ %42, %41 ]
  %55 = phi ptr [ %51, %50 ], [ %43, %46 ], [ %43, %41 ]
  %56 = getelementptr inbounds i8, ptr %12, i64 -1
  %57 = icmp ult ptr %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i16, ptr %54, align 1, !tbaa !199
  %60 = load i16, ptr %55, align 1, !tbaa !199
  %61 = icmp eq i16 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %55, i64 2
  %64 = getelementptr inbounds nuw i8, ptr %54, i64 2
  br label %65

65:                                               ; preds = %62, %58, %53
  %66 = phi ptr [ %64, %62 ], [ %54, %58 ], [ %54, %53 ]
  %67 = phi ptr [ %63, %62 ], [ %55, %58 ], [ %55, %53 ]
  %68 = icmp ult ptr %67, %12
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8, ptr %66, align 1, !tbaa !164
  %71 = load i8, ptr %67, align 1, !tbaa !164
  %72 = icmp eq i8 %70, %71
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds nuw i8, ptr %67, i64 %73
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi ptr [ %67, %65 ], [ %74, %69 ]
  %77 = ptrtoint ptr %76 to i64
  %78 = ptrtoint ptr %11 to i64
  %79 = sub i64 %77, %78
  br label %80

80:                                               ; preds = %19, %33, %75
  %81 = phi i64 [ %40, %33 ], [ %79, %75 ], [ %22, %19 ]
  %82 = add nsw i64 %6, -1
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %80, %8
  %85 = icmp ult i64 %1, 32
  br i1 %85, label %110, label %86

86:                                               ; preds = %84, %107
  %87 = phi i64 [ %108, %107 ], [ %6, %84 ]
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i64, ptr %88, align 1, !tbaa !118
  %90 = icmp eq i64 %89, %5
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %93 = load i64, ptr %92, align 1, !tbaa !118
  %94 = icmp eq i64 %93, %5
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %97 = load i64, ptr %96, align 1, !tbaa !118
  %98 = icmp eq i64 %97, %5
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %101 = load i64, ptr %100, align 1, !tbaa !118
  %102 = icmp eq i64 %101, %5
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %87, i64 32), !nosanitize !8
  %105 = extractvalue { i64, i1 } %104, 1, !nosanitize !8
  br i1 %105, label %106, label %107, !prof !9, !nosanitize !8

106:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

107:                                              ; preds = %103
  %108 = extractvalue { i64, i1 } %104, 0, !nosanitize !8
  %109 = icmp eq i64 %108, %1
  br i1 %109, label %110, label %86, !llvm.loop !369

110:                                              ; preds = %107, %86, %91, %95, %99, %84, %80, %2
  %111 = phi i32 [ 0, %80 ], [ 1, %2 ], [ 1, %84 ], [ 1, %107 ], [ 0, %91 ], [ 0, %95 ], [ 0, %99 ], [ 0, %86 ]
  ret i32 %111
}

declare i64 @ZSTD_compressSuperBlock(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 2305843009213693955) i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #4 {
  %11 = alloca %struct.repcodes_s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !370
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %149, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !158
  %16 = load ptr, ptr %1, align 8, !tbaa !154
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 3
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %23 = load i32, ptr %22, align 8, !tbaa !167
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %27 = load i32, ptr %26, align 4, !tbaa !168
  br label %28

28:                                               ; preds = %25, %13
  %29 = phi i32 [ %27, %25 ], [ %21, %13 ]
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %149, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %36 = zext i32 %29 to i64
  %37 = and i64 %20, 4294967295
  br label %38

38:                                               ; preds = %146, %31
  %39 = phi i64 [ 0, %31 ], [ %147, %146 ]
  %40 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %42 = load i16, ptr %41, align 4, !tbaa !159
  %43 = icmp eq i16 %42, 0
  %44 = icmp ne i64 %39, %36
  %45 = select i1 %43, i1 %44, i1 false
  %46 = zext i1 %45 to i32
  %47 = load i32, ptr %40, align 4, !tbaa !162
  %48 = add i32 %47, -1
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %82

50:                                               ; preds = %38
  %51 = add nuw nsw i32 %48, %46
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, ptr %2, align 4, !tbaa !4
  %55 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %54, i32 1), !nosanitize !8
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !8
  br i1 %56, label %57, label %58, !prof !9, !nosanitize !8

57:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

58:                                               ; preds = %53
  %59 = load i32, ptr %3, align 4, !tbaa !4
  %60 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 1), !nosanitize !8
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !8
  br i1 %61, label %62, label %63, !prof !9, !nosanitize !8

62:                                               ; preds = %58
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

63:                                               ; preds = %58
  %64 = extractvalue { i32, i1 } %55, 0, !nosanitize !8
  %65 = extractvalue { i32, i1 } %60, 0, !nosanitize !8
  br label %72

66:                                               ; preds = %50
  %67 = zext nneg i32 %51 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !4
  %70 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %67
  %71 = load i32, ptr %70, align 4, !tbaa !4
  br label %72

72:                                               ; preds = %66, %63
  %73 = phi i32 [ %64, %63 ], [ %69, %66 ]
  %74 = phi i32 [ %65, %63 ], [ %71, %66 ]
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %74, i32 3), !nosanitize !8
  %78 = extractvalue { i32, i1 } %77, 1, !nosanitize !8
  br i1 %78, label %79, label %80, !prof !9, !nosanitize !8

79:                                               ; preds = %76
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

80:                                               ; preds = %76
  %81 = extractvalue { i32, i1 } %77, 0, !nosanitize !8
  store i32 %81, ptr %40, align 4, !tbaa !162
  br label %82

82:                                               ; preds = %80, %38
  %83 = phi i32 [ %47, %38 ], [ %81, %80 ]
  %84 = icmp ugt i32 %83, 3
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load <2 x i32>, ptr %2, align 4, !tbaa !4
  store <2 x i32> %86, ptr %32, align 4, !tbaa !4
  %87 = add i32 %83, -3
  br label %113

88:                                               ; preds = %82, %72
  %89 = phi i32 [ %83, %82 ], [ %47, %72 ]
  %90 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %89, i32 1), !nosanitize !8
  %91 = extractvalue { i32, i1 } %90, 1, !nosanitize !8
  br i1 %91, label %92, label %93, !prof !9, !nosanitize !8

92:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

93:                                               ; preds = %88
  %94 = extractvalue { i32, i1 } %90, 0, !nosanitize !8
  %95 = add nuw nsw i32 %94, %46
  switch i32 %95, label %102 [
    i32 0, label %115
    i32 3, label %96
  ]

96:                                               ; preds = %93
  %97 = load i32, ptr %2, align 4, !tbaa !4
  %98 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %97, i32 1), !nosanitize !8
  %99 = extractvalue { i32, i1 } %98, 0, !nosanitize !8
  %100 = extractvalue { i32, i1 } %98, 1, !nosanitize !8
  br i1 %100, label %101, label %107, !prof !9, !nosanitize !8

101:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

102:                                              ; preds = %93
  %103 = zext nneg i32 %95 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !4
  %106 = load i32, ptr %2, align 4, !tbaa !4
  br label %107

107:                                              ; preds = %102, %96
  %108 = phi i32 [ %106, %102 ], [ %97, %96 ]
  %109 = phi i32 [ %105, %102 ], [ %99, %96 ]
  %110 = icmp eq i32 %95, 1
  %111 = select i1 %110, ptr %33, ptr %32
  %112 = load i32, ptr %111, align 4, !tbaa !4
  store i32 %112, ptr %33, align 4, !tbaa !4
  store i32 %108, ptr %32, align 4, !tbaa !4
  br label %113

113:                                              ; preds = %107, %85
  %114 = phi i32 [ %109, %107 ], [ %87, %85 ]
  store i32 %114, ptr %2, align 4, !tbaa !4
  br label %115

115:                                              ; preds = %113, %93
  %116 = icmp ugt i32 %47, 3
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load <2 x i32>, ptr %3, align 4, !tbaa !4
  store <2 x i32> %118, ptr %34, align 4, !tbaa !4
  %119 = add i32 %47, -3
  br label %144

120:                                              ; preds = %115
  %121 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %47, i32 1), !nosanitize !8
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !8
  br i1 %122, label %123, label %124, !prof !9, !nosanitize !8

123:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

124:                                              ; preds = %120
  %125 = extractvalue { i32, i1 } %121, 0, !nosanitize !8
  %126 = add nuw nsw i32 %125, %46
  switch i32 %126, label %133 [
    i32 0, label %146
    i32 3, label %127
  ]

127:                                              ; preds = %124
  %128 = load i32, ptr %3, align 4, !tbaa !4
  %129 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %128, i32 1), !nosanitize !8
  %130 = extractvalue { i32, i1 } %129, 0, !nosanitize !8
  %131 = extractvalue { i32, i1 } %129, 1, !nosanitize !8
  br i1 %131, label %132, label %138, !prof !9, !nosanitize !8

132:                                              ; preds = %127
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

133:                                              ; preds = %124
  %134 = zext nneg i32 %126 to i64
  %135 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !4
  %137 = load i32, ptr %3, align 4, !tbaa !4
  br label %138

138:                                              ; preds = %133, %127
  %139 = phi i32 [ %137, %133 ], [ %128, %127 ]
  %140 = phi i32 [ %136, %133 ], [ %130, %127 ]
  %141 = icmp eq i32 %126, 1
  %142 = select i1 %141, ptr %35, ptr %34
  %143 = load i32, ptr %142, align 4, !tbaa !4
  store i32 %143, ptr %35, align 4, !tbaa !4
  store i32 %139, ptr %34, align 4, !tbaa !4
  br label %144

144:                                              ; preds = %138, %117
  %145 = phi i32 [ %140, %138 ], [ %119, %117 ]
  store i32 %145, ptr %3, align 4, !tbaa !4
  br label %146

146:                                              ; preds = %144, %124
  %147 = add nuw nsw i64 %39, 1
  %148 = icmp eq i64 %147, %37
  br i1 %148, label %149, label %38, !llvm.loop !371

149:                                              ; preds = %146, %28, %10
  %150 = icmp ult i64 %5, 3
  br i1 %150, label %272, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %153 = add i64 %5, -3
  %154 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %157 = load ptr, ptr %156, align 8, !tbaa !58
  %158 = load ptr, ptr %152, align 8, !tbaa !57
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %160 = load ptr, ptr %159, align 8, !tbaa !59
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %162 = load i64, ptr %161, align 8, !tbaa !60
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %164 = load i32, ptr %163, align 8, !tbaa !13
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %166 = load ptr, ptr %165, align 8, !tbaa !169
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %168 = load ptr, ptr %167, align 8, !tbaa !170
  %169 = ptrtoint ptr %168 to i64
  %170 = ptrtoint ptr %166 to i64
  %171 = sub i64 %169, %170
  %172 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %154, i64 noundef %153, ptr noundef %166, i64 noundef %171, ptr noundef readonly %1, ptr noundef %158, ptr noundef %157, ptr noundef nonnull readonly %155, ptr noundef %160, i64 noundef %162, i32 noundef %164)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %198, label %174

174:                                              ; preds = %151
  %175 = icmp eq i64 %172, -70
  %176 = icmp ule i64 %7, %153
  %177 = and i1 %176, %175
  br i1 %177, label %198, label %178

178:                                              ; preds = %174
  %179 = icmp ult i64 %172, -119
  br i1 %179, label %180, label %272

180:                                              ; preds = %178
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %182 = load i32, ptr %181, align 4, !tbaa !94
  %183 = icmp ult i32 %182, 65
  br i1 %183, label %185, label %184, !prof !215, !nosanitize !8

184:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 20) #39, !nosanitize !8
  unreachable, !nosanitize !8

185:                                              ; preds = %180
  %186 = tail call i32 @llvm.umax.i32(i32 %182, i32 7)
  %187 = add nsw i32 %186, -1
  %188 = zext nneg i32 %187 to i64
  %189 = lshr i64 %7, %188
  %190 = add nuw nsw i64 %189, 2
  %191 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %190), !nosanitize !8
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !8
  br i1 %192, label %193, label %194, !prof !9, !nosanitize !8

193:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

194:                                              ; preds = %185
  %195 = extractvalue { i64, i1 } %191, 0, !nosanitize !8
  %196 = icmp ult i64 %172, %195
  %197 = select i1 %196, i64 %172, i64 0
  br label %198

198:                                              ; preds = %151, %174, %194
  %199 = phi i64 [ %197, %194 ], [ 0, %174 ], [ 0, %151 ]
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %201 = load i32, ptr %200, align 8, !tbaa !221
  %202 = icmp eq i32 %201, 0
  %203 = icmp ult i64 %199, 25
  %204 = and i1 %203, %202
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %6, i64 noundef %7)
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i64 %199, i64 1
  br label %209

209:                                              ; preds = %205, %198
  %210 = phi i64 [ %199, %198 ], [ %208, %205 ]
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %212 = load i32, ptr %211, align 8, !tbaa !222
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %209
  %215 = call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %211, ptr noundef nonnull %1, ptr noundef nonnull %11)
  %216 = icmp ult i64 %215, -119
  br i1 %216, label %217, label %272

217:                                              ; preds = %214
  %218 = load <2 x ptr>, ptr %152, align 8, !tbaa !51
  %219 = shufflevector <2 x ptr> %218, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %219, ptr %152, align 8, !tbaa !51
  br label %272

220:                                              ; preds = %209
  switch i64 %210, label %250 [
    i64 0, label %221
    i64 1, label %235
  ]

221:                                              ; preds = %220
  %222 = icmp ult i64 %7, 2305843009213693952
  br i1 %222, label %224, label %223, !prof !215, !nosanitize !8

223:                                              ; preds = %221
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

224:                                              ; preds = %221
  %225 = add nuw nsw i64 %7, 3
  %226 = icmp ugt i64 %225, %5
  br i1 %226, label %272, label %227

227:                                              ; preds = %224
  %228 = trunc i64 %7 to i32
  %229 = shl i32 %228, 3
  %230 = or disjoint i32 %229, %8
  %231 = trunc i32 %230 to i16
  store i16 %231, ptr %4, align 1, !tbaa !199
  %232 = lshr i32 %229, 16
  %233 = trunc i32 %232 to i8
  %234 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %233, ptr %234, align 1, !tbaa !164
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %154, ptr readonly align 1 %6, i64 %7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !370
  br label %265

235:                                              ; preds = %220
  %236 = load i8, ptr %6, align 1, !tbaa !164
  %237 = icmp ult i64 %7, 2305843009213693952
  br i1 %237, label %239, label %238, !prof !215, !nosanitize !8

238:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

239:                                              ; preds = %235
  %240 = icmp eq i64 %5, 3
  br i1 %240, label %272, label %241

241:                                              ; preds = %239
  %242 = trunc i64 %7 to i32
  %243 = shl i32 %242, 3
  %244 = or disjoint i32 %243, %8
  %245 = trunc i32 %244 to i16
  %246 = or disjoint i16 %245, 2
  store i16 %246, ptr %4, align 1, !tbaa !199
  %247 = lshr i32 %243, 16
  %248 = trunc i32 %247 to i8
  %249 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %248, ptr %249, align 1, !tbaa !164
  store i8 %236, ptr %154, align 1, !tbaa !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !370
  br label %265

250:                                              ; preds = %220
  %251 = load <2 x ptr>, ptr %152, align 8, !tbaa !51
  %252 = shufflevector <2 x ptr> %251, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %252, ptr %152, align 8, !tbaa !51
  %253 = icmp ult i64 %210, 2305843009213693952
  br i1 %253, label %255, label %254, !prof !215, !nosanitize !8

254:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

255:                                              ; preds = %250
  %256 = trunc i64 %210 to i32
  %257 = shl i32 %256, 3
  %258 = or disjoint i32 %257, %8
  %259 = trunc i32 %258 to i16
  %260 = or disjoint i16 %259, 4
  store i16 %260, ptr %4, align 1, !tbaa !199
  %261 = lshr i32 %257, 16
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %262, ptr %263, align 1, !tbaa !164
  %264 = add nuw nsw i64 %210, 3
  br label %265

265:                                              ; preds = %241, %255, %227
  %266 = phi i64 [ %225, %227 ], [ 4, %241 ], [ %264, %255 ]
  %267 = load ptr, ptr %152, align 8, !tbaa !57
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 5604
  %269 = load i32, ptr %268, align 4, !tbaa !151
  %270 = icmp eq i32 %269, 2
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  store i32 1, ptr %268, align 4, !tbaa !151
  br label %272

272:                                              ; preds = %239, %224, %178, %265, %271, %149, %214, %217
  %273 = phi i64 [ %266, %265 ], [ 0, %217 ], [ %215, %214 ], [ -70, %149 ], [ %172, %178 ], [ -70, %224 ], [ %266, %271 ], [ -70, %239 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  ret i64 %273
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef captures(none) initializes((0, 80)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #22 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !228
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 8, !tbaa !154
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %2
  %9 = load ptr, ptr %0, align 8, !tbaa !154
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %46, label %11

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %18

18:                                               ; preds = %42, %11
  %19 = phi i64 [ 0, %11 ], [ %43, %42 ]
  %20 = phi i64 [ 0, %11 ], [ %44, %42 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load i16, ptr %22, align 4, !tbaa !199
  %24 = zext i16 %23 to i64
  %25 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 %24), !nosanitize !8
  %26 = extractvalue { i64, i1 } %25, 0, !nosanitize !8
  %27 = extractvalue { i64, i1 } %25, 1, !nosanitize !8
  br i1 %27, label %28, label %29, !prof !9, !nosanitize !8

28:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

29:                                               ; preds = %18
  %30 = load i32, ptr %16, align 4, !tbaa !168
  %31 = zext i32 %30 to i64
  %32 = icmp eq i64 %20, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, ptr %17, align 8, !tbaa !167
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 65536), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %36
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %36
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  br label %42

42:                                               ; preds = %40, %33, %29
  %43 = phi i64 [ %41, %40 ], [ %26, %33 ], [ %26, %29 ]
  %44 = add nuw i64 %20, 1
  %45 = icmp eq i64 %44, %15
  br i1 %45, label %46, label %18, !llvm.loop !231

46:                                               ; preds = %42, %6
  %47 = phi i64 [ 0, %6 ], [ %43, %42 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa !169
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 %47
  store ptr %50, ptr %48, align 8, !tbaa !169
  br label %51

51:                                               ; preds = %46, %4
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %53 = load i32, ptr %52, align 8, !tbaa !167
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %57 = load i32, ptr %56, align 4, !tbaa !168
  %58 = zext i32 %57 to i64
  %59 = icmp ugt i64 %2, %58
  %60 = icmp samesign ult i64 %3, %58
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %63, align 8, !tbaa !167
  br label %73

64:                                               ; preds = %55
  %65 = trunc nuw i64 %2 to i32
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %67 = load i32, ptr %66, align 4, !tbaa !168
  %68 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %65), !nosanitize !8
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !8
  br i1 %69, label %70, label %71, !prof !9, !nosanitize !8

70:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

71:                                               ; preds = %64
  %72 = extractvalue { i32, i1 } %68, 0, !nosanitize !8
  store i32 %72, ptr %66, align 4, !tbaa !168
  br label %73

73:                                               ; preds = %62, %71, %51
  %74 = load ptr, ptr %1, align 8, !tbaa !154
  %75 = getelementptr inbounds nuw [8 x i8], ptr %74, i64 %2
  store ptr %75, ptr %0, align 8, !tbaa !154
  %76 = load ptr, ptr %1, align 8, !tbaa !154
  %77 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 %3
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %77, ptr %78, align 8, !tbaa !158
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %80 = load ptr, ptr %79, align 8, !tbaa !158
  %81 = ptrtoint ptr %80 to i64
  %82 = ptrtoint ptr %76 to i64
  %83 = sub i64 %81, %82
  %84 = ashr exact i64 %83, 3
  %85 = icmp eq i64 %3, %84
  br i1 %85, label %129, label %86

86:                                               ; preds = %73
  %87 = icmp eq ptr %77, %75
  br i1 %87, label %123, label %88

88:                                               ; preds = %86
  %89 = ptrtoint ptr %77 to i64
  %90 = ptrtoint ptr %75 to i64
  %91 = sub i64 %89, %90
  %92 = ashr exact i64 %91, 3
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %95

95:                                               ; preds = %119, %88
  %96 = phi i64 [ 0, %88 ], [ %120, %119 ]
  %97 = phi i64 [ 0, %88 ], [ %121, %119 ]
  %98 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 4
  %100 = load i16, ptr %99, align 4, !tbaa !199
  %101 = zext i16 %100 to i64
  %102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %101), !nosanitize !8
  %103 = extractvalue { i64, i1 } %102, 0, !nosanitize !8
  %104 = extractvalue { i64, i1 } %102, 1, !nosanitize !8
  br i1 %104, label %105, label %106, !prof !9, !nosanitize !8

105:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

106:                                              ; preds = %95
  %107 = load i32, ptr %93, align 4, !tbaa !168
  %108 = zext i32 %107 to i64
  %109 = icmp eq i64 %97, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, ptr %94, align 8, !tbaa !167
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %103, i64 65536), !nosanitize !8
  %115 = extractvalue { i64, i1 } %114, 1, !nosanitize !8
  br i1 %115, label %116, label %117, !prof !9, !nosanitize !8

116:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

117:                                              ; preds = %113
  %118 = extractvalue { i64, i1 } %114, 0, !nosanitize !8
  br label %119

119:                                              ; preds = %117, %110, %106
  %120 = phi i64 [ %118, %117 ], [ %103, %110 ], [ %103, %106 ]
  %121 = add nuw i64 %97, 1
  %122 = icmp eq i64 %121, %92
  br i1 %122, label %123, label %95, !llvm.loop !231

123:                                              ; preds = %119, %86
  %124 = phi i64 [ 0, %86 ], [ %120, %119 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %126 = load ptr, ptr %125, align 8, !tbaa !169
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 %124
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %127, ptr %128, align 8, !tbaa !170
  br label %129

129:                                              ; preds = %73, %123
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %131 = load ptr, ptr %130, align 8, !tbaa !155
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 %2
  store ptr %132, ptr %130, align 8, !tbaa !155
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %134 = load ptr, ptr %133, align 8, !tbaa !157
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 %2
  store ptr %135, ptr %133, align 8, !tbaa !157
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %137 = load ptr, ptr %136, align 8, !tbaa !156
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 %2
  store ptr %138, ptr %136, align 8, !tbaa !156
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #4 {
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 3768
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 3848
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 3928
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %2), !nosanitize !8
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !8
  br i1 %10, label %17, label %11, !prof !304, !nosanitize !8

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %1), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %18, label %15, !prof !304, !nosanitize !8

15:                                               ; preds = %11
  %16 = extractvalue { i64, i1 } %9, 0
  br label %19

17:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

18:                                               ; preds = %53, %11
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

19:                                               ; preds = %15, %53
  %20 = phi { i64, i1 } [ %13, %15 ], [ %56, %53 ]
  %21 = phi i64 [ %16, %15 ], [ %55, %53 ]
  %22 = phi i64 [ %1, %15 ], [ %23, %53 ]
  %23 = lshr i64 %21, 1
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !8
  %25 = icmp ult i64 %24, 300
  br i1 %25, label %58, label %26

26:                                               ; preds = %19
  %27 = load i64, ptr %12, align 8, !tbaa !227
  %28 = icmp ugt i64 %27, 195
  br i1 %28, label %58, label %29

29:                                               ; preds = %26
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %6, ptr noundef %4, i64 noundef %22, i64 noundef %2)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %7, ptr noundef %4, i64 noundef %22, i64 noundef %23)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %8, ptr noundef %4, i64 noundef %23, i64 noundef %2)
  %30 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %6, ptr noundef %3)
  %31 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %7, ptr noundef %3)
  %32 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %8, ptr noundef %3)
  %33 = icmp ult i64 %30, -119
  %34 = icmp ult i64 %31, -119
  %35 = select i1 %33, i1 %34, i1 false
  %36 = icmp ult i64 %32, -119
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %58

38:                                               ; preds = %29
  %39 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %32), !nosanitize !8
  %40 = extractvalue { i64, i1 } %39, 1, !nosanitize !8
  br i1 %40, label %41, label %42, !prof !9, !nosanitize !8

41:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

42:                                               ; preds = %38
  %43 = extractvalue { i64, i1 } %39, 0, !nosanitize !8
  %44 = icmp ult i64 %43, %30
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  tail call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %0, i64 noundef %22, i64 noundef %23, ptr noundef nonnull %3, ptr noundef %4)
  %46 = trunc i64 %23 to i32
  %47 = load ptr, ptr %0, align 8, !tbaa !225
  %48 = load i64, ptr %12, align 8, !tbaa !227
  %49 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %48
  store i32 %46, ptr %49, align 4, !tbaa !4
  %50 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %48, i64 1), !nosanitize !8
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !8
  br i1 %51, label %52, label %53, !prof !9, !nosanitize !8

52:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

53:                                               ; preds = %45
  %54 = extractvalue { i64, i1 } %50, 0, !nosanitize !8
  store i64 %54, ptr %12, align 8, !tbaa !227
  %55 = add nuw i64 %23, %2
  %56 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %23), !nosanitize !8
  %57 = extractvalue { i64, i1 } %56, 1, !nosanitize !8
  br i1 %57, label %18, label %19, !prof !372, !nosanitize !8

58:                                               ; preds = %42, %29, %26, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 3, 0) i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4952
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 3224
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3544
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %16 = load i64, ptr %15, align 8, !tbaa !60
  %17 = tail call i64 @ZSTD_buildBlockEntropyStats(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef %14, i64 noundef %16)
  %18 = icmp ult i64 %17, -119
  br i1 %18, label %19, label %256

19:                                               ; preds = %2
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !169
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load ptr, ptr %22, align 8, !tbaa !170
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %21 to i64
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %30 = load ptr, ptr %29, align 8, !tbaa !155
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %32 = load ptr, ptr %31, align 8, !tbaa !157
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !158
  %35 = load ptr, ptr %0, align 8, !tbaa !154
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 3
  %40 = load ptr, ptr %10, align 8, !tbaa !58
  %41 = load ptr, ptr %13, align 8, !tbaa !59
  %42 = load i64, ptr %15, align 8, !tbaa !60
  %43 = load i32, ptr %7, align 8, !tbaa !373
  %44 = icmp eq i32 %43, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i32 255, ptr %6, align 4, !tbaa !4
  %45 = icmp ugt i64 %26, 1023
  %46 = select i1 %45, i64 4, i64 3
  %47 = icmp ugt i64 %26, 16383
  %48 = zext i1 %47 to i64
  %49 = add nuw nsw i64 %46, %48
  %50 = icmp ult i64 %26, 256
  switch i32 %43, label %81 [
    i32 0, label %82
    i32 1, label %51
    i32 2, label %52
    i32 3, label %52
  ]

51:                                               ; preds = %19
  br label %82

52:                                               ; preds = %19, %19
  %53 = call i64 @HIST_count_wksp(ptr noundef %41, ptr noundef nonnull %6, ptr noundef %21, i64 noundef %26, ptr noundef %41, i64 noundef %42) #36
  %54 = icmp ult i64 %53, -119
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i32, ptr %6, align 4, !tbaa !4
  %57 = call i64 @HUF_estimateCompressedSize(ptr noundef %40, ptr noundef %41, i32 noundef %56) #36
  br i1 %44, label %58, label %66

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %60 = load i64, ptr %59, align 8, !tbaa !374
  %61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 %60), !nosanitize !8
  %62 = extractvalue { i64, i1 } %61, 1, !nosanitize !8
  br i1 %62, label %63, label %64, !prof !9, !nosanitize !8

63:                                               ; preds = %58
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

64:                                               ; preds = %58
  %65 = extractvalue { i64, i1 } %61, 0, !nosanitize !8
  br label %66

66:                                               ; preds = %64, %55
  %67 = phi i64 [ %65, %64 ], [ %57, %55 ]
  br i1 %50, label %74, label %68

68:                                               ; preds = %66
  %69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 6), !nosanitize !8
  %70 = extractvalue { i64, i1 } %69, 1, !nosanitize !8
  br i1 %70, label %71, label %72, !prof !9, !nosanitize !8

71:                                               ; preds = %68
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

72:                                               ; preds = %68
  %73 = extractvalue { i64, i1 } %69, 0, !nosanitize !8
  br label %74

74:                                               ; preds = %72, %66
  %75 = phi i64 [ %67, %66 ], [ %73, %72 ]
  %76 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %75, i64 %49), !nosanitize !8
  %77 = extractvalue { i64, i1 } %76, 1, !nosanitize !8
  br i1 %77, label %78, label %79, !prof !9, !nosanitize !8

78:                                               ; preds = %74
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

79:                                               ; preds = %74
  %80 = extractvalue { i64, i1 } %76, 0, !nosanitize !8
  br label %82

81:                                               ; preds = %19
  br label %82

82:                                               ; preds = %81, %79, %52, %51, %19
  %83 = phi i64 [ 0, %81 ], [ 1, %51 ], [ %26, %19 ], [ %80, %79 ], [ %26, %52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %84 = getelementptr inbounds nuw i8, ptr %40, i64 2064
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 5096
  %86 = icmp ugt i64 %39, 127
  %87 = select i1 %86, i64 3, i64 2
  %88 = icmp ugt i64 %39, 32511
  %89 = zext i1 %88 to i64
  %90 = add nuw nsw i64 %87, %89
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 5100
  %92 = load i32, ptr %91, align 4, !tbaa !375
  %93 = getelementptr inbounds nuw i8, ptr %28, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i32 31, ptr %5, align 4, !tbaa !4
  %94 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %5, ptr noundef %28, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #36
  switch i32 %92, label %98 [
    i32 0, label %95
    i32 1, label %107
  ]

95:                                               ; preds = %82
  %96 = load i32, ptr %5, align 4, !tbaa !4
  %97 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %41, i32 noundef %96) #36
  br label %104

98:                                               ; preds = %82
  %99 = and i32 %92, -2
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, ptr %5, align 4, !tbaa !4
  %103 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %84, ptr noundef %41, i32 noundef %102) #36
  br label %104

104:                                              ; preds = %101, %95
  %105 = phi i64 [ %97, %95 ], [ %103, %101 ]
  %106 = icmp ult i64 %105, -119
  br i1 %106, label %107, label %121

107:                                              ; preds = %104, %98, %82
  %108 = phi i64 [ %105, %104 ], [ 0, %98 ], [ 0, %82 ]
  %109 = icmp eq ptr %34, %35
  br i1 %109, label %128, label %110

110:                                              ; preds = %107, %117
  %111 = phi i64 [ %118, %117 ], [ %108, %107 ]
  %112 = phi ptr [ %119, %117 ], [ %28, %107 ]
  %113 = load i8, ptr %112, align 1, !tbaa !164
  %114 = zext i8 %113 to i64
  %115 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 %114), !nosanitize !8
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !8
  br i1 %116, label %127, label %117, !prof !9, !nosanitize !8

117:                                              ; preds = %110
  %118 = extractvalue { i64, i1 } %115, 0
  %119 = getelementptr inbounds nuw i8, ptr %112, i64 1
  %120 = icmp ult ptr %119, %93
  br i1 %120, label %110, label %128, !llvm.loop !376

121:                                              ; preds = %104
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -1152921504606846976, 1152921504606846976) %39, i64 10), !nosanitize !8
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !8
  br i1 %123, label %124, label %125, !prof !9, !nosanitize !8

124:                                              ; preds = %121
  call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

125:                                              ; preds = %121
  %126 = extractvalue { i64, i1 } %122, 0, !nosanitize !8
  br label %131

127:                                              ; preds = %110
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

128:                                              ; preds = %117, %107
  %129 = phi i64 [ %108, %107 ], [ %118, %117 ]
  %130 = lshr i64 %129, 3
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi i64 [ %126, %125 ], [ %130, %128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %133 = load i32, ptr %85, align 8, !tbaa !377
  %134 = getelementptr inbounds nuw i8, ptr %40, i64 4288
  %135 = getelementptr inbounds nuw i8, ptr %30, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i32 35, ptr %4, align 4, !tbaa !4
  %136 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %4, ptr noundef %30, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #36
  switch i32 %133, label %140 [
    i32 0, label %137
    i32 1, label %149
  ]

137:                                              ; preds = %131
  %138 = load i32, ptr %4, align 4, !tbaa !4
  %139 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %138) #36
  br label %146

140:                                              ; preds = %131
  %141 = and i32 %133, -2
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, ptr %4, align 4, !tbaa !4
  %145 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %134, ptr noundef %41, i32 noundef %144) #36
  br label %146

146:                                              ; preds = %143, %137
  %147 = phi i64 [ %139, %137 ], [ %145, %143 ]
  %148 = icmp ult i64 %147, -119
  br i1 %148, label %149, label %152

149:                                              ; preds = %146, %140, %131
  %150 = phi i64 [ %147, %146 ], [ 0, %140 ], [ 0, %131 ]
  %151 = icmp eq ptr %34, %35
  br i1 %151, label %173, label %158

152:                                              ; preds = %146
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -1152921504606846976, 1152921504606846976) %39, i64 10), !nosanitize !8
  %154 = extractvalue { i64, i1 } %153, 1, !nosanitize !8
  br i1 %154, label %155, label %156, !prof !9, !nosanitize !8

155:                                              ; preds = %152
  call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

156:                                              ; preds = %152
  %157 = extractvalue { i64, i1 } %153, 0, !nosanitize !8
  br label %176

158:                                              ; preds = %149, %169
  %159 = phi i64 [ %170, %169 ], [ %150, %149 ]
  %160 = phi ptr [ %171, %169 ], [ %30, %149 ]
  %161 = load i8, ptr %160, align 1, !tbaa !164
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !164
  %165 = zext i8 %164 to i64
  %166 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %159, i64 %165), !nosanitize !8
  %167 = extractvalue { i64, i1 } %166, 1, !nosanitize !8
  br i1 %167, label %168, label %169, !prof !9, !nosanitize !8

168:                                              ; preds = %158
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

169:                                              ; preds = %158
  %170 = extractvalue { i64, i1 } %166, 0
  %171 = getelementptr inbounds nuw i8, ptr %160, i64 1
  %172 = icmp ult ptr %171, %135
  br i1 %172, label %158, label %173, !llvm.loop !376

173:                                              ; preds = %169, %149
  %174 = phi i64 [ %150, %149 ], [ %170, %169 ]
  %175 = lshr i64 %174, 3
  br label %176

176:                                              ; preds = %173, %156
  %177 = phi i64 [ %157, %156 ], [ %175, %173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %178 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 %177), !nosanitize !8
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !8
  br i1 %179, label %180, label %181, !prof !9, !nosanitize !8

180:                                              ; preds = %176
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

181:                                              ; preds = %176
  %182 = extractvalue { i64, i1 } %178, 0, !nosanitize !8
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 5104
  %184 = load i32, ptr %183, align 8, !tbaa !196
  %185 = getelementptr inbounds nuw i8, ptr %40, i64 2836
  %186 = getelementptr inbounds nuw i8, ptr %32, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i32 52, ptr %3, align 4, !tbaa !4
  %187 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %3, ptr noundef %32, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #36
  switch i32 %184, label %191 [
    i32 0, label %188
    i32 1, label %200
  ]

188:                                              ; preds = %181
  %189 = load i32, ptr %3, align 4, !tbaa !4
  %190 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %189) #36
  br label %197

191:                                              ; preds = %181
  %192 = and i32 %184, -2
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i32, ptr %3, align 4, !tbaa !4
  %196 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %185, ptr noundef %41, i32 noundef %195) #36
  br label %197

197:                                              ; preds = %194, %188
  %198 = phi i64 [ %190, %188 ], [ %196, %194 ]
  %199 = icmp ult i64 %198, -119
  br i1 %199, label %200, label %203

200:                                              ; preds = %197, %191, %181
  %201 = phi i64 [ %198, %197 ], [ 0, %191 ], [ 0, %181 ]
  %202 = icmp eq ptr %34, %35
  br i1 %202, label %224, label %209

203:                                              ; preds = %197
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -1152921504606846976, 1152921504606846976) %39, i64 10), !nosanitize !8
  %205 = extractvalue { i64, i1 } %204, 1, !nosanitize !8
  br i1 %205, label %206, label %207, !prof !9, !nosanitize !8

206:                                              ; preds = %203
  call void @llvm.ubsantrap(i8 12) #34, !nosanitize !8
  unreachable, !nosanitize !8

207:                                              ; preds = %203
  %208 = extractvalue { i64, i1 } %204, 0, !nosanitize !8
  br label %227

209:                                              ; preds = %200, %220
  %210 = phi i64 [ %221, %220 ], [ %201, %200 ]
  %211 = phi ptr [ %222, %220 ], [ %32, %200 ]
  %212 = load i8, ptr %211, align 1, !tbaa !164
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !164
  %216 = zext i8 %215 to i64
  %217 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %210, i64 %216), !nosanitize !8
  %218 = extractvalue { i64, i1 } %217, 1, !nosanitize !8
  br i1 %218, label %219, label %220, !prof !9, !nosanitize !8

219:                                              ; preds = %209
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

220:                                              ; preds = %209
  %221 = extractvalue { i64, i1 } %217, 0
  %222 = getelementptr inbounds nuw i8, ptr %211, i64 1
  %223 = icmp ult ptr %222, %186
  br i1 %223, label %209, label %224, !llvm.loop !376

224:                                              ; preds = %220, %200
  %225 = phi i64 [ %201, %200 ], [ %221, %220 ]
  %226 = lshr i64 %225, 3
  br label %227

227:                                              ; preds = %224, %207
  %228 = phi i64 [ %208, %207 ], [ %226, %224 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %229 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %182, i64 %228), !nosanitize !8
  %230 = extractvalue { i64, i1 } %229, 1, !nosanitize !8
  br i1 %230, label %231, label %232, !prof !9, !nosanitize !8

231:                                              ; preds = %227
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

232:                                              ; preds = %227
  %233 = extractvalue { i64, i1 } %229, 0, !nosanitize !8
  %234 = getelementptr inbounds nuw i8, ptr %1, i64 5248
  %235 = load i64, ptr %234, align 8, !tbaa !378
  %236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %233, i64 %235), !nosanitize !8
  %237 = extractvalue { i64, i1 } %236, 1, !nosanitize !8
  br i1 %237, label %238, label %239, !prof !9, !nosanitize !8

238:                                              ; preds = %232
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

239:                                              ; preds = %232
  %240 = extractvalue { i64, i1 } %236, 0, !nosanitize !8
  %241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 %90), !nosanitize !8
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !8
  br i1 %242, label %243, label %244, !prof !9, !nosanitize !8

243:                                              ; preds = %239
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

244:                                              ; preds = %239
  %245 = extractvalue { i64, i1 } %241, 0, !nosanitize !8
  %246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %245, i64 %83), !nosanitize !8
  %247 = extractvalue { i64, i1 } %246, 1, !nosanitize !8
  br i1 %247, label %248, label %249, !prof !9, !nosanitize !8

248:                                              ; preds = %244
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

249:                                              ; preds = %244
  %250 = extractvalue { i64, i1 } %246, 0, !nosanitize !8
  %251 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %250, i64 3), !nosanitize !8
  %252 = extractvalue { i64, i1 } %251, 1, !nosanitize !8
  br i1 %252, label %253, label %254, !prof !9, !nosanitize !8

253:                                              ; preds = %249
  call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

254:                                              ; preds = %249
  %255 = extractvalue { i64, i1 } %251, 0, !nosanitize !8
  br label %256

256:                                              ; preds = %2, %254
  %257 = phi i64 [ %255, %254 ], [ %17, %2 ]
  ret i64 %257
}

declare i64 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare i64 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc range(i64 -70, 1) i64 @ZSTD_copyBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #24 {
  %4 = alloca %struct.repcodes_s, align 4
  %5 = load ptr, ptr %1, align 8, !tbaa !154
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !169
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i64, ptr %19, align 8, !tbaa !379
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa !380
  %23 = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %20
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 1), !nosanitize !8
  %25 = extractvalue { i64, i1 } %24, 0, !nosanitize !8
  %26 = extractvalue { i64, i1 } %24, 1, !nosanitize !8
  br i1 %26, label %27, label %28, !prof !9, !nosanitize !8

27:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = load i64, ptr %29, align 8, !tbaa !381
  %31 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %20), !nosanitize !8
  %32 = extractvalue { i64, i1 } %31, 1, !nosanitize !8
  br i1 %32, label %33, label %34, !prof !9, !nosanitize !8

33:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %28
  %35 = extractvalue { i64, i1 } %31, 0, !nosanitize !8
  %36 = icmp ugt i64 %25, %35
  br i1 %36, label %154, label %37

37:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %38 = icmp eq ptr %7, %5
  br i1 %38, label %138, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %4, align 4
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %42 = load i32, ptr %41, align 4, !tbaa !168
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %47 = load i32, ptr %45, align 4
  %48 = load i32, ptr %46, align 4
  br label %49

49:                                               ; preds = %39, %134
  %50 = phi i32 [ %48, %39 ], [ %127, %134 ]
  %51 = phi i32 [ %47, %39 ], [ %128, %134 ]
  %52 = phi i64 [ 0, %39 ], [ %135, %134 ]
  %53 = phi i64 [ 0, %39 ], [ %136, %134 ]
  %54 = phi i32 [ %40, %39 ], [ %129, %134 ]
  %55 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %53
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 4
  %57 = load i16, ptr %56, align 4, !tbaa !159
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %53
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 4
  store i32 %58, ptr %60, align 4, !tbaa !184
  %61 = getelementptr inbounds nuw i8, ptr %55, i64 6
  %62 = load i16, ptr %61, align 2, !tbaa !163
  %63 = zext i16 %62 to i32
  %64 = add nuw nsw i32 %63, 3
  %65 = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i32 %64, ptr %65, align 4, !tbaa !183
  %66 = getelementptr inbounds nuw i8, ptr %59, i64 12
  store i32 0, ptr %66, align 4, !tbaa !382
  %67 = icmp eq i64 %53, %43
  br i1 %67, label %68, label %74

68:                                               ; preds = %49
  %69 = load i32, ptr %44, align 8, !tbaa !167
  switch i32 %69, label %74 [
    i32 1, label %70
    i32 2, label %72
  ]

70:                                               ; preds = %68
  %71 = or disjoint i32 %58, 65536
  store i32 %71, ptr %60, align 4, !tbaa !184
  br label %74

72:                                               ; preds = %68
  %73 = add nuw nsw i32 %63, 65539
  store i32 %73, ptr %65, align 4, !tbaa !183
  br label %74

74:                                               ; preds = %68, %49, %72, %70
  %75 = phi i32 [ %58, %68 ], [ %58, %49 ], [ %58, %72 ], [ %71, %70 ]
  %76 = load i32, ptr %55, align 4, !tbaa !162
  %77 = add i32 %76, -1
  %78 = icmp ult i32 %77, 3
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  store i32 %76, ptr %66, align 4, !tbaa !382
  %80 = icmp eq i32 %75, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %79
  %82 = zext nneg i32 %76 to i64
  %83 = getelementptr [4 x i8], ptr %4, i64 %82
  %84 = getelementptr i8, ptr %83, i64 -4
  %85 = load i32, ptr %84, align 4, !tbaa !4
  br label %105

86:                                               ; preds = %79
  %87 = icmp eq i32 %76, 3
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %54, i32 1), !nosanitize !8
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !8
  br i1 %90, label %91, label %92, !prof !9, !nosanitize !8

91:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

92:                                               ; preds = %88
  %93 = extractvalue { i32, i1 } %89, 0, !nosanitize !8
  br label %105

94:                                               ; preds = %86
  %95 = zext nneg i32 %76 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !4
  br label %105

98:                                               ; preds = %74
  %99 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %76, i32 3), !nosanitize !8
  %100 = extractvalue { i32, i1 } %99, 1, !nosanitize !8
  br i1 %100, label %101, label %102, !prof !9, !nosanitize !8

101:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

102:                                              ; preds = %98
  %103 = extractvalue { i32, i1 } %99, 0, !nosanitize !8
  store i32 %103, ptr %59, align 4, !tbaa !181
  store i32 %51, ptr %46, align 4, !tbaa !4
  store i32 %54, ptr %45, align 4, !tbaa !4
  %104 = add i32 %76, -3
  br label %123

105:                                              ; preds = %81, %94, %92
  %106 = phi i32 [ %97, %94 ], [ %93, %92 ], [ %85, %81 ]
  store i32 %106, ptr %59, align 4, !tbaa !181
  %107 = icmp ne i16 %57, 0
  %108 = sext i1 %107 to i32
  %109 = add nsw i32 %76, %108
  switch i32 %109, label %115 [
    i32 0, label %126
    i32 3, label %110
  ]

110:                                              ; preds = %105
  %111 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %54, i32 1), !nosanitize !8
  %112 = extractvalue { i32, i1 } %111, 0, !nosanitize !8
  %113 = extractvalue { i32, i1 } %111, 1, !nosanitize !8
  br i1 %113, label %114, label %119, !prof !9, !nosanitize !8

114:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

115:                                              ; preds = %105
  %116 = zext nneg i32 %109 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !4
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi i32 [ %118, %115 ], [ %112, %110 ]
  %121 = icmp eq i32 %109, 1
  %122 = select i1 %121, i32 %50, i32 %51
  store i32 %122, ptr %46, align 4, !tbaa !4
  store i32 %54, ptr %45, align 4, !tbaa !4
  br label %123

123:                                              ; preds = %119, %102
  %124 = phi i32 [ %122, %119 ], [ %51, %102 ]
  %125 = phi i32 [ %120, %119 ], [ %104, %102 ]
  store i32 %125, ptr %4, align 4, !tbaa !4
  br label %126

126:                                              ; preds = %105, %123
  %127 = phi i32 [ %50, %105 ], [ %124, %123 ]
  %128 = phi i32 [ %51, %105 ], [ %54, %123 ]
  %129 = phi i32 [ %54, %105 ], [ %125, %123 ]
  %130 = zext nneg i32 %75 to i64
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %52, i64 %130), !nosanitize !8
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !8
  br i1 %132, label %133, label %134, !prof !9, !nosanitize !8

133:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

134:                                              ; preds = %126
  %135 = extractvalue { i64, i1 } %131, 0, !nosanitize !8
  %136 = add nuw i64 %53, 1
  %137 = icmp eq i64 %136, %11
  br i1 %137, label %138, label %49, !llvm.loop !383

138:                                              ; preds = %134, %37
  %139 = phi i64 [ 0, %37 ], [ %135, %134 ]
  %140 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %18, i64 %139), !nosanitize !8
  %141 = extractvalue { i64, i1 } %140, 1, !nosanitize !8
  br i1 %141, label %142, label %143, !prof !9, !nosanitize !8

142:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

143:                                              ; preds = %138
  %144 = extractvalue { i64, i1 } %140, 0, !nosanitize !8
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %11
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 4
  store i32 %145, ptr %147, align 4, !tbaa !184
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 8
  store i32 0, ptr %148, align 4, !tbaa !183
  store i32 0, ptr %146, align 4, !tbaa !181
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 %25), !nosanitize !8
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !8
  br i1 %150, label %151, label %152, !prof !9, !nosanitize !8

151:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

152:                                              ; preds = %143
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !8
  store i64 %153, ptr %19, align 8, !tbaa !379
  br label %154

154:                                              ; preds = %34, %152
  %155 = phi i64 [ 0, %152 ], [ -70, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i64 %155
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly captures(none) %7, ptr noundef %8, i64 noundef %9, i32 noundef %10) unnamed_addr #30 {
  %12 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %14 = load i32, ptr %13, align 4, !tbaa !94
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 2064
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 4288
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 2836
  %18 = load ptr, ptr %4, align 8, !tbaa !154
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !158
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %18 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !155
  %29 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %30 = load ptr, ptr %29, align 8, !tbaa !157
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 212
  %33 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %9, i64 212), !nosanitize !8
  %34 = extractvalue { i64, i1 } %33, 0, !nosanitize !8
  %35 = extractvalue { i64, i1 } %33, 1, !nosanitize !8
  br i1 %35, label %36, label %37, !prof !9, !nosanitize !8

36:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

37:                                               ; preds = %11
  %38 = icmp eq ptr %20, %18
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = udiv i64 %3, %24
  %41 = icmp ugt i64 %40, 19
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ 1, %37 ], [ %42, %39 ]
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %46 = load i32, ptr %45, align 8, !tbaa !99
  switch i32 %46, label %48 [
    i32 1, label %55
    i32 2, label %47
  ]

47:                                               ; preds = %43
  br label %55

48:                                               ; preds = %43
  %49 = icmp eq i32 %14, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %52 = load i32, ptr %51, align 4, !tbaa !93
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %43, %47, %48, %50
  %56 = phi i32 [ 0, %43 ], [ 1, %47 ], [ 0, %48 ], [ %54, %50 ]
  %57 = tail call i64 @ZSTD_compressLiterals(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %32, i64 noundef %34, ptr noundef %5, ptr noundef %6, i32 noundef %14, i32 noundef %56, i32 noundef %44, i32 noundef %10) #36
  %58 = icmp ult i64 %57, -119
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %57
  br i1 %58, label %60, label %149

60:                                               ; preds = %55
  %61 = ptrtoint ptr %31 to i64
  %62 = sub nsw i64 %1, %57
  %63 = icmp slt i64 %62, 4
  br i1 %63, label %149, label %64

64:                                               ; preds = %60
  %65 = icmp ult i64 %24, 128
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = trunc nuw nsw i64 %24 to i8
  %68 = getelementptr inbounds nuw i8, ptr %59, i64 1
  store i8 %67, ptr %59, align 1, !tbaa !164
  br label %83

69:                                               ; preds = %64
  %70 = icmp ult i64 %24, 32512
  br i1 %70, label %71, label %78

71:                                               ; preds = %69
  %72 = lshr i64 %24, 8
  %73 = trunc nuw nsw i64 %72 to i8
  %74 = or disjoint i8 %73, -128
  store i8 %74, ptr %59, align 1, !tbaa !164
  %75 = trunc i64 %24 to i8
  %76 = getelementptr inbounds nuw i8, ptr %59, i64 1
  store i8 %75, ptr %76, align 1, !tbaa !164
  %77 = getelementptr inbounds nuw i8, ptr %59, i64 2
  br label %83

78:                                               ; preds = %69
  store i8 -1, ptr %59, align 1, !tbaa !164
  %79 = getelementptr inbounds nuw i8, ptr %59, i64 1
  %80 = trunc i64 %24 to i16
  %81 = add i16 %80, -32512
  store i16 %81, ptr %79, align 1, !tbaa !199
  %82 = getelementptr inbounds nuw i8, ptr %59, i64 3
  br label %83

83:                                               ; preds = %71, %78, %66
  %84 = phi ptr [ %68, %66 ], [ %77, %71 ], [ %82, %78 ]
  br i1 %38, label %85, label %90

85:                                               ; preds = %83
  %86 = getelementptr inbounds nuw i8, ptr %5, i64 2064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3552) %15, ptr noundef nonnull align 8 dereferenceable(3552) %86, i64 3552, i1 false)
  %87 = ptrtoint ptr %84 to i64
  %88 = ptrtoint ptr %0 to i64
  %89 = sub i64 %87, %88
  br label %149

90:                                               ; preds = %83
  %91 = getelementptr inbounds nuw i8, ptr %84, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %92 = getelementptr inbounds nuw i8, ptr %5, i64 2064
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull %4, i64 noundef %24, ptr noundef nonnull %92, ptr noundef nonnull %15, ptr noundef nonnull %91, ptr noundef nonnull %31, i32 noundef %14, ptr noundef nonnull %8, ptr noundef nonnull %32, i64 noundef %34)
  %93 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %94 = load i64, ptr %93, align 8, !tbaa !331
  %95 = icmp ult i64 %94, -119
  br i1 %95, label %96, label %122

96:                                               ; preds = %90
  %97 = load i32, ptr %12, align 8, !tbaa !330
  %98 = icmp ult i32 %97, 67108864
  br i1 %98, label %100, label %99, !prof !215, !nosanitize !8

99:                                               ; preds = %96
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %102 = load i32, ptr %101, align 4, !tbaa !332
  %103 = icmp ult i32 %102, 268435456
  br i1 %103, label %105, label %104, !prof !215, !nosanitize !8

104:                                              ; preds = %100
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

105:                                              ; preds = %100
  %106 = shl nuw i32 %97, 6
  %107 = shl nuw i32 %102, 4
  %108 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %106, i32 %107), !nosanitize !8
  %109 = extractvalue { i32, i1 } %108, 0, !nosanitize !8
  %110 = extractvalue { i32, i1 } %108, 1, !nosanitize !8
  br i1 %110, label %111, label %112, !prof !9, !nosanitize !8

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

112:                                              ; preds = %105
  %113 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %114 = load i32, ptr %113, align 8, !tbaa !333
  %115 = icmp ult i32 %114, 1073741824
  br i1 %115, label %117, label %116, !prof !215, !nosanitize !8

116:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

117:                                              ; preds = %112
  %118 = shl nuw i32 %114, 2
  %119 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %109, i32 %118), !nosanitize !8
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !8
  br i1 %120, label %121, label %123, !prof !9, !nosanitize !8

121:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

122:                                              ; preds = %90
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %149

123:                                              ; preds = %117
  %124 = extractvalue { i32, i1 } %119, 0, !nosanitize !8
  %125 = trunc i32 %124 to i8
  store i8 %125, ptr %84, align 1, !tbaa !164
  %126 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %127 = load i64, ptr %126, align 8, !tbaa !327
  %128 = getelementptr inbounds nuw i8, ptr %91, i64 %94
  %129 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %130 = load i32, ptr %129, align 8, !tbaa !329
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %131 = ptrtoint ptr %128 to i64
  %132 = sub i64 %61, %131
  %133 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %128, i64 noundef %132, ptr noundef nonnull %17, ptr noundef %30, ptr noundef nonnull %15, ptr noundef %26, ptr noundef nonnull %16, ptr noundef %28, ptr noundef %18, i64 noundef %24, i32 noundef %130, i32 noundef %10) #36
  %134 = icmp ult i64 %133, -119
  br i1 %134, label %135, label %149

135:                                              ; preds = %123
  %136 = getelementptr inbounds nuw i8, ptr %128, i64 %133
  %137 = icmp eq i64 %127, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %135
  %139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %127, i64 %133), !nosanitize !8
  %140 = extractvalue { i64, i1 } %139, 1, !nosanitize !8
  br i1 %140, label %141, label %142, !prof !9, !nosanitize !8

141:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

142:                                              ; preds = %138
  %143 = extractvalue { i64, i1 } %139, 0, !nosanitize !8
  %144 = icmp ult i64 %143, 4
  br i1 %144, label %149, label %145

145:                                              ; preds = %142, %135
  %146 = ptrtoint ptr %136 to i64
  %147 = ptrtoint ptr %0 to i64
  %148 = sub i64 %146, %147
  br label %149

149:                                              ; preds = %142, %123, %122, %60, %55, %145, %85
  %150 = phi i64 [ %57, %55 ], [ %89, %85 ], [ %148, %145 ], [ -70, %60 ], [ %94, %122 ], [ 0, %142 ], [ %133, %123 ]
  ret i64 %150
}

declare i64 @ZSTD_compressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare extern_weak i64 @ZSTD_trace_compress_begin(ptr noundef) #16

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 4294967296) i64 @ZSTD_compress_insertDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr noundef %10) unnamed_addr #4 {
  %12 = icmp eq ptr %5, null
  %13 = icmp ult i64 %6, 8
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = icmp eq i32 %7, 2
  %17 = select i1 %16, i64 -32, i64 0
  br label %46

18:                                               ; preds = %11
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %20, align 8, !tbaa !150
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %21, align 4, !tbaa !151
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %22, align 8, !tbaa !152
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %23, align 4, !tbaa !153
  %24 = icmp eq i32 %7, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %46

26:                                               ; preds = %18
  %27 = load i32, ptr %5, align 1, !tbaa !4
  %28 = icmp eq i32 %27, -332356553
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  switch i32 %7, label %31 [
    i32 0, label %30
    i32 2, label %46
  ]

30:                                               ; preds = %29
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %46

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %33 = load i32, ptr %32, align 8, !tbaa !96
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %37 = load i32, ptr %36, align 1, !tbaa !4
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i64 [ %38, %35 ], [ 0, %31 ]
  %41 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %5, i64 noundef range(i64 8, 0) %6)
  %42 = icmp ult i64 %41, -119
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 %41
  %45 = sub nsw i64 %6, %41
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %44, i64 noundef %45, i32 noundef %8, i32 noundef range(i32 0, 2) %9)
  br label %46

46:                                               ; preds = %43, %39, %29, %15, %30, %25
  %47 = phi i64 [ %17, %15 ], [ -32, %29 ], [ 0, %25 ], [ 0, %30 ], [ %41, %39 ], [ %40, %43 ]
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_loadDictionaryContent(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #4 {
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = icmp eq i32 %11, 1
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  %15 = getelementptr i8, ptr %3, i64 28
  %16 = load i32, ptr %15, align 4, !tbaa !77
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, 2
  %19 = icmp ne i32 %7, 0
  %20 = and i1 %19, %18
  %21 = select i1 %20, i64 -16777214, i64 -3670015998
  %22 = select i1 %20, i64 16777214, i64 3670015998
  %23 = icmp ugt i64 %5, %22
  %24 = getelementptr inbounds i8, ptr %9, i64 %21
  %25 = tail call i64 @llvm.umin.i64(i64 %5, i64 %22)
  %26 = select i1 %23, ptr %24, ptr %4
  %27 = icmp eq i64 %5, 0
  br i1 %27, label %78, label %28

28:                                               ; preds = %8
  %29 = load ptr, ptr %0, align 8, !tbaa !206
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %33 = load ptr, ptr %32, align 8, !tbaa !207
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %35 = load i32, ptr %34, align 4, !tbaa !208
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %37 = load i32, ptr %36, align 8, !tbaa !209
  br label %58

38:                                               ; preds = %28
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load ptr, ptr %39, align 8, !tbaa !210
  %41 = ptrtoint ptr %29 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i32, ptr %44, align 8, !tbaa !209
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %45, ptr %46, align 4, !tbaa !208
  %47 = trunc i64 %43 to i32
  store i32 %47, ptr %44, align 8, !tbaa !209
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %40, ptr %48, align 8, !tbaa !207
  %49 = sub i64 0, %43
  %50 = getelementptr inbounds i8, ptr %26, i64 %49
  store ptr %50, ptr %39, align 8, !tbaa !210
  %51 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %47, i32 %45), !nosanitize !8
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !8
  br i1 %52, label %53, label %54, !prof !9, !nosanitize !8

53:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

54:                                               ; preds = %38
  %55 = extractvalue { i32, i1 } %51, 0, !nosanitize !8
  %56 = icmp ult i32 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 %47, ptr %46, align 4, !tbaa !208
  br label %58

58:                                               ; preds = %57, %54, %31
  %59 = phi i32 [ %37, %31 ], [ %47, %54 ], [ %47, %57 ]
  %60 = phi i32 [ %35, %31 ], [ %45, %54 ], [ %47, %57 ]
  %61 = phi ptr [ %33, %31 ], [ %40, %54 ], [ %40, %57 ]
  %62 = getelementptr inbounds nuw i8, ptr %26, i64 %25
  store ptr %62, ptr %0, align 8, !tbaa !206
  %63 = zext i32 %60 to i64
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 %63
  %65 = icmp ugt ptr %62, %64
  %66 = zext i32 %59 to i64
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 %66
  %68 = icmp ult ptr %26, %67
  %69 = and i1 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %72 = ptrtoint ptr %62 to i64
  %73 = ptrtoint ptr %61 to i64
  %74 = sub i64 %72, %73
  %75 = tail call i64 @llvm.umin.i64(i64 %74, i64 %66)
  %76 = trunc nuw i64 %75 to i32
  store i32 %76, ptr %71, align 4, !tbaa !208
  br label %77

77:                                               ; preds = %58, %70
  br i1 %14, label %79, label %141

78:                                               ; preds = %8
  br i1 %14, label %127, label %141

79:                                               ; preds = %77
  %80 = load ptr, ptr %1, align 8, !tbaa !206
  %81 = icmp eq ptr %26, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %84 = load ptr, ptr %83, align 8, !tbaa !207
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %86 = load i32, ptr %85, align 4, !tbaa !208
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %88 = load i32, ptr %87, align 8, !tbaa !209
  br label %109

89:                                               ; preds = %79
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %91 = load ptr, ptr %90, align 8, !tbaa !210
  %92 = ptrtoint ptr %80 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %96 = load i32, ptr %95, align 8, !tbaa !209
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %96, ptr %97, align 4, !tbaa !208
  %98 = trunc i64 %94 to i32
  store i32 %98, ptr %95, align 8, !tbaa !209
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %91, ptr %99, align 8, !tbaa !207
  %100 = sub i64 0, %94
  %101 = getelementptr inbounds i8, ptr %26, i64 %100
  store ptr %101, ptr %90, align 8, !tbaa !210
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %98, i32 %96), !nosanitize !8
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !8
  br i1 %103, label %104, label %105, !prof !9, !nosanitize !8

104:                                              ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #34, !nosanitize !8
  unreachable, !nosanitize !8

105:                                              ; preds = %89
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !8
  %107 = icmp ult i32 %106, 8
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 %98, ptr %97, align 4, !tbaa !208
  br label %109

109:                                              ; preds = %108, %105, %82
  %110 = phi i32 [ %88, %82 ], [ %98, %105 ], [ %98, %108 ]
  %111 = phi i32 [ %86, %82 ], [ %96, %105 ], [ %98, %108 ]
  %112 = phi ptr [ %84, %82 ], [ %91, %105 ], [ %91, %108 ]
  store ptr %62, ptr %1, align 8, !tbaa !206
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds nuw i8, ptr %112, i64 %113
  %115 = icmp ugt ptr %62, %114
  %116 = zext i32 %110 to i64
  %117 = getelementptr inbounds nuw i8, ptr %112, i64 %116
  %118 = icmp ult ptr %26, %117
  %119 = and i1 %115, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %109
  %121 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %122 = ptrtoint ptr %62 to i64
  %123 = ptrtoint ptr %112 to i64
  %124 = sub i64 %122, %123
  %125 = tail call i64 @llvm.umin.i64(i64 %124, i64 %116)
  %126 = trunc nuw i64 %125 to i32
  store i32 %126, ptr %121, align 4, !tbaa !208
  br label %127

127:                                              ; preds = %78, %109, %120
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %129 = load i32, ptr %128, align 8, !tbaa !97
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %133 = load ptr, ptr %132, align 8, !tbaa !384
  %134 = ptrtoint ptr %9 to i64
  %135 = ptrtoint ptr %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  br label %138

138:                                              ; preds = %127, %131
  %139 = phi i32 [ %137, %131 ], [ 0, %127 ]
  %140 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %139, ptr %140, align 8, !tbaa !385
  tail call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %1, ptr noundef nonnull %26, ptr noundef nonnull %9, ptr noundef nonnull %10) #36
  br label %141

141:                                              ; preds = %78, %138, %77
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %143 = load i32, ptr %142, align 4, !tbaa !89
  %144 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %143, i32 3), !nosanitize !8
  %145 = extractvalue { i32, i1 } %144, 0, !nosanitize !8
  %146 = extractvalue { i32, i1 } %144, 1, !nosanitize !8
  br i1 %146, label %147, label %148, !prof !9, !nosanitize !8

147:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

148:                                              ; preds = %141
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %150 = load i32, ptr %149, align 4, !tbaa !90
  %151 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %150, i32 1), !nosanitize !8
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !8
  br i1 %152, label %153, label %154, !prof !9, !nosanitize !8

153:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #34, !nosanitize !8
  unreachable, !nosanitize !8

154:                                              ; preds = %148
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !8
  %156 = tail call i32 @llvm.umax.i32(i32 %145, i32 %155)
  %157 = tail call i32 @llvm.umin.i32(i32 %156, i32 31)
  %158 = shl nuw i32 1, %157
  %159 = zext i32 %158 to i64
  %160 = icmp samesign ugt i64 %25, %159
  %161 = sub nsw i64 0, %159
  %162 = getelementptr inbounds i8, ptr %9, i64 %161
  %163 = select i1 %160, ptr %162, ptr %26
  %164 = tail call i64 @llvm.umin.i64(i64 %25, i64 %159)
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %166 = load ptr, ptr %165, align 8, !tbaa !341
  %167 = ptrtoint ptr %163 to i64
  %168 = ptrtoint ptr %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %170, ptr %171, align 4, !tbaa !211
  %172 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %173 = load i32, ptr %172, align 8, !tbaa !97
  %174 = icmp eq i32 %173, 0
  %175 = ptrtoint ptr %9 to i64
  %176 = sub i64 %175, %168
  %177 = trunc i64 %176 to i32
  %178 = select i1 %174, i32 %177, i32 0
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %178, ptr %179, align 8, !tbaa !267
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 164
  %181 = load i32, ptr %180, align 4, !tbaa !112
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %181, ptr %182, align 8, !tbaa !205
  %183 = icmp samesign ult i64 %164, 9
  br i1 %183, label %218, label %184

184:                                              ; preds = %154
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %163, ptr noundef nonnull %9)
  %185 = load i32, ptr %15, align 4, !tbaa !94
  switch i32 %185, label %213 [
    i32 1, label %186
    i32 2, label %187
    i32 3, label %188
    i32 4, label %188
    i32 5, label %188
    i32 6, label %211
    i32 7, label %211
    i32 8, label %211
    i32 9, label %211
  ]

186:                                              ; preds = %184
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #36
  br label %213

187:                                              ; preds = %184
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #36
  br label %213

188:                                              ; preds = %184, %184, %184
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %190 = load i32, ptr %189, align 4, !tbaa !335
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef nonnull %0, ptr noundef nonnull %193) #36
  br label %213

194:                                              ; preds = %188
  %195 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %196 = load i32, ptr %195, align 8, !tbaa !80
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = load i32, ptr %142, align 4, !tbaa !89
  %200 = icmp ult i32 %199, 64
  br i1 %200, label %202, label %201, !prof !215, !nosanitize !8

201:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 20) #34, !nosanitize !8
  unreachable, !nosanitize !8

202:                                              ; preds = %198
  %203 = zext nneg i32 %199 to i64
  %204 = shl nuw i64 1, %203
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %206 = load ptr, ptr %205, align 8, !tbaa !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %206, i8 0, i64 %204, i1 false)
  %207 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_row_update(ptr noundef nonnull %0, ptr noundef nonnull %207) #36
  br label %213

208:                                              ; preds = %194
  %209 = getelementptr inbounds i8, ptr %9, i64 -8
  %210 = tail call i32 @ZSTD_insertAndFindFirstIndex(ptr noundef nonnull %0, ptr noundef nonnull %209) #36
  br label %213

211:                                              ; preds = %184, %184, %184, %184
  %212 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_updateTree(ptr noundef nonnull %0, ptr noundef nonnull %212, ptr noundef nonnull %9) #36
  br label %213

213:                                              ; preds = %184, %192, %208, %202, %211, %187, %186
  %214 = load ptr, ptr %165, align 8, !tbaa !341
  %215 = ptrtoint ptr %214 to i64
  %216 = sub i64 %175, %215
  %217 = trunc i64 %216 to i32
  store i32 %217, ptr %171, align 4, !tbaa !211
  br label %218

218:                                              ; preds = %154, %213
  ret void
}

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef, ptr noundef) local_unnamed_addr #16

declare void @ZSTD_row_update(ptr noundef, ptr noundef) local_unnamed_addr #16

declare i32 @ZSTD_insertAndFindFirstIndex(ptr noundef, ptr noundef) local_unnamed_addr #16

declare void @ZSTD_updateTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #31

attributes #0 = { nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nomerge noreturn nounwind }
attributes #35 = { nounwind memory(none) }
attributes #36 = { nounwind }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { nounwind allocsize(0,1) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(read) }

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
!8 = !{}
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = !{i64 1850541}
!11 = !{i64 1850639}
!12 = !{i64 1850753}
!13 = !{!14, !5, i64 8}
!14 = !{!"ZSTD_CCtx_s", !5, i64 0, !5, i64 4, !5, i64 8, !15, i64 16, !15, i64 240, !15, i64 464, !5, i64 688, !18, i64 696, !22, i64 704, !18, i64 776, !23, i64 784, !23, i64 792, !23, i64 800, !24, i64 808, !20, i64 896, !25, i64 920, !18, i64 928, !26, i64 936, !5, i64 968, !5, i64 972, !27, i64 976, !30, i64 1056, !21, i64 3168, !18, i64 3176, !32, i64 3184, !33, i64 3224, !21, i64 3544, !18, i64 3552, !5, i64 3560, !29, i64 3568, !18, i64 3576, !18, i64 3584, !18, i64 3592, !18, i64 3600, !29, i64 3608, !18, i64 3616, !18, i64 3624, !18, i64 3632, !5, i64 3640, !5, i64 3644, !38, i64 3648, !18, i64 3672, !18, i64 3680, !39, i64 3688, !40, i64 3728, !41, i64 3736, !23, i64 3760, !42, i64 3768, !21, i64 5264, !18, i64 5272}
!15 = !{!"ZSTD_CCtx_params_s", !5, i64 0, !16, i64 4, !17, i64 32, !5, i64 44, !5, i64 48, !18, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !18, i64 80, !5, i64 88, !5, i64 92, !19, i64 96, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !18, i64 152, !5, i64 160, !5, i64 164, !20, i64 168, !5, i64 192, !5, i64 196, !21, i64 200, !21, i64 208, !5, i64 216}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!18 = !{!"long", !6, i64 0}
!19 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!20 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !6, i64 56, !5, i64 60, !5, i64 64, !5, i64 68}
!23 = !{!"long long", !6, i64 0}
!24 = !{!"XXH64_state_s", !18, i64 0, !6, i64 8, !6, i64 40, !5, i64 72, !5, i64 76, !18, i64 80}
!25 = !{!"p1 _ZTS10POOL_ctx_s", !21, i64 0}
!26 = !{!"", !5, i64 0, !21, i64 8, !18, i64 16, !18, i64 24}
!27 = !{!"", !28, i64 0, !28, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !18, i64 56, !18, i64 64, !5, i64 72, !5, i64 76}
!28 = !{!"p1 _ZTS8SeqDef_s", !21, i64 0}
!29 = !{!"p1 omnipotent char", !21, i64 0}
!30 = !{!"", !31, i64 0, !21, i64 40, !5, i64 48, !29, i64 56, !6, i64 64, !6, i64 576}
!31 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!32 = !{!"", !21, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!33 = !{!"", !21, i64 0, !21, i64 8, !34, i64 16}
!34 = !{!"ZSTD_MatchState_t", !31, i64 0, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !29, i64 56, !6, i64 64, !18, i64 96, !5, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !5, i64 136, !5, i64 140, !36, i64 144, !37, i64 248, !16, i64 256, !21, i64 288, !5, i64 296, !5, i64 300}
!35 = !{!"p1 int", !21, i64 0}
!36 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !21, i64 32, !21, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !21, i64 88, !5, i64 96}
!37 = !{!"p1 _ZTS17ZSTD_MatchState_t", !21, i64 0}
!38 = !{!"ZSTD_inBuffer_s", !21, i64 0, !18, i64 8, !18, i64 16}
!39 = !{!"", !21, i64 0, !21, i64 8, !18, i64 16, !5, i64 24, !40, i64 32}
!40 = !{!"p1 _ZTS12ZSTD_CDict_s", !21, i64 0}
!41 = !{!"ZSTD_prefixDict_s", !21, i64 0, !18, i64 8, !5, i64 16}
!42 = !{!"", !27, i64 0, !27, i64 80, !27, i64 160, !27, i64 240, !27, i64 320, !6, i64 400, !43, i64 1184}
!43 = !{!"", !44, i64 0, !45, i64 144}
!44 = !{!"", !5, i64 0, !6, i64 4, !18, i64 136}
!45 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !18, i64 152, !18, i64 160}
!46 = !{!15, !5, i64 44}
!47 = !{!15, !5, i64 32}
!48 = !{!20, !21, i64 0}
!49 = !{!20, !21, i64 8}
!50 = distinct !{null}
!51 = !{!21, !21, i64 0}
!52 = !{!14, !18, i64 928}
!53 = !{!22, !6, i64 56}
!54 = !{!22, !21, i64 16}
!55 = !{!22, !21, i64 24}
!56 = !{!22, !21, i64 32}
!57 = !{!14, !21, i64 3224}
!58 = !{!14, !21, i64 3232}
!59 = !{!14, !21, i64 3544}
!60 = !{!14, !18, i64 3552}
!61 = !{!22, !21, i64 0}
!62 = !{!22, !21, i64 8}
!63 = distinct !{null, null, null}
!64 = distinct !{null}
!65 = !{!14, !21, i64 704}
!66 = !{!67, !21, i64 32}
!67 = !{!"ZSTD_CDict_s", !21, i64 0, !18, i64 8, !5, i64 16, !35, i64 24, !22, i64 32, !34, i64 104, !68, i64 408, !20, i64 6040, !5, i64 6064, !5, i64 6068, !5, i64 6072}
!68 = !{!"", !69, i64 0, !6, i64 5616}
!69 = !{!"", !70, i64 0, !71, i64 2064}
!70 = !{!"", !6, i64 0, !5, i64 2056}
!71 = !{!"", !6, i64 0, !6, i64 772, !6, i64 2224, !5, i64 3540, !5, i64 3544, !5, i64 3548}
!72 = !{!16, !5, i64 0}
!73 = !{!16, !5, i64 4}
!74 = !{!16, !5, i64 8}
!75 = !{!16, !5, i64 12}
!76 = !{!16, !5, i64 16}
!77 = !{!16, !5, i64 24}
!78 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4, i64 24, i64 4, !4}
!79 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!80 = !{!15, !5, i64 160}
!81 = !{!15, !5, i64 140}
!82 = !{!15, !5, i64 96}
!83 = !{!15, !18, i64 152}
!84 = !{!15, !5, i64 216}
!85 = !{!14, !5, i64 3640}
!86 = !{!14, !5, i64 4}
!87 = !{!15, !5, i64 0}
!88 = !{!15, !5, i64 4}
!89 = !{!15, !5, i64 12}
!90 = !{!15, !5, i64 8}
!91 = !{!15, !5, i64 16}
!92 = !{!15, !5, i64 20}
!93 = !{!15, !5, i64 24}
!94 = !{!15, !5, i64 28}
!95 = !{!15, !5, i64 36}
!96 = !{!15, !5, i64 40}
!97 = !{!15, !5, i64 48}
!98 = !{!15, !5, i64 68}
!99 = !{!15, !5, i64 72}
!100 = !{!15, !5, i64 120}
!101 = !{!15, !5, i64 100}
!102 = !{!15, !5, i64 108}
!103 = !{!15, !5, i64 104}
!104 = !{!15, !5, i64 112}
!105 = !{!15, !18, i64 56}
!106 = !{!15, !5, i64 64}
!107 = !{!15, !5, i64 124}
!108 = !{!15, !5, i64 128}
!109 = !{!15, !5, i64 132}
!110 = !{!15, !5, i64 136}
!111 = !{!15, !5, i64 144}
!112 = !{!15, !5, i64 164}
!113 = !{!15, !5, i64 192}
!114 = !{!15, !5, i64 196}
!115 = !{!15, !5, i64 76}
!116 = !{!14, !40, i64 3728}
!117 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4, i64 24, i64 4, !4, i64 28, i64 4, !4, i64 32, i64 4, !4, i64 36, i64 4, !4, i64 40, i64 4, !4, i64 44, i64 4, !4, i64 48, i64 4, !4, i64 56, i64 8, !118, i64 64, i64 4, !4, i64 68, i64 4, !4, i64 72, i64 4, !4, i64 76, i64 4, !4, i64 80, i64 8, !118, i64 88, i64 4, !4, i64 92, i64 4, !4, i64 96, i64 4, !4, i64 100, i64 4, !4, i64 104, i64 4, !4, i64 108, i64 4, !4, i64 112, i64 4, !4, i64 116, i64 4, !4, i64 120, i64 4, !4, i64 124, i64 4, !4, i64 128, i64 4, !4, i64 132, i64 4, !4, i64 136, i64 4, !4, i64 140, i64 4, !4, i64 144, i64 4, !4, i64 152, i64 8, !118, i64 160, i64 4, !4, i64 164, i64 4, !4, i64 168, i64 8, !51, i64 176, i64 8, !51, i64 184, i64 8, !51, i64 192, i64 4, !4, i64 196, i64 4, !4, i64 200, i64 8, !51, i64 208, i64 8, !51, i64 216, i64 4, !4}
!118 = !{!18, !18, i64 0}
!119 = !{!14, !23, i64 784}
!120 = !{!14, !21, i64 3688}
!121 = !{!14, !21, i64 3696}
!122 = !{!14, !18, i64 3704}
!123 = !{!14, !5, i64 3712}
!124 = !{!14, !40, i64 3720}
!125 = distinct !{ptr @ZSTD_freeCDict, null, null}
!126 = distinct !{ptr @ZSTD_freeCDict, null}
!127 = distinct !{ptr @ZSTD_CCtx_loadDictionary_advanced, null}
!128 = !{!14, !25, i64 920}
!129 = !{!14, !21, i64 3736}
!130 = !{!14, !18, i64 3744}
!131 = !{!14, !5, i64 3752}
!132 = !{!133}
!133 = distinct !{!133, !134, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!134 = distinct !{!134, !"ZSTD_makeCCtxParamsFromCParams"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!137 = distinct !{!137, !"ZSTD_makeCCtxParamsFromCParams"}
!138 = !{!14, !29, i64 3568}
!139 = !{!14, !18, i64 3592}
!140 = !{!14, !18, i64 3584}
!141 = !{!14, !23, i64 792}
!142 = !{!143, !23, i64 0}
!143 = !{!"", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !5, i64 32, !5, i64 36}
!144 = !{!143, !23, i64 8}
!145 = !{!14, !23, i64 800}
!146 = !{!143, !23, i64 16}
!147 = !{!143, !23, i64 24}
!148 = !{!143, !5, i64 32}
!149 = !{!143, !5, i64 36}
!150 = !{!68, !5, i64 2056}
!151 = !{!68, !5, i64 5604}
!152 = !{!68, !5, i64 5608}
!153 = !{!68, !5, i64 5612}
!154 = !{!27, !28, i64 0}
!155 = !{!27, !29, i64 32}
!156 = !{!27, !29, i64 48}
!157 = !{!27, !29, i64 40}
!158 = !{!27, !28, i64 8}
!159 = !{!160, !161, i64 4}
!160 = !{!"SeqDef_s", !5, i64 0, !161, i64 4, !161, i64 6}
!161 = !{!"short", !6, i64 0}
!162 = !{!160, !5, i64 0}
!163 = !{!160, !161, i64 6}
!164 = !{!6, !6, i64 0}
!165 = distinct !{!165, !166}
!166 = !{!"llvm.loop.mustprogress"}
!167 = !{!27, !5, i64 72}
!168 = !{!27, !5, i64 76}
!169 = !{!27, !29, i64 16}
!170 = !{!27, !29, i64 24}
!171 = !{!172, !21, i64 0}
!172 = !{!"ZSTD_outBuffer_s", !21, i64 0, !18, i64 8, !18, i64 16}
!173 = !{!172, !18, i64 8}
!174 = !{!172, !18, i64 16}
!175 = !{!38, !21, i64 0}
!176 = !{!38, !18, i64 8}
!177 = !{!38, !18, i64 16}
!178 = !{!14, !5, i64 140}
!179 = !{!14, !5, i64 144}
!180 = !{!14, !18, i64 952}
!181 = !{!182, !5, i64 0}
!182 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!183 = !{!182, !5, i64 8}
!184 = !{!182, !5, i64 4}
!185 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4}
!186 = distinct !{!186, !166}
!187 = !{!70, !5, i64 2056}
!188 = !{!44, !5, i64 0}
!189 = !{!43, !18, i64 136}
!190 = !{!71, !5, i64 3548}
!191 = !{!192}
!192 = distinct !{!192, !193, !"ZSTD_buildDummySequencesStatistics: argument 0"}
!193 = distinct !{!193, !"ZSTD_buildDummySequencesStatistics"}
!194 = !{!71, !5, i64 3540}
!195 = !{!71, !5, i64 3544}
!196 = !{!45, !5, i64 8}
!197 = !{!45, !18, i64 160}
!198 = !{!43, !18, i64 296}
!199 = !{!161, !161, i64 0}
!200 = !{!14, !21, i64 3184}
!201 = !{!14, !18, i64 3208}
!202 = !{!14, !18, i64 3216}
!203 = !{!14, !5, i64 0}
!204 = !{!14, !5, i64 688}
!205 = !{!34, !5, i64 136}
!206 = !{!31, !29, i64 0}
!207 = !{!31, !29, i64 16}
!208 = !{!31, !5, i64 28}
!209 = !{!31, !5, i64 24}
!210 = !{!31, !29, i64 8}
!211 = !{!34, !5, i64 44}
!212 = !{!14, !5, i64 336}
!213 = !{!14, !18, i64 776}
!214 = !{!14, !5, i64 244}
!215 = !{!"branch_weights", i32 1048575, i32 1}
!216 = !{!14, !5, i64 276}
!217 = !{!14, !5, i64 384}
!218 = !{!14, !5, i64 268}
!219 = !{!37, !37, i64 0}
!220 = !{!34, !5, i64 28}
!221 = !{!14, !5, i64 968}
!222 = !{!14, !5, i64 936}
!223 = !{!14, !28, i64 984}
!224 = !{!14, !28, i64 976}
!225 = !{!226, !35, i64 0}
!226 = !{!"", !35, i64 0, !18, i64 8}
!227 = !{!226, !18, i64 8}
!228 = !{i64 0, i64 8, !229, i64 8, i64 8, !229, i64 16, i64 8, !230, i64 24, i64 8, !230, i64 32, i64 8, !230, i64 40, i64 8, !230, i64 48, i64 8, !230, i64 56, i64 8, !118, i64 64, i64 8, !118, i64 72, i64 4, !4, i64 76, i64 4, !4}
!229 = !{!28, !28, i64 0}
!230 = !{!29, !29, i64 0}
!231 = distinct !{!231, !166}
!232 = distinct !{!232, !166}
!233 = distinct !{!233, !166}
!234 = distinct !{!234, !166}
!235 = !{!14, !18, i64 392}
!236 = distinct !{!236, !166, !237, !238}
!237 = !{!"llvm.loop.unroll.runtime.disable"}
!238 = !{!"llvm.loop.isvectorized", i32 1}
!239 = !{!14, !23, i64 3760}
!240 = !{!67, !18, i64 8}
!241 = !{!67, !5, i64 244}
!242 = !{!67, !5, i64 6072}
!243 = !{!14, !18, i64 3576}
!244 = !{!14, !18, i64 3616}
!245 = !{!14, !5, i64 316}
!246 = !{!247, !5, i64 0}
!247 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !18, i64 16, !18, i64 24, !18, i64 32, !248, i64 40, !249, i64 48, !250, i64 56}
!248 = !{!"p1 _ZTS18ZSTD_CCtx_params_s", !21, i64 0}
!249 = !{!"p1 _ZTS11ZSTD_CCtx_s", !21, i64 0}
!250 = !{!"p1 _ZTS11ZSTD_DCtx_s", !21, i64 0}
!251 = !{!247, !5, i64 4}
!252 = !{!247, !5, i64 8}
!253 = !{!14, !18, i64 696}
!254 = !{!247, !18, i64 16}
!255 = !{!247, !18, i64 24}
!256 = !{!247, !18, i64 32}
!257 = !{!247, !248, i64 40}
!258 = !{!247, !249, i64 48}
!259 = distinct !{null, null}
!260 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4}
!261 = !{!67, !5, i64 6068}
!262 = !{!67, !21, i64 0}
!263 = !{!67, !5, i64 16}
!264 = !{!67, !35, i64 24}
!265 = !{!34, !5, i64 48}
!266 = !{!34, !5, i64 300}
!267 = !{!34, !5, i64 40}
!268 = !{!34, !5, i64 196}
!269 = !{!34, !37, i64 248}
!270 = !{!22, !21, i64 48}
!271 = !{!22, !5, i64 64}
!272 = !{!34, !35, i64 112}
!273 = !{!34, !35, i64 128}
!274 = !{!34, !35, i64 120}
!275 = !{!22, !21, i64 40}
!276 = !{!34, !29, i64 56}
!277 = !{!34, !18, i64 96}
!278 = !{!34, !5, i64 52}
!279 = !{!67, !5, i64 6064}
!280 = distinct !{ptr @ZSTD_createCCtx_advanced, null}
!281 = distinct !{ptr @ZSTD_freeCCtx, null, null, null}
!282 = distinct !{ptr @ZSTD_freeCCtx, null}
!283 = distinct !{ptr @ZSTD_CCtx_loadDictionary, ptr @ZSTD_CCtx_loadDictionary_advanced, null}
!284 = !{!14, !5, i64 364}
!285 = !{!14, !18, i64 3672}
!286 = !{!14, !18, i64 3600}
!287 = !{!14, !21, i64 3648}
!288 = !{!14, !18, i64 3656}
!289 = !{i64 0, i64 8, !51, i64 8, i64 8, !118, i64 16, i64 8, !118}
!290 = !{!14, !5, i64 16}
!291 = !{!39, !21, i64 8}
!292 = !{!39, !40, i64 32}
!293 = !{!67, !5, i64 384}
!294 = !{!14, !5, i64 368}
!295 = !{!14, !18, i64 3680}
!296 = distinct !{!296, !166}
!297 = !{!14, !18, i64 3624}
!298 = !{!14, !18, i64 3632}
!299 = !{!14, !5, i64 3644}
!300 = !{!14, !29, i64 3608}
!301 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!302 = distinct !{!302, !166}
!303 = !{!14, !18, i64 1032}
!304 = !{!"branch_weights", i32 1, i32 127}
!305 = !{!14, !5, i64 1048}
!306 = !{!14, !5, i64 1052}
!307 = !{!"branch_weights", !"expected", i32 1125985, i32 2146357663}
!308 = distinct !{!308, !166}
!309 = distinct !{!309, !166}
!310 = !{!311, !18, i64 0}
!311 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16}
!312 = !{!311, !18, i64 16}
!313 = !{!311, !18, i64 8}
!314 = !{!315}
!315 = distinct !{!315, !316, !"inBuffer_forEndFlush: argument 0"}
!316 = distinct !{!316, !"inBuffer_forEndFlush"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"inBuffer_forEndFlush: argument 0"}
!319 = distinct !{!319, !"inBuffer_forEndFlush"}
!320 = !{!15, !21, i64 208}
!321 = !{!15, !21, i64 200}
!322 = !{!19, !5, i64 0}
!323 = !{!22, !5, i64 60}
!324 = distinct !{null, null}
!325 = !{!22, !5, i64 68}
!326 = !{!14, !5, i64 3536}
!327 = !{!328, !18, i64 24}
!328 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !18, i64 16, !18, i64 24, !5, i64 32}
!329 = !{!328, !5, i64 32}
!330 = !{!328, !5, i64 0}
!331 = !{!328, !18, i64 16}
!332 = !{!328, !5, i64 4}
!333 = !{!328, !5, i64 8}
!334 = !{!31, !5, i64 32}
!335 = !{!34, !5, i64 140}
!336 = distinct !{!336, !166}
!337 = !{!14, !5, i64 260}
!338 = !{!34, !21, i64 232}
!339 = !{!14, !5, i64 312}
!340 = !{!34, !5, i64 240}
!341 = !{!34, !29, i64 8}
!342 = !{!14, !18, i64 3192}
!343 = !{!14, !5, i64 400}
!344 = !{!14, !21, i64 3168}
!345 = !{!32, !21, i64 0}
!346 = !{!14, !18, i64 3176}
!347 = !{!32, !18, i64 32}
!348 = !{!14, !21, i64 440}
!349 = !{!14, !21, i64 5264}
!350 = !{!14, !18, i64 5272}
!351 = !{!14, !5, i64 284}
!352 = distinct !{!352, !166}
!353 = !{!14, !5, i64 456}
!354 = !{!34, !21, i64 288}
!355 = !{!14, !5, i64 436}
!356 = !{!357, !5, i64 0}
!357 = !{!"", !5, i64 0, !5, i64 4, !18, i64 8}
!358 = !{!14, !5, i64 376}
!359 = !{!357, !18, i64 8}
!360 = distinct !{!360, !166}
!361 = distinct !{!361, !166, !238, !237}
!362 = !{!"branch_weights", i32 4, i32 28}
!363 = distinct !{!363, !166, !238, !237}
!364 = distinct !{!364, !365}
!365 = !{!"llvm.loop.unroll.disable"}
!366 = distinct !{!366, !166, !238}
!367 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!368 = distinct !{!368, !166}
!369 = distinct !{!369, !166}
!370 = !{i64 0, i64 12, !164}
!371 = distinct !{!371, !166}
!372 = !{!"branch_weights", i32 127, i32 134217473}
!373 = !{!43, !5, i64 0}
!374 = !{!44, !18, i64 136}
!375 = !{!45, !5, i64 4}
!376 = distinct !{!376, !166}
!377 = !{!45, !5, i64 0}
!378 = !{!45, !18, i64 152}
!379 = !{!26, !18, i64 16}
!380 = !{!26, !21, i64 8}
!381 = !{!26, !18, i64 24}
!382 = !{!182, !5, i64 12}
!383 = distinct !{!383, !166}
!384 = !{!30, !29, i64 8}
!385 = !{!30, !5, i64 48}
