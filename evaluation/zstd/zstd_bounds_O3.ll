; ModuleID = '../zstd/lib/compress/zstd_compress.c'
source_filename = "../zstd/lib/compress/zstd_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.ZSTD_customMem, i32, i32, ptr, ptr, i32 }
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
%struct.ZSTD_SequencePosition = type { i32, i32, i64 }
%struct.BlockSummary = type { i64, i64, i64 }

@ZSTD_defaultCMem = internal constant %struct.ZSTD_customMem zeroinitializer, align 8
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
@ZSTD_defaultCParameters = internal unnamed_addr constant [4 x [23 x %struct.ZSTD_compressionParameters]] [[23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 19, i32 12, i32 13, i32 1, i32 6, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 19, i32 13, i32 14, i32 1, i32 7, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 20, i32 15, i32 16, i32 1, i32 6, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 21, i32 16, i32 17, i32 1, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 21, i32 18, i32 18, i32 1, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 21, i32 18, i32 19, i32 3, i32 5, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 21, i32 18, i32 19, i32 3, i32 5, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 21, i32 19, i32 20, i32 4, i32 5, i32 8, i32 4 }, %struct.ZSTD_compressionParameters { i32 21, i32 19, i32 20, i32 4, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 20, i32 21, i32 4, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 21, i32 22, i32 5, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 21, i32 22, i32 6, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 23, i32 6, i32 5, i32 32, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 22, i32 4, i32 5, i32 32, i32 6 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 23, i32 5, i32 5, i32 32, i32 6 }, %struct.ZSTD_compressionParameters { i32 22, i32 23, i32 23, i32 6, i32 5, i32 32, i32 6 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 22, i32 5, i32 5, i32 48, i32 7 }, %struct.ZSTD_compressionParameters { i32 23, i32 23, i32 22, i32 5, i32 4, i32 64, i32 7 }, %struct.ZSTD_compressionParameters { i32 23, i32 23, i32 22, i32 6, i32 3, i32 64, i32 8 }, %struct.ZSTD_compressionParameters { i32 23, i32 24, i32 22, i32 7, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 25, i32 25, i32 23, i32 7, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 26, i32 26, i32 24, i32 7, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 27, i32 27, i32 25, i32 9, i32 3, i32 999, i32 9 }], [23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 18, i32 12, i32 13, i32 1, i32 5, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 18, i32 13, i32 14, i32 1, i32 6, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 18, i32 14, i32 14, i32 1, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 18, i32 16, i32 16, i32 1, i32 4, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 18, i32 16, i32 17, i32 3, i32 5, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 18, i32 17, i32 18, i32 5, i32 5, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 3, i32 5, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 4, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 5, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 6, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 5, i32 4, i32 12, i32 6 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 7, i32 4, i32 12, i32 6 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 4, i32 16, i32 7 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 3, i32 32, i32 7 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 6, i32 3, i32 128, i32 7 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 6, i32 3, i32 128, i32 8 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 8, i32 3, i32 256, i32 8 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 6, i32 3, i32 128, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 8, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 10, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 12, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 13, i32 3, i32 999, i32 9 }], [23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 17, i32 12, i32 12, i32 1, i32 5, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 17, i32 12, i32 13, i32 1, i32 6, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 17, i32 13, i32 15, i32 1, i32 5, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 17, i32 15, i32 16, i32 2, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 2, i32 4, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 3, i32 4, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 3, i32 4, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 3, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 4, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 5, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 6, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 5, i32 4, i32 8, i32 6 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 7, i32 4, i32 12, i32 6 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 3, i32 4, i32 12, i32 7 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 4, i32 3, i32 32, i32 7 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 6, i32 3, i32 256, i32 7 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 6, i32 3, i32 128, i32 8 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 8, i32 3, i32 256, i32 8 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 10, i32 3, i32 512, i32 8 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 5, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 7, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 9, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 11, i32 3, i32 999, i32 9 }], [23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 14, i32 12, i32 13, i32 1, i32 5, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 15, i32 1, i32 5, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 15, i32 1, i32 4, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 15, i32 2, i32 4, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 4, i32 4, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 3, i32 4, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 4, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 6, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 8, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 5, i32 4, i32 8, i32 6 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 9, i32 4, i32 8, i32 6 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 3, i32 4, i32 12, i32 7 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 4, i32 3, i32 24, i32 7 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 5, i32 3, i32 32, i32 8 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 6, i32 3, i32 64, i32 8 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 7, i32 3, i32 256, i32 8 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 5, i32 3, i32 48, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 6, i32 3, i32 128, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 7, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 8, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 8, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 9, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 10, i32 3, i32 999, i32 9 }]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 1, 0) i64 @ZSTD_compressBound(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -71777214294589697
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = lshr i64 %0, 8
  %5 = add nuw i64 %4, %0
  %6 = icmp ult i64 %0, 131072
  %7 = sub nuw nsw i64 131072, %0
  %8 = lshr i64 %7, 11
  %9 = select i1 %6, i64 %8, i64 0
  %10 = add i64 %5, %9
  %11 = freeze i64 %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1, %3
  br label %14

14:                                               ; preds = %3, %13
  %15 = phi i64 [ -72, %13 ], [ %11, %3 ]
  ret i64 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtx() local_unnamed_addr #2 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #33, !srcloc !8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #33, !srcloc !9
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #33, !srcloc !10
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
  store i32 %18, ptr %19, align 8, !tbaa !11
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 3, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %22, align 8, !tbaa !45
  br label %23

23:                                               ; preds = %0, %17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCCtx_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  %7 = xor i1 %3, %6
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  br i1 %3, label %13, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr %2(ptr noundef %11, i64 noundef 5280) #34, !inline_history !48
  br label %15

13:                                               ; preds = %8
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #35
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %12, %9 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %16, i8 0, i64 5280, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %20 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #33, !srcloc !8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #33, !srcloc !9
  %24 = icmp ugt i32 %20, 6
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #33, !srcloc !10
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
  store i32 %34, ptr %35, align 8, !tbaa !11
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %36 = getelementptr inbounds nuw i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %36, i8 0, i64 224, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 3, ptr %37, align 4, !tbaa !44
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 1, ptr %38, align 8, !tbaa !45
  br label %39

39:                                               ; preds = %33, %15, %1
  %40 = phi ptr [ null, %1 ], [ %16, %33 ], [ null, %15 ]
  ret ptr %40
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
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
  store ptr %0, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr %12, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %9, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %9, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %9, ptr %21, align 8, !tbaa !49
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr %16, ptr %22, align 8, !tbaa !49
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %16, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 760
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %25, align 4, !tbaa !4
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 1, ptr %26, align 4, !tbaa !4
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %1, ptr %27, align 8, !tbaa !50
  %28 = add i64 %1, -5280
  %29 = sub i64 %28, %14
  %30 = icmp ult i64 %29, 20184
  br i1 %30, label %70, label %31

31:                                               ; preds = %11
  %32 = icmp samesign ult i64 %1, 10912
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store i8 1, ptr %24, align 8, !tbaa !51
  br label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 10912
  store ptr %35, ptr %19, align 8, !tbaa !52
  store ptr %35, ptr %20, align 8, !tbaa !53
  store ptr %35, ptr %21, align 8, !tbaa !54
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi ptr [ %9, %33 ], [ %35, %34 ]
  %38 = phi ptr [ null, %33 ], [ %9, %34 ]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  store ptr %38, ptr %39, align 8, !tbaa !55
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 5632
  %41 = icmp ugt ptr %40, %12
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i8 1, ptr %24, align 8, !tbaa !51
  br label %44

43:                                               ; preds = %36
  store ptr %40, ptr %19, align 8, !tbaa !52
  store ptr %40, ptr %20, align 8, !tbaa !53
  store ptr %40, ptr %21, align 8, !tbaa !54
  br label %44

44:                                               ; preds = %42, %43
  %45 = phi i64 [ 8920, %42 ], [ 14552, %43 ]
  %46 = phi ptr [ null, %42 ], [ %37, %43 ]
  %47 = phi ptr [ %37, %42 ], [ %40, %43 ]
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 %45
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %46, ptr %49, align 8, !tbaa !56
  %50 = icmp ugt ptr %48, %12
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i8 1, ptr %24, align 8, !tbaa !51
  br label %53

52:                                               ; preds = %44
  store ptr %48, ptr %19, align 8, !tbaa !52
  store ptr %48, ptr %20, align 8, !tbaa !53
  store ptr %48, ptr %21, align 8, !tbaa !54
  br label %53

53:                                               ; preds = %51, %52
  %54 = phi ptr [ null, %51 ], [ %47, %52 ]
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %54, ptr %55, align 8, !tbaa !57
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %56, align 8, !tbaa !58
  %57 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #33, !srcloc !8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #33, !srcloc !9
  %61 = icmp ugt i32 %57, 6
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #33, !srcloc !10
  %64 = extractvalue { i32, i32, i32 } %63, 1
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 1
  br label %67

67:                                               ; preds = %53, %59, %62
  %68 = phi i32 [ %66, %62 ], [ 0, %59 ], [ 0, %53 ]
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %68, ptr %69, align 8, !tbaa !11
  br label %70

70:                                               ; preds = %8, %11, %2, %67
  %71 = phi ptr [ null, %8 ], [ null, %2 ], [ null, %11 ], [ %0, %67 ]
  ret ptr %71
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCCtx(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %5 = load i64, ptr %4, align 8, !tbaa !50
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr i8, ptr %0, i64 904
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i64 912
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = icmp eq ptr %18, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #34, !inline_history !61
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #34
  br label %27

27:                                               ; preds = %15, %25, %26
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #34, !inline_history !62
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #34
  br label %34

34:                                               ; preds = %33, %31, %27, %3, %1
  %35 = phi i64 [ -64, %3 ], [ 0, %1 ], [ 0, %27 ], [ 0, %31 ], [ 0, %33 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CCtx(ptr noundef readonly captures(address) %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, %17
  %23 = select i1 %22, i64 0, i64 6080
  %24 = getelementptr i8, ptr %17, i64 40
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %26, %27
  %29 = add i64 %28, %23
  br label %30

30:                                               ; preds = %3, %19
  %31 = phi i64 [ %29, %19 ], [ 0, %3 ]
  %32 = icmp eq ptr %13, null
  %33 = select i1 %32, i64 0, i64 %15
  %34 = sub i64 %10, %11
  %35 = add i64 %34, %7
  %36 = add i64 %35, %33
  %37 = add i64 %36, %31
  br label %38

38:                                               ; preds = %1, %30
  %39 = phi i64 [ %37, %30 ], [ 0, %1 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CStream(ptr noundef readonly captures(address) %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, %17
  %23 = select i1 %22, i64 0, i64 6080
  %24 = getelementptr i8, ptr %17, i64 40
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %26, %27
  %29 = add i64 %28, %23
  br label %30

30:                                               ; preds = %19, %3
  %31 = phi i64 [ %29, %19 ], [ 0, %3 ]
  %32 = icmp eq ptr %13, null
  %33 = select i1 %32, i64 0, i64 %15
  %34 = sub i64 %10, %11
  %35 = add i64 %34, %7
  %36 = add i64 %35, %33
  %37 = add i64 %36, %31
  br label %38

38:                                               ; preds = %1, %30
  %39 = phi i64 [ %37, %30 ], [ 0, %1 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @ZSTD_getSeqStore(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 976
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtxParams() local_unnamed_addr #6 {
  %1 = tail call noalias dereferenceable_or_null(224) ptr @calloc(i64 noundef 1, i64 noundef 224) #36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45
  br label %6

6:                                                ; preds = %0, %3
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCCtxParams(ptr noundef %0) local_unnamed_addr #2 {
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
  tail call void %5(ptr noundef %9, ptr noundef nonnull %0) #34, !inline_history !62
  br label %11

10:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %0) #34
  br label %11

11:                                               ; preds = %10, %7, %1
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_reset(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ 0, %3 ], [ -1, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_init(ptr noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %5, align 4, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %6, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i64 [ 0, %4 ], [ -1, %2 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_CCtxParams_init_advanced(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !70
  %6 = add i32 %5, -32
  %7 = icmp ult i32 %6, -22
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !71
  %11 = add i32 %10, -31
  %12 = icmp ult i32 %11, -25
  br i1 %12, label %62, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !72
  %16 = add i32 %15, -31
  %17 = icmp ult i32 %16, -25
  br i1 %17, label %62, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !73
  %21 = add i32 %20, -31
  %22 = icmp ult i32 %21, -30
  br i1 %22, label %62, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %25 = load i32, ptr %24, align 8, !tbaa !74
  %26 = add i32 %25, -8
  %27 = icmp ult i32 %26, -5
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 131072
  %31 = select i1 %27, i1 true, i1 %30
  br i1 %31, label %62, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %34 = load i32, ptr %33, align 8, !tbaa !75
  %35 = add i32 %34, -1
  %36 = icmp ult i32 %35, 9
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %38, ptr noundef nonnull readonly align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !76
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull readonly align 4 dereferenceable(12) %40, i64 12, i1 false), !tbaa.struct !77
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = add nsw i32 %34, -6
  %43 = icmp ult i32 %42, -3
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  store i32 2, ptr %41, align 8, !tbaa !78
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %46 = icmp samesign ugt i32 %34, 6
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  store i32 2, ptr %45, align 4, !tbaa !79
  br label %57

48:                                               ; preds = %37
  %49 = icmp samesign ugt i32 %5, 14
  %50 = select i1 %49, i32 1, i32 2
  store i32 %50, ptr %41, align 8, !tbaa !78
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 2, ptr %51, align 4, !tbaa !79
  br label %57

52:                                               ; preds = %44
  %53 = icmp samesign ugt i32 %5, 16
  %54 = select i1 %53, i32 1, i32 2
  store i32 %54, ptr %45, align 4, !tbaa !79
  %55 = icmp samesign ugt i32 %5, 26
  %56 = select i1 %55, i32 1, i32 2
  br label %57

57:                                               ; preds = %48, %47, %52
  %58 = phi i32 [ %56, %52 ], [ 2, %48 ], [ 2, %47 ]
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %58, ptr %59, align 8, !tbaa !80
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 131072, ptr %60, align 8, !tbaa !81
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 2, ptr %61, align 8, !tbaa !82
  br label %62

62:                                               ; preds = %8, %13, %18, %23, %4, %32, %2, %57
  %63 = phi i64 [ 0, %57 ], [ -42, %32 ], [ -1, %2 ], [ -42, %4 ], [ -42, %23 ], [ -42, %18 ], [ -42, %13 ], [ -42, %8 ]
  ret i64 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_checkCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = add i32 %2, -32
  %4 = icmp ult i32 %3, -22
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !71
  %8 = add i32 %7, -31
  %9 = icmp ult i32 %8, -25
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = add i32 %12, -31
  %14 = icmp ult i32 %13, -25
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !73
  %18 = add i32 %17, -31
  %19 = icmp ult i32 %18, -30
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = load i32, ptr %21, align 8, !tbaa !74
  %23 = add i32 %22, -8
  %24 = icmp ult i32 %23, -5
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 131072
  %28 = select i1 %24, i1 true, i1 %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load i32, ptr %30, align 8, !tbaa !75
  %32 = add i32 %31, -10
  %33 = icmp ult i32 %32, -9
  %34 = select i1 %33, i64 -42, i64 0
  br label %35

35:                                               ; preds = %29, %20, %15, %10, %5, %1
  %36 = phi i64 [ -42, %1 ], [ %34, %29 ], [ -42, %20 ], [ -42, %15 ], [ -42, %10 ], [ -42, %5 ]
  ret i64 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @ZSTD_cParam_getBounds(i32 noundef %0) local_unnamed_addr #0 {
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
define dso_local noundef i32 @ZSTD_minCLevel() local_unnamed_addr #0 {
  ret i32 -131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_maxCLevel() local_unnamed_addr #0 {
  ret i32 22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 2147483648) i64 @ZSTD_CCtx_setParameter(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !83
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
  store i32 1, ptr %9, align 4, !tbaa !84
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
  %15 = load i64, ptr %14, align 8, !tbaa !50
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
define dso_local range(i64 -42, 2147483648) i64 @ZSTD_CCtxParams_setParameter(ptr noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
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
  store i32 %2, ptr %0, align 8, !tbaa !85
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
  store i32 3, ptr %15, align 4, !tbaa !44
  br label %220

16:                                               ; preds = %10, %8, %12
  %17 = phi i32 [ %2, %12 ], [ -131072, %8 ], [ 22, %10 ]
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %17, ptr %18, align 4, !tbaa !44
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
  store i32 %2, ptr %27, align 4, !tbaa !86
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
  store i32 %2, ptr %35, align 4, !tbaa !87
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
  store i32 %2, ptr %43, align 4, !tbaa !88
  %44 = zext nneg i32 %2 to i64
  br label %220

45:                                               ; preds = %3
  %46 = icmp ugt i32 %2, 30
  br i1 %46, label %220, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %48, align 4, !tbaa !89
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
  store i32 %2, ptr %52, align 4, !tbaa !90
  %53 = zext nneg i32 %2 to i64
  br label %220

54:                                               ; preds = %3
  %55 = icmp ugt i32 %2, 131072
  br i1 %55, label %220, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %57, align 4, !tbaa !91
  %58 = zext nneg i32 %2 to i64
  br label %220

59:                                               ; preds = %3
  %60 = icmp ugt i32 %2, 9
  br i1 %60, label %220, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %62, align 4, !tbaa !92
  %63 = zext nneg i32 %2 to i64
  br label %220

64:                                               ; preds = %3
  %65 = icmp ne i32 %2, 0
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %66, ptr %67, align 8, !tbaa !45
  %68 = zext i1 %65 to i64
  br label %220

69:                                               ; preds = %3
  %70 = icmp ne i32 %2, 0
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %71, ptr %72, align 4, !tbaa !93
  %73 = zext i1 %70 to i64
  br label %220

74:                                               ; preds = %3
  %75 = icmp ne i32 %2, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %77, ptr %78, align 8, !tbaa !94
  %79 = zext i1 %75 to i64
  br label %220

80:                                               ; preds = %3
  %81 = icmp ne i32 %2, 0
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %82, ptr %83, align 8, !tbaa !95
  %84 = zext i1 %81 to i64
  br label %220

85:                                               ; preds = %3
  %86 = icmp ugt i32 %2, 3
  br i1 %86, label %220, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %2, ptr %88, align 4, !tbaa !96
  %89 = zext nneg i32 %2 to i64
  br label %220

90:                                               ; preds = %3
  %91 = icmp ugt i32 %2, 2
  br i1 %91, label %220, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %93, align 8, !tbaa !97
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
  store i32 %109, ptr %110, align 8, !tbaa !98
  %111 = zext i1 %108 to i64
  br label %220

112:                                              ; preds = %3
  %113 = icmp ugt i32 %2, 2
  br i1 %113, label %220, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %2, ptr %115, align 8, !tbaa !80
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
  store i32 %2, ptr %123, align 4, !tbaa !99
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
  store i32 %2, ptr %131, align 4, !tbaa !100
  %132 = zext nneg i32 %2 to i64
  br label %220

133:                                              ; preds = %3
  %134 = icmp ult i32 %2, 9
  br i1 %134, label %135, label %220

135:                                              ; preds = %133
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %2, ptr %136, align 8, !tbaa !101
  %137 = zext nneg i32 %2 to i64
  br label %220

138:                                              ; preds = %3
  %139 = icmp ugt i32 %2, 25
  br i1 %139, label %220, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %2, ptr %141, align 8, !tbaa !102
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
  store i64 %150, ptr %151, align 8, !tbaa !103
  br label %220

152:                                              ; preds = %3
  %153 = icmp slt i32 %2, 0
  br i1 %153, label %220, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %2, ptr %155, align 8, !tbaa !104
  %156 = zext nneg i32 %2 to i64
  br label %220

157:                                              ; preds = %3
  %158 = icmp ugt i32 %2, 1
  br i1 %158, label %220, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %2, ptr %160, align 4, !tbaa !105
  %161 = zext nneg i32 %2 to i64
  br label %220

162:                                              ; preds = %3
  %163 = icmp ugt i32 %2, 1
  br i1 %163, label %220, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %2, ptr %165, align 8, !tbaa !106
  %166 = zext nneg i32 %2 to i64
  br label %220

167:                                              ; preds = %3
  %168 = icmp ugt i32 %2, 1
  br i1 %168, label %220, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %2, ptr %170, align 4, !tbaa !107
  %171 = zext nneg i32 %2 to i64
  br label %220

172:                                              ; preds = %3
  %173 = icmp ugt i32 %2, 1
  br i1 %173, label %220, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %2, ptr %175, align 8, !tbaa !108
  %176 = zext nneg i32 %2 to i64
  br label %220

177:                                              ; preds = %3
  %178 = icmp ugt i32 %2, 2
  br i1 %178, label %220, label %179

179:                                              ; preds = %177
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %2, ptr %180, align 4, !tbaa !79
  %181 = zext nneg i32 %2 to i64
  br label %220

182:                                              ; preds = %3
  %183 = icmp ugt i32 %2, 6
  br i1 %183, label %220, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %2, ptr %185, align 8, !tbaa !109
  %186 = zext nneg i32 %2 to i64
  br label %220

187:                                              ; preds = %3
  %188 = icmp ugt i32 %2, 2
  br i1 %188, label %220, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %2, ptr %190, align 8, !tbaa !78
  %191 = zext nneg i32 %2 to i64
  br label %220

192:                                              ; preds = %3
  %193 = icmp ugt i32 %2, 1
  br i1 %193, label %220, label %194

194:                                              ; preds = %192
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %2, ptr %195, align 4, !tbaa !110
  %196 = zext nneg i32 %2 to i64
  br label %220

197:                                              ; preds = %3
  %198 = icmp ugt i32 %2, 2
  br i1 %198, label %220, label %199

199:                                              ; preds = %197
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %2, ptr %200, align 8, !tbaa !111
  %201 = zext nneg i32 %2 to i64
  br label %220

202:                                              ; preds = %3
  %203 = icmp ugt i32 %2, 1
  br i1 %203, label %220, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %2, ptr %205, align 4, !tbaa !112
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
  store i64 %213, ptr %214, align 8, !tbaa !81
  br label %220

215:                                              ; preds = %3
  %216 = icmp ugt i32 %2, 2
  br i1 %216, label %220, label %217

217:                                              ; preds = %215
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %2, ptr %218, align 8, !tbaa !82
  %219 = zext nneg i32 %2 to i64
  br label %220

220:                                              ; preds = %14, %16, %133, %50, %207, %152, %138, %125, %117, %59, %45, %37, %29, %21, %3, %215, %202, %197, %192, %187, %182, %177, %172, %167, %162, %157, %145, %112, %104, %101, %98, %95, %92, %90, %87, %85, %54, %4, %6, %26, %34, %42, %47, %51, %56, %61, %64, %69, %74, %80, %107, %114, %122, %130, %135, %140, %148, %154, %159, %164, %169, %174, %179, %184, %189, %194, %199, %204, %212, %217
  %221 = phi i64 [ -42, %215 ], [ %7, %6 ], [ -42, %207 ], [ -40, %3 ], [ -42, %4 ], [ %213, %212 ], [ %28, %26 ], [ -42, %197 ], [ %36, %34 ], [ -42, %21 ], [ %44, %42 ], [ -42, %29 ], [ %49, %47 ], [ -42, %37 ], [ %53, %51 ], [ -42, %45 ], [ %58, %56 ], [ -42, %50 ], [ %63, %61 ], [ -42, %54 ], [ %68, %64 ], [ %73, %69 ], [ %79, %74 ], [ %84, %80 ], [ -42, %59 ], [ -42, %85 ], [ %97, %95 ], [ -42, %90 ], [ %100, %98 ], [ %94, %92 ], [ %103, %101 ], [ %89, %87 ], [ %106, %104 ], [ %219, %217 ], [ %111, %107 ], [ %116, %114 ], [ -42, %202 ], [ %124, %122 ], [ -42, %112 ], [ %132, %130 ], [ -42, %117 ], [ %137, %135 ], [ -42, %125 ], [ %142, %140 ], [ -42, %133 ], [ %150, %148 ], [ -42, %138 ], [ %156, %154 ], [ -42, %145 ], [ %161, %159 ], [ -42, %152 ], [ %166, %164 ], [ -42, %157 ], [ %171, %169 ], [ -42, %162 ], [ %176, %174 ], [ -42, %167 ], [ %181, %179 ], [ -42, %172 ], [ %186, %184 ], [ -42, %177 ], [ %191, %189 ], [ -42, %182 ], [ %196, %194 ], [ -42, %187 ], [ %201, %199 ], [ -42, %192 ], [ %206, %204 ], [ %20, %16 ], [ 3, %14 ]
  ret i64 %221
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtx_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = tail call i64 @ZSTD_CCtxParams_getParameter(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2)
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtxParams_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #8 {
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
  %5 = load i32, ptr %0, align 8, !tbaa !85
  br label %115

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %8 = load i32, ptr %7, align 4, !tbaa !44
  br label %115

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !86
  br label %115

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !87
  br label %115

15:                                               ; preds = %3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 4, !tbaa !88
  br label %115

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i32, ptr %19, align 4, !tbaa !89
  br label %115

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4, !tbaa !90
  br label %115

24:                                               ; preds = %3
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 4, !tbaa !91
  br label %115

27:                                               ; preds = %3
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %29 = load i32, ptr %28, align 4, !tbaa !92
  br label %115

30:                                               ; preds = %3
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %32 = load i32, ptr %31, align 8, !tbaa !45
  br label %115

33:                                               ; preds = %3
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %35 = load i32, ptr %34, align 4, !tbaa !93
  br label %115

36:                                               ; preds = %3
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %38 = load i32, ptr %37, align 8, !tbaa !94
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  br label %115

41:                                               ; preds = %3
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %43 = load i32, ptr %42, align 8, !tbaa !95
  br label %115

44:                                               ; preds = %3
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %46 = load i32, ptr %45, align 4, !tbaa !96
  br label %115

47:                                               ; preds = %3
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %49 = load i32, ptr %48, align 8, !tbaa !97
  br label %115

50:                                               ; preds = %3
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %52 = load i32, ptr %51, align 4, !tbaa !113
  br label %115

53:                                               ; preds = %3
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %55 = load i32, ptr %54, align 8, !tbaa !98
  br label %115

56:                                               ; preds = %3
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %58 = load i32, ptr %57, align 8, !tbaa !80
  br label %115

59:                                               ; preds = %3
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %61 = load i32, ptr %60, align 4, !tbaa !99
  br label %115

62:                                               ; preds = %3
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %64 = load i32, ptr %63, align 4, !tbaa !100
  br label %115

65:                                               ; preds = %3
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %67 = load i32, ptr %66, align 8, !tbaa !101
  br label %115

68:                                               ; preds = %3
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %70 = load i32, ptr %69, align 8, !tbaa !102
  br label %115

71:                                               ; preds = %3
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %73 = load i64, ptr %72, align 8, !tbaa !103
  %74 = trunc i64 %73 to i32
  br label %115

75:                                               ; preds = %3
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %77 = load i32, ptr %76, align 8, !tbaa !104
  br label %115

78:                                               ; preds = %3
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 124
  %80 = load i32, ptr %79, align 4, !tbaa !105
  br label %115

81:                                               ; preds = %3
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %83 = load i32, ptr %82, align 8, !tbaa !106
  br label %115

84:                                               ; preds = %3
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %86 = load i32, ptr %85, align 4, !tbaa !107
  br label %115

87:                                               ; preds = %3
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %89 = load i32, ptr %88, align 8, !tbaa !108
  br label %115

90:                                               ; preds = %3
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %92 = load i32, ptr %91, align 4, !tbaa !79
  br label %115

93:                                               ; preds = %3
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %95 = load i32, ptr %94, align 8, !tbaa !109
  br label %115

96:                                               ; preds = %3
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %98 = load i32, ptr %97, align 8, !tbaa !78
  br label %115

99:                                               ; preds = %3
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %101 = load i32, ptr %100, align 4, !tbaa !110
  br label %115

102:                                              ; preds = %3
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %104 = load i32, ptr %103, align 8, !tbaa !111
  br label %115

105:                                              ; preds = %3
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %107 = load i32, ptr %106, align 4, !tbaa !112
  br label %115

108:                                              ; preds = %3
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %110 = load i64, ptr %109, align 8, !tbaa !81
  %111 = trunc i64 %110 to i32
  br label %115

112:                                              ; preds = %3
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %114 = load i32, ptr %113, align 8, !tbaa !82
  br label %115

115:                                              ; preds = %112, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %4
  %116 = phi i32 [ %5, %4 ], [ %8, %6 ], [ %11, %9 ], [ %14, %12 ], [ %17, %15 ], [ %20, %18 ], [ %23, %21 ], [ %26, %24 ], [ %29, %27 ], [ %32, %30 ], [ %35, %33 ], [ %40, %36 ], [ %43, %41 ], [ %46, %44 ], [ %49, %47 ], [ %52, %50 ], [ %55, %53 ], [ %58, %56 ], [ %61, %59 ], [ %64, %62 ], [ %67, %65 ], [ %70, %68 ], [ %74, %71 ], [ %77, %75 ], [ %80, %78 ], [ %83, %81 ], [ %86, %84 ], [ %89, %87 ], [ %92, %90 ], [ %95, %93 ], [ %98, %96 ], [ %101, %99 ], [ %104, %102 ], [ %107, %105 ], [ %111, %108 ], [ %114, %112 ]
  store i32 %116, ptr %2, align 4, !tbaa !4
  br label %117

117:                                              ; preds = %115, %3
  %118 = phi i64 [ -40, %3 ], [ 0, %115 ]
  ret i64 %118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParametersUsingCCtxParams(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !115
  br label %12

12:                                               ; preds = %6, %2, %10
  %13 = phi i64 [ 0, %10 ], [ -60, %2 ], [ -60, %6 ]
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 10) i64 @ZSTD_CCtx_setCParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %1, align 8, !tbaa !70
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !71
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %47, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !72
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %47, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !73
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %47, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !74
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !75
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %37 = load i32, ptr %36, align 8, !tbaa !83
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %40, align 4, !tbaa !86
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %8, ptr %41, align 4, !tbaa !88
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %13, ptr %42, align 4, !tbaa !87
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %18, ptr %43, align 4, !tbaa !89
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %23, ptr %44, align 4, !tbaa !90
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %27, ptr %45, align 4, !tbaa !91
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %32, ptr %46, align 4, !tbaa !92
  br label %47

47:                                               ; preds = %35, %6, %11, %16, %21, %2, %39, %30
  %48 = phi i64 [ -42, %30 ], [ 0, %39 ], [ -42, %2 ], [ -42, %21 ], [ -42, %11 ], [ -42, %16 ], [ -60, %35 ], [ -42, %6 ]
  ret i64 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setFParams(ptr noundef captures(none) %0, i64 %1, i32 %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = and i64 %1, 4294967295
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %10, ptr %11, align 8, !tbaa !45
  %12 = icmp ugt i64 %1, 4294967295
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %13, ptr %14, align 4, !tbaa !93
  %15 = icmp ne i32 %2, 0
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %16, ptr %17, align 8, !tbaa !94
  br label %18

18:                                               ; preds = %3, %7
  %19 = phi i64 [ 0, %7 ], [ -60, %3 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %1, align 8, !tbaa !70
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !71
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %61, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !72
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %61, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !73
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %61, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !74
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %61, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !75
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %37 = load i32, ptr %36, align 8, !tbaa !83
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
  store i32 %46, ptr %47, align 8, !tbaa !45
  %48 = icmp ugt i64 %43, 4294967295
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %49, ptr %50, align 4, !tbaa !93
  %51 = icmp ne i32 %41, 0
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %52, ptr %53, align 8, !tbaa !94
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %54, align 4, !tbaa !86
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %8, ptr %55, align 8, !tbaa !88
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %13, ptr %56, align 4, !tbaa !87
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %18, ptr %57, align 8, !tbaa !89
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %23, ptr %58, align 4, !tbaa !90
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %27, ptr %59, align 8, !tbaa !91
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %32, ptr %60, align 4, !tbaa !92
  br label %61

61:                                               ; preds = %39, %35, %6, %11, %16, %21, %2, %30
  %62 = phi i64 [ -42, %30 ], [ -60, %35 ], [ -42, %6 ], [ -42, %2 ], [ -42, %21 ], [ -42, %16 ], [ -42, %11 ], [ 0, %39 ]
  ret i64 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = add i64 %1, 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %7, ptr %8, align 8, !tbaa !117
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %7 = load i32, ptr %6, align 8, !tbaa !83
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
  %17 = load i64, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i64 912
  %25 = load ptr, ptr %24, align 8
  %26 = tail call ptr %21(ptr noundef %25, i64 noundef %2) #34, !inline_history !48
  br label %29

27:                                               ; preds = %19
  %28 = tail call noalias ptr @malloc(i64 noundef %2) #35
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi ptr [ %26, %23 ], [ %28, %27 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr nonnull align 1 %1, i64 %2, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %30, ptr %33, align 8, !tbaa !118
  br label %34

34:                                               ; preds = %13, %32
  %35 = phi ptr [ %30, %32 ], [ %1, %13 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %35, ptr %36, align 8, !tbaa !119
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %37, align 8, !tbaa !120
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 %4, ptr %38, align 8, !tbaa !121
  br label %39

39:                                               ; preds = %29, %15, %9, %5, %34
  %40 = phi i64 [ 0, %9 ], [ -60, %5 ], [ 0, %34 ], [ -64, %15 ], [ -64, %29 ]
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_clearAllDicts(ptr noundef captures(none) initializes((3696, 3720), (3728, 3760)) %0) unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %3 = load ptr, ptr %2, align 8, !tbaa !118
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
  tail call void %5(ptr noundef %7, ptr noundef nonnull %3) #34, !inline_history !62
  br label %13

12:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %3) #34
  br label %13

13:                                               ; preds = %1, %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %15 = load ptr, ptr %14, align 8, !tbaa !122
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 6048
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 6056
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp ugt ptr %23, %15
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %27 = load ptr, ptr %26, align 8, !tbaa !60
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
  tail call void %19(ptr noundef %21, ptr noundef nonnull %23) #34, !inline_history !123
  br label %35

35:                                               ; preds = %34, %29
  br i1 %30, label %37, label %41

36:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %23) #34
  br i1 %30, label %40, label %41

37:                                               ; preds = %35
  %38 = icmp eq ptr %19, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void %19(ptr noundef %21, ptr noundef nonnull %15) #34, !inline_history !124
  br label %41

40:                                               ; preds = %37, %36
  tail call void @free(ptr noundef nonnull %15) #34
  br label %41

41:                                               ; preds = %13, %35, %36, %39, %40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_loadDictionary_byReference(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !83
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
  store ptr %1, ptr %12, align 8, !tbaa !119
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %13, align 8, !tbaa !120
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %14, align 8, !tbaa !121
  br label %15

15:                                               ; preds = %3, %7, %11
  %16 = phi i64 [ 0, %7 ], [ -60, %3 ], [ 0, %11 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !83
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
  %13 = load i64, ptr %12, align 8, !tbaa !50
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i64 912
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr %17(ptr noundef %21, i64 noundef %2) #34, !inline_history !125
  br label %25

23:                                               ; preds = %15
  %24 = tail call noalias ptr @malloc(i64 noundef %2) #35
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %22, %19 ], [ %24, %23 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %1, i64 %2, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %26, ptr %29, align 8, !tbaa !118
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %26, ptr %30, align 8, !tbaa !119
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %31, align 8, !tbaa !120
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %32, align 8, !tbaa !121
  br label %33

33:                                               ; preds = %3, %7, %11, %25, %28
  %34 = phi i64 [ 0, %7 ], [ -60, %3 ], [ 0, %28 ], [ -64, %11 ], [ -64, %25 ]
  ret i64 %34
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refCDict(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %7, align 8, !tbaa !114
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refThreadPool(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %1, ptr %7, align 8, !tbaa !126
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !83
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
  store ptr %1, ptr %12, align 8, !tbaa !127
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  store i64 %2, ptr %13, align 8, !tbaa !128
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  store i32 1, ptr %14, align 8, !tbaa !129
  br label %15

15:                                               ; preds = %3, %7, %11
  %16 = phi i64 [ -60, %3 ], [ 0, %11 ], [ 0, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %6 = load i32, ptr %5, align 8, !tbaa !83
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
  store ptr %1, ptr %13, align 8, !tbaa !127
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  store i64 %2, ptr %14, align 8, !tbaa !128
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  store i32 %3, ptr %15, align 8, !tbaa !129
  br label %16

16:                                               ; preds = %8, %12, %4
  %17 = phi i64 [ -60, %4 ], [ 0, %12 ], [ 0, %8 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_reset(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %7, align 8, !tbaa !117
  br label %8

8:                                                ; preds = %2, %5
  %9 = and i32 %1, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %13 = load i32, ptr %12, align 8, !tbaa !83
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %16, i8 0, i64 224, i1 false)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 3, ptr %17, align 4, !tbaa !44
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %18, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %8, %11, %15
  %20 = phi i64 [ -60, %11 ], [ 0, %15 ], [ 0, %8 ]
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_cycleLog(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 5
  %4 = sext i1 %3 to i32
  %5 = add i32 %0, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_adjustCParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 {
  %5 = load i32, ptr %1, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @llvm.smax.i32(i32 %5, i32 10)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 31)
  %17 = tail call i32 @llvm.smax.i32(i32 %7, i32 6)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 30)
  %19 = tail call i32 @llvm.smax.i32(i32 %9, i32 6)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 30)
  %21 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 30)
  %23 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 9)
  %25 = load <2 x i32>, ptr %12, align 8
  %26 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %25, <2 x i32> <i32 3, i32 0>)
  %27 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %26, <2 x i32> <i32 7, i32 131072>)
  store <2 x i32> %27, ptr %12, align 8, !tbaa !4
  %28 = icmp eq i64 %2, 0
  %29 = select i1 %28, i64 -1, i64 %2
  %30 = icmp ult i64 %29, 1073741825
  %31 = icmp ult i64 %3, 1073741825
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = add nuw nsw i64 %29, %3
  %35 = icmp samesign ult i64 %34, 64
  %36 = trunc nuw i64 %34 to i32
  %37 = add i32 %36, -1
  %38 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %37, i1 true)
  %39 = sub nuw nsw i32 32, %38
  %40 = select i1 %35, i32 6, i32 %39
  %41 = tail call i32 @llvm.umin.i32(i32 %16, i32 %40)
  br label %44

42:                                               ; preds = %4
  %43 = icmp eq i64 %29, -1
  br i1 %43, label %70, label %44

44:                                               ; preds = %42, %33
  %45 = phi i32 [ %41, %33 ], [ %16, %42 ]
  %46 = icmp eq i64 %3, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %44
  %48 = zext nneg i32 %45 to i64
  %49 = shl nuw nsw i64 1, %48
  %50 = add i64 %49, %3
  %51 = add i64 %29, %3
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = icmp ugt i64 %50, 2147483647
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = trunc nuw nsw i64 %50 to i32
  %57 = add nsw i32 %56, -1
  %58 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %57, i1 true)
  %59 = sub nuw nsw i32 32, %58
  br label %60

60:                                               ; preds = %55, %53, %47, %44
  %61 = phi i32 [ %45, %44 ], [ %59, %55 ], [ %45, %47 ], [ 31, %53 ]
  %62 = icmp sgt i32 %14, 5
  %63 = sext i1 %62 to i32
  %64 = add nsw i32 %18, %63
  %65 = add nuw nsw i32 %61, 1
  %66 = tail call i32 @llvm.umin.i32(i32 %20, i32 %65)
  %67 = icmp samesign ugt i32 %64, %61
  %68 = sub nsw i32 %61, %63
  %69 = select i1 %67, i32 %68, i32 %18
  br label %70

70:                                               ; preds = %60, %42
  %71 = phi i32 [ %18, %42 ], [ %69, %60 ]
  %72 = phi i32 [ %20, %42 ], [ %66, %60 ]
  %73 = phi i32 [ %16, %42 ], [ %45, %60 ]
  %74 = add nsw i32 %24, -6
  %75 = icmp ult i32 %74, -3
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = tail call i32 @llvm.umax.i32(i32 %22, i32 4)
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 6)
  %79 = or disjoint i32 %78, 24
  %80 = tail call i32 @llvm.umin.i32(i32 %72, i32 %79)
  br label %81

81:                                               ; preds = %70, %76
  %82 = phi i32 [ %72, %70 ], [ %80, %76 ]
  %83 = tail call i32 @llvm.umax.i32(i32 %73, i32 10)
  store i32 %83, ptr %0, align 4, !tbaa !4
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %71, ptr %84, align 4, !tbaa !4
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %82, ptr %85, align 4, !tbaa !4
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %22, ptr %86, align 4, !tbaa !4
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %27, ptr %87, align 4
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %24, ptr %88, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #11 {
  %6 = alloca %struct.ZSTD_compressionParameters, align 4
  %7 = icmp eq i64 %2, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %10 = load i32, ptr %9, align 8, !tbaa !104
  %11 = icmp sgt i32 %10, 0
  %12 = zext nneg i32 %10 to i64
  %13 = select i1 %11, i64 %12, i64 -1
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i64 [ %2, %5 ], [ %13, %8 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %17 = load i32, ptr %16, align 4, !tbaa !44
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %6, i32 noundef %17, i64 noundef %15, i64 noundef %3, i32 noundef %4)
  %18 = load i32, ptr %6, align 4, !tbaa !4
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !4
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %22 = load i32, ptr %21, align 4, !tbaa !4
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !4
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %27 = load i32, ptr %26, align 4, !tbaa !4
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %34 = load <2 x i32>, ptr %25, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %35 = load i32, ptr %28, align 8, !tbaa !80
  %36 = icmp eq i32 %35, 1
  %37 = select i1 %36, i32 27, i32 %18
  %38 = load i32, ptr %29, align 4, !tbaa !70
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %37, i32 %38
  %41 = load i32, ptr %30, align 4, !tbaa !72
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %22, i32 %41
  %44 = load i32, ptr %31, align 8, !tbaa !71
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %20, i32 %44
  %47 = load i32, ptr %32, align 8, !tbaa !73
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 %24, i32 %47
  %50 = load <2 x i32>, ptr %33, align 4, !tbaa !4
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %52 = load i32, ptr %51, align 4, !tbaa !75
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 %27, i32 %52
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %56 = load i32, ptr %55, align 8, !tbaa !78
  switch i32 %4, label %63 [
    i32 1, label %62
    i32 2, label %57
  ]

57:                                               ; preds = %14
  %58 = icmp ne i64 %3, 0
  %59 = icmp eq i64 %15, -1
  %60 = and i1 %58, %59
  %61 = select i1 %60, i64 513, i64 %15
  br label %63

62:                                               ; preds = %14
  br label %63

63:                                               ; preds = %62, %57, %14
  %64 = phi i64 [ %3, %14 ], [ 0, %62 ], [ %3, %57 ]
  %65 = phi i64 [ %15, %14 ], [ %15, %62 ], [ %61, %57 ]
  %66 = icmp ult i64 %65, 1073741825
  %67 = icmp ult i64 %64, 1073741825
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = add nuw nsw i64 %65, %64
  %71 = icmp samesign ult i64 %70, 64
  %72 = trunc nuw i64 %70 to i32
  %73 = add i32 %72, -1
  %74 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %73, i1 true)
  %75 = sub nuw nsw i32 32, %74
  %76 = select i1 %71, i32 6, i32 %75
  %77 = tail call i32 @llvm.umin.i32(i32 %40, i32 %76)
  br label %80

78:                                               ; preds = %63
  %79 = icmp eq i64 %65, -1
  br i1 %79, label %106, label %80

80:                                               ; preds = %78, %69
  %81 = phi i32 [ %77, %69 ], [ %40, %78 ]
  %82 = icmp eq i64 %64, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = zext nneg i32 %81 to i64
  %85 = shl nuw i64 1, %84
  %86 = add i64 %85, %64
  %87 = add i64 %65, %64
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = icmp ugt i64 %86, 2147483647
  br i1 %90, label %96, label %91

91:                                               ; preds = %89
  %92 = trunc nuw nsw i64 %86 to i32
  %93 = add nsw i32 %92, -1
  %94 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %93, i1 true)
  %95 = sub nuw nsw i32 32, %94
  br label %96

96:                                               ; preds = %91, %89, %83, %80
  %97 = phi i32 [ %81, %80 ], [ %95, %91 ], [ %81, %83 ], [ 31, %89 ]
  %98 = icmp ugt i32 %54, 5
  %99 = sext i1 %98 to i32
  %100 = add i32 %46, %99
  %101 = add i32 %97, 1
  %102 = tail call i32 @llvm.umin.i32(i32 %43, i32 %101)
  %103 = icmp ugt i32 %100, %97
  %104 = sub i32 %97, %99
  %105 = select i1 %103, i32 %104, i32 %46
  br label %106

106:                                              ; preds = %96, %78
  %107 = phi i32 [ %43, %78 ], [ %102, %96 ]
  %108 = phi i32 [ %46, %78 ], [ %105, %96 ]
  %109 = phi i32 [ %40, %78 ], [ %81, %96 ]
  %110 = icmp ne i32 %4, 2
  %111 = add i32 %54, -3
  %112 = icmp ult i32 %111, -2
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = tail call i32 @llvm.umin.i32(i32 %107, i32 24)
  %116 = tail call i32 @llvm.umin.i32(i32 %108, i32 24)
  br label %127

117:                                              ; preds = %106
  %118 = add i32 %54, -6
  %119 = icmp ult i32 %118, -3
  %120 = icmp ugt i32 %56, 1
  %121 = or i1 %120, %119
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = tail call i32 @llvm.umax.i32(i32 %49, i32 4)
  %124 = tail call i32 @llvm.umin.i32(i32 %123, i32 6)
  %125 = or disjoint i32 %124, 24
  %126 = tail call i32 @llvm.umin.i32(i32 %107, i32 %125)
  br label %127

127:                                              ; preds = %114, %117, %122
  %128 = phi i32 [ %108, %117 ], [ %108, %122 ], [ %116, %114 ]
  %129 = phi i32 [ %107, %117 ], [ %126, %122 ], [ %115, %114 ]
  %130 = tail call i32 @llvm.umax.i32(i32 %109, i32 10)
  %131 = icmp eq <2 x i32> %50, zeroinitializer
  store i32 %130, ptr %0, align 4, !tbaa !4
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %128, ptr %132, align 4, !tbaa !4
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %129, ptr %133, align 4, !tbaa !4
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %49, ptr %134, align 4, !tbaa !4
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %136 = select <2 x i1> %131, <2 x i32> %34, <2 x i32> %50
  store <2 x i32> %136, ptr %135, align 4, !tbaa !4
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %54, ptr %137, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind memory(argmem: write, inaccessiblemem: write) uwtable
define internal fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias writable writeonly align 4 captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #12 {
  %6 = icmp eq i32 %4, 1
  %7 = select i1 %6, i64 0, i64 %3
  %8 = icmp eq i64 %2, -1
  %9 = icmp eq i64 %7, 0
  %10 = and i1 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = icmp ne i64 %7, 0
  %13 = and i1 %8, %12
  %14 = select i1 %13, i64 500, i64 0
  %15 = add i64 %7, %2
  %16 = add i64 %15, %14
  br label %17

17:                                               ; preds = %5, %11
  %18 = phi i64 [ %16, %11 ], [ -1, %5 ]
  %19 = icmp ult i64 %18, 262145
  %20 = zext i1 %19 to i64
  %21 = icmp ult i64 %18, 131073
  %22 = zext i1 %21 to i64
  %23 = icmp ult i64 %18, 16385
  %24 = zext i1 %23 to i64
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = icmp slt i32 %1, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.umin.i32(i32 %1, i32 22)
  %30 = zext nneg i32 %29 to i64
  br label %31

31:                                               ; preds = %28, %26, %17
  %32 = phi i64 [ %30, %28 ], [ 3, %17 ], [ 0, %26 ]
  %33 = select i1 %19, i64 644, i64 0
  %34 = getelementptr inbounds nuw [644 x i8], ptr @ZSTD_defaultCParameters, i64 %20
  %35 = select i1 %21, i64 644, i64 0
  %36 = add nuw nsw i64 %33, %35
  %37 = getelementptr inbounds nuw [644 x i8], ptr %34, i64 %22
  %38 = select i1 %23, i64 644, i64 0
  %39 = add nuw nsw i64 %36, %38
  %40 = getelementptr inbounds nuw [644 x i8], ptr %37, i64 %24
  %41 = mul nuw nsw i64 %32, 28
  %42 = add nuw nsw i64 %39, %41
  %43 = getelementptr inbounds nuw [28 x i8], ptr %40, i64 %32
  %44 = icmp samesign ugt i64 %42, 2575
  br i1 %44, label %152, label %45

45:                                               ; preds = %31
  %46 = load i32, ptr %43, align 4, !tbaa !4
  %47 = icmp eq i64 %42, 2572
  br i1 %47, label %153, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds nuw i8, ptr %43, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !4
  %51 = icmp samesign ugt i64 %42, 2567
  br i1 %51, label %154, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %54 = load i32, ptr %53, align 4, !tbaa !4
  %55 = icmp samesign ugt i64 %42, 2563
  br i1 %55, label %155, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %43, i64 12
  %58 = load i32, ptr %57, align 4, !tbaa !4
  %59 = icmp samesign ugt i64 %42, 2559
  br i1 %59, label %156, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %62 = load i32, ptr %61, align 4, !tbaa !4
  %63 = icmp samesign ugt i64 %42, 2555
  br i1 %63, label %157, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %43, i64 20
  %66 = load i32, ptr %65, align 4, !tbaa !4
  %67 = icmp samesign ugt i64 %42, 2551
  br i1 %67, label %158, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %43, i64 24
  %70 = load i32, ptr %69, align 4, !tbaa !4
  switch i32 %4, label %76 [
    i32 1, label %75
    i32 2, label %71
  ]

71:                                               ; preds = %68
  %72 = icmp ne i64 %3, 0
  %73 = and i1 %8, %72
  %74 = select i1 %73, i64 513, i64 %2
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %71, %68
  %77 = phi i64 [ %3, %68 ], [ 0, %75 ], [ %3, %71 ]
  %78 = phi i64 [ %2, %68 ], [ %2, %75 ], [ %74, %71 ]
  %79 = icmp ult i64 %78, 1073741825
  %80 = icmp ult i64 %77, 1073741825
  %81 = and i1 %80, %79
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = add nuw nsw i64 %78, %77
  %84 = icmp samesign ult i64 %83, 64
  %85 = trunc nuw i64 %83 to i32
  %86 = add i32 %85, -1
  %87 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %86, i1 true)
  %88 = sub nuw nsw i32 32, %87
  %89 = select i1 %84, i32 6, i32 %88
  %90 = tail call i32 @llvm.umin.i32(i32 %46, i32 %89)
  br label %93

91:                                               ; preds = %76
  %92 = icmp eq i64 %78, -1
  br i1 %92, label %119, label %93

93:                                               ; preds = %91, %82
  %94 = phi i32 [ %90, %82 ], [ %46, %91 ]
  %95 = icmp eq i64 %77, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %93
  %97 = zext nneg i32 %94 to i64
  %98 = shl nuw i64 1, %97
  %99 = add i64 %98, %77
  %100 = add i64 %78, %77
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = icmp ugt i64 %99, 2147483647
  br i1 %103, label %109, label %104

104:                                              ; preds = %102
  %105 = trunc nuw nsw i64 %99 to i32
  %106 = add nsw i32 %105, -1
  %107 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %106, i1 true)
  %108 = sub nuw nsw i32 32, %107
  br label %109

109:                                              ; preds = %104, %102, %96, %93
  %110 = phi i32 [ %94, %93 ], [ %108, %104 ], [ %94, %96 ], [ 31, %102 ]
  %111 = icmp ugt i32 %70, 5
  %112 = sext i1 %111 to i32
  %113 = add i32 %50, %112
  %114 = add i32 %110, 1
  %115 = tail call i32 @llvm.umin.i32(i32 %54, i32 %114)
  %116 = icmp ugt i32 %113, %110
  %117 = sub i32 %110, %112
  %118 = select i1 %116, i32 %117, i32 %50
  br label %119

119:                                              ; preds = %109, %91
  %120 = phi i32 [ %50, %91 ], [ %118, %109 ]
  %121 = phi i32 [ %54, %91 ], [ %115, %109 ]
  %122 = phi i32 [ %46, %91 ], [ %94, %109 ]
  %123 = icmp ne i32 %4, 2
  %124 = add i32 %70, -3
  %125 = icmp ult i32 %124, -2
  %126 = select i1 %123, i1 true, i1 %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = tail call i32 @llvm.umin.i32(i32 %121, i32 24)
  %129 = tail call i32 @llvm.umin.i32(i32 %120, i32 24)
  br label %138

130:                                              ; preds = %119
  %131 = add i32 %70, -6
  %132 = icmp ult i32 %131, -3
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = tail call i32 @llvm.umax.i32(i32 %58, i32 4)
  %135 = tail call i32 @llvm.umin.i32(i32 %134, i32 6)
  %136 = or disjoint i32 %135, 24
  %137 = tail call i32 @llvm.umin.i32(i32 %121, i32 %136)
  br label %138

138:                                              ; preds = %127, %130, %133
  %139 = phi i32 [ %120, %130 ], [ %120, %133 ], [ %129, %127 ]
  %140 = phi i32 [ %121, %130 ], [ %137, %133 ], [ %128, %127 ]
  %141 = tail call i32 @llvm.umax.i32(i32 %122, i32 10)
  %142 = icmp slt i32 %1, 0
  %143 = tail call i32 @llvm.umax.i32(i32 %1, i32 -131072)
  %144 = sub nsw i32 0, %143
  %145 = select i1 %142, i32 %144, i32 %66
  store i32 %141, ptr %0, align 4, !tbaa !4
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %139, ptr %146, align 4, !tbaa !4
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %140, ptr %147, align 4, !tbaa !4
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %58, ptr %148, align 4, !tbaa !4
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %62, ptr %149, align 4, !tbaa !4
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %145, ptr %150, align 4, !tbaa !4
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %70, ptr %151, align 4, !tbaa !4
  ret void

152:                                              ; preds = %31
  tail call void @llvm.ubsantrap(i8 23) #37, !nosanitize !130
  unreachable, !nosanitize !130

153:                                              ; preds = %45
  tail call void @llvm.ubsantrap(i8 25) #37, !nosanitize !130
  unreachable, !nosanitize !130

154:                                              ; preds = %48
  tail call void @llvm.ubsantrap(i8 27) #37, !nosanitize !130
  unreachable, !nosanitize !130

155:                                              ; preds = %52
  tail call void @llvm.ubsantrap(i8 29) #37, !nosanitize !130
  unreachable, !nosanitize !130

156:                                              ; preds = %56
  tail call void @llvm.ubsantrap(i8 31) #37, !nosanitize !130
  unreachable, !nosanitize !130

157:                                              ; preds = %60
  tail call void @llvm.ubsantrap(i8 33) #37, !nosanitize !130
  unreachable, !nosanitize !130

158:                                              ; preds = %64
  tail call void @llvm.ubsantrap(i8 35) #37, !nosanitize !130
  unreachable, !nosanitize !130
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ldmParams_t, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !131
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %6 = load i32, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i32, ptr %9, align 4, !tbaa !75
  %11 = add i32 %10, -6
  %12 = icmp ult i32 %11, -3
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %2, align 4, !tbaa !70
  %15 = icmp ugt i32 %14, 14
  %16 = select i1 %15, i32 1, i32 2
  br label %17

17:                                               ; preds = %1, %8, %13
  %18 = phi i32 [ %6, %1 ], [ %16, %13 ], [ 2, %8 ]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %20 = load i32, ptr %19, align 4, !tbaa !113
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %3, align 4, !tbaa !132
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %3, ptr noundef nonnull %2) #34
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr i8, ptr %0, i64 208
  %28 = load ptr, ptr %27, align 8, !tbaa !133
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %32 = load i64, ptr %31, align 8, !tbaa !81
  %33 = call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %18, i64 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %30, i64 noundef %32)
  br label %34

34:                                               ; preds = %17, %26
  %35 = phi i64 [ %33, %26 ], [ -1, %17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret i64 %35
}

declare void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i64 noundef %4, i64 noundef range(i64 2, 1) %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7, i64 noundef %8) unnamed_addr #2 {
  %10 = alloca %struct.ldmParams_t, align 8
  %11 = alloca %struct.ldmParams_t, align 8
  %12 = load i32, ptr %0, align 4, !tbaa !70
  %13 = freeze i32 %12
  %14 = icmp eq i64 %6, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = zext nneg i32 %13 to i64
  %17 = shl nuw i64 1, %16
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 %6)
  %19 = icmp eq i64 %8, 0
  %20 = select i1 %19, i64 131072, i64 %8
  %21 = tail call i64 @llvm.umin.i64(i64 %20, i64 %18)
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi i64 [ 1, %9 ], [ %21, %15 ]
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = load i32, ptr %24, align 4, !tbaa !74
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load i32, ptr %26, align 4, !tbaa !75
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = add i32 %27, -3
  %31 = icmp ult i32 %30, 3
  %32 = icmp eq i32 %3, 1
  %33 = and i1 %32, %31
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %36 = load i32, ptr %35, align 4, !tbaa !71
  %37 = zext nneg i32 %36 to i64
  %38 = shl i64 4, %37
  br label %39

39:                                               ; preds = %34, %29, %22
  %40 = phi i64 [ %38, %34 ], [ 0, %29 ], [ 0, %22 ]
  %41 = icmp eq i32 %25, 3
  %42 = icmp ne i32 %7, 0
  %43 = or i1 %42, %41
  %44 = select i1 %43, i64 3, i64 4
  %45 = udiv i64 %23, %44
  %46 = shl i64 %45, 3
  %47 = add i64 %46, 56
  %48 = and i64 %47, -64
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %50 = load i32, ptr %49, align 4, !tbaa !72
  %51 = tail call i32 @llvm.umin.i32(i32 %13, i32 17)
  %52 = select i1 %41, i32 %51, i32 0
  %53 = zext nneg i32 %50 to i64
  %54 = shl nuw i64 1, %53
  %55 = add i32 %27, -6
  %56 = icmp ult i32 %55, -3
  %57 = icmp ne i32 %3, 1
  %58 = or i1 %57, %56
  %59 = add nuw i64 %54, 63
  %60 = and i64 %59, -64
  %61 = select i1 %58, i64 0, i64 %60
  %62 = icmp ult i32 %27, 7
  %63 = shl i64 4, %53
  %64 = icmp eq i32 %52, 0
  %65 = zext nneg i32 %52 to i64
  %66 = shl nuw nsw i64 4, %65
  %67 = select i1 %64, i64 0, i64 %66
  %68 = select i1 %62, i64 128, i64 149376
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !131
  %69 = tail call i64 @ZSTD_ldm_getTableSize(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !131
  %70 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %11, i64 noundef %23) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %71 = load i32, ptr %1, align 4, !tbaa !132
  %72 = icmp eq i32 %71, 1
  %73 = mul i64 %70, 12
  %74 = add i64 %73, 60
  %75 = and i64 %74, -64
  %76 = select i1 %72, i64 %75, i64 0
  %77 = icmp eq i32 %2, 0
  %78 = udiv i64 %23, 3
  %79 = lshr i64 %23, 10
  %80 = add nuw nsw i64 %79, 2
  %81 = add nuw nsw i64 %80, %78
  %82 = icmp eq i32 %7, 0
  %83 = shl i64 %81, 4
  %84 = add i64 %83, 48
  %85 = and i64 %84, -64
  %86 = select i1 %82, i64 0, i64 %85
  %87 = mul nuw nsw i64 %45, 3
  %88 = select i1 %77, i64 20184, i64 25464
  %89 = add i64 %4, 32
  %90 = add i64 %89, %88
  %91 = add i64 %90, %5
  %92 = add i64 %91, %23
  %93 = add i64 %92, %68
  %94 = add i64 %93, %67
  %95 = add i64 %94, %86
  %96 = add i64 %95, %40
  %97 = add i64 %96, %87
  %98 = add i64 %97, %48
  %99 = add i64 %98, %63
  %100 = add i64 %99, %69
  %101 = add i64 %100, %61
  %102 = add i64 %101, %76
  ret i64 %102
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !134
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44, !alias.scope !134
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45, !alias.scope !134
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %9 = load i32, ptr %8, align 8, !tbaa !75, !noalias !134
  %10 = icmp ugt i32 %9, 6
  %11 = load i32, ptr %2, align 8, !noalias !134
  %12 = icmp ugt i32 %11, 26
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  store i32 2, ptr %7, align 8, !tbaa !80, !alias.scope !134
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 140
  br label %22

16:                                               ; preds = %1
  store i32 1, ptr %7, align 8, !tbaa !80, !alias.scope !134
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %7, ptr noundef nonnull align 8 %2) #34
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !79, !alias.scope !134
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 8, !tbaa !75, !noalias !134
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %9, %14 ], [ %21, %20 ]
  %24 = phi ptr [ %15, %14 ], [ %17, %20 ]
  %25 = icmp ugt i32 %23, 6
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8, !tbaa !70, !noalias !134
  %28 = icmp ugt i32 %27, 16
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %26, %22, %16
  %31 = phi ptr [ %17, %16 ], [ %24, %22 ], [ %24, %26 ]
  %32 = phi i32 [ %18, %16 ], [ 2, %22 ], [ %29, %26 ]
  store i32 %32, ptr %31, align 4, !tbaa !79, !alias.scope !134
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %34 = load i32, ptr %33, align 8, !tbaa !78, !alias.scope !134
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, ptr %8, align 8, !tbaa !75, !noalias !134
  %38 = add i32 %37, -6
  %39 = icmp ult i32 %38, -3
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 8, !tbaa !70, !noalias !134
  %42 = icmp ugt i32 %41, 14
  %43 = select i1 %42, i32 1, i32 2
  br label %44

44:                                               ; preds = %30, %36, %40
  %45 = phi i32 [ %34, %30 ], [ %43, %40 ], [ 2, %36 ]
  store i32 %45, ptr %33, align 8, !tbaa !78, !alias.scope !134
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %47 = load i64, ptr %46, align 8, !tbaa !81, !alias.scope !134
  %48 = icmp eq i64 %47, 0
  %49 = select i1 %48, i64 131072, i64 %47
  store i64 %49, ptr %46, align 8, !tbaa !81, !alias.scope !134
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %51 = load i32, ptr %50, align 8, !tbaa !82, !alias.scope !134
  %52 = load i32, ptr %4, align 4, !tbaa !44, !alias.scope !134
  %53 = icmp eq i32 %51, 0
  %54 = icmp slt i32 %52, 10
  %55 = select i1 %54, i32 2, i32 1
  %56 = select i1 %53, i32 %55, i32 %51
  store i32 %56, ptr %50, align 8, !tbaa !82, !alias.scope !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %58 = load i32, ptr %57, align 8, !tbaa !75
  %59 = add i32 %58, -6
  %60 = icmp ult i32 %59, -3
  br i1 %60, label %65, label %61

61:                                               ; preds = %44
  store i32 2, ptr %33, align 8, !tbaa !78
  %62 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef nonnull %3)
  store i32 1, ptr %33, align 8, !tbaa !78
  %63 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef nonnull %3)
  %64 = call i64 @llvm.umax.i64(i64 %62, i64 %63)
  br label %67

65:                                               ; preds = %44
  %66 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef nonnull %3)
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i64 [ %64, %61 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCCtxSize(i32 noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  br label %4

4:                                                ; preds = %1, %29
  %5 = phi i32 [ %3, %1 ], [ %32, %29 ]
  %6 = phi i64 [ 0, %1 ], [ %31, %29 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %2, i32 noundef %5, i64 noundef 16384, i64 noundef 0, i32 noundef 0)
  %7 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i64 [ %10, %9 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %2, i32 noundef %5, i64 noundef 131072, i64 noundef 0, i32 noundef 0)
  %13 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %14 = icmp ugt i64 %13, %12
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %16, %15 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %2, i32 noundef %5, i64 noundef 262144, i64 noundef 0, i32 noundef 0)
  %19 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %22, %21 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %2, i32 noundef %5, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %25 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %26 = icmp ugt i64 %25, %24
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi i64 [ %28, %27 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %31 = tail call i64 @llvm.umax.i64(i64 %30, i64 %6)
  %32 = add i32 %5, 1
  %33 = icmp eq i32 %5, %0
  br i1 %33, label %34, label %4, !llvm.loop !137

34:                                               ; preds = %29
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ldmParams_t, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %5 = load i32, ptr %4, align 4, !tbaa !113
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !131
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %10 = load i64, ptr %9, align 8, !tbaa !81
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i64 131072, i64 %10
  %13 = load i32, ptr %2, align 4, !tbaa !70
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = tail call i64 @llvm.umin.i64(i64 %12, i64 %15)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 124
  %18 = load i32, ptr %17, align 4, !tbaa !105
  %19 = icmp eq i32 %18, 0
  %20 = add i64 %16, %15
  %21 = select i1 %19, i64 %20, i64 0
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %23 = load i32, ptr %22, align 8, !tbaa !106
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %7
  %26 = lshr i64 %16, 8
  %27 = add nuw i64 %26, %16
  %28 = icmp ult i64 %16, 131072
  %29 = sub nuw nsw i64 131072, %16
  %30 = lshr i64 %29, 11
  %31 = select i1 %28, i64 %30, i64 0
  %32 = add nuw i64 %27, %31
  %33 = freeze i64 %32
  %34 = icmp eq i64 %33, 0
  %35 = add i64 %33, 1
  %36 = select i1 %34, i64 -71, i64 %35
  br label %37

37:                                               ; preds = %7, %25
  %38 = phi i64 [ %36, %25 ], [ 0, %7 ]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %40 = load i32, ptr %39, align 8, !tbaa !78
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %45 = load i32, ptr %44, align 4, !tbaa !75
  %46 = add i32 %45, -6
  %47 = icmp ult i32 %46, -3
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %41, align 4, !tbaa !70
  %50 = icmp ugt i32 %49, 14
  %51 = select i1 %50, i32 1, i32 2
  br label %52

52:                                               ; preds = %37, %43, %48
  %53 = phi i32 [ %40, %37 ], [ %51, %48 ], [ 2, %43 ]
  %54 = load i32, ptr %3, align 4, !tbaa !132
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %3, ptr noundef nonnull %2) #34
  %57 = load i64, ptr %9, align 8, !tbaa !81
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i64 [ %57, %56 ], [ %10, %52 ]
  %60 = getelementptr i8, ptr %0, i64 208
  %61 = load ptr, ptr %60, align 8, !tbaa !133
  %62 = icmp ne ptr %61, null
  %63 = zext i1 %62 to i32
  %64 = call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %53, i64 noundef %21, i64 noundef %38, i64 noundef -1, i32 noundef %63, i64 noundef %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %65

65:                                               ; preds = %1, %58
  %66 = phi i64 [ %64, %58 ], [ -1, %1 ]
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !139
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44, !alias.scope !139
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45, !alias.scope !139
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %9 = load i32, ptr %8, align 8, !tbaa !75, !noalias !139
  %10 = icmp ugt i32 %9, 6
  %11 = load i32, ptr %2, align 8, !noalias !139
  %12 = icmp ugt i32 %11, 26
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  store i32 2, ptr %7, align 8, !tbaa !80, !alias.scope !139
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 140
  br label %22

16:                                               ; preds = %1
  store i32 1, ptr %7, align 8, !tbaa !80, !alias.scope !139
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %7, ptr noundef nonnull align 8 %2) #34
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !79, !alias.scope !139
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 8, !tbaa !75, !noalias !139
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %9, %14 ], [ %21, %20 ]
  %24 = phi ptr [ %15, %14 ], [ %17, %20 ]
  %25 = icmp ugt i32 %23, 6
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8, !tbaa !70, !noalias !139
  %28 = icmp ugt i32 %27, 16
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %26, %22, %16
  %31 = phi ptr [ %17, %16 ], [ %24, %22 ], [ %24, %26 ]
  %32 = phi i32 [ %18, %16 ], [ 2, %22 ], [ %29, %26 ]
  store i32 %32, ptr %31, align 4, !tbaa !79, !alias.scope !139
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %34 = load i32, ptr %33, align 8, !tbaa !78, !alias.scope !139
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, ptr %8, align 8, !tbaa !75, !noalias !139
  %38 = add i32 %37, -6
  %39 = icmp ult i32 %38, -3
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 8, !tbaa !70, !noalias !139
  %42 = icmp ugt i32 %41, 14
  %43 = select i1 %42, i32 1, i32 2
  br label %44

44:                                               ; preds = %30, %36, %40
  %45 = phi i32 [ %34, %30 ], [ %43, %40 ], [ 2, %36 ]
  store i32 %45, ptr %33, align 8, !tbaa !78, !alias.scope !139
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %47 = load i64, ptr %46, align 8, !tbaa !81, !alias.scope !139
  %48 = icmp eq i64 %47, 0
  %49 = select i1 %48, i64 131072, i64 %47
  store i64 %49, ptr %46, align 8, !tbaa !81, !alias.scope !139
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %51 = load i32, ptr %50, align 8, !tbaa !82, !alias.scope !139
  %52 = load i32, ptr %4, align 4, !tbaa !44, !alias.scope !139
  %53 = icmp eq i32 %51, 0
  %54 = icmp slt i32 %52, 10
  %55 = select i1 %54, i32 2, i32 1
  %56 = select i1 %53, i32 %55, i32 %51
  store i32 %56, ptr %50, align 8, !tbaa !82, !alias.scope !139
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %58 = load i32, ptr %57, align 8, !tbaa !75
  %59 = add i32 %58, -6
  %60 = icmp ult i32 %59, -3
  br i1 %60, label %65, label %61

61:                                               ; preds = %44
  store i32 2, ptr %33, align 8, !tbaa !78
  %62 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef nonnull %3)
  store i32 1, ptr %33, align 8, !tbaa !78
  %63 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef nonnull %3)
  %64 = call i64 @llvm.umax.i64(i64 %62, i64 %63)
  br label %67

65:                                               ; preds = %44
  %66 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef nonnull %3)
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i64 [ %64, %61 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize(i32 noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %3, %1 ], [ %9, %4 ]
  %6 = phi i64 [ 0, %1 ], [ %8, %4 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %2, i32 noundef %5, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %7 = tail call i64 @ZSTD_estimateCStreamSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %8 = tail call i64 @llvm.umax.i64(i64 %7, i64 %6)
  %9 = add i32 %5, 1
  %10 = icmp eq i32 %5, %0
  br i1 %10, label %11, label %4, !llvm.loop !142

11:                                               ; preds = %4
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getFrameProgression(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_frameProgression) align 8 captures(none) initializes((0, 40)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 3568
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 3592
  %8 = load i64, ptr %7, align 8, !tbaa !144
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 3584
  %10 = load i64, ptr %9, align 8, !tbaa !145
  %11 = sub i64 %8, %10
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i64 [ %11, %6 ], [ 0, %2 ]
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 792
  %15 = load i64, ptr %14, align 8, !tbaa !146
  %16 = add i64 %15, %13
  store i64 %16, ptr %0, align 8, !tbaa !147
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %15, ptr %17, align 8, !tbaa !149
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 800
  %19 = load i64, ptr %18, align 8, !tbaa !150
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %19, ptr %20, align 8, !tbaa !151
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %19, ptr %21, align 8, !tbaa !152
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %22, align 8, !tbaa !153
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %23, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_toFlushNow(ptr noundef readnone captures(none) %0) local_unnamed_addr #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_reset_compressedBlockState(ptr noundef writeonly captures(none) initializes((2056, 2060), (5604, 5628)) %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %4, align 4, !tbaa !156
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %5, align 8, !tbaa !157
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %6, align 4, !tbaa !158
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ZSTD_invalidateRepCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 5616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false), !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_copyCCtx(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = load i32, ptr %1, align 8, !tbaa !159
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %95

7:                                                ; preds = %3
  %8 = icmp eq i64 %2, 0
  %9 = select i1 %8, i64 -1, i64 %2
  %10 = icmp ne i64 %9, -1
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 3560
  %13 = load i32, ptr %12, align 8, !tbaa !160
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 896
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull readonly align 8 dereferenceable(24) %15, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(224) %16, i64 224, i1 false), !tbaa.struct !115
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %17, ptr noundef nonnull readonly align 4 dereferenceable(28) %18, i64 28, i1 false), !tbaa.struct !76
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 400
  %20 = load i32, ptr %19, align 8, !tbaa !161
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i32 %20, ptr %21, align 8, !tbaa !78
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 380
  %23 = load i32, ptr %22, align 4, !tbaa !162
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 140
  store i32 %23, ptr %24, align 4, !tbaa !79
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull readonly align 8 dereferenceable(24) %26, i64 24, i1 false), !tbaa.struct !131
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %11, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %28, align 8, !tbaa !4
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 392
  %30 = load i64, ptr %29, align 8, !tbaa !163
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 %30, ptr %31, align 8, !tbaa !81
  %32 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull %4, i64 noundef %9, i64 noundef 0, i32 noundef 1, i32 noundef %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %34, ptr %35, align 8, !tbaa !54
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %37 = load i32, ptr %36, align 4, !tbaa !164
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %50, label %39

39:                                               ; preds = %7
  %40 = load i32, ptr %19, align 8, !tbaa !161
  %41 = add i32 %37, -3
  %42 = icmp ult i32 %41, 3
  %43 = icmp eq i32 %40, 1
  %44 = and i1 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %47 = load i32, ptr %46, align 4, !tbaa !165
  %48 = zext nneg i32 %47 to i64
  %49 = shl i64 4, %48
  br label %50

50:                                               ; preds = %45, %39, %7
  %51 = phi i64 [ %49, %45 ], [ 0, %39 ], [ 0, %7 ]
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 252
  %53 = load i32, ptr %52, align 4, !tbaa !166
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 3224
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 3240
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 3288
  %58 = load i32, ptr %57, align 8, !tbaa !167
  %59 = icmp eq i32 %58, 0
  %60 = zext nneg i32 %58 to i64
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %64 = load ptr, ptr %63, align 8, !tbaa !168
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 3352
  %66 = load ptr, ptr %65, align 8, !tbaa !168
  %67 = shl i64 4, %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %64, ptr align 4 %66, i64 %67, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %69 = load ptr, ptr %68, align 8, !tbaa !169
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 3368
  %71 = load ptr, ptr %70, align 8, !tbaa !169
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %69, ptr align 4 %71, i64 %51, i1 false)
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %73 = load ptr, ptr %72, align 8, !tbaa !170
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %75 = load ptr, ptr %74, align 8, !tbaa !170
  %76 = shl i64 4, %60
  %77 = select i1 %59, i64 0, i64 %76
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %73, ptr align 4 %75, i64 %77, i1 false)
  %78 = load ptr, ptr %35, align 8, !tbaa !54
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 728
  %80 = load ptr, ptr %79, align 8, !tbaa !53
  %81 = icmp ult ptr %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %50
  store ptr %80, ptr %35, align 8, !tbaa !54
  br label %83

83:                                               ; preds = %82, %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %62, ptr noundef nonnull readonly align 8 dereferenceable(40) %56, i64 40, i1 false), !tbaa.struct !171
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 3280
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %86 = load <2 x i32>, ptr %84, align 8, !tbaa !4
  store <2 x i32> %86, ptr %85, align 8, !tbaa !4
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 688
  %88 = load i32, ptr %87, align 8, !tbaa !173
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %88, ptr %89, align 8, !tbaa !173
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 696
  %91 = load i64, ptr %90, align 8, !tbaa !174
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %91, ptr %92, align 8, !tbaa !174
  %93 = load ptr, ptr %61, align 8, !tbaa !55
  %94 = load ptr, ptr %55, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %93, ptr noundef nonnull align 8 dereferenceable(5632) %94, i64 5632, i1 false)
  br label %95

95:                                               ; preds = %3, %83
  %96 = phi i64 [ 0, %83 ], [ -60, %3 ]
  ret i64 %96
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @ZSTD_seqToCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !179
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
  %23 = load i16, ptr %22, align 4, !tbaa !180
  %24 = load i32, ptr %21, align 4, !tbaa !183
  %25 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %24, i1 true)
  %26 = getelementptr inbounds nuw i8, ptr %21, i64 6
  %27 = load i16, ptr %26, align 2, !tbaa !184
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
  %38 = load i8, ptr %37, align 1, !tbaa !185
  br label %39

39:                                               ; preds = %30, %35
  %40 = phi i8 [ %34, %30 ], [ %38, %35 ]
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 %20
  store i8 %40, ptr %41, align 1, !tbaa !185
  %42 = trunc nuw nsw i32 %25 to i8
  %43 = xor i8 %42, 31
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 %20
  store i8 %43, ptr %44, align 1, !tbaa !185
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
  %53 = load i8, ptr %52, align 1, !tbaa !185
  br label %54

54:                                               ; preds = %46, %50
  %55 = phi i8 [ %49, %46 ], [ %53, %50 ]
  %56 = getelementptr inbounds nuw i8, ptr %8, i64 %20
  store i8 %55, ptr %56, align 1, !tbaa !185
  %57 = add nuw nsw i64 %20, 1
  %58 = icmp eq i64 %57, %18
  br i1 %58, label %59, label %19, !llvm.loop !186

59:                                               ; preds = %54, %1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %61 = load i32, ptr %60, align 8, !tbaa !187
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %65 = load i32, ptr %64, align 4, !tbaa !188
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 %66
  store i8 35, ptr %67, align 1, !tbaa !185
  %68 = load i32, ptr %60, align 8, !tbaa !187
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i32 [ %68, %63 ], [ %61, %59 ]
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %74 = load i32, ptr %73, align 4, !tbaa !188
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds nuw i8, ptr %8, i64 %75
  store i8 52, ptr %76, align 1, !tbaa !185
  br label %77

77:                                               ; preds = %72, %69
  ret i32 0
}

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local ptr @ZSTD_selectBlockCompressor(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 {
  %4 = add i32 %0, -3
  %5 = icmp ugt i32 %4, 2
  %6 = icmp ne i32 %1, 1
  %7 = or i1 %5, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = icmp ugt i32 %2, 3
  br i1 %9, label %10, label %11, !prof !189, !nosanitize !130

10:                                               ; preds = %8, %19
  tail call void @llvm.ubsantrap(i8 18) #38, !nosanitize !130
  unreachable, !nosanitize !130

11:                                               ; preds = %8
  %12 = zext nneg i32 %4 to i64
  %13 = zext nneg i32 %2 to i64
  %14 = mul nuw nsw i64 %13, 24
  %15 = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %13
  %16 = shl nuw nsw i64 %12, 3
  %17 = add nuw nsw i64 %14, %16
  %18 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %12
  br label %31

19:                                               ; preds = %3
  %20 = icmp ult i32 %2, 4
  %21 = icmp ult i32 %0, 10
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %10, !prof !190, !nosanitize !130

23:                                               ; preds = %19
  %24 = zext nneg i32 %0 to i64
  %25 = zext nneg i32 %2 to i64
  %26 = mul nuw nsw i64 %25, 80
  %27 = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %25
  %28 = shl nuw nsw i64 %24, 3
  %29 = add nuw nsw i64 %26, %28
  %30 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %24
  br label %31

31:                                               ; preds = %23, %11
  %32 = phi i64 [ 96, %11 ], [ 320, %23 ]
  %33 = phi i64 [ %17, %11 ], [ %29, %23 ]
  %34 = phi ptr [ %18, %11 ], [ %30, %23 ]
  %35 = sub nsw i64 %32, %33, !nosanitize !130
  %36 = icmp ult i64 %32, %33, !nosanitize !130
  %37 = icmp ult i64 %35, 8, !nosanitize !130
  %38 = or i1 %36, %37, !nosanitize !130
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %34, align 8, !tbaa !49
  ret ptr %40

41:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 9) #37, !nosanitize !130
  unreachable, !nosanitize !130
}

declare i64 @ZSTD_compressBlock_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_doubleFast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_greedy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btlazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btopt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btultra(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btultra2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_fast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_doubleFast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_greedy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btlazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_greedy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btlazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_greedy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy2_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_greedy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy2_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_greedy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_resetSeqStore(ptr noundef captures(none) initializes((8, 16), (24, 32), (72, 76)) %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %4, align 8, !tbaa !192
  %5 = load ptr, ptr %0, align 8, !tbaa !175
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %6, align 8, !tbaa !179
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %7, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 2, 6166929089745999191) i64 @ZSTD_sequenceBound(i64 noundef %0) local_unnamed_addr #0 {
  %2 = udiv i64 %0, 3
  %3 = lshr i64 %0, 10
  %4 = add nuw nsw i64 %3, 2
  %5 = add nuw nsw i64 %4, %2
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_generateSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = icmp ugt i64 %4, -71777214294589697
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = lshr i64 %4, 8
  %11 = add nuw i64 %10, %4
  %12 = icmp ult i64 %4, 131072
  %13 = sub nuw nsw i64 131072, %4
  %14 = lshr i64 %13, 11
  %15 = select i1 %12, i64 %14, i64 0
  %16 = add i64 %11, %15
  %17 = freeze i64 %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9, %5
  br label %20

20:                                               ; preds = %9, %19
  %21 = phi i64 [ -72, %19 ], [ %17, %9 ]
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %23 = load i64, ptr %22, align 8, !tbaa !103
  %24 = and i64 %23, 4294967295
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %28 = load i32, ptr %27, align 4, !tbaa !113
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = tail call noalias ptr @malloc(i64 noundef %21) #35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 1, ptr %34, align 8, !tbaa !4
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 944
  store ptr %1, ptr %35, align 8, !tbaa !49
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i64 0, ptr %36, align 8, !tbaa !116
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i64 %2, ptr %37, align 8, !tbaa !116
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %40, align 8, !tbaa !83
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %41, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store ptr %31, ptr %6, align 8, !tbaa !193
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %21, ptr %42, align 8, !tbaa !195
  %43 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %43, align 8, !tbaa !196
  store ptr %3, ptr %7, align 8, !tbaa !197
  %44 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %44, align 8, !tbaa !198
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %45, align 8, !tbaa !199
  %46 = load <2 x i32>, ptr %38, align 4, !tbaa !4
  store i32 1, ptr %38, align 4, !tbaa !200
  store i32 1, ptr %39, align 8, !tbaa !201
  %47 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %48 = load i64, ptr %43, align 8, !tbaa !196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  store <2 x i32> %46, ptr %38, align 4, !tbaa !4
  %49 = icmp ult i64 %47, -119
  %50 = icmp eq i64 %47, 0
  %51 = select i1 %50, i64 %48, i64 -70
  %52 = select i1 %49, i64 %51, i64 %47
  tail call void @free(ptr noundef nonnull %31) #34
  %53 = icmp ult i64 %52, -119
  br i1 %53, label %54, label %56

54:                                               ; preds = %33
  %55 = load i64, ptr %36, align 8, !tbaa !202
  br label %56

56:                                               ; preds = %30, %33, %26, %20, %54
  %57 = phi i64 [ -40, %20 ], [ %55, %54 ], [ %52, %33 ], [ -40, %26 ], [ -64, %30 ]
  ret i64 %57
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress2(ptr noundef initializes((784, 792), (3640, 3644)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %10, align 8, !tbaa !83
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %11, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store ptr %1, ptr %6, align 8, !tbaa !193
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %12, align 8, !tbaa !195
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %13, align 8, !tbaa !196
  store ptr %3, ptr %7, align 8, !tbaa !197
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %14, align 8, !tbaa !198
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %15, align 8, !tbaa !199
  %16 = load <2 x i32>, ptr %8, align 4, !tbaa !4
  store i32 1, ptr %8, align 4, !tbaa !200
  store i32 1, ptr %9, align 8, !tbaa !201
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %18 = load i64, ptr %13, align 8, !tbaa !196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  store <2 x i32> %16, ptr %8, align 4, !tbaa !4
  %19 = icmp ult i64 %17, -119
  %20 = icmp eq i64 %17, 0
  %21 = select i1 %20, i64 %18, i64 -70
  %22 = select i1 %19, i64 %21, i64 %17
  ret i64 %22
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_mergeBlockDelimiters(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #18 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = add i64 %1, -2
  br label %9

9:                                                ; preds = %7, %28
  %10 = phi i64 [ 0, %7 ], [ %29, %28 ]
  %11 = phi i64 [ 0, %7 ], [ %30, %28 ]
  %12 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !203
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %17 = load i32, ptr %16, align 4, !tbaa !205
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !206
  %22 = getelementptr i8, ptr %12, i64 20
  %23 = load i32, ptr %22, align 4, !tbaa !206
  %24 = add i32 %23, %21
  store i32 %24, ptr %22, align 4, !tbaa !206
  br label %28

25:                                               ; preds = %15, %9
  %26 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !207
  %27 = add i64 %10, 1
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i64 [ %10, %19 ], [ %27, %25 ]
  %30 = add nuw i64 %11, 1
  %31 = icmp eq i64 %11, %8
  br i1 %31, label %32, label %9, !llvm.loop !208

32:                                               ; preds = %28, %4
  %33 = phi i64 [ 0, %4 ], [ %29, %28 ]
  %34 = phi i64 [ 0, %4 ], [ %30, %28 ]
  %35 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !203
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %40 = load i32, ptr %39, align 4, !tbaa !205
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %43, ptr noundef nonnull align 4 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !207
  %44 = add i64 %33, 1
  br label %53

45:                                               ; preds = %38
  %46 = icmp eq i64 %34, %5
  br i1 %46, label %53, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !206
  %50 = getelementptr i8, ptr %35, i64 20
  %51 = load i32, ptr %50, align 4, !tbaa !206
  %52 = add i32 %51, %49
  store i32 %52, ptr %50, align 4, !tbaa !206
  br label %53

53:                                               ; preds = %42, %45, %47, %2
  %54 = phi i64 [ 0, %2 ], [ %33, %47 ], [ %33, %45 ], [ %44, %42 ]
  ret i64 %54
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_buildBlockEntropyStats(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 2064)) %2, ptr noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !191
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !92
  %19 = icmp ugt i32 %18, 7
  %20 = select i1 %19, i32 2, i32 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %22 = load i32, ptr %21, align 8, !tbaa !97
  switch i32 %22, label %24 [
    i32 1, label %26
    i32 2, label %23
  ]

23:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store i32 255, ptr %9, align 4, !tbaa !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %90

24:                                               ; preds = %7
  %25 = icmp eq i32 %18, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %7, %24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store i32 255, ptr %9, align 4, !tbaa !4
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %28 = load i32, ptr %27, align 8, !tbaa !210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %31 = load i32, ptr %30, align 4, !tbaa !91
  %32 = icmp eq i32 %31, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store i32 255, ptr %9, align 4, !tbaa !4
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %34 = load i32, ptr %33, align 8, !tbaa !210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br i1 %32, label %35, label %90

35:                                               ; preds = %26, %29
  %36 = phi i32 [ %28, %26 ], [ %34, %29 ]
  %37 = phi ptr [ %27, %26 ], [ %33, %29 ]
  %38 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %39 = add nsw i64 %6, -1024
  %40 = load i32, ptr %37, align 8, !tbaa !210
  %41 = icmp eq i32 %40, 2
  %42 = select i1 %41, i64 6, i64 63
  %43 = icmp ugt i64 %16, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %35
  %45 = call i64 @HIST_count_wksp(ptr noundef %5, ptr noundef nonnull %9, ptr noundef %13, i64 noundef %16, ptr noundef %5, i64 noundef %6) #34
  %46 = icmp ult i64 %45, -119
  br i1 %46, label %47, label %93

47:                                               ; preds = %44
  %48 = icmp eq i64 %45, %16
  br i1 %48, label %90, label %49

49:                                               ; preds = %47
  %50 = lshr i64 %16, 7
  %51 = add nuw nsw i64 %50, 4
  %52 = icmp ugt i64 %45, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = icmp eq i32 %36, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = load i32, ptr %9, align 4, !tbaa !4
  %57 = call i32 @HUF_validateCTable(ptr noundef nonnull %1, ptr noundef %5, i32 noundef %56) #34
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %59, %55 ], [ %36, %53 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %2, i8 0, i64 2056, i1 false)
  %62 = load i32, ptr %9, align 4, !tbaa !4
  %63 = call i32 @HUF_optimalTableLog(i32 noundef 11, i64 noundef %16, i32 noundef %62, ptr noundef nonnull %38, i64 noundef %39, ptr noundef nonnull %2, ptr noundef %5, i32 noundef range(i32 0, 3) %20) #34
  %64 = load i32, ptr %9, align 4, !tbaa !4
  %65 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %2, ptr noundef %5, i32 noundef %64, i32 noundef %63, ptr noundef nonnull %38, i64 noundef %39) #34
  %66 = icmp ult i64 %65, -119
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = trunc i64 %65 to i32
  %69 = load i32, ptr %9, align 4, !tbaa !4
  %70 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %69) #34
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %72 = load i32, ptr %9, align 4, !tbaa !4
  %73 = call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %71, i64 noundef 128, ptr noundef nonnull %2, i32 noundef %72, i32 noundef %68, ptr noundef nonnull %38, i64 noundef %39) #34
  %74 = icmp eq i32 %61, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %9, align 4, !tbaa !4
  %77 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef %76) #34
  %78 = icmp ult i64 %77, %16
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = add i64 %73, %70
  %81 = icmp ugt i64 %77, %80
  %82 = add i64 %73, 12
  %83 = icmp ult i64 %82, %16
  %84 = and i1 %83, %81
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %90

86:                                               ; preds = %79, %75, %67
  %87 = add i64 %73, %70
  %88 = icmp ult i64 %87, %16
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %90

90:                                               ; preds = %49, %47, %35, %29, %23, %85, %89
  %91 = phi i32 [ 0, %35 ], [ 0, %29 ], [ 3, %85 ], [ 0, %89 ], [ 1, %47 ], [ 0, %23 ], [ 0, %49 ]
  store i32 %91, ptr %4, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 0, ptr %92, align 8, !tbaa !212
  br label %100

93:                                               ; preds = %44, %60
  %94 = phi i64 [ %65, %60 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %94, ptr %95, align 8, !tbaa !212
  br label %142

96:                                               ; preds = %86
  store i32 2, ptr %4, align 8, !tbaa !211
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 2056
  store i32 1, ptr %97, align 8, !tbaa !210
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %73, ptr %98, align 8, !tbaa !212
  %99 = icmp ult i64 %73, -119
  br i1 %99, label %100, label %142

100:                                              ; preds = %90, %96
  %101 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %103 = load ptr, ptr %102, align 8, !tbaa !179
  %104 = load ptr, ptr %0, align 8, !tbaa !175
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 5612
  store i32 0, ptr %107, align 4, !tbaa !213, !noalias !214
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 5604
  store i32 0, ptr %108, align 4, !tbaa !217, !noalias !214
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 5608
  store i32 0, ptr %109, align 4, !tbaa !218, !noalias !214
  br label %130

110:                                              ; preds = %100
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 2064
  %112 = getelementptr inbounds nuw i8, ptr %1, i64 2064
  %113 = ptrtoint ptr %104 to i64
  %114 = ptrtoint ptr %103 to i64
  %115 = sub i64 %114, %113
  %116 = ashr exact i64 %115, 3
  %117 = add i64 %6, -212
  %118 = getelementptr inbounds nuw i8, ptr %5, i64 212
  %119 = getelementptr inbounds nuw i8, ptr %4, i64 156
  %120 = getelementptr inbounds nuw i8, ptr %4, i64 289
  %121 = load i32, ptr %17, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull readonly %0, i64 noundef %116, ptr noundef nonnull %112, ptr noundef nonnull %111, ptr noundef nonnull %119, ptr noundef nonnull %120, i32 noundef %121, ptr noundef %5, ptr noundef nonnull %118, i64 noundef %117)
  %122 = load <2 x i32>, ptr %8, align 8, !tbaa !4
  %123 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %124 = load i32, ptr %123, align 8, !tbaa !4
  %125 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %126 = load i64, ptr %125, align 8, !tbaa !116
  %127 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %128 = load i64, ptr %127, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %129 = icmp ult i64 %126, -119
  br i1 %129, label %130, label %137

130:                                              ; preds = %110, %106
  %131 = phi i32 [ 0, %106 ], [ %124, %110 ]
  %132 = phi i64 [ 0, %106 ], [ %126, %110 ]
  %133 = phi i64 [ 0, %106 ], [ %128, %110 ]
  %134 = phi <2 x i32> [ zeroinitializer, %106 ], [ %122, %110 ]
  store <2 x i32> %134, ptr %101, align 8, !tbaa !4
  %135 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i32 %131, ptr %135, align 8, !tbaa !219
  %136 = getelementptr inbounds nuw i8, ptr %4, i64 304
  store i64 %133, ptr %136, align 8, !tbaa !220
  br label %137

137:                                              ; preds = %110, %130
  %138 = phi i64 [ %126, %110 ], [ %132, %130 ]
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 296
  store i64 %138, ptr %139, align 8, !tbaa !221
  %140 = icmp ult i64 %138, -119
  %141 = select i1 %140, i64 0, i64 %138
  br label %142

142:                                              ; preds = %93, %137, %96
  %143 = phi i64 [ %73, %96 ], [ %141, %137 ], [ %94, %93 ]
  ret i64 %143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -72, 4294967304) i64 @ZSTD_writeSkippableFrame(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = add i64 %3, 8
  %7 = icmp ult i64 %1, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = icmp ugt i64 %3, 4294967295
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i32 %4, 15
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = or disjoint i32 %4, 407710288
  store i32 %13, ptr %0, align 1, !tbaa !4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = trunc nuw i64 %3 to i32
  store i32 %15, ptr %14, align 1, !tbaa !4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %2, i64 %3, i1 false)
  br label %17

17:                                               ; preds = %10, %8, %5, %12
  %18 = phi i64 [ %6, %12 ], [ -70, %5 ], [ -72, %8 ], [ -42, %10 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -70, 4) i64 @ZSTD_writeLastEmptyBlock(ptr noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = icmp ult i64 %1, 3
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  store i16 1, ptr %0, align 1, !tbaa !222
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %5, align 1, !tbaa !185
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ 3, %4 ], [ -70, %2 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_referenceExternalSequences(ptr noundef writeonly captures(none) initializes((3184, 3224)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store ptr %1, ptr %4, align 8, !tbaa !223
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store i64 %2, ptr %5, align 8, !tbaa !224
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3216
  store i64 %2, ptr %6, align 8, !tbaa !225
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #2 {
  %8 = alloca %struct.seqStoreSplits, align 8
  %9 = alloca %struct.repcodes_s, align 4
  %10 = alloca %struct.repcodes_s, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %12 = load i32, ptr %0, align 8, !tbaa !159
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %713, label %14

14:                                               ; preds = %7
  %15 = icmp ne i32 %5, 0
  %16 = icmp eq i32 %12, 1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %21 = load i64, ptr %20, align 8, !tbaa !117
  %22 = add i64 %21, -1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %24 = load i32, ptr %23, align 8, !tbaa !173
  %25 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %19, i64 noundef %22, i32 noundef %24)
  %26 = icmp ult i64 %25, -119
  br i1 %26, label %27, label %713

27:                                               ; preds = %18
  %28 = sub i64 %2, %25
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  store i32 2, ptr %0, align 8, !tbaa !159
  br label %30

30:                                               ; preds = %27, %14
  %31 = phi i64 [ %25, %27 ], [ 0, %14 ]
  %32 = phi i64 [ %28, %27 ], [ %2, %14 ]
  %33 = phi ptr [ %29, %27 ], [ %1, %14 ]
  %34 = icmp eq i64 %4, 0
  br i1 %34, label %713, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %37 = load i32, ptr %36, align 8, !tbaa !226
  %38 = load ptr, ptr %11, align 8, !tbaa !227
  %39 = icmp ne ptr %3, %38
  %40 = icmp ne i32 %37, 0
  %41 = or i1 %40, %39
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 3256
  %44 = load ptr, ptr %43, align 8, !tbaa !228
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %46 = load i32, ptr %45, align 4, !tbaa !229
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %48 = load i32, ptr %47, align 8, !tbaa !230
  br label %65

49:                                               ; preds = %35
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %51 = load ptr, ptr %50, align 8, !tbaa !231
  %52 = ptrtoint ptr %38 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %56 = load i32, ptr %55, align 8, !tbaa !230
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  store i32 %56, ptr %57, align 4, !tbaa !229
  %58 = trunc i64 %54 to i32
  store i32 %58, ptr %55, align 8, !tbaa !230
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 3256
  store ptr %51, ptr %59, align 8, !tbaa !228
  %60 = sub i64 0, %54
  %61 = getelementptr inbounds i8, ptr %3, i64 %60
  store ptr %61, ptr %50, align 8, !tbaa !231
  %62 = sub i32 %58, %56
  %63 = icmp ult i32 %62, 8
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 %58, ptr %57, align 4, !tbaa !229
  br label %65

65:                                               ; preds = %64, %49, %42
  %66 = phi i32 [ %48, %42 ], [ %58, %64 ], [ %58, %49 ]
  %67 = phi i32 [ %46, %42 ], [ %58, %64 ], [ %56, %49 ]
  %68 = phi ptr [ %44, %42 ], [ %51, %64 ], [ %51, %49 ]
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  store ptr %69, ptr %11, align 8, !tbaa !227
  %70 = zext i32 %67 to i64
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 %70
  %72 = icmp ugt ptr %69, %71
  %73 = zext i32 %66 to i64
  %74 = getelementptr inbounds nuw i8, ptr %68, i64 %73
  %75 = icmp ult ptr %3, %74
  %76 = and i1 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %79 = ptrtoint ptr %69 to i64
  %80 = ptrtoint ptr %68 to i64
  %81 = sub i64 %79, %80
  %82 = tail call i64 @llvm.umin.i64(i64 %81, i64 %73)
  %83 = trunc nuw i64 %82 to i32
  store i32 %83, ptr %78, align 4, !tbaa !229
  br label %84

84:                                               ; preds = %65, %77
  br i1 %41, label %85, label %87

85:                                               ; preds = %84
  store i32 0, ptr %36, align 8, !tbaa !226
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  store i32 %66, ptr %86, align 4, !tbaa !232
  br label %87

87:                                               ; preds = %85, %84
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %90 = load i32, ptr %89, align 8, !tbaa !233
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %137

92:                                               ; preds = %87
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %94 = load ptr, ptr %93, align 8, !tbaa !227
  %95 = icmp eq ptr %3, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %98 = load ptr, ptr %97, align 8, !tbaa !228
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %100 = load i32, ptr %99, align 4, !tbaa !229
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %102 = load i32, ptr %101, align 8, !tbaa !230
  br label %119

103:                                              ; preds = %92
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %105 = load ptr, ptr %104, align 8, !tbaa !231
  %106 = ptrtoint ptr %94 to i64
  %107 = ptrtoint ptr %105 to i64
  %108 = sub i64 %106, %107
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %110 = load i32, ptr %109, align 8, !tbaa !230
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i32 %110, ptr %111, align 4, !tbaa !229
  %112 = trunc i64 %108 to i32
  store i32 %112, ptr %109, align 8, !tbaa !230
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %105, ptr %113, align 8, !tbaa !228
  %114 = sub i64 0, %108
  %115 = getelementptr inbounds i8, ptr %3, i64 %114
  store ptr %115, ptr %104, align 8, !tbaa !231
  %116 = sub i32 %112, %110
  %117 = icmp ult i32 %116, 8
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  store i32 %112, ptr %111, align 4, !tbaa !229
  br label %119

119:                                              ; preds = %118, %103, %96
  %120 = phi i32 [ %102, %96 ], [ %112, %118 ], [ %112, %103 ]
  %121 = phi i32 [ %100, %96 ], [ %112, %118 ], [ %110, %103 ]
  %122 = phi ptr [ %98, %96 ], [ %105, %118 ], [ %105, %103 ]
  store ptr %69, ptr %93, align 8, !tbaa !227
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds nuw i8, ptr %122, i64 %123
  %125 = icmp ugt ptr %69, %124
  %126 = zext i32 %120 to i64
  %127 = getelementptr inbounds nuw i8, ptr %122, i64 %126
  %128 = icmp ult ptr %3, %127
  %129 = and i1 %125, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %119
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %132 = ptrtoint ptr %69 to i64
  %133 = ptrtoint ptr %122 to i64
  %134 = sub i64 %132, %133
  %135 = tail call i64 @llvm.umin.i64(i64 %134, i64 %126)
  %136 = trunc nuw i64 %135 to i32
  store i32 %136, ptr %131, align 4, !tbaa !229
  br label %137

137:                                              ; preds = %130, %119, %87
  br i1 %15, label %141, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %139, ptr noundef nonnull %88, ptr noundef %3, ptr noundef nonnull %69)
  %140 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef %33, i64 noundef %32, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  br label %695

141:                                              ; preds = %137
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %143 = load i64, ptr %142, align 8, !tbaa !234
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %145 = load i32, ptr %144, align 4, !tbaa !235
  %146 = shl nuw i32 1, %145
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %148 = load i64, ptr %147, align 8, !tbaa !146
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %150 = load i64, ptr %149, align 8, !tbaa !150
  %151 = sub nsw i64 %148, %150
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %153 = load i32, ptr %152, align 4, !tbaa !236
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %141
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %157 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %156, ptr noundef captures(none) %3, i64 noundef range(i64 1, 0) %4) #34
  br label %158

158:                                              ; preds = %155, %141
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %161 = icmp ult i64 %143, 131072
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %171 = getelementptr i8, ptr %0, i64 296
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %178 = getelementptr i8, ptr %0, i64 380
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 4088
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 4008
  %182 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 4084
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 4024
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 4032
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 936
  br label %191

191:                                              ; preds = %678, %158
  %192 = phi i64 [ %32, %158 ], [ %684, %678 ]
  %193 = phi i64 [ %4, %158 ], [ %682, %678 ]
  %194 = phi ptr [ %3, %158 ], [ %226, %678 ]
  %195 = phi ptr [ %33, %158 ], [ %683, %678 ]
  %196 = phi i64 [ %151, %158 ], [ %681, %678 ]
  %197 = load i32, ptr %159, align 8, !tbaa !237
  %198 = load i32, ptr %160, align 4, !tbaa !164
  %199 = icmp ult i64 %193, 131072
  %200 = or i1 %161, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %191
  %202 = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %193, i64 %143)
  br label %220

203:                                              ; preds = %191
  %204 = icmp slt i64 %196, 3
  br i1 %204, label %220, label %205

205:                                              ; preds = %203
  switch i32 %197, label %213 [
    i32 1, label %220
    i32 0, label %206
  ]

206:                                              ; preds = %205
  %207 = icmp ult i32 %198, 10
  br i1 %207, label %209, label %208, !prof !238, !nosanitize !130

208:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 18) #38, !nosanitize !130
  unreachable, !nosanitize !130

209:                                              ; preds = %206
  %210 = zext nneg i32 %198 to i64, !nosanitize !130
  %211 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_optimalBlockSize.splitLevels, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !4
  br label %215

213:                                              ; preds = %205
  %214 = add nsw i32 %197, -2
  br label %215

215:                                              ; preds = %213, %209
  %216 = phi i32 [ %212, %209 ], [ %214, %213 ]
  %217 = load ptr, ptr %162, align 8, !tbaa !57
  %218 = load i64, ptr %163, align 8, !tbaa !58
  %219 = tail call i64 @ZSTD_splitBlock(ptr noundef %194, i64 noundef %143, i32 noundef %216, ptr noundef %217, i64 noundef %218) #34
  br label %220

220:                                              ; preds = %215, %205, %203, %201
  %221 = phi i64 [ %202, %201 ], [ %219, %215 ], [ 131072, %203 ], [ 131072, %205 ]
  %222 = icmp eq i64 %221, %193
  %223 = select i1 %222, i32 %6, i32 0
  %224 = icmp ult i64 %192, 6
  br i1 %224, label %713, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds nuw i8, ptr %194, i64 %221
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %164, ptr noundef nonnull %88, ptr noundef %194, ptr noundef %226)
  %227 = load ptr, ptr %167, align 8, !tbaa !231
  %228 = ptrtoint ptr %226 to i64
  %229 = ptrtoint ptr %227 to i64
  %230 = sub i64 %228, %229
  %231 = trunc i64 %230 to i32
  %232 = load i32, ptr %165, align 8, !tbaa !4
  %233 = add i32 %232, %146
  %234 = icmp ult i32 %233, %231
  br i1 %234, label %238, label %235

235:                                              ; preds = %225
  %236 = load i32, ptr %168, align 8, !tbaa !230
  %237 = icmp eq i32 %232, %236
  br i1 %237, label %239, label %238

238:                                              ; preds = %235, %225
  store i32 0, ptr %165, align 4, !tbaa !4
  store ptr null, ptr %166, align 8, !tbaa !239
  br label %239

239:                                              ; preds = %238, %235
  %240 = phi i32 [ %232, %235 ], [ 0, %238 ]
  %241 = ptrtoint ptr %194 to i64
  %242 = sub i64 %241, %229
  %243 = trunc i64 %242 to i32
  %244 = add i32 %240, %146
  %245 = icmp ult i32 %244, %243
  %246 = load i32, ptr %169, align 4, !tbaa !240
  br i1 %245, label %247, label %257

247:                                              ; preds = %239
  %248 = sub i32 %243, %146
  %249 = icmp ult i32 %246, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  store i32 %248, ptr %169, align 4, !tbaa !229
  br label %251

251:                                              ; preds = %250, %247
  %252 = phi i32 [ %248, %250 ], [ %246, %247 ]
  %253 = load i32, ptr %168, align 8, !tbaa !230
  %254 = icmp ult i32 %253, %252
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i32 %252, ptr %168, align 8, !tbaa !230
  br label %256

256:                                              ; preds = %255, %251
  store i32 0, ptr %165, align 4, !tbaa !4
  store ptr null, ptr %166, align 8, !tbaa !239
  br label %257

257:                                              ; preds = %256, %239
  %258 = phi i32 [ %246, %239 ], [ %252, %256 ]
  %259 = load i32, ptr %170, align 4, !tbaa !232
  %260 = icmp ult i32 %259, %258
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  store i32 %258, ptr %170, align 4, !tbaa !232
  br label %262

262:                                              ; preds = %261, %257
  %263 = load i64, ptr %171, align 8, !tbaa !103
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %340, label %265

265:                                              ; preds = %262
  %266 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %194, i64 noundef %221)
  %267 = icmp ult i64 %266, -119
  br i1 %267, label %268, label %713

268:                                              ; preds = %265
  %269 = icmp eq i64 %266, 0
  br i1 %269, label %270, label %320

270:                                              ; preds = %268
  %271 = load i32, ptr %172, align 8, !tbaa !241
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %301

273:                                              ; preds = %270
  %274 = load ptr, ptr %174, align 8, !tbaa !179
  %275 = load ptr, ptr %173, align 8, !tbaa !175
  %276 = ptrtoint ptr %274 to i64
  %277 = ptrtoint ptr %275 to i64
  %278 = sub i64 %276, %277
  %279 = load ptr, ptr %175, align 8, !tbaa !192
  %280 = load ptr, ptr %176, align 8, !tbaa !191
  %281 = ptrtoint ptr %279 to i64
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  %284 = icmp ugt i64 %278, 31
  %285 = icmp ugt i64 %283, 9
  %286 = select i1 %284, i1 true, i1 %285
  br i1 %286, label %301, label %287

287:                                              ; preds = %273
  %288 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %194, i64 noundef %221)
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %301, label %290

290:                                              ; preds = %287
  %291 = load i8, ptr %194, align 1, !tbaa !185
  %292 = trunc i64 %221 to i32
  %293 = shl i32 %292, 3
  %294 = or disjoint i32 %293, %223
  %295 = trunc i32 %294 to i16
  %296 = or disjoint i16 %295, 2
  store i16 %296, ptr %195, align 1, !tbaa !222
  %297 = lshr i32 %293, 16
  %298 = trunc i32 %297 to i8
  %299 = getelementptr inbounds nuw i8, ptr %195, i64 2
  store i8 %298, ptr %299, align 1, !tbaa !185
  %300 = getelementptr inbounds nuw i8, ptr %195, i64 3
  store i8 %291, ptr %300, align 1, !tbaa !185
  br label %333

301:                                              ; preds = %287, %273, %270
  %302 = tail call i64 @ZSTD_compressSuperBlock(ptr noundef nonnull %0, ptr noundef %195, i64 noundef range(i64 6, 0) %192, ptr noundef %194, i64 noundef %221, i32 noundef range(i32 0, 2) %223) #34
  %303 = icmp eq i64 %302, -70
  br i1 %303, label %320, label %304

304:                                              ; preds = %301
  %305 = icmp ult i64 %302, -119
  br i1 %305, label %306, label %713

306:                                              ; preds = %304
  %307 = load i32, ptr %160, align 4, !tbaa !164
  %308 = tail call i32 @llvm.umax.i32(i32 %307, i32 7)
  %309 = add i32 %308, -1
  %310 = zext nneg i32 %309 to i64
  %311 = lshr i64 %221, %310
  %312 = icmp ne i64 %302, 0
  %313 = add i64 %221, 1
  %314 = sub i64 %313, %311
  %315 = icmp ult i64 %302, %314
  %316 = select i1 %312, i1 %315, i1 false
  br i1 %316, label %317, label %320

317:                                              ; preds = %306
  %318 = load <2 x ptr>, ptr %177, align 8, !tbaa !49
  %319 = shufflevector <2 x ptr> %318, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %319, ptr %177, align 8, !tbaa !49
  br label %333

320:                                              ; preds = %306, %301, %268
  %321 = add i64 %221, 3
  %322 = icmp ugt i64 %321, %192
  br i1 %322, label %713, label %323

323:                                              ; preds = %320
  %324 = trunc i64 %221 to i32
  %325 = shl i32 %324, 3
  %326 = or disjoint i32 %325, %223
  %327 = trunc i32 %326 to i16
  store i16 %327, ptr %195, align 1, !tbaa !222
  %328 = lshr i32 %325, 16
  %329 = trunc i32 %328 to i8
  %330 = getelementptr inbounds nuw i8, ptr %195, i64 2
  store i8 %329, ptr %330, align 1, !tbaa !185
  %331 = getelementptr inbounds nuw i8, ptr %195, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %331, ptr readonly align 1 %194, i64 %221, i1 false)
  %332 = icmp ult i64 %321, -119
  br i1 %332, label %333, label %713

333:                                              ; preds = %323, %317, %290
  %334 = phi i64 [ %321, %323 ], [ %302, %317 ], [ 4, %290 ]
  %335 = load ptr, ptr %177, align 8, !tbaa !55
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 5604
  %337 = load i32, ptr %336, align 4, !tbaa !156
  %338 = icmp eq i32 %337, 2
  br i1 %338, label %339, label %678

339:                                              ; preds = %333
  store i32 1, ptr %336, align 4, !tbaa !156
  br label %678

340:                                              ; preds = %262
  %341 = load i32, ptr %178, align 4, !tbaa !79
  %342 = icmp eq i32 %341, 1
  br i1 %342, label %343, label %643

343:                                              ; preds = %340
  %344 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %194, i64 noundef %221)
  %345 = icmp ult i64 %344, -119
  br i1 %345, label %346, label %713

346:                                              ; preds = %343
  %347 = icmp eq i64 %344, 1
  br i1 %347, label %348, label %369

348:                                              ; preds = %346
  %349 = load ptr, ptr %177, align 8, !tbaa !55
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 5604
  %351 = load i32, ptr %350, align 4, !tbaa !156
  %352 = icmp eq i32 %351, 2
  br i1 %352, label %353, label %354

353:                                              ; preds = %348
  store i32 1, ptr %350, align 4, !tbaa !156
  br label %354

354:                                              ; preds = %353, %348
  %355 = load i32, ptr %190, align 8, !tbaa !242
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %713

357:                                              ; preds = %354
  %358 = add i64 %221, 3
  %359 = icmp ugt i64 %358, %192
  br i1 %359, label %713, label %360

360:                                              ; preds = %357
  %361 = trunc i64 %221 to i32
  %362 = shl i32 %361, 3
  %363 = or disjoint i32 %362, %223
  %364 = trunc i32 %363 to i16
  store i16 %364, ptr %195, align 1, !tbaa !222
  %365 = lshr i32 %362, 16
  %366 = trunc i32 %365 to i8
  %367 = getelementptr inbounds nuw i8, ptr %195, i64 2
  store i8 %366, ptr %367, align 1, !tbaa !185
  %368 = getelementptr inbounds nuw i8, ptr %195, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %368, ptr readonly align 1 %194, i64 %221, i1 false)
  br label %640

369:                                              ; preds = %346
  %370 = load ptr, ptr %174, align 8, !tbaa !243
  %371 = load ptr, ptr %173, align 8, !tbaa !244
  %372 = ptrtoint ptr %370 to i64
  %373 = ptrtoint ptr %371 to i64
  %374 = sub i64 %372, %373
  %375 = lshr exact i64 %374, 3
  %376 = trunc i64 %375 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %179, ptr %8, align 8, !tbaa !245
  store i64 0, ptr %182, align 8, !tbaa !247
  %377 = icmp ult i32 %376, 5
  br i1 %377, label %383, label %378

378:                                              ; preds = %369
  %379 = and i64 %375, 4294967295
  call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %8, i64 noundef 0, i64 noundef %379, ptr noundef nonnull %0, ptr noundef nonnull %173)
  %380 = load ptr, ptr %8, align 8, !tbaa !245
  %381 = load i64, ptr %182, align 8, !tbaa !247
  %382 = getelementptr inbounds nuw [4 x i8], ptr %380, i64 %381
  store i32 %376, ptr %382, align 4, !tbaa !4
  br label %383

383:                                              ; preds = %378, %369
  %384 = phi i64 [ %381, %378 ], [ 0, %369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %385 = load ptr, ptr %177, align 8, !tbaa !55
  %386 = getelementptr inbounds nuw i8, ptr %385, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %386, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %386, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %180, i8 0, i64 80, i1 false)
  %387 = icmp eq i64 %384, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %173, ptr noundef %9, ptr noundef %10, ptr noundef %195, i64 noundef range(i64 6, 0) %192, ptr noundef %194, i64 noundef %221, i32 noundef range(i32 0, 2) %223, i32 noundef 0)
  br label %638

390:                                              ; preds = %383
  %391 = load i32, ptr %179, align 4, !tbaa !4
  %392 = zext i32 %391 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %181, ptr noundef nonnull readonly align 8 dereferenceable(80) %173, i64 80, i1 false), !tbaa.struct !248
  %393 = load i32, ptr %183, align 8, !tbaa !187
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %399, label %395

395:                                              ; preds = %390
  %396 = load i32, ptr %184, align 4, !tbaa !188
  %397 = icmp ult i32 %391, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %395
  store i32 0, ptr %185, align 8, !tbaa !187
  br label %399

399:                                              ; preds = %398, %395, %390
  %400 = load ptr, ptr %173, align 8, !tbaa !175
  store ptr %400, ptr %181, align 8, !tbaa !175
  %401 = shl nuw nsw i64 %392, 3
  %402 = getelementptr inbounds nuw i8, ptr %400, i64 %401
  store ptr %402, ptr %186, align 8, !tbaa !179
  %403 = load ptr, ptr %174, align 8, !tbaa !179
  %404 = ptrtoint ptr %403 to i64
  %405 = ptrtoint ptr %400 to i64
  %406 = sub i64 %404, %405
  %407 = ashr exact i64 %406, 3
  %408 = icmp eq i64 %407, %392
  br i1 %408, label %473, label %409

409:                                              ; preds = %399
  %410 = icmp eq i32 %391, 0
  br i1 %410, label %469, label %411

411:                                              ; preds = %409
  %412 = load i32, ptr %187, align 4, !tbaa !188
  %413 = zext i32 %412 to i64
  %414 = and i64 %392, 1
  %415 = icmp eq i32 %391, 1
  br i1 %415, label %454, label %416

416:                                              ; preds = %411
  %417 = and i64 %392, 4294967294
  br label %418

418:                                              ; preds = %447, %416
  %419 = phi i64 [ 0, %416 ], [ %448, %447 ]
  %420 = phi i64 [ 0, %416 ], [ %449, %447 ]
  %421 = phi i64 [ 0, %416 ], [ %450, %447 ]
  %422 = getelementptr inbounds nuw [8 x i8], ptr %400, i64 %420
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 4
  %424 = load i16, ptr %423, align 4, !tbaa !222
  %425 = zext i16 %424 to i64
  %426 = add i64 %419, %425
  %427 = icmp eq i64 %420, %413
  br i1 %427, label %428, label %433

428:                                              ; preds = %418
  %429 = load i32, ptr %185, align 8, !tbaa !187
  %430 = icmp eq i32 %429, 1
  %431 = add i64 %426, 65536
  %432 = select i1 %430, i64 %431, i64 %426
  br label %433

433:                                              ; preds = %428, %418
  %434 = phi i64 [ %426, %418 ], [ %432, %428 ]
  %435 = or disjoint i64 %420, 1
  %436 = getelementptr inbounds nuw [8 x i8], ptr %400, i64 %435
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 4
  %438 = load i16, ptr %437, align 4, !tbaa !222
  %439 = zext i16 %438 to i64
  %440 = add i64 %434, %439
  %441 = icmp eq i64 %435, %413
  br i1 %441, label %442, label %447

442:                                              ; preds = %433
  %443 = load i32, ptr %185, align 8, !tbaa !187
  %444 = icmp eq i32 %443, 1
  %445 = add i64 %440, 65536
  %446 = select i1 %444, i64 %445, i64 %440
  br label %447

447:                                              ; preds = %442, %433
  %448 = phi i64 [ %440, %433 ], [ %446, %442 ]
  %449 = add nuw nsw i64 %420, 2
  %450 = add i64 %421, 2
  %451 = icmp eq i64 %450, %417
  br i1 %451, label %452, label %418, !llvm.loop !250

452:                                              ; preds = %447
  %453 = icmp eq i64 %414, 0
  br i1 %453, label %469, label %454

454:                                              ; preds = %452, %411
  %455 = phi i64 [ 0, %411 ], [ %448, %452 ]
  %456 = phi i64 [ 0, %411 ], [ %449, %452 ]
  %457 = trunc i32 %391 to i1
  tail call void @llvm.assume(i1 %457)
  %458 = getelementptr inbounds nuw [8 x i8], ptr %400, i64 %456
  %459 = getelementptr inbounds nuw i8, ptr %458, i64 4
  %460 = load i16, ptr %459, align 4, !tbaa !222
  %461 = zext i16 %460 to i64
  %462 = add i64 %455, %461
  %463 = icmp eq i64 %456, %413
  br i1 %463, label %464, label %469

464:                                              ; preds = %454
  %465 = load i32, ptr %185, align 8, !tbaa !187
  %466 = icmp eq i32 %465, 1
  %467 = add i64 %462, 65536
  %468 = select i1 %466, i64 %467, i64 %462
  br label %469

469:                                              ; preds = %452, %464, %454, %409
  %470 = phi i64 [ 0, %409 ], [ %448, %452 ], [ %462, %454 ], [ %468, %464 ]
  %471 = load ptr, ptr %188, align 8, !tbaa !191
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 %470
  store ptr %472, ptr %189, align 8, !tbaa !192
  br label %473

473:                                              ; preds = %469, %399
  br label %474

474:                                              ; preds = %473, %628
  %475 = phi i64 [ %631, %628 ], [ %192, %473 ]
  %476 = phi i64 [ %632, %628 ], [ 0, %473 ]
  %477 = phi ptr [ %629, %628 ], [ %194, %473 ]
  %478 = phi ptr [ %630, %628 ], [ %195, %473 ]
  %479 = phi i64 [ %633, %628 ], [ 0, %473 ]
  %480 = phi i64 [ %613, %628 ], [ 0, %473 ]
  %481 = icmp eq i64 %479, %384
  %482 = load ptr, ptr %186, align 8, !tbaa !179
  %483 = load ptr, ptr %181, align 8, !tbaa !175
  %484 = icmp eq ptr %482, %483
  br i1 %484, label %611, label %485

485:                                              ; preds = %474
  %486 = ptrtoint ptr %482 to i64
  %487 = ptrtoint ptr %483 to i64
  %488 = sub i64 %486, %487
  %489 = ashr exact i64 %488, 3
  %490 = load i32, ptr %187, align 4, !tbaa !188
  %491 = zext i32 %490 to i64
  %492 = add nsw i64 %489, -1
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %533, label %494

494:                                              ; preds = %485
  %495 = and i64 %489, -2
  br label %496

496:                                              ; preds = %525, %494
  %497 = phi i64 [ 0, %494 ], [ %526, %525 ]
  %498 = phi i64 [ 0, %494 ], [ %527, %525 ]
  %499 = phi i64 [ 0, %494 ], [ %528, %525 ]
  %500 = getelementptr inbounds nuw [8 x i8], ptr %483, i64 %498
  %501 = getelementptr inbounds nuw i8, ptr %500, i64 4
  %502 = load i16, ptr %501, align 4, !tbaa !222
  %503 = zext i16 %502 to i64
  %504 = add i64 %497, %503
  %505 = icmp eq i64 %498, %491
  br i1 %505, label %506, label %511

506:                                              ; preds = %496
  %507 = load i32, ptr %185, align 8, !tbaa !187
  %508 = icmp eq i32 %507, 1
  %509 = add i64 %504, 65536
  %510 = select i1 %508, i64 %509, i64 %504
  br label %511

511:                                              ; preds = %506, %496
  %512 = phi i64 [ %504, %496 ], [ %510, %506 ]
  %513 = or disjoint i64 %498, 1
  %514 = getelementptr inbounds nuw [8 x i8], ptr %483, i64 %513
  %515 = getelementptr inbounds nuw i8, ptr %514, i64 4
  %516 = load i16, ptr %515, align 4, !tbaa !222
  %517 = zext i16 %516 to i64
  %518 = add i64 %512, %517
  %519 = icmp eq i64 %513, %491
  br i1 %519, label %520, label %525

520:                                              ; preds = %511
  %521 = load i32, ptr %185, align 8, !tbaa !187
  %522 = icmp eq i32 %521, 1
  %523 = add i64 %518, 65536
  %524 = select i1 %522, i64 %523, i64 %518
  br label %525

525:                                              ; preds = %520, %511
  %526 = phi i64 [ %518, %511 ], [ %524, %520 ]
  %527 = add nuw i64 %498, 2
  %528 = add i64 %499, 2
  %529 = icmp eq i64 %528, %495
  br i1 %529, label %530, label %496, !llvm.loop !250

530:                                              ; preds = %525
  %531 = and i64 %488, 8
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %548, label %533

533:                                              ; preds = %530, %485
  %534 = phi i64 [ 0, %485 ], [ %526, %530 ]
  %535 = phi i64 [ 0, %485 ], [ %527, %530 ]
  %536 = trunc i64 %489 to i1
  tail call void @llvm.assume(i1 %536)
  %537 = getelementptr inbounds nuw [8 x i8], ptr %483, i64 %535
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 4
  %539 = load i16, ptr %538, align 4, !tbaa !222
  %540 = zext i16 %539 to i64
  %541 = add i64 %534, %540
  %542 = icmp eq i64 %535, %491
  br i1 %542, label %543, label %548

543:                                              ; preds = %533
  %544 = load i32, ptr %185, align 8, !tbaa !187
  %545 = icmp eq i32 %544, 1
  %546 = add i64 %541, 65536
  %547 = select i1 %545, i64 %546, i64 %541
  br label %548

548:                                              ; preds = %533, %543, %530
  %549 = phi i64 [ %526, %530 ], [ %541, %533 ], [ %547, %543 ]
  %550 = icmp eq i64 %492, 0
  br i1 %550, label %592, label %551

551:                                              ; preds = %548
  %552 = and i64 %489, -2
  br label %553

553:                                              ; preds = %584, %551
  %554 = phi i64 [ 0, %551 ], [ %585, %584 ]
  %555 = phi i64 [ 0, %551 ], [ %586, %584 ]
  %556 = phi i64 [ 0, %551 ], [ %587, %584 ]
  %557 = getelementptr inbounds nuw [8 x i8], ptr %483, i64 %555
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 6
  %559 = load i16, ptr %558, align 2, !tbaa !222
  %560 = zext i16 %559 to i64
  %561 = add i64 %554, 3
  %562 = add i64 %561, %560
  %563 = icmp eq i64 %555, %491
  br i1 %563, label %564, label %569

564:                                              ; preds = %553
  %565 = load i32, ptr %185, align 8, !tbaa !187
  %566 = icmp eq i32 %565, 2
  %567 = add i64 %562, 65536
  %568 = select i1 %566, i64 %567, i64 %562
  br label %569

569:                                              ; preds = %564, %553
  %570 = phi i64 [ %562, %553 ], [ %568, %564 ]
  %571 = or disjoint i64 %555, 1
  %572 = getelementptr inbounds nuw [8 x i8], ptr %483, i64 %571
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 6
  %574 = load i16, ptr %573, align 2, !tbaa !222
  %575 = zext i16 %574 to i64
  %576 = add i64 %570, 3
  %577 = add i64 %576, %575
  %578 = icmp eq i64 %571, %491
  br i1 %578, label %579, label %584

579:                                              ; preds = %569
  %580 = load i32, ptr %185, align 8, !tbaa !187
  %581 = icmp eq i32 %580, 2
  %582 = add i64 %577, 65536
  %583 = select i1 %581, i64 %582, i64 %577
  br label %584

584:                                              ; preds = %579, %569
  %585 = phi i64 [ %577, %569 ], [ %583, %579 ]
  %586 = add nuw i64 %555, 2
  %587 = add i64 %556, 2
  %588 = icmp eq i64 %587, %552
  br i1 %588, label %589, label %553, !llvm.loop !251

589:                                              ; preds = %584
  %590 = and i64 %488, 8
  %591 = icmp eq i64 %590, 0
  br i1 %591, label %608, label %592

592:                                              ; preds = %589, %548
  %593 = phi i64 [ 0, %548 ], [ %585, %589 ]
  %594 = phi i64 [ 0, %548 ], [ %586, %589 ]
  %595 = trunc i64 %489 to i1
  tail call void @llvm.assume(i1 %595)
  %596 = getelementptr inbounds nuw [8 x i8], ptr %483, i64 %594
  %597 = getelementptr inbounds nuw i8, ptr %596, i64 6
  %598 = load i16, ptr %597, align 2, !tbaa !222
  %599 = zext i16 %598 to i64
  %600 = add i64 %593, 3
  %601 = add i64 %600, %599
  %602 = icmp eq i64 %594, %491
  br i1 %602, label %603, label %608

603:                                              ; preds = %592
  %604 = load i32, ptr %185, align 8, !tbaa !187
  %605 = icmp eq i32 %604, 2
  %606 = add i64 %601, 65536
  %607 = select i1 %605, i64 %606, i64 %601
  br label %608

608:                                              ; preds = %592, %603, %589
  %609 = phi i64 [ %585, %589 ], [ %601, %592 ], [ %607, %603 ]
  %610 = add i64 %609, %549
  br label %611

611:                                              ; preds = %608, %474
  %612 = phi i64 [ 0, %474 ], [ %610, %608 ]
  %613 = add i64 %612, %480
  br i1 %481, label %614, label %616

614:                                              ; preds = %611
  %615 = sub i64 %221, %480
  br label %623

616:                                              ; preds = %611
  %617 = getelementptr inbounds nuw [4 x i8], ptr %179, i64 %479
  %618 = load i32, ptr %617, align 4, !tbaa !4
  %619 = zext i32 %618 to i64
  %620 = getelementptr i8, ptr %617, i64 4
  %621 = load i32, ptr %620, align 4, !tbaa !4
  %622 = zext i32 %621 to i64
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %180, ptr noundef nonnull %173, i64 noundef %619, i64 noundef %622)
  br label %623

623:                                              ; preds = %616, %614
  %624 = phi i32 [ %223, %614 ], [ 0, %616 ]
  %625 = phi i64 [ %615, %614 ], [ %612, %616 ]
  %626 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %181, ptr noundef %9, ptr noundef %10, ptr noundef %478, i64 noundef %475, ptr noundef %477, i64 noundef %625, i32 noundef %624, i32 noundef 1)
  %627 = icmp ult i64 %626, -119
  br i1 %627, label %628, label %638

628:                                              ; preds = %623
  %629 = getelementptr inbounds nuw i8, ptr %477, i64 %625
  %630 = getelementptr inbounds nuw i8, ptr %478, i64 %626
  %631 = sub i64 %475, %626
  %632 = add i64 %626, %476
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %181, ptr noundef nonnull align 8 dereferenceable(80) %180, i64 80, i1 false), !tbaa.struct !248
  %633 = add i64 %479, 1
  %634 = icmp ugt i64 %633, %384
  br i1 %634, label %635, label %474, !llvm.loop !252

635:                                              ; preds = %628
  %636 = load ptr, ptr %177, align 8, !tbaa !55
  %637 = getelementptr inbounds nuw i8, ptr %636, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %637, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false)
  br label %638

638:                                              ; preds = %623, %635, %388
  %639 = phi i64 [ %389, %388 ], [ %632, %635 ], [ %626, %623 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %640

640:                                              ; preds = %638, %360
  %641 = phi i64 [ %639, %638 ], [ %358, %360 ]
  %642 = icmp ult i64 %641, -119
  br i1 %642, label %678, label %713

643:                                              ; preds = %340
  %644 = getelementptr inbounds nuw i8, ptr %195, i64 3
  %645 = add i64 %192, -3
  %646 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef nonnull %644, i64 noundef %645, ptr noundef %194, i64 noundef %221, i32 noundef 1)
  %647 = icmp ult i64 %646, -119
  br i1 %647, label %648, label %713

648:                                              ; preds = %643
  switch i64 %646, label %666 [
    i64 0, label %649
    i64 1, label %661
  ]

649:                                              ; preds = %648
  %650 = add i64 %221, 3
  %651 = icmp ugt i64 %650, %192
  br i1 %651, label %713, label %652

652:                                              ; preds = %649
  %653 = trunc i64 %221 to i32
  %654 = shl i32 %653, 3
  %655 = or disjoint i32 %654, %223
  %656 = trunc i32 %655 to i16
  store i16 %656, ptr %195, align 1, !tbaa !222
  %657 = lshr i32 %654, 16
  %658 = trunc i32 %657 to i8
  %659 = getelementptr inbounds nuw i8, ptr %195, i64 2
  store i8 %658, ptr %659, align 1, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %644, ptr readonly align 1 %194, i64 %221, i1 false)
  %660 = icmp ult i64 %650, -119
  br i1 %660, label %678, label %713

661:                                              ; preds = %648
  %662 = trunc i64 %221 to i32
  %663 = shl i32 %662, 3
  %664 = or disjoint i32 %223, %663
  %665 = or disjoint i32 %664, 2
  br label %671

666:                                              ; preds = %648
  %667 = trunc i64 %646 to i32
  %668 = shl i32 %667, 3
  %669 = or disjoint i32 %668, %223
  %670 = or disjoint i32 %669, 4
  br label %671

671:                                              ; preds = %666, %661
  %672 = phi i32 [ %665, %661 ], [ %670, %666 ]
  %673 = trunc i32 %672 to i16
  store i16 %673, ptr %195, align 1, !tbaa !222
  %674 = lshr i32 %672, 16
  %675 = trunc i32 %674 to i8
  %676 = getelementptr inbounds nuw i8, ptr %195, i64 2
  store i8 %675, ptr %676, align 1, !tbaa !185
  %677 = add nuw i64 %646, 3
  br label %678

678:                                              ; preds = %671, %652, %640, %339, %333
  %679 = phi i64 [ %677, %671 ], [ %641, %640 ], [ %650, %652 ], [ %334, %333 ], [ %334, %339 ]
  %680 = add i64 %221, %196
  %681 = sub i64 %680, %679
  %682 = sub i64 %193, %221
  %683 = getelementptr inbounds nuw i8, ptr %195, i64 %679
  %684 = sub i64 %192, %679
  store i32 0, ptr %172, align 8, !tbaa !241
  %685 = icmp eq i64 %682, 0
  br i1 %685, label %686, label %191, !llvm.loop !253

686:                                              ; preds = %678
  %687 = icmp ne i32 %6, 0
  %688 = icmp ugt ptr %683, %33
  %689 = select i1 %687, i1 %688, i1 false
  br i1 %689, label %690, label %691

690:                                              ; preds = %686
  store i32 3, ptr %0, align 8, !tbaa !159
  br label %691

691:                                              ; preds = %690, %686
  %692 = ptrtoint ptr %683 to i64
  %693 = ptrtoint ptr %33 to i64
  %694 = sub i64 %692, %693
  br label %695

695:                                              ; preds = %691, %138
  %696 = phi i64 [ %140, %138 ], [ %694, %691 ]
  %697 = icmp ult i64 %696, -119
  br i1 %697, label %698, label %713

698:                                              ; preds = %695
  %699 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %700 = load i64, ptr %699, align 8, !tbaa !146
  %701 = add i64 %700, %4
  store i64 %701, ptr %699, align 8, !tbaa !146
  %702 = add nuw i64 %696, %31
  %703 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %704 = load i64, ptr %703, align 8, !tbaa !150
  %705 = add i64 %704, %702
  store i64 %705, ptr %703, align 8, !tbaa !150
  %706 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %707 = load i64, ptr %706, align 8, !tbaa !117
  %708 = icmp ne i64 %707, 0
  %709 = add i64 %701, 1
  %710 = icmp ugt i64 %709, %707
  %711 = select i1 %708, i1 %710, i1 false
  %712 = select i1 %711, i64 -72, i64 %702
  br label %713

713:                                              ; preds = %220, %265, %643, %652, %640, %649, %304, %320, %323, %357, %354, %343, %698, %695, %30, %7, %18
  %714 = phi i64 [ %25, %18 ], [ %31, %30 ], [ -60, %7 ], [ %696, %695 ], [ %712, %698 ], [ %344, %343 ], [ -106, %354 ], [ -70, %357 ], [ %321, %323 ], [ -70, %320 ], [ %302, %304 ], [ -70, %649 ], [ %641, %640 ], [ %650, %652 ], [ %646, %643 ], [ %266, %265 ], [ -70, %220 ]
  ret i64 %714
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, -9223372036854775807) i64 @ZSTD_getBlockSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #9 {
  %2 = getelementptr i8, ptr %0, i64 244
  %3 = load i32, ptr %2, align 4, !tbaa !4
  %4 = getelementptr i8, ptr %0, i64 392
  %5 = load i64, ptr %4, align 8, !tbaa !163
  %6 = zext nneg i32 %3 to i64
  %7 = shl nuw i64 1, %6
  %8 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %5, i64 %7)
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %8 = getelementptr i8, ptr %0, i64 392
  %9 = load i64, ptr %8, align 8, !tbaa !163
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw i64 1, %10
  %12 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %9, i64 %11)
  %13 = icmp ugt i64 %4, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i64 [ %15, %14 ], [ -72, %5 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %8 = getelementptr i8, ptr %0, i64 392
  %9 = load i64, ptr %8, align 8, !tbaa !163
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw i64 1, %10
  %12 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %9, i64 %11)
  %13 = icmp ugt i64 %4, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i64 [ %15, %14 ], [ -72, %5 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_loadCEntropy(ptr noundef initializes((2056, 2060)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i32 31, ptr %6, align 4, !tbaa !4
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 1, ptr %18, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store i32 255, ptr %7, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store i32 1, ptr %8, align 4, !tbaa !4
  %19 = ptrtoint ptr %16 to i64
  %20 = add i64 %3, -8
  %21 = call i64 @HUF_readCTable(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef %20, ptr noundef nonnull %8) #34
  %22 = load i32, ptr %8, align 4, !tbaa !4
  %23 = icmp eq i32 %22, 0
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 255
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 2, ptr %18, align 8, !tbaa !155
  br label %28

28:                                               ; preds = %4, %27
  %29 = icmp ult i64 %21, -119
  %30 = getelementptr inbounds nuw i8, ptr %17, i64 %21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %29, label %31, label %206

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %32 = sub i64 %20, %21
  %33 = call i64 @FSE_readNCount(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %30, i64 noundef %32) #34
  %34 = icmp ult i64 %33, -119
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, ptr %9, align 4, !tbaa !4
  %37 = icmp ugt i32 %36, 8
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %206

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %41 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %40, ptr noundef nonnull %5, i32 noundef 31, i32 noundef %36, ptr noundef %1, i64 noundef 8704) #34
  %42 = icmp ult i64 %41, -119
  %43 = getelementptr inbounds nuw i8, ptr %30, i64 %33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br i1 %42, label %44, label %206

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store i32 52, ptr %11, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %45 = add i64 %21, %33
  %46 = sub i64 %20, %45
  %47 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %43, i64 noundef %46) #34
  %48 = icmp ult i64 %47, -119
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = load i32, ptr %12, align 4, !tbaa !4
  %51 = icmp ugt i32 %50, 9
  br i1 %51, label %85, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %54 = load i32, ptr %11, align 4, !tbaa !4
  %55 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %53, ptr noundef nonnull %10, i32 noundef %54, i32 noundef %50, ptr noundef %1, i64 noundef 8704) #34
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
  store i32 %78, ptr %79, align 8, !tbaa !157
  %80 = getelementptr inbounds nuw i8, ptr %43, i64 %47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  store i32 35, ptr %14, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %81 = ptrtoint ptr %80 to i64
  %82 = sub i64 %19, %81
  %83 = call i64 @FSE_readNCount(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %80, i64 noundef %82) #34
  %84 = icmp ult i64 %83, -119
  br i1 %84, label %86, label %116

85:                                               ; preds = %44, %49, %52
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %206

86:                                               ; preds = %57
  %87 = load i32, ptr %15, align 4, !tbaa !4
  %88 = icmp ugt i32 %87, 9
  br i1 %88, label %116, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %91 = load i32, ptr %14, align 4, !tbaa !4
  %92 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %90, ptr noundef nonnull %13, i32 noundef %91, i32 noundef %87, ptr noundef %1, i64 noundef 8704) #34
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
  store i32 %111, ptr %112, align 4, !tbaa !158
  %113 = getelementptr inbounds nuw i8, ptr %80, i64 %83
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 12
  %115 = icmp ugt ptr %114, %16
  br i1 %115, label %206, label %117

116:                                              ; preds = %57, %86, %89
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
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
  %137 = add nuw nsw i32 %133, 1
  %138 = zext nneg i32 %137 to i64
  %139 = icmp samesign ult i32 %133, 7
  br i1 %139, label %176, label %140

140:                                              ; preds = %136
  %141 = and i64 %138, 56
  %142 = load <8 x i16>, ptr %5, align 16, !tbaa !222
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
  %151 = load <8 x i16>, ptr %150, align 16, !tbaa !222
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
  %160 = load <8 x i16>, ptr %159, align 16, !tbaa !222
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
  %169 = load <8 x i16>, ptr %168, align 16, !tbaa !222
  %170 = freeze <8 x i16> %169
  %171 = icmp eq <8 x i16> %170, zeroinitializer
  %172 = bitcast <8 x i1> %171 to i8
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %167, %165, %156, %147
  %175 = icmp eq i64 %141, %138
  br i1 %175, label %186, label %176

176:                                              ; preds = %136, %174
  %177 = phi i64 [ 0, %136 ], [ %141, %174 ]
  br label %181

178:                                              ; preds = %181
  %179 = add nuw nsw i64 %182, 1
  %180 = icmp eq i64 %179, %138
  br i1 %180, label %186, label %181, !llvm.loop !254

181:                                              ; preds = %176, %178
  %182 = phi i64 [ %179, %178 ], [ %177, %176 ]
  %183 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !222
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %178

186:                                              ; preds = %140, %149, %158, %167, %178, %181, %174, %117
  %187 = phi i32 [ 1, %117 ], [ 2, %174 ], [ 1, %181 ], [ 2, %178 ], [ 1, %167 ], [ 1, %158 ], [ 1, %149 ], [ 1, %140 ]
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 %187, ptr %188, align 4, !tbaa !156
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret i64 %207
}

declare i64 @HUF_readCTable(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_advanced_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #2 {
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
  %31 = tail call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0)
  br label %32

32:                                               ; preds = %16, %8, %30
  %33 = phi i64 [ %31, %30 ], [ -42, %16 ], [ -42, %8 ]
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef readonly captures(none) %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #2 {
  %10 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %11 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %12 = icmp eq ptr %5, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !257
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi i64 [ %15, %13 ], [ %2, %9 ]
  %18 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #34
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi i64 [ %20, %19 ], [ 0, %16 ]
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %22, ptr %23, align 8, !tbaa !258
  br i1 %12, label %444, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !257
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %441, label %28

28:                                               ; preds = %24
  %29 = icmp ult i64 %7, 131072
  br i1 %29, label %39, label %30

30:                                               ; preds = %28
  %31 = mul i64 %26, 6
  %32 = icmp ult i64 %7, %31
  %33 = icmp eq i64 %7, -1
  %34 = or i1 %33, %32
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 6068
  %37 = load i32, ptr %36, align 4, !tbaa !259
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %441

39:                                               ; preds = %35, %30, %28
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 68
  %41 = load i32, ptr %40, align 4, !tbaa !96
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %441, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 384
  %45 = load i32, ptr %44, align 8, !tbaa !260
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %48, label %47, !prof !238, !nosanitize !130

47:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 18) #38, !nosanitize !130
  unreachable, !nosanitize !130

48:                                               ; preds = %43
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 244
  %50 = load i32, ptr %49, align 4, !tbaa !261
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = zext nneg i32 %45 to i64, !nosanitize !130
  %54 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !116
  %56 = icmp ule i64 %7, %55
  %57 = icmp eq i64 %7, -1
  %58 = or i1 %57, %56
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = icmp eq i32 %41, 1
  br i1 %60, label %63, label %168

61:                                               ; preds = %52
  %62 = icmp eq i32 %41, 2
  br i1 %62, label %168, label %63

63:                                               ; preds = %61, %59
  %64 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %65 = load i32, ptr %64, align 8, !tbaa !95
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %168

67:                                               ; preds = %63, %48
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull readonly align 8 dereferenceable(224) %6, i64 224, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %69 = getelementptr inbounds nuw i8, ptr %5, i64 360
  %70 = load i32, ptr %69, align 8, !tbaa !4
  %71 = getelementptr inbounds nuw i8, ptr %5, i64 364
  %72 = load i32, ptr %71, align 4, !tbaa !4
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 368
  %74 = load i32, ptr %73, align 8, !tbaa !4
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 372
  %76 = load i32, ptr %75, align 4, !tbaa !4
  %77 = getelementptr inbounds nuw i8, ptr %5, i64 376
  %78 = load i64, ptr %77, align 8
  %79 = icmp ne i32 %50, 0
  %80 = add nsw i32 %45, -3
  %81 = icmp ult i32 %80, 3
  %82 = select i1 %79, i1 %81, i1 false
  %83 = add i32 %74, -2
  %84 = tail call i32 @llvm.umax.i32(i32 %83, i32 6)
  %85 = select i1 %82, i32 %84, i32 %74
  %86 = getelementptr inbounds nuw i8, ptr %11, i64 160
  %87 = load i32, ptr %86, align 8, !tbaa !78
  %88 = icmp ult i64 %7, 1073741825
  br i1 %88, label %89, label %97

89:                                               ; preds = %67
  %90 = icmp samesign ult i64 %7, 64
  %91 = trunc nuw nsw i64 %7 to i32
  %92 = add nsw i32 %91, -1
  %93 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %92, i1 true)
  %94 = sub nuw nsw i32 32, %93
  %95 = select i1 %90, i32 6, i32 %94
  %96 = tail call i32 @llvm.umin.i32(i32 %70, i32 %95)
  br label %99

97:                                               ; preds = %67
  %98 = icmp eq i64 %7, -1
  br i1 %98, label %109, label %99

99:                                               ; preds = %97, %89
  %100 = phi i32 [ %96, %89 ], [ %70, %97 ]
  %101 = icmp samesign ugt i32 %45, 5
  %102 = sext i1 %101 to i32
  %103 = add i32 %72, %102
  %104 = add i32 %100, 1
  %105 = tail call i32 @llvm.umin.i32(i32 %85, i32 %104)
  %106 = icmp ugt i32 %103, %100
  %107 = sub i32 %100, %102
  %108 = select i1 %106, i32 %107, i32 %72
  br label %109

109:                                              ; preds = %99, %97
  %110 = phi i32 [ %72, %97 ], [ %108, %99 ]
  %111 = phi i32 [ %85, %97 ], [ %105, %99 ]
  %112 = add nsw i32 %45, -6
  %113 = icmp ult i32 %112, -3
  %114 = icmp ugt i32 %87, 1
  %115 = or i1 %113, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = tail call i32 @llvm.umax.i32(i32 %76, i32 4)
  %118 = tail call i32 @llvm.umin.i32(i32 %117, i32 6)
  %119 = or disjoint i32 %118, 24
  %120 = tail call i32 @llvm.umin.i32(i32 %111, i32 %119)
  br label %121

121:                                              ; preds = %116, %109
  %122 = phi i32 [ %111, %109 ], [ %120, %116 ]
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %110, ptr %123, align 8, !tbaa !4
  %124 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %122, ptr %124, align 4, !tbaa !4
  %125 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %76, ptr %125, align 8, !tbaa !4
  %126 = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i64 %78, ptr %126, align 4
  %127 = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 %45, ptr %127, align 4, !tbaa !4
  %128 = getelementptr inbounds nuw i8, ptr %5, i64 6072
  %129 = load i32, ptr %128, align 8, !tbaa !262
  store i32 %129, ptr %86, align 8, !tbaa !78
  %130 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull align 8 %11, i64 noundef %7, i64 noundef 0, i32 noundef 0, i32 noundef range(i32 0, 2) %8)
  %131 = icmp ult i64 %130, -119
  br i1 %131, label %132, label %167

132:                                              ; preds = %121
  %133 = load ptr, ptr %68, align 8, !tbaa !263
  %134 = getelementptr inbounds nuw i8, ptr %5, i64 112
  %135 = load ptr, ptr %134, align 8, !tbaa !264
  %136 = ptrtoint ptr %133 to i64
  %137 = ptrtoint ptr %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  %140 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %141 = load i32, ptr %140, align 8, !tbaa !265
  %142 = icmp eq i32 %141, %139
  br i1 %142, label %158, label %143

143:                                              ; preds = %132
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  store ptr %68, ptr %144, align 8, !tbaa !266
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %146 = load i32, ptr %145, align 8, !tbaa !267
  %147 = icmp ult i32 %146, %139
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %151 = load ptr, ptr %150, align 8, !tbaa !268
  %152 = and i64 %138, 4294967295
  %153 = getelementptr inbounds nuw i8, ptr %151, i64 %152
  store ptr %153, ptr %149, align 8, !tbaa !269
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  store i32 %139, ptr %154, align 4, !tbaa !229
  store i32 %139, ptr %145, align 8, !tbaa !230
  br label %155

155:                                              ; preds = %148, %143
  %156 = phi i32 [ %139, %148 ], [ %146, %143 ]
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  store i32 %156, ptr %157, align 8, !tbaa !270
  br label %158

158:                                              ; preds = %155, %132
  %159 = getelementptr inbounds nuw i8, ptr %5, i64 6064
  %160 = load i32, ptr %159, align 8, !tbaa !271
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %160, ptr %161, align 8, !tbaa !173
  %162 = load i64, ptr %25, align 8, !tbaa !257
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %162, ptr %163, align 8, !tbaa !174
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %165 = load ptr, ptr %164, align 8, !tbaa !55
  %166 = getelementptr inbounds nuw i8, ptr %5, i64 408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %165, ptr noundef nonnull align 8 dereferenceable(5632) %166, i64 5632, i1 false)
  br label %167

167:                                              ; preds = %158, %121
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %479

168:                                              ; preds = %63, %61, %59
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %10, ptr noundef nonnull readonly align 8 dereferenceable(224) %6, i64 224, i1 false)
  %169 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %170 = getelementptr inbounds nuw i8, ptr %5, i64 360
  %171 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %172 = load i32, ptr %171, align 4, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %171, ptr noundef nonnull readonly align 4 dereferenceable(28) %170, i64 28, i1 false), !tbaa.struct !76
  store i32 %172, ptr %171, align 4, !tbaa !86
  %173 = getelementptr inbounds nuw i8, ptr %5, i64 6072
  %174 = load i32, ptr %173, align 8, !tbaa !262
  %175 = getelementptr inbounds nuw i8, ptr %10, i64 160
  store i32 %174, ptr %175, align 8, !tbaa !78
  %176 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull align 8 %10, i64 noundef %7, i64 noundef 0, i32 noundef 1, i32 noundef range(i32 0, 2) %8)
  %177 = icmp ult i64 %176, -119
  br i1 %177, label %178, label %440

178:                                              ; preds = %168
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %180 = load ptr, ptr %179, align 8, !tbaa !52
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %180, ptr %181, align 8, !tbaa !54
  %182 = load i32, ptr %44, align 4, !tbaa !75
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %195

184:                                              ; preds = %178
  %185 = getelementptr inbounds nuw i8, ptr %5, i64 368
  %186 = load i32, ptr %185, align 4, !tbaa !72
  %187 = zext nneg i32 %186 to i64
  %188 = shl nuw i64 1, %187
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %192 = load ptr, ptr %191, align 8, !tbaa !168
  %193 = getelementptr inbounds nuw i8, ptr %5, i64 216
  %194 = load ptr, ptr %193, align 8, !tbaa !272
  br label %228

195:                                              ; preds = %178
  %196 = load i32, ptr %173, align 8, !tbaa !262
  %197 = add i32 %182, -3
  %198 = icmp ult i32 %197, 3
  %199 = icmp eq i32 %196, 1
  %200 = and i1 %198, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %195
  %202 = getelementptr inbounds nuw i8, ptr %5, i64 368
  %203 = load i32, ptr %202, align 4, !tbaa !72
  %204 = zext nneg i32 %203 to i64
  %205 = shl nuw i64 1, %204
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %209 = load ptr, ptr %208, align 8, !tbaa !168
  %210 = getelementptr inbounds nuw i8, ptr %5, i64 216
  %211 = load ptr, ptr %210, align 8, !tbaa !272
  br label %285

212:                                              ; preds = %195
  %213 = getelementptr inbounds nuw i8, ptr %5, i64 364
  %214 = load i32, ptr %213, align 4, !tbaa !71
  %215 = zext nneg i32 %214 to i64
  %216 = shl nuw i64 1, %215
  %217 = icmp ult i32 %197, -2
  %218 = getelementptr inbounds nuw i8, ptr %5, i64 368
  %219 = load i32, ptr %218, align 4, !tbaa !72
  %220 = zext nneg i32 %219 to i64
  %221 = shl nuw i64 1, %220
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %225 = load ptr, ptr %224, align 8, !tbaa !168
  %226 = getelementptr inbounds nuw i8, ptr %5, i64 216
  %227 = load ptr, ptr %226, align 8, !tbaa !272
  br i1 %217, label %285, label %228

228:                                              ; preds = %212, %184
  %229 = phi ptr [ %194, %184 ], [ %227, %212 ]
  %230 = phi ptr [ %192, %184 ], [ %225, %212 ]
  %231 = phi ptr [ %190, %184 ], [ %223, %212 ]
  %232 = phi ptr [ %189, %184 ], [ %222, %212 ]
  %233 = phi i64 [ %188, %184 ], [ %221, %212 ]
  %234 = phi i64 [ 0, %184 ], [ %216, %212 ]
  %235 = icmp ult i64 %233, 8
  %236 = ptrtoaddr ptr %229 to i64
  %237 = ptrtoaddr ptr %230 to i64
  %238 = sub i64 %237, %236
  %239 = icmp ult i64 %238, 32
  %240 = select i1 %235, i1 true, i1 %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %228
  %242 = and i64 %233, 3
  %243 = icmp ult i64 %233, 4
  br i1 %243, label %296, label %244

244:                                              ; preds = %241
  %245 = and i64 %233, -4
  br label %260

246:                                              ; preds = %228
  %247 = and i64 %233, -8
  br label %248

248:                                              ; preds = %248, %246
  %249 = phi i64 [ 0, %246 ], [ %258, %248 ]
  %250 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %249
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 16
  %252 = load <4 x i32>, ptr %250, align 4, !tbaa !4
  %253 = load <4 x i32>, ptr %251, align 4, !tbaa !4
  %254 = lshr <4 x i32> %252, splat (i32 8)
  %255 = lshr <4 x i32> %253, splat (i32 8)
  %256 = getelementptr inbounds nuw [4 x i8], ptr %230, i64 %249
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 16
  store <4 x i32> %254, ptr %256, align 4, !tbaa !4
  store <4 x i32> %255, ptr %257, align 4, !tbaa !4
  %258 = add nuw i64 %249, 8
  %259 = icmp eq i64 %258, %247
  br i1 %259, label %309, label %248, !llvm.loop !273

260:                                              ; preds = %260, %244
  %261 = phi i64 [ 0, %244 ], [ %282, %260 ]
  %262 = phi i64 [ 0, %244 ], [ %283, %260 ]
  %263 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %261
  %264 = load i32, ptr %263, align 4, !tbaa !4
  %265 = lshr i32 %264, 8
  %266 = getelementptr inbounds nuw [4 x i8], ptr %230, i64 %261
  store i32 %265, ptr %266, align 4, !tbaa !4
  %267 = or disjoint i64 %261, 1
  %268 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !4
  %270 = lshr i32 %269, 8
  %271 = getelementptr inbounds nuw [4 x i8], ptr %230, i64 %267
  store i32 %270, ptr %271, align 4, !tbaa !4
  %272 = or disjoint i64 %261, 2
  %273 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %272
  %274 = load i32, ptr %273, align 4, !tbaa !4
  %275 = lshr i32 %274, 8
  %276 = getelementptr inbounds nuw [4 x i8], ptr %230, i64 %272
  store i32 %275, ptr %276, align 4, !tbaa !4
  %277 = or disjoint i64 %261, 3
  %278 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !4
  %280 = lshr i32 %279, 8
  %281 = getelementptr inbounds nuw [4 x i8], ptr %230, i64 %277
  store i32 %280, ptr %281, align 4, !tbaa !4
  %282 = add nuw i64 %261, 4
  %283 = add i64 %262, 4
  %284 = icmp eq i64 %283, %245
  br i1 %284, label %294, label %260, !llvm.loop !274

285:                                              ; preds = %212, %201
  %286 = phi ptr [ %211, %201 ], [ %227, %212 ]
  %287 = phi ptr [ %209, %201 ], [ %225, %212 ]
  %288 = phi ptr [ %207, %201 ], [ %223, %212 ]
  %289 = phi ptr [ %206, %201 ], [ %222, %212 ]
  %290 = phi i64 [ %205, %201 ], [ %221, %212 ]
  %291 = phi i64 [ %204, %201 ], [ %220, %212 ]
  %292 = phi i64 [ 0, %201 ], [ %216, %212 ]
  %293 = shl i64 4, %291
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %287, ptr readonly align 4 %286, i64 %293, i1 false)
  br label %309

294:                                              ; preds = %260
  %295 = icmp eq i64 %242, 0
  br i1 %295, label %309, label %296

296:                                              ; preds = %294, %241
  %297 = phi i64 [ 0, %241 ], [ %282, %294 ]
  %298 = icmp ne i64 %242, 0
  tail call void @llvm.assume(i1 %298)
  br label %299

299:                                              ; preds = %299, %296
  %300 = phi i64 [ %306, %299 ], [ %297, %296 ]
  %301 = phi i64 [ %307, %299 ], [ 0, %296 ]
  %302 = getelementptr inbounds nuw [4 x i8], ptr %229, i64 %300
  %303 = load i32, ptr %302, align 4, !tbaa !4
  %304 = lshr i32 %303, 8
  %305 = getelementptr inbounds nuw [4 x i8], ptr %230, i64 %300
  store i32 %304, ptr %305, align 4, !tbaa !4
  %306 = add nuw i64 %300, 1
  %307 = add i64 %301, 1
  %308 = icmp eq i64 %307, %242
  br i1 %308, label %309, label %299, !llvm.loop !275

309:                                              ; preds = %248, %294, %299, %285
  %310 = phi ptr [ %288, %285 ], [ %231, %294 ], [ %231, %299 ], [ %231, %248 ]
  %311 = phi ptr [ %289, %285 ], [ %232, %294 ], [ %232, %299 ], [ %232, %248 ]
  %312 = phi i64 [ %290, %285 ], [ %233, %294 ], [ %233, %299 ], [ %233, %248 ]
  %313 = phi i64 [ %292, %285 ], [ %234, %294 ], [ %234, %299 ], [ %234, %248 ]
  %314 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %315 = load i32, ptr %314, align 4, !tbaa !164
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %400, label %317

317:                                              ; preds = %309
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %319 = load i32, ptr %318, align 8, !tbaa !161
  %320 = add i32 %315, -3
  %321 = icmp ult i32 %320, 3
  %322 = icmp eq i32 %319, 1
  %323 = and i1 %321, %322
  br i1 %323, label %400, label %324

324:                                              ; preds = %317
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %326 = load ptr, ptr %325, align 8, !tbaa !169
  %327 = ptrtoaddr ptr %326 to i64
  %328 = getelementptr inbounds nuw i8, ptr %5, i64 232
  %329 = load ptr, ptr %328, align 8, !tbaa !277
  %330 = ptrtoaddr ptr %329 to i64
  %331 = load i32, ptr %44, align 8, !tbaa !75
  %332 = add i32 %331, -3
  %333 = icmp ult i32 %332, -2
  br i1 %333, label %398, label %334

334:                                              ; preds = %324
  %335 = icmp eq i64 %313, 0
  br i1 %335, label %400, label %336

336:                                              ; preds = %334
  %337 = icmp ult i64 %313, 8
  %338 = sub i64 %327, %330
  %339 = icmp ult i64 %338, 32
  %340 = select i1 %337, i1 true, i1 %339
  br i1 %340, label %357, label %341

341:                                              ; preds = %336
  %342 = and i64 %313, -8
  br label %343

343:                                              ; preds = %343, %341
  %344 = phi i64 [ 0, %341 ], [ %353, %343 ]
  %345 = getelementptr inbounds nuw [4 x i8], ptr %329, i64 %344
  %346 = getelementptr inbounds nuw i8, ptr %345, i64 16
  %347 = load <4 x i32>, ptr %345, align 4, !tbaa !4
  %348 = load <4 x i32>, ptr %346, align 4, !tbaa !4
  %349 = lshr <4 x i32> %347, splat (i32 8)
  %350 = lshr <4 x i32> %348, splat (i32 8)
  %351 = getelementptr inbounds nuw [4 x i8], ptr %326, i64 %344
  %352 = getelementptr inbounds nuw i8, ptr %351, i64 16
  store <4 x i32> %349, ptr %351, align 4, !tbaa !4
  store <4 x i32> %350, ptr %352, align 4, !tbaa !4
  %353 = add nuw i64 %344, 8
  %354 = icmp eq i64 %353, %342
  br i1 %354, label %355, label %343, !llvm.loop !278

355:                                              ; preds = %343
  %356 = icmp eq i64 %313, %342
  br i1 %356, label %400, label %357

357:                                              ; preds = %336, %355
  %358 = phi i64 [ 0, %336 ], [ %342, %355 ]
  %359 = and i64 %313, 3
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %371, label %361

361:                                              ; preds = %357, %361
  %362 = phi i64 [ %368, %361 ], [ %358, %357 ]
  %363 = phi i64 [ %369, %361 ], [ 0, %357 ]
  %364 = getelementptr inbounds nuw [4 x i8], ptr %329, i64 %362
  %365 = load i32, ptr %364, align 4, !tbaa !4
  %366 = lshr i32 %365, 8
  %367 = getelementptr inbounds nuw [4 x i8], ptr %326, i64 %362
  store i32 %366, ptr %367, align 4, !tbaa !4
  %368 = add nuw i64 %362, 1
  %369 = add i64 %363, 1
  %370 = icmp eq i64 %369, %359
  br i1 %370, label %371, label %361, !llvm.loop !279

371:                                              ; preds = %361, %357
  %372 = phi i64 [ %358, %357 ], [ %368, %361 ]
  %373 = sub i64 %358, %313
  %374 = icmp ugt i64 %373, -4
  br i1 %374, label %400, label %375

375:                                              ; preds = %371, %375
  %376 = phi i64 [ %396, %375 ], [ %372, %371 ]
  %377 = getelementptr inbounds nuw [4 x i8], ptr %329, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !4
  %379 = lshr i32 %378, 8
  %380 = getelementptr inbounds nuw [4 x i8], ptr %326, i64 %376
  store i32 %379, ptr %380, align 4, !tbaa !4
  %381 = add nuw i64 %376, 1
  %382 = getelementptr inbounds nuw [4 x i8], ptr %329, i64 %381
  %383 = load i32, ptr %382, align 4, !tbaa !4
  %384 = lshr i32 %383, 8
  %385 = getelementptr inbounds nuw [4 x i8], ptr %326, i64 %381
  store i32 %384, ptr %385, align 4, !tbaa !4
  %386 = add nuw i64 %376, 2
  %387 = getelementptr inbounds nuw [4 x i8], ptr %329, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !4
  %389 = lshr i32 %388, 8
  %390 = getelementptr inbounds nuw [4 x i8], ptr %326, i64 %386
  store i32 %389, ptr %390, align 4, !tbaa !4
  %391 = add nuw i64 %376, 3
  %392 = getelementptr inbounds nuw [4 x i8], ptr %329, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !4
  %394 = lshr i32 %393, 8
  %395 = getelementptr inbounds nuw [4 x i8], ptr %326, i64 %391
  store i32 %394, ptr %395, align 4, !tbaa !4
  %396 = add nuw i64 %376, 4
  %397 = icmp eq i64 %396, %313
  br i1 %397, label %400, label %375, !llvm.loop !280

398:                                              ; preds = %324
  %399 = shl i64 %313, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %326, ptr readonly align 4 %329, i64 %399, i1 false)
  br label %400

400:                                              ; preds = %371, %375, %355, %398, %334, %317, %309
  %401 = load i32, ptr %44, align 4, !tbaa !75
  %402 = load i32, ptr %173, align 8, !tbaa !262
  %403 = add i32 %401, -6
  %404 = icmp ult i32 %403, -3
  %405 = icmp ne i32 %402, 1
  %406 = or i1 %404, %405
  br i1 %406, label %415, label %407

407:                                              ; preds = %400
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %409 = load ptr, ptr %408, align 8, !tbaa !281
  %410 = getelementptr inbounds nuw i8, ptr %5, i64 160
  %411 = load ptr, ptr %410, align 8, !tbaa !282
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %409, ptr noundef nonnull align 1 dereferenceable(1) %411, i64 %312, i1 false)
  %412 = getelementptr inbounds nuw i8, ptr %5, i64 200
  %413 = load i64, ptr %412, align 8, !tbaa !283
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 3336
  store i64 %413, ptr %414, align 8, !tbaa !284
  br label %415

415:                                              ; preds = %407, %400
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 3288
  %417 = load i32, ptr %416, align 8, !tbaa !167
  %418 = icmp eq i32 %417, 0
  %419 = zext nneg i32 %417 to i64
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %421 = load ptr, ptr %420, align 8, !tbaa !170
  %422 = shl i64 4, %419
  %423 = select i1 %418, i64 0, i64 %422
  tail call void @llvm.memset.p0.i64(ptr align 4 %421, i8 0, i64 %423, i1 false)
  %424 = load ptr, ptr %181, align 8, !tbaa !54
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 728
  %426 = load ptr, ptr %425, align 8, !tbaa !53
  %427 = icmp ult ptr %424, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %415
  store ptr %426, ptr %181, align 8, !tbaa !54
  br label %429

429:                                              ; preds = %428, %415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %310, ptr noundef nonnull readonly align 8 dereferenceable(40) %169, i64 40, i1 false), !tbaa.struct !171
  %430 = getelementptr inbounds nuw i8, ptr %5, i64 144
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %432 = load <2 x i32>, ptr %430, align 8, !tbaa !4
  store <2 x i32> %432, ptr %431, align 8, !tbaa !4
  %433 = getelementptr inbounds nuw i8, ptr %5, i64 6064
  %434 = load i32, ptr %433, align 8, !tbaa !271
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %434, ptr %435, align 8, !tbaa !173
  %436 = load i64, ptr %25, align 8, !tbaa !257
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %436, ptr %437, align 8, !tbaa !174
  %438 = load ptr, ptr %311, align 8, !tbaa !55
  %439 = getelementptr inbounds nuw i8, ptr %5, i64 408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %438, ptr noundef nonnull readonly align 8 dereferenceable(5632) %439, i64 5632, i1 false)
  br label %440

440:                                              ; preds = %429, %168
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %479

441:                                              ; preds = %24, %35, %39
  %442 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %17, i32 noundef 0, i32 noundef %8)
  %443 = icmp ult i64 %442, -119
  br i1 %443, label %447, label %479

444:                                              ; preds = %21
  %445 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %17, i32 noundef 0, i32 noundef %8)
  %446 = icmp ult i64 %445, -119
  br i1 %446, label %462, label %479

447:                                              ; preds = %441
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %449 = load ptr, ptr %448, align 8, !tbaa !55
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %454 = load ptr, ptr %5, align 8, !tbaa !285
  %455 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %456 = load i64, ptr %455, align 8, !tbaa !257
  %457 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %458 = load i32, ptr %457, align 8, !tbaa !286
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %460 = load ptr, ptr %459, align 8, !tbaa !57
  %461 = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %449, ptr noundef nonnull %450, ptr noundef nonnull %451, ptr noundef nonnull %452, ptr noundef nonnull %453, ptr noundef %454, i64 noundef %456, i32 noundef %458, i32 noundef %4, i32 noundef 0, ptr noundef %460)
  br label %472

462:                                              ; preds = %444
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %464 = load ptr, ptr %463, align 8, !tbaa !55
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %470 = load ptr, ptr %469, align 8, !tbaa !57
  %471 = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %464, ptr noundef nonnull %465, ptr noundef nonnull %466, ptr noundef nonnull %467, ptr noundef nonnull %468, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef %470)
  br label %472

472:                                              ; preds = %462, %447
  %473 = phi i64 [ %461, %447 ], [ %471, %462 ]
  %474 = icmp ult i64 %473, -119
  br i1 %474, label %475, label %479

475:                                              ; preds = %472
  %476 = trunc nuw i64 %473 to i32
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %476, ptr %477, align 8, !tbaa !173
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %17, ptr %478, align 8, !tbaa !174
  br label %479

479:                                              ; preds = %444, %475, %472, %440, %167, %441
  %480 = phi i64 [ %176, %440 ], [ %442, %441 ], [ %130, %167 ], [ %473, %472 ], [ 0, %475 ], [ %445, %444 ]
  ret i64 %480
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !76
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull readonly align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !77
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 160
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %12 = load i32, ptr %11, align 8, !tbaa !75
  %13 = add i32 %12, -6
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  store i32 2, ptr %10, align 8, !tbaa !78
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 140
  %17 = icmp ugt i32 %12, 6
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  store i32 2, ptr %16, align 4, !tbaa !79
  br label %30

19:                                               ; preds = %5
  %20 = load i32, ptr %3, align 8, !tbaa !70
  %21 = icmp ugt i32 %20, 14
  %22 = select i1 %21, i32 1, i32 2
  store i32 %22, ptr %10, align 8, !tbaa !78
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %23, align 4, !tbaa !79
  br label %30

24:                                               ; preds = %15
  %25 = load i32, ptr %3, align 8, !tbaa !70
  %26 = icmp ugt i32 %25, 16
  %27 = select i1 %26, i32 1, i32 2
  store i32 %27, ptr %16, align 4, !tbaa !79
  %28 = icmp ugt i32 %25, 26
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %19, %18, %24
  %31 = phi i32 [ %29, %24 ], [ 2, %19 ], [ 2, %18 ]
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %31, ptr %32, align 8, !tbaa !80
  %33 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 131072, ptr %33, align 8, !tbaa !81
  %34 = getelementptr inbounds nuw i8, ptr %6, i64 216
  store i32 2, ptr %34, align 8, !tbaa !82
  %35 = load <4 x i32>, ptr %7, align 4, !tbaa !4
  %36 = freeze <4 x i32> %35
  %37 = add <4 x i32> %36, <i32 -32, i32 -31, i32 -31, i32 -31>
  %38 = icmp ult <4 x i32> %37, <i32 -22, i32 -25, i32 -25, i32 -30>
  %39 = bitcast <4 x i1> %38 to i4
  %40 = icmp eq i4 %39, 0
  br i1 %40, label %41, label %103

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
  br i1 %54, label %55, label %103

55:                                               ; preds = %41
  %56 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #34
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %58, %57 ], [ 0, %55 ]
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %60, ptr %61, align 8, !tbaa !258
  %62 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, i64 noundef %4, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  %63 = icmp ult i64 %62, -119
  br i1 %63, label %64, label %103

64:                                               ; preds = %59
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %66 = load ptr, ptr %65, align 8, !tbaa !55
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  %73 = icmp eq ptr %1, null
  %74 = icmp ult i64 %2, 8
  %75 = or i1 %73, %74
  br i1 %75, label %99, label %76

76:                                               ; preds = %64
  %77 = getelementptr inbounds nuw i8, ptr %66, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %77, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %78 = getelementptr inbounds nuw i8, ptr %66, i64 2056
  store i32 0, ptr %78, align 8, !tbaa !155
  %79 = getelementptr inbounds nuw i8, ptr %66, i64 5604
  store i32 0, ptr %79, align 4, !tbaa !156
  %80 = getelementptr inbounds nuw i8, ptr %66, i64 5608
  store i32 0, ptr %80, align 8, !tbaa !157
  %81 = getelementptr inbounds nuw i8, ptr %66, i64 5612
  store i32 0, ptr %81, align 4, !tbaa !158
  %82 = load i32, ptr %1, align 1, !tbaa !4
  %83 = icmp eq i32 %82, -332356553
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef nonnull %70, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  br label %99

85:                                               ; preds = %76
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %87 = load i32, ptr %86, align 8, !tbaa !94
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %91 = load i32, ptr %90, align 1, !tbaa !4
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i32 [ %91, %89 ], [ 0, %85 ]
  %94 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %66, ptr noundef %72, ptr noundef nonnull %1, i64 noundef range(i64 8, 0) %2)
  %95 = icmp ult i64 %94, -119
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 %94
  %98 = sub nsw i64 %2, %94
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %67, ptr noundef null, ptr noundef nonnull %69, ptr noundef nonnull %70, ptr noundef %97, i64 noundef %98, i32 noundef 0, i32 noundef range(i32 0, 2) 0)
  br label %99

99:                                               ; preds = %84, %96, %64
  %100 = phi i32 [ 0, %64 ], [ %93, %96 ], [ 0, %84 ]
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %100, ptr %101, align 8, !tbaa !173
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %2, ptr %102, align 8, !tbaa !174
  br label %103

103:                                              ; preds = %99, %59, %92, %30, %41
  %104 = phi i64 [ -42, %30 ], [ -42, %41 ], [ %62, %59 ], [ 0, %99 ], [ %94, %92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret i64 %104
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call fastcc i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.ZSTD_compressionParameters, align 4
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %7 = alloca { i32, i32, i32, i32, i32 }, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !287
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %5, i32 noundef %3, i64 noundef -1, i64 noundef %2, i32 noundef 0), !noalias !287
  %8 = load i32, ptr %5, align 4, !tbaa !4
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %9, i64 20, i1 false), !tbaa.struct !131
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %11 = load i32, ptr %10, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !287
  %12 = icmp eq i32 %3, 0
  %13 = select i1 %12, i32 3, i32 %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %8, ptr %14, align 4, !tbaa !4
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %15, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !131
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %11, ptr %16, align 4, !tbaa !4
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 1, ptr %17, align 8, !tbaa !4
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %13, ptr %18, align 4, !tbaa !44
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 160
  %20 = add i32 %11, -6
  %21 = icmp ult i32 %20, -3
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  store i32 2, ptr %19, align 8, !tbaa !78
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 140
  %24 = icmp ugt i32 %11, 6
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  store i32 2, ptr %23, align 4, !tbaa !79
  br label %35

26:                                               ; preds = %4
  %27 = icmp ugt i32 %8, 14
  %28 = select i1 %27, i32 1, i32 2
  store i32 %28, ptr %19, align 8, !tbaa !78
  %29 = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %29, align 4, !tbaa !79
  br label %35

30:                                               ; preds = %22
  %31 = icmp ugt i32 %8, 16
  %32 = select i1 %31, i32 1, i32 2
  store i32 %32, ptr %23, align 4, !tbaa !79
  %33 = icmp ugt i32 %8, 26
  %34 = select i1 %33, i32 1, i32 2
  br label %35

35:                                               ; preds = %26, %25, %30
  %36 = phi i32 [ %34, %30 ], [ 2, %26 ], [ 2, %25 ]
  %37 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %36, ptr %37, align 8, !tbaa !80
  %38 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 131072, ptr %38, align 8, !tbaa !81
  %39 = getelementptr inbounds nuw i8, ptr %6, i64 216
  %40 = icmp slt i32 %13, 10
  %41 = select i1 %40, i32 2, i32 1
  store i32 %41, ptr %39, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %42 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #34
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi i64 [ %44, %43 ], [ 0, %35 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %46, ptr %47, align 8, !tbaa !258
  %48 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, i64 noundef -1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  %49 = icmp ult i64 %48, -119
  br i1 %49, label %50, label %89

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %52 = load ptr, ptr %51, align 8, !tbaa !55
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = icmp eq ptr %1, null
  %60 = icmp ult i64 %2, 8
  %61 = or i1 %59, %60
  br i1 %61, label %85, label %62

62:                                               ; preds = %50
  %63 = getelementptr inbounds nuw i8, ptr %52, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %63, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %64 = getelementptr inbounds nuw i8, ptr %52, i64 2056
  store i32 0, ptr %64, align 8, !tbaa !155
  %65 = getelementptr inbounds nuw i8, ptr %52, i64 5604
  store i32 0, ptr %65, align 4, !tbaa !156
  %66 = getelementptr inbounds nuw i8, ptr %52, i64 5608
  store i32 0, ptr %66, align 8, !tbaa !157
  %67 = getelementptr inbounds nuw i8, ptr %52, i64 5612
  store i32 0, ptr %67, align 4, !tbaa !158
  %68 = load i32, ptr %1, align 1, !tbaa !4
  %69 = icmp eq i32 %68, -332356553
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %53, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  br label %85

71:                                               ; preds = %62
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %73 = load i32, ptr %72, align 8, !tbaa !94
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %77 = load i32, ptr %76, align 1, !tbaa !4
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i32 [ %77, %75 ], [ 0, %71 ]
  %80 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %52, ptr noundef %58, ptr noundef nonnull %1, i64 noundef range(i64 8, 0) %2)
  %81 = icmp ult i64 %80, -119
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 %80
  %84 = sub nsw i64 %2, %80
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %53, ptr noundef null, ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef %83, i64 noundef %84, i32 noundef 0, i32 noundef range(i32 0, 2) 0)
  br label %85

85:                                               ; preds = %70, %82, %50
  %86 = phi i32 [ 0, %50 ], [ %79, %82 ], [ 0, %70 ]
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %86, ptr %87, align 8, !tbaa !173
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %2, ptr %88, align 8, !tbaa !174
  br label %89

89:                                               ; preds = %78, %45, %85
  %90 = phi i64 [ %48, %45 ], [ 0, %85 ], [ %80, %78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret i64 %90
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @ZSTD_CCtx_trace(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_Trace, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %5 = load i64, ptr %4, align 8, !tbaa !258
  %6 = icmp ne i64 %5, 0
  %7 = icmp ne ptr @ZSTD_trace_compress_end, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %11 = load i64, ptr %10, align 8, !tbaa !290
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %15 = load i64, ptr %14, align 8, !tbaa !291
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %19 = load i32, ptr %18, align 4, !tbaa !292
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %17, %13, %9
  %23 = phi i32 [ 1, %13 ], [ 1, %9 ], [ %21, %17 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, i8 0, i64 56, i1 false)
  store i32 10600, ptr %3, align 8, !tbaa !293
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %23, ptr %25, align 4, !tbaa !298
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %27 = load i32, ptr %26, align 8, !tbaa !173
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %27, ptr %28, align 8, !tbaa !299
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %30 = load i64, ptr %29, align 8, !tbaa !174
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %30, ptr %31, align 8, !tbaa !300
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %33 = load i64, ptr %32, align 8, !tbaa !146
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %33, ptr %34, align 8, !tbaa !301
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %36 = load i64, ptr %35, align 8, !tbaa !150
  %37 = add i64 %36, %1
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %37, ptr %38, align 8, !tbaa !302
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %39, ptr %40, align 8, !tbaa !303
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %41, align 8, !tbaa !304
  call void @ZSTD_trace_compress_end(i64 noundef %5, ptr noundef nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %42

42:                                               ; preds = %22, %2
  store i64 0, ptr %4, align 8, !tbaa !258
  ret void
}

declare extern_weak void @ZSTD_trace_compress_end(i64 noundef, ptr noundef) #13

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_Trace, align 8
  %7 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 1)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %118

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %11 = sub i64 %2, %7
  %12 = load i32, ptr %0, align 8, !tbaa !159
  switch i32 %12, label %44 [
    i32 0, label %118
    i32 1, label %13
    i32 3, label %50
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %16 = load i32, ptr %15, align 4, !tbaa !93
  %17 = icmp sgt i32 %16, 0
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %19 = load i32, ptr %18, align 4, !tbaa !86
  %20 = load i32, ptr %14, align 8, !tbaa !45
  %21 = icmp eq i32 %20, 0
  %22 = trunc i32 %19 to i8
  %23 = shl i8 %22, 3
  %24 = add i8 %23, -80
  %25 = select i1 %17, i8 4, i8 0
  %26 = select i1 %21, i8 0, i8 32
  %27 = or disjoint i8 %26, %25
  %28 = icmp ult i64 %11, 18
  br i1 %28, label %118, label %29

29:                                               ; preds = %13
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %31 = load i32, ptr %30, align 8, !tbaa !85
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -47205080, ptr %10, align 1, !tbaa !4
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i64 [ 4, %33 ], [ 0, %29 ]
  %36 = getelementptr inbounds nuw i8, ptr %10, i64 %35
  store i8 %27, ptr %36, align 1, !tbaa !185
  %37 = select i1 %21, i8 %24, i8 0
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 1
  store i8 %37, ptr %38, align 1, !tbaa !185
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 2
  store i32 2, ptr %0, align 8, !tbaa !159
  store i16 1, ptr %39, align 1, !tbaa !222
  %40 = getelementptr inbounds nuw i8, ptr %36, i64 4
  store i8 0, ptr %40, align 1, !tbaa !185
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 5
  %42 = add i64 %11, -5
  %43 = sub nuw i64 %42, %35
  br label %50

44:                                               ; preds = %9
  %45 = icmp ugt i64 %11, 2
  br i1 %45, label %46, label %118

46:                                               ; preds = %44
  store i16 1, ptr %10, align 1, !tbaa !222
  %47 = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i8 0, ptr %47, align 1, !tbaa !185
  %48 = getelementptr inbounds nuw i8, ptr %10, i64 3
  %49 = add i64 %11, -3
  br label %50

50:                                               ; preds = %46, %34, %9
  %51 = phi ptr [ %41, %34 ], [ %10, %9 ], [ %48, %46 ]
  %52 = phi i64 [ %43, %34 ], [ %11, %9 ], [ %49, %46 ]
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i32, ptr %53, align 4, !tbaa !236
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = icmp ugt i64 %52, 3
  br i1 %57, label %58, label %118

58:                                               ; preds = %56
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %60 = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %59) #39
  %61 = trunc i64 %60 to i32
  store i32 %61, ptr %51, align 1, !tbaa !4
  %62 = getelementptr inbounds nuw i8, ptr %51, i64 4
  br label %63

63:                                               ; preds = %50, %58
  %64 = phi ptr [ %62, %58 ], [ %51, %50 ]
  store i32 0, ptr %0, align 8, !tbaa !159
  %65 = ptrtoint ptr %64 to i64
  %66 = ptrtoint ptr %10 to i64
  %67 = sub i64 %65, %66
  %68 = icmp ult i64 %67, -119
  br i1 %68, label %69, label %118

69:                                               ; preds = %63
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %71 = load i64, ptr %70, align 8, !tbaa !117
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %75 = load i64, ptr %74, align 8, !tbaa !146
  %76 = add i64 %75, 1
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %73, %69
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %80 = load i64, ptr %79, align 8, !tbaa !258
  %81 = icmp ne i64 %80, 0
  %82 = icmp ne ptr @ZSTD_trace_compress_end, null
  %83 = and i1 %82, %81
  br i1 %83, label %84, label %116

84:                                               ; preds = %78
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %86 = load i64, ptr %85, align 8, !tbaa !290
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %90 = load i64, ptr %89, align 8, !tbaa !291
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %94 = load i32, ptr %93, align 4, !tbaa !292
  %95 = icmp sgt i32 %94, 0
  %96 = zext i1 %95 to i32
  br label %97

97:                                               ; preds = %92, %88, %84
  %98 = phi i32 [ 1, %88 ], [ 1, %84 ], [ %96, %92 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %99 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %99, i8 0, i64 56, i1 false)
  store i32 10600, ptr %6, align 8, !tbaa !293
  %100 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %98, ptr %100, align 4, !tbaa !298
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %102 = load i32, ptr %101, align 8, !tbaa !173
  store i32 %102, ptr %99, align 8, !tbaa !299
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %104 = load i64, ptr %103, align 8, !tbaa !174
  %105 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %104, ptr %105, align 8, !tbaa !300
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %107 = load i64, ptr %106, align 8, !tbaa !146
  %108 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %107, ptr %108, align 8, !tbaa !301
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %110 = load i64, ptr %109, align 8, !tbaa !150
  %111 = add i64 %110, %67
  %112 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %111, ptr %112, align 8, !tbaa !302
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %114 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %113, ptr %114, align 8, !tbaa !303
  %115 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %0, ptr %115, align 8, !tbaa !304
  call void @ZSTD_trace_compress_end(i64 noundef %80, ptr noundef nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %116

116:                                              ; preds = %78, %97
  store i64 0, ptr %79, align 8, !tbaa !258
  %117 = add i64 %67, %7
  br label %118

118:                                              ; preds = %13, %44, %56, %9, %73, %63, %5, %116
  %119 = phi i64 [ %7, %5 ], [ %117, %116 ], [ %67, %63 ], [ -72, %73 ], [ -70, %13 ], [ -70, %44 ], [ -70, %56 ], [ -60, %9 ]
  ret i64 %119
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %7) local_unnamed_addr #2 {
  %9 = load i32, ptr %7, align 8, !tbaa !70
  %10 = add i32 %9, -32
  %11 = icmp ult i32 %10, -22
  br i1 %11, label %68, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !71
  %15 = add i32 %14, -31
  %16 = icmp ult i32 %15, -25
  br i1 %16, label %68, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %19 = load i32, ptr %18, align 8, !tbaa !72
  %20 = add i32 %19, -31
  %21 = icmp ult i32 %20, -25
  br i1 %21, label %68, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !73
  %25 = add i32 %24, -31
  %26 = icmp ult i32 %25, -30
  br i1 %26, label %68, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %29 = load i32, ptr %28, align 8, !tbaa !74
  %30 = add i32 %29, -8
  %31 = icmp ult i32 %30, -5
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 131072
  %35 = select i1 %31, i1 true, i1 %34
  br i1 %35, label %68, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %38 = load i32, ptr %37, align 8, !tbaa !75
  %39 = add i32 %38, -1
  %40 = icmp ult i32 %39, 9
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %42, i8 0, i64 224, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %43, ptr noundef nonnull readonly align 8 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !76
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %44, ptr noundef nonnull readonly align 4 dereferenceable(12) %45, i64 12, i1 false), !tbaa.struct !77
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %47 = add nsw i32 %38, -6
  %48 = icmp ult i32 %47, -3
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  store i32 2, ptr %46, align 8, !tbaa !78
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 604
  %51 = icmp samesign ugt i32 %38, 6
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  store i32 2, ptr %50, align 4, !tbaa !79
  br label %62

53:                                               ; preds = %41
  %54 = icmp samesign ugt i32 %9, 14
  %55 = select i1 %54, i32 1, i32 2
  store i32 %55, ptr %46, align 8, !tbaa !78
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 2, ptr %56, align 4, !tbaa !79
  br label %62

57:                                               ; preds = %49
  %58 = icmp samesign ugt i32 %9, 16
  %59 = select i1 %58, i32 1, i32 2
  store i32 %59, ptr %50, align 4, !tbaa !79
  %60 = icmp samesign ugt i32 %9, 26
  %61 = select i1 %60, i32 1, i32 2
  br label %62

62:                                               ; preds = %53, %52, %57
  %63 = phi i32 [ %61, %57 ], [ 2, %53 ], [ 2, %52 ]
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %63, ptr %64, align 8, !tbaa !80
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %65, align 8, !tbaa !81
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 2, ptr %66, align 8, !tbaa !82
  %67 = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %42)
  br label %68

68:                                               ; preds = %12, %17, %22, %27, %8, %36, %62
  %69 = phi i64 [ %67, %62 ], [ -42, %36 ], [ -42, %8 ], [ -42, %27 ], [ -42, %22 ], [ -42, %17 ], [ -42, %12 ]
  ret i64 %69
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef readonly captures(none) %7) local_unnamed_addr #2 {
  %9 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #34
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %11, %10 ], [ 0, %8 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %13, ptr %14, align 8, !tbaa !258
  %15 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef readonly %7, i64 noundef %4, i64 noundef %6, i32 noundef 0, i32 noundef 0)
  %16 = icmp ult i64 %15, -119
  br i1 %16, label %17, label %57

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %5, null
  %27 = icmp ult i64 %6, 8
  %28 = or i1 %26, %27
  br i1 %28, label %52, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds nuw i8, ptr %19, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %30, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 2056
  store i32 0, ptr %31, align 8, !tbaa !155
  %32 = getelementptr inbounds nuw i8, ptr %19, i64 5604
  store i32 0, ptr %32, align 4, !tbaa !156
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 5608
  store i32 0, ptr %33, align 8, !tbaa !157
  %34 = getelementptr inbounds nuw i8, ptr %19, i64 5612
  store i32 0, ptr %34, align 4, !tbaa !158
  %35 = load i32, ptr %5, align 1, !tbaa !4
  %36 = icmp eq i32 %35, -332356553
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef %5, i64 noundef %6, i32 noundef 0, i32 noundef 0)
  br label %52

38:                                               ; preds = %29
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %40 = load i32, ptr %39, align 8, !tbaa !94
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %44 = load i32, ptr %43, align 1, !tbaa !4
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %44, %42 ], [ 0, %38 ]
  %47 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %19, ptr noundef %25, ptr noundef nonnull %5, i64 noundef range(i64 8, 0) %6)
  %48 = icmp ult i64 %47, -119
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %5, i64 %47
  %51 = sub nsw i64 %6, %47
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef %50, i64 noundef %51, i32 noundef 0, i32 noundef range(i32 0, 2) 0)
  br label %52

52:                                               ; preds = %37, %49, %17
  %53 = phi i32 [ 0, %17 ], [ %46, %49 ], [ 0, %37 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %53, ptr %54, align 8, !tbaa !173
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %6, ptr %55, align 8, !tbaa !174
  %56 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %57

57:                                               ; preds = %45, %12, %52
  %58 = phi i64 [ %56, %52 ], [ %47, %45 ], [ %15, %12 ]
  ret i64 %58
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingDict(ptr noundef initializes((464, 688)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = alloca %struct.ZSTD_compressionParameters, align 4
  %10 = alloca { i32, i32, i32, i32, i32 }, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %11 = icmp eq ptr %5, null
  %12 = select i1 %11, i64 0, i64 %6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34, !noalias !305
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %9, i32 noundef %7, i64 noundef %4, i64 noundef %12, i32 noundef 0), !noalias !305
  %13 = load i32, ptr %9, align 4, !tbaa !4
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) %14, i64 20, i1 false), !tbaa.struct !131
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %16 = load i32, ptr %15, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34, !noalias !305
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %18 = icmp eq i32 %7, 0
  %19 = select i1 %18, i32 3, i32 %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %17, i8 0, i64 224, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 %13, ptr %20, align 4, !tbaa !4
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %21, ptr noundef nonnull align 8 dereferenceable(20) %10, i64 20, i1 false), !tbaa.struct !131
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 %16, ptr %22, align 4, !tbaa !4
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 1, ptr %23, align 8, !tbaa !4
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 %19, ptr %24, align 4, !tbaa !44
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %26 = add i32 %16, -6
  %27 = icmp ult i32 %26, -3
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  store i32 2, ptr %25, align 8, !tbaa !78
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 604
  %30 = icmp ugt i32 %16, 6
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  store i32 2, ptr %29, align 4, !tbaa !79
  br label %41

32:                                               ; preds = %8
  %33 = icmp ugt i32 %13, 14
  %34 = select i1 %33, i32 1, i32 2
  store i32 %34, ptr %25, align 8, !tbaa !78
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 2, ptr %35, align 4, !tbaa !79
  br label %41

36:                                               ; preds = %28
  %37 = icmp ugt i32 %13, 16
  %38 = select i1 %37, i32 1, i32 2
  store i32 %38, ptr %29, align 4, !tbaa !79
  %39 = icmp ugt i32 %13, 26
  %40 = select i1 %39, i32 1, i32 2
  br label %41

41:                                               ; preds = %32, %31, %36
  %42 = phi i32 [ %40, %36 ], [ 2, %32 ], [ 2, %31 ]
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %42, ptr %43, align 8, !tbaa !80
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %44, align 8, !tbaa !81
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %46 = icmp slt i32 %19, 10
  %47 = select i1 %46, i32 2, i32 1
  store i32 %47, ptr %45, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %48 = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %17)
  ret i64 %48
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressCCtx(ptr noundef initializes((464, 688)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ZSTD_compressionParameters, align 4
  %8 = alloca { i32, i32, i32, i32, i32 }, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !308
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %7, i32 noundef %5, i64 noundef %4, i64 noundef 0, i32 noundef 0), !noalias !308
  %9 = load i32, ptr %7, align 4, !tbaa !4
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %10, i64 20, i1 false), !tbaa.struct !131
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %12 = load i32, ptr %11, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !308
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %14 = icmp eq i32 %5, 0
  %15 = select i1 %14, i32 3, i32 %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %13, i8 0, i64 224, i1 false)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 %9, ptr %16, align 4, !tbaa !4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !131
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 %12, ptr %18, align 4, !tbaa !4
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 1, ptr %19, align 8, !tbaa !4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 %15, ptr %20, align 4, !tbaa !44
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %22 = add i32 %12, -6
  %23 = icmp ult i32 %22, -3
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  store i32 2, ptr %21, align 8, !tbaa !78
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 604
  %26 = icmp ugt i32 %12, 6
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  store i32 2, ptr %25, align 4, !tbaa !79
  br label %37

28:                                               ; preds = %6
  %29 = icmp ugt i32 %9, 14
  %30 = select i1 %29, i32 1, i32 2
  store i32 %30, ptr %21, align 8, !tbaa !78
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 2, ptr %31, align 4, !tbaa !79
  br label %37

32:                                               ; preds = %24
  %33 = icmp ugt i32 %9, 16
  %34 = select i1 %33, i32 1, i32 2
  store i32 %34, ptr %25, align 4, !tbaa !79
  %35 = icmp ugt i32 %9, 26
  %36 = select i1 %35, i32 1, i32 2
  br label %37

37:                                               ; preds = %27, %28, %32
  %38 = phi i32 [ %36, %32 ], [ 2, %28 ], [ 2, %27 ]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %38, ptr %39, align 8, !tbaa !80
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %40, align 8, !tbaa !81
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %42 = icmp slt i32 %15, 10
  %43 = select i1 %42, i32 2, i32 1
  store i32 %43, ptr %41, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %44 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef nonnull %0) #34
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi i64 [ %46, %45 ], [ 0, %37 ]
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %48, ptr %49, align 8, !tbaa !258
  %50 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %13, i64 noundef %4, i64 noundef 0, i32 noundef 0, i32 noundef 0)
  %51 = icmp ult i64 %50, -119
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 0, ptr %53, align 8, !tbaa !173
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 0, ptr %54, align 8, !tbaa !174
  %55 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %56

56:                                               ; preds = %47, %52
  %57 = phi i64 [ %55, %52 ], [ %50, %47 ]
  ret i64 %57
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_CCtx_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %7 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #33, !srcloc !8
  %8 = icmp eq i32 %7, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %6, i8 0, i64 5280, i1 false)
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #33, !srcloc !9
  %11 = icmp ugt i32 %7, 6
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #33, !srcloc !10
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
  store i32 %21, ptr %22, align 8, !tbaa !11
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 3688
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 904
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 912
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 3720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %23, i8 0, i64 72, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %27, i8 0, i64 224, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 3, ptr %28, align 4, !tbaa !44
  %29 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 1, ptr %29, align 8, !tbaa !45
  %30 = call i64 @ZSTD_compressCCtx(ptr noundef nonnull %6, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4)
  %31 = load ptr, ptr %23, align 8, !tbaa !118
  %32 = load ptr, ptr %24, align 8
  %33 = load ptr, ptr %25, align 8
  %34 = icmp eq ptr %31, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %20
  %36 = icmp eq ptr %32, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  call void %32(ptr noundef %33, ptr noundef nonnull %31) #34, !inline_history !311
  br label %39

38:                                               ; preds = %35
  call void @free(ptr noundef nonnull %31) #34
  br label %39

39:                                               ; preds = %38, %37, %20
  %40 = load ptr, ptr %26, align 8, !tbaa !122
  %41 = icmp eq ptr %40, null
  br i1 %41, label %66, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 6048
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 6056
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = icmp ugt ptr %48, %40
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %40, i64 40
  %52 = load ptr, ptr %51, align 8, !tbaa !60
  %53 = icmp uge ptr %40, %52
  br label %54

54:                                               ; preds = %50, %42
  %55 = phi i1 [ true, %42 ], [ %53, %50 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %47, i8 0, i64 72, i1 false)
  %56 = icmp eq ptr %48, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = icmp eq ptr %44, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  call void %44(ptr noundef %46, ptr noundef nonnull %48) #34, !inline_history !312
  br label %60

60:                                               ; preds = %59, %54
  br i1 %55, label %62, label %66

61:                                               ; preds = %57
  call void @free(ptr noundef nonnull %48) #34
  br i1 %55, label %65, label %66

62:                                               ; preds = %60
  %63 = icmp eq ptr %44, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  call void %44(ptr noundef %46, ptr noundef nonnull %40) #34, !inline_history !313
  br label %66

65:                                               ; preds = %62, %61
  call void @free(ptr noundef nonnull %40) #34
  br label %66

66:                                               ; preds = %39, %60, %61, %64, %65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %23, i8 0, i64 72, i1 false)
  %67 = getelementptr inbounds nuw i8, ptr %6, i64 704
  %68 = load ptr, ptr %24, align 8
  %69 = load ptr, ptr %25, align 8
  %70 = load ptr, ptr %67, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %67, i8 0, i64 72, i1 false)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = icmp eq ptr %68, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  call void %68(ptr noundef %69, ptr noundef nonnull %70) #34, !inline_history !61
  br label %76

75:                                               ; preds = %72
  call void @free(ptr noundef nonnull %70) #34
  br label %76

76:                                               ; preds = %66, %74, %75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret i64 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_estimateCDictSize_advanced(i64 noundef %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %6, -3
  %8 = load i32, ptr %1, align 8
  %9 = icmp ult i32 %8, 15
  %10 = select i1 %7, i1 true, i1 %9
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !71
  %13 = zext nneg i32 %12 to i64
  %14 = shl i64 4, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = add nuw i64 %18, 63
  %20 = and i64 %19, -64
  %21 = select i1 %10, i64 0, i64 %20
  %22 = shl i64 4, %17
  %23 = icmp eq i32 %2, 1
  %24 = add i64 %0, 7
  %25 = and i64 %24, -8
  %26 = add i64 %25, 14912
  %27 = select i1 %23, i64 14912, i64 %26
  %28 = add i64 %27, %14
  %29 = add i64 %28, %22
  %30 = add i64 %29, %21
  ret i64 %30
}

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local i64 @ZSTD_estimateCDictSize(i64 noundef %0, i32 noundef %1) local_unnamed_addr #17 {
  %3 = alloca %struct.ZSTD_compressionParameters, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %3, i32 noundef %1, i64 noundef -1, i64 noundef %0, i32 noundef 2)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %6, -3
  %8 = load i32, ptr %3, align 8
  %9 = icmp ult i32 %8, 15
  %10 = select i1 %7, i1 true, i1 %9
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !71
  %13 = zext nneg i32 %12 to i64
  %14 = shl i64 4, %13
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = add nuw i64 %18, 63
  %20 = and i64 %19, -64
  %21 = select i1 %10, i64 0, i64 %20
  %22 = shl i64 4, %17
  %23 = add i64 %0, 7
  %24 = and i64 %23, -8
  %25 = add i64 %24, 14912
  %26 = add i64 %25, %14
  %27 = add i64 %26, %22
  %28 = add i64 %27, %21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_sizeof_CDict(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 6080
  %8 = getelementptr i8, ptr %0, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = add i64 %12, %7
  br label %14

14:                                               ; preds = %1, %3
  %15 = phi i64 [ %13, %3 ], [ 0, %1 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict_advanced(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, i8 0, i64 224, i1 false)
  store i32 1, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %9, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !76
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !314
  %11 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %8 = alloca %struct.ZSTD_compressionParameters, align 16
  %9 = alloca %struct.ZSTD_compressionParameters, align 16
  %10 = alloca %struct.ZSTD_compressionParameters, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !115
  %11 = load ptr, ptr %5, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  %16 = xor i1 %12, %15
  br i1 %16, label %185, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 120
  %19 = load i32, ptr %18, align 8, !tbaa !98
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %22 = getelementptr inbounds nuw i8, ptr %7, i64 44
  %23 = load i32, ptr %22, align 4, !tbaa !44
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %8, i32 noundef %23, i64 noundef 0, i64 noundef %1, i32 noundef 2)
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %25 = load i32, ptr %24, align 8, !tbaa !75, !alias.scope !315
  %26 = add i32 %25, -3
  %27 = icmp ult i32 %26, 3
  %28 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %29 = load i32, ptr %28, align 8, !tbaa !4
  %30 = add i32 %29, 2
  %31 = select i1 %27, i32 %30, i32 %29
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %33 = load i32, ptr %32, align 4, !tbaa !4
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %36 = load <4 x i32>, ptr %8, align 16
  %37 = insertelement <4 x i32> poison, i32 %31, i64 2
  %38 = insertelement <4 x i32> %37, i32 %33, i64 3
  %39 = shufflevector <4 x i32> %36, <4 x i32> %38, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %41 = load <2 x i32>, ptr %34, align 16, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %42 = load <4 x i32>, ptr %35, align 4, !tbaa !4
  %43 = icmp eq <4 x i32> %42, zeroinitializer
  %44 = select <4 x i1> %43, <4 x i32> %39, <4 x i32> %42
  %45 = load <2 x i32>, ptr %40, align 4, !tbaa !4
  %46 = icmp eq <2 x i32> %45, zeroinitializer
  %47 = select <2 x i1> %46, <2 x i32> %41, <2 x i32> %45
  %48 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %49 = load i32, ptr %48, align 4, !tbaa !75
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 %25, i32 %49
  br label %58

52:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %9, ptr noundef nonnull %4, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %53 = load <4 x i32>, ptr %9, align 16, !tbaa !4
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %55 = load <2 x i32>, ptr %54, align 16, !tbaa !4
  %56 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %57 = load i32, ptr %56, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %58

58:                                               ; preds = %21, %52
  %59 = phi i32 [ %57, %52 ], [ %51, %21 ]
  %60 = phi <4 x i32> [ %53, %52 ], [ %44, %21 ]
  %61 = phi <2 x i32> [ %55, %52 ], [ %47, %21 ]
  %62 = add i32 %59, -6
  %63 = icmp ult i32 %62, -3
  %64 = extractelement <4 x i32> %60, i64 1
  %65 = extractelement <4 x i32> %60, i64 2
  %66 = icmp ule i32 %65, %64
  %67 = icmp ugt i32 %64, 24
  %68 = or i1 %66, %67
  %69 = select i1 %63, i1 true, i1 %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  store i32 0, ptr %18, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %10, ptr noundef nonnull %7, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %71 = load <4 x i32>, ptr %10, align 16, !tbaa !4
  %72 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %73 = load <2 x i32>, ptr %72, align 16, !tbaa !4
  %74 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %75 = load i32, ptr %74, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %76

76:                                               ; preds = %58, %70
  %77 = phi i32 [ 0, %70 ], [ %19, %58 ]
  %78 = phi i32 [ %75, %70 ], [ %59, %58 ]
  %79 = phi <4 x i32> [ %71, %70 ], [ %60, %58 ]
  %80 = phi <2 x i32> [ %73, %70 ], [ %61, %58 ]
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store <4 x i32> %79, ptr %81, align 4, !tbaa !4
  %82 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store <2 x i32> %80, ptr %82, align 4, !tbaa !4
  %83 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %78, ptr %83, align 4, !tbaa !4
  %84 = getelementptr inbounds nuw i8, ptr %7, i64 160
  %85 = load i32, ptr %84, align 8, !tbaa !78
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %76
  %88 = add i32 %78, -6
  %89 = icmp ult i32 %88, -3
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = extractelement <4 x i32> %79, i64 0
  %92 = icmp ugt i32 %91, 14
  %93 = select i1 %92, i32 1, i32 2
  br label %94

94:                                               ; preds = %90, %87, %76
  %95 = phi i32 [ %85, %76 ], [ %93, %90 ], [ 2, %87 ]
  store i32 %95, ptr %84, align 8, !tbaa !78
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq i32 %77, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = icmp eq i32 %78, 1
  br i1 %100, label %111, label %101

101:                                              ; preds = %99
  %102 = add i32 %78, -3
  %103 = icmp ult i32 %102, 3
  %104 = icmp eq i32 %95, 1
  %105 = and i1 %103, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %101, %94
  %107 = extractelement <4 x i32> %79, i64 1
  %108 = zext nneg i32 %107 to i64
  %109 = shl i64 4, %108
  %110 = add nuw i64 %109, 128
  br label %111

111:                                              ; preds = %106, %101, %99
  %112 = phi i64 [ %110, %106 ], [ 128, %101 ], [ 128, %99 ]
  %113 = extractelement <4 x i32> %79, i64 2
  %114 = zext nneg i32 %113 to i64
  %115 = shl nuw i64 1, %114
  %116 = add i32 %78, -6
  %117 = icmp ult i32 %116, -3
  %118 = icmp ne i32 %95, 1
  %119 = or i1 %117, %118
  %120 = add nuw i64 %115, 63
  %121 = and i64 %120, -64
  %122 = select i1 %119, i64 0, i64 %121
  %123 = shl i64 4, %114
  %124 = icmp eq i32 %2, 1
  %125 = add i64 %1, 7
  %126 = and i64 %125, -8
  %127 = add i64 %126, 14784
  %128 = select i1 %124, i64 14784, i64 %127
  %129 = add i64 %123, %128
  %130 = add i64 %129, %122
  %131 = add i64 %130, %112
  br i1 %12, label %134, label %132

132:                                              ; preds = %111
  %133 = tail call ptr %11(ptr noundef %97, i64 noundef %131) #34, !inline_history !318
  br label %136

134:                                              ; preds = %111
  %135 = tail call noalias ptr @malloc(i64 noundef %131) #35
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi ptr [ %133, %132 ], [ %135, %134 ]
  %138 = icmp eq ptr %137, null
  br i1 %138, label %185, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds nuw i8, ptr %137, i64 %131
  %141 = ptrtoint ptr %140 to i64
  %142 = and i64 %141, 63
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i8, ptr %140, i64 %143
  %145 = getelementptr inbounds nuw i8, ptr %137, i64 6080
  %146 = icmp ugt i64 %131, 6079
  tail call void @llvm.assume(i1 %146)
  %147 = getelementptr inbounds nuw i8, ptr %137, i64 32
  store ptr %137, ptr %147, align 8, !tbaa !49
  %148 = getelementptr inbounds nuw i8, ptr %137, i64 40
  store ptr %140, ptr %148, align 8, !tbaa !49
  %149 = getelementptr inbounds nuw i8, ptr %137, i64 48
  store ptr %145, ptr %149, align 8, !tbaa !49
  %150 = getelementptr inbounds nuw i8, ptr %137, i64 56
  store ptr %145, ptr %150, align 8, !tbaa !49
  %151 = getelementptr inbounds nuw i8, ptr %137, i64 64
  store ptr %145, ptr %151, align 8, !tbaa !49
  %152 = getelementptr inbounds nuw i8, ptr %137, i64 72
  store ptr %144, ptr %152, align 8, !tbaa !49
  %153 = getelementptr inbounds nuw i8, ptr %137, i64 80
  store ptr %144, ptr %153, align 8, !tbaa !49
  %154 = getelementptr inbounds nuw i8, ptr %137, i64 88
  store i8 0, ptr %154, align 8, !tbaa !185
  %155 = getelementptr inbounds nuw i8, ptr %137, i64 92
  store i32 0, ptr %155, align 4, !tbaa !4
  %156 = getelementptr inbounds nuw i8, ptr %137, i64 96
  store i32 0, ptr %156, align 8, !tbaa !4
  %157 = getelementptr inbounds nuw i8, ptr %137, i64 100
  store i32 0, ptr %157, align 4, !tbaa !4
  %158 = getelementptr inbounds nuw i8, ptr %137, i64 6040
  store ptr %11, ptr %158, align 8, !tbaa !49
  %159 = getelementptr inbounds nuw i8, ptr %137, i64 6048
  store ptr %14, ptr %159, align 8, !tbaa !49
  %160 = getelementptr inbounds nuw i8, ptr %137, i64 6056
  store ptr %97, ptr %160, align 8, !tbaa !49
  %161 = getelementptr inbounds nuw i8, ptr %137, i64 6068
  store i32 0, ptr %161, align 4, !tbaa !259
  %162 = getelementptr inbounds nuw i8, ptr %137, i64 6072
  store i32 %95, ptr %162, align 8, !tbaa !262
  %163 = tail call fastcc i64 @ZSTD_initCDict_internal(ptr noundef nonnull %137, ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 8 %7)
  %164 = icmp ult i64 %163, -119
  br i1 %164, label %185, label %165

165:                                              ; preds = %139
  %166 = load ptr, ptr %159, align 8, !tbaa !49
  %167 = load ptr, ptr %160, align 8, !tbaa !49
  %168 = load ptr, ptr %147, align 8, !tbaa !59
  %169 = icmp ugt ptr %168, %137
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr %148, align 8, !tbaa !60
  %172 = icmp uge ptr %137, %171
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi i1 [ true, %165 ], [ %172, %170 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %147, i8 0, i64 72, i1 false)
  %175 = icmp eq ptr %168, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = icmp eq ptr %166, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %176
  tail call void %166(ptr noundef %167, ptr noundef nonnull %168) #34, !inline_history !123
  br label %179

179:                                              ; preds = %178, %173
  br i1 %174, label %181, label %185

180:                                              ; preds = %176
  tail call void @free(ptr noundef nonnull %168) #34
  br i1 %174, label %184, label %185

181:                                              ; preds = %179
  %182 = icmp eq ptr %166, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %181
  tail call void %166(ptr noundef %167, ptr noundef nonnull %137) #34, !inline_history !124
  br label %185

184:                                              ; preds = %181, %180
  tail call void @free(ptr noundef nonnull %137) #34
  br label %185

185:                                              ; preds = %136, %184, %183, %180, %179, %139, %6
  %186 = phi ptr [ null, %184 ], [ null, %6 ], [ %137, %139 ], [ null, %179 ], [ null, %180 ], [ null, %183 ], [ null, %136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  ret ptr %186
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_initCDict_internal(ptr noundef initializes((244, 248), (360, 388)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 8 %5) unnamed_addr #2 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %9, i64 28, i1 false), !tbaa.struct !76
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !98
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 %11, ptr %12, align 4, !tbaa !261
  %13 = icmp ne i32 %3, 1
  %14 = icmp ne ptr %1, null
  %15 = and i1 %14, %13
  %16 = icmp ne i64 %2, 0
  %17 = and i1 %16, %15
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store ptr %1, ptr %0, align 8, !tbaa !285
  br label %39

19:                                               ; preds = %6
  %20 = add i64 %2, 7
  %21 = and i64 %20, -8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %21
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %26 = load i32, ptr %25, align 8, !tbaa !319
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = icmp ugt ptr %24, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19, %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %33, align 8, !tbaa !51
  br label %82

34:                                               ; preds = %28
  store ptr %24, ptr %22, align 8, !tbaa !52
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %24, ptr %35, align 8, !tbaa !53
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %24, ptr %36, align 8, !tbaa !54
  %37 = icmp eq ptr %23, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %34
  store ptr %23, ptr %0, align 8, !tbaa !285
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %39

39:                                               ; preds = %38, %18
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %40, align 8, !tbaa !257
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %41, align 8, !tbaa !286
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8704
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %47 = load i32, ptr %46, align 8, !tbaa !319
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = icmp ugt ptr %45, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %39
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %54, align 8, !tbaa !51
  br label %58

55:                                               ; preds = %49
  store ptr %45, ptr %43, align 8, !tbaa !52
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %45, ptr %56, align 8, !tbaa !53
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %45, ptr %57, align 8, !tbaa !54
  br label %58

58:                                               ; preds = %53, %55
  %59 = phi ptr [ null, %53 ], [ %44, %55 ]
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %59, ptr %60, align 8, !tbaa !320
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 6024
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %61, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 2464
  store i32 0, ptr %62, align 8, !tbaa !155
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 6012
  store i32 0, ptr %63, align 4, !tbaa !156
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 6016
  store i32 0, ptr %64, align 8, !tbaa !157
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 6020
  store i32 0, ptr %65, align 4, !tbaa !158
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 160
  %67 = load i32, ptr %66, align 8, !tbaa !78
  %68 = call fastcc i64 @ZSTD_reset_matchState(ptr noundef nonnull %7, ptr noundef nonnull %42, ptr noundef nonnull %9, i32 noundef %67, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %72 = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %72, align 4, !tbaa !44
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %73, align 8, !tbaa !45
  %74 = load ptr, ptr %0, align 8, !tbaa !285
  %75 = load i64, ptr %40, align 8, !tbaa !257
  %76 = load ptr, ptr %60, align 8, !tbaa !320
  %77 = call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef nonnull %71, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %42, ptr noundef nonnull %5, ptr noundef %74, i64 noundef %75, i32 noundef %4, i32 noundef 1, i32 noundef 1, ptr noundef %76)
  %78 = icmp ult i64 %77, -119
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = trunc nuw i64 %77 to i32
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 6064
  store i32 %80, ptr %81, align 8, !tbaa !271
  br label %82

82:                                               ; preds = %79, %70, %34, %32, %58
  %83 = phi i64 [ %68, %58 ], [ -64, %34 ], [ -64, %32 ], [ %77, %70 ], [ 0, %79 ]
  ret i64 %83
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCDict(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 6048
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 6056
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load ptr, ptr %12, align 8, !tbaa !60
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
  tail call void %5(ptr noundef %7, ptr noundef nonnull %9) #34, !inline_history !321
  br label %21

21:                                               ; preds = %15, %20
  br i1 %16, label %23, label %27

22:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %9) #34
  br i1 %16, label %26, label %27

23:                                               ; preds = %21
  %24 = icmp eq ptr %5, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %5(ptr noundef %7, ptr noundef nonnull %0) #34, !inline_history !62
  br label %27

26:                                               ; preds = %22, %23
  tail call void @free(ptr noundef nonnull %0) #34
  br label %27

27:                                               ; preds = %21, %22, %25, %26, %1
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %5, i32 noundef %2, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, i8 0, i64 224, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !76
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 3, i32 %2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 6068
  store i32 %13, ptr %14, align 4, !tbaa !259
  br label %15

15:                                               ; preds = %11, %3
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict_byReference(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %5, i32 noundef %2, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, i8 0, i64 224, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !76
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 3, i32 %2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 6068
  store i32 %13, ptr %14, align 4, !tbaa !259
  br label %15

15:                                               ; preds = %11, %3
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_initStaticCDict(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %10 = load i32, ptr %9, align 8, !tbaa !75
  %11 = add i32 %10, -6
  %12 = icmp ult i32 %11, -3
  %13 = load i32, ptr %6, align 8
  %14 = icmp ult i32 %13, 15
  %15 = select i1 %12, i1 true, i1 %14
  %16 = select i1 %15, i32 2, i32 1
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !71
  %19 = zext nneg i32 %18 to i64
  %20 = shl i64 4, %19
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !72
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = add nuw i64 %24, 63
  %26 = and i64 %25, -64
  %27 = select i1 %15, i64 0, i64 %26
  %28 = shl i64 4, %23
  %29 = icmp eq i32 %4, 1
  %30 = add i64 %3, 7
  %31 = and i64 %30, -8
  %32 = add i64 %31, 14912
  %33 = select i1 %29, i64 14912, i64 %32
  %34 = add i64 %33, %20
  %35 = add i64 %34, %28
  %36 = add i64 %35, %27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %37 = ptrtoint ptr %0 to i64
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %7
  %41 = icmp samesign ult i64 %1, 6080
  %42 = icmp eq ptr %0, null
  %43 = or i1 %42, %41
  br i1 %43, label %72, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %47 = ptrtoint ptr %45 to i64
  %48 = and i64 %47, 63
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %45, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %51, align 8, !tbaa !49
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %45, ptr %52, align 8, !tbaa !49
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %46, ptr %53, align 8, !tbaa !49
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %46, ptr %54, align 8, !tbaa !49
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %46, ptr %55, align 8, !tbaa !49
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %50, ptr %56, align 8, !tbaa !49
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %50, ptr %57, align 8, !tbaa !49
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %58, align 8, !tbaa !185
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %59, align 4, !tbaa !4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %60, align 8, !tbaa !4
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %61, align 4, !tbaa !4
  %62 = icmp ult i64 %1, %36
  br i1 %62, label %72, label %63

63:                                               ; preds = %44
  %64 = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %8, i8 0, i64 224, i1 false)
  store i32 1, ptr %64, align 8, !tbaa !45
  %65 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %65, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false), !tbaa.struct !76
  %66 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i32 %16, ptr %66, align 8, !tbaa !78
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 6072
  store i32 %16, ptr %67, align 8, !tbaa !262
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 6068
  store i32 0, ptr %68, align 4, !tbaa !259
  %69 = tail call fastcc i64 @ZSTD_initCDict_internal(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 8 %8)
  %70 = icmp ult i64 %69, -119
  %71 = select i1 %70, ptr %0, ptr null
  br label %72

72:                                               ; preds = %40, %63, %44, %7
  %73 = phi ptr [ null, %7 ], [ null, %44 ], [ %71, %63 ], [ null, %40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret ptr %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getCParamsFromCDict(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromCDict(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 6064
  %5 = load i32, ptr %4, align 8, !tbaa !271
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %7 = alloca { i32, i32, i32, i32, i32 }, align 8
  %8 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %9 = icmp eq ptr %1, null
  br i1 %9, label %84, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %11 = icmp ult i64 %4, 131072
  br i1 %11, label %23, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !257
  %15 = mul i64 %14, 6
  %16 = icmp ult i64 %4, %15
  %17 = icmp eq i64 %4, -1
  %18 = or i1 %17, %16
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %21 = load i32, ptr %20, align 4, !tbaa !259
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19, %12, %10
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 360
  %25 = load i32, ptr %24, align 8, !tbaa !4
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %26, i64 20, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %28 = load i32, ptr %27, align 8, !tbaa !4
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %30 = load i32, ptr %29, align 4, !tbaa !259
  br label %36

31:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %8, i32 noundef %21, i64 noundef %4, i64 noundef %14, i32 noundef 3)
  %32 = load i32, ptr %8, align 4, !tbaa !4
  %33 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %33, i64 20, i1 false), !tbaa.struct !131
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %35 = load i32, ptr %34, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %36

36:                                               ; preds = %31, %23
  %37 = phi i32 [ %30, %23 ], [ %21, %31 ]
  %38 = phi i32 [ %28, %23 ], [ %35, %31 ]
  %39 = phi i32 [ %25, %23 ], [ %32, %31 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %39, ptr %40, align 4, !tbaa !4
  %41 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %41, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !131
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %38, ptr %42, align 4, !tbaa !4
  %43 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %2, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %3, ptr %44, align 8, !tbaa !4
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %37, ptr %45, align 4, !tbaa !44
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 160
  %47 = add i32 %38, -6
  %48 = icmp ult i32 %47, -3
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  store i32 2, ptr %46, align 8, !tbaa !78
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 140
  %51 = icmp ugt i32 %38, 6
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  store i32 2, ptr %50, align 4, !tbaa !79
  br label %62

53:                                               ; preds = %36
  %54 = icmp ugt i32 %39, 14
  %55 = select i1 %54, i32 1, i32 2
  store i32 %55, ptr %46, align 8, !tbaa !78
  %56 = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %56, align 4, !tbaa !79
  br label %62

57:                                               ; preds = %49
  %58 = icmp ugt i32 %39, 16
  %59 = select i1 %58, i32 1, i32 2
  store i32 %59, ptr %50, align 4, !tbaa !79
  %60 = icmp ugt i32 %39, 26
  %61 = select i1 %60, i32 1, i32 2
  br label %62

62:                                               ; preds = %53, %52, %57
  %63 = phi i32 [ %61, %57 ], [ 2, %53 ], [ 2, %52 ]
  %64 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %63, ptr %64, align 8, !tbaa !80
  %65 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 131072, ptr %65, align 8, !tbaa !81
  %66 = getelementptr inbounds nuw i8, ptr %6, i64 216
  %67 = icmp slt i32 %37, 10
  %68 = select i1 %67, i32 2, i32 1
  store i32 %68, ptr %66, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %69 = icmp eq i64 %4, -1
  br i1 %69, label %81, label %70

70:                                               ; preds = %62
  %71 = icmp ugt i64 %4, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = tail call i64 @llvm.umin.i64(i64 %4, i64 524288)
  %74 = trunc nuw nsw i64 %73 to i32
  %75 = add nsw i32 %74, -1
  %76 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %75, i1 true)
  %77 = sub nuw nsw i32 32, %76
  br label %78

78:                                               ; preds = %70, %72
  %79 = phi i32 [ %77, %72 ], [ 1, %70 ]
  %80 = tail call i32 @llvm.umax.i32(i32 %39, i32 %79)
  store i32 %80, ptr %40, align 4, !tbaa !86
  br label %81

81:                                               ; preds = %62, %78
  %82 = phi i64 [ %4, %78 ], [ -1, %62 ]
  %83 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %6, i64 noundef %82, i32 noundef 0)
  br label %84

84:                                               ; preds = %81, %5
  %85 = phi i64 [ -32, %5 ], [ %83, %81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret i64 %85
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %4 = icmp eq ptr %1, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 360
  %7 = load i32, ptr %6, align 8, !tbaa !4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 364
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %10 = load i32, ptr %9, align 8, !tbaa !4
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %12 = load i32, ptr %11, align 4, !tbaa !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %7, ptr %13, align 4, !tbaa !4
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false)
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %10, ptr %15, align 4, !tbaa !4
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %16, align 8, !tbaa !4
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %12, ptr %17, align 4, !tbaa !44
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %19 = add i32 %10, -6
  %20 = icmp ult i32 %19, -3
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  store i32 2, ptr %18, align 8, !tbaa !78
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %23 = icmp ugt i32 %10, 6
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  store i32 2, ptr %22, align 4, !tbaa !79
  br label %34

25:                                               ; preds = %5
  %26 = icmp ugt i32 %7, 14
  %27 = select i1 %26, i32 1, i32 2
  store i32 %27, ptr %18, align 8, !tbaa !78
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 2, ptr %28, align 4, !tbaa !79
  br label %34

29:                                               ; preds = %21
  %30 = icmp ugt i32 %7, 16
  %31 = select i1 %30, i32 1, i32 2
  store i32 %31, ptr %22, align 4, !tbaa !79
  %32 = icmp ugt i32 %7, 26
  %33 = select i1 %32, i32 1, i32 2
  br label %34

34:                                               ; preds = %29, %25, %24
  %35 = phi i32 [ %33, %29 ], [ 2, %25 ], [ 2, %24 ]
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 %35, ptr %36, align 8, !tbaa !80
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 131072, ptr %37, align 8, !tbaa !81
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %39 = icmp slt i32 %12, 10
  %40 = select i1 %39, i32 2, i32 1
  store i32 %40, ptr %38, align 8, !tbaa !82
  %41 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef -1, i32 noundef 0)
  br label %42

42:                                               ; preds = %2, %34
  %43 = phi i64 [ -32, %2 ], [ %41, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i64 %43
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %4 = icmp eq ptr %1, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 360
  %7 = load i32, ptr %6, align 8, !tbaa !4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 364
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %10 = load i32, ptr %9, align 8, !tbaa !4
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %12 = load i32, ptr %11, align 4, !tbaa !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %7, ptr %13, align 4, !tbaa !4
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false)
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %10, ptr %15, align 4, !tbaa !4
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %12, ptr %16, align 4, !tbaa !44
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %18 = add i32 %10, -6
  %19 = icmp ult i32 %18, -3
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  store i32 2, ptr %17, align 8, !tbaa !78
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %22 = icmp ugt i32 %10, 6
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  store i32 2, ptr %21, align 4, !tbaa !79
  br label %33

24:                                               ; preds = %5
  %25 = icmp ugt i32 %7, 14
  %26 = select i1 %25, i32 1, i32 2
  store i32 %26, ptr %17, align 8, !tbaa !78
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 2, ptr %27, align 4, !tbaa !79
  br label %33

28:                                               ; preds = %20
  %29 = icmp ugt i32 %7, 16
  %30 = select i1 %29, i32 1, i32 2
  store i32 %30, ptr %21, align 4, !tbaa !79
  %31 = icmp ugt i32 %7, 26
  %32 = select i1 %31, i32 1, i32 2
  br label %33

33:                                               ; preds = %28, %24, %23
  %34 = phi i32 [ %32, %28 ], [ 2, %24 ], [ 2, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 %34, ptr %35, align 8, !tbaa !80
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 131072, ptr %36, align 8, !tbaa !81
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %38 = icmp slt i32 %12, 10
  %39 = select i1 %38, i32 2, i32 1
  store i32 %39, ptr %37, align 8, !tbaa !82
  %40 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef -1, i32 noundef 0)
  br label %41

41:                                               ; preds = %2, %33
  %42 = phi i64 [ -32, %2 ], [ %40, %33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef readonly byval(%struct.ZSTD_frameParameters) align 8 captures(none) %6) local_unnamed_addr #2 {
  %8 = load i64, ptr %6, align 8
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %5, i64 %8, i32 %10, i64 noundef %4)
  %12 = icmp ult i64 %11, -119
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi i64 [ %14, %13 ], [ %11, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingCDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %5, i64 1, i32 0, i64 noundef %4)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ %7, %6 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ZSTD_createCStream() local_unnamed_addr #2 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #33, !srcloc !8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #33, !srcloc !9
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #33, !srcloc !10
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
  store i32 %18, ptr %19, align 8, !tbaa !11
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 3, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %22, align 8, !tbaa !45
  br label %23

23:                                               ; preds = %0, %17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCStream_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #2 {
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
  %12 = tail call ptr %2(ptr noundef %6, i64 noundef 5280) #34, !inline_history !322
  br label %15

13:                                               ; preds = %10
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #35
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
  %22 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #33, !srcloc !8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #33, !srcloc !9
  %26 = icmp ugt i32 %22, 6
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #33, !srcloc !10
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
  store i32 %36, ptr %37, align 8, !tbaa !11
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %38, i8 0, i64 224, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 3, ptr %39, align 4, !tbaa !44
  %40 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 1, ptr %40, align 8, !tbaa !45
  br label %41

41:                                               ; preds = %1, %15, %35
  %42 = phi ptr [ null, %1 ], [ %16, %35 ], [ null, %15 ]
  ret ptr %42
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticCStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCStream(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %5 = load i64, ptr %4, align 8, !tbaa !50
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr i8, ptr %0, i64 904
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i64 912
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = icmp eq ptr %18, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #34, !inline_history !323
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #34
  br label %27

27:                                               ; preds = %26, %25, %15
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #34, !inline_history !324
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #34
  br label %34

34:                                               ; preds = %1, %3, %27, %31, %33
  %35 = phi i64 [ -64, %3 ], [ 0, %1 ], [ 0, %27 ], [ 0, %31 ], [ 0, %33 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_CStreamInSize() local_unnamed_addr #0 {
  ret i64 131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 8, 7) i64 @ZSTD_CStreamOutSize() local_unnamed_addr #0 {
  ret i64 131591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_resetCStream(ptr noundef writeonly captures(none) initializes((784, 792), (3640, 3644)) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i64 %1, 0
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %6 = add i64 %1, 1
  %7 = select i1 %3, i64 0, i64 %6
  store i64 %7, ptr %5, align 8, !tbaa !117
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_internal(ptr noundef captures(none) initializes((16, 240), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %9 = add i64 %5, 1
  store i64 %9, ptr %8, align 8, !tbaa !117
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %10, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !115
  %11 = icmp eq ptr %1, null
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = icmp eq i64 %2, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i64 912
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr %20(ptr noundef %24, i64 noundef %2) #34, !inline_history !325
  br label %28

26:                                               ; preds = %18
  %27 = tail call noalias ptr @malloc(i64 noundef %2) #35
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %25, %22 ], [ %27, %26 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %29, ptr %32, align 8, !tbaa !118
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %29, ptr %33, align 8, !tbaa !119
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %34, align 8, !tbaa !120
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %35, align 8, !tbaa !121
  br label %38

36:                                               ; preds = %6
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %3, ptr %37, align 8, !tbaa !114
  br label %38

38:                                               ; preds = %28, %14, %31, %12, %36
  %39 = phi i64 [ 0, %31 ], [ 0, %12 ], [ 0, %36 ], [ -64, %14 ], [ -64, %28 ]
  ret i64 %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict_advanced(ptr noundef captures(none) initializes((48, 60), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %8 = add i64 %4, 1
  store i64 %8, ptr %7, align 8, !tbaa !117
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %10, align 8, !tbaa !4
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %11, align 8, !tbaa !114
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %3, align 8, !tbaa !83
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %4, align 8, !tbaa !117
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %5, align 8, !tbaa !114
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_advanced(ptr noundef captures(none) initializes((784, 792), (3640, 3644)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq i64 %4, 0
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %6, i1 %9, i1 false
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %11, align 8, !tbaa !83
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %13 = add i64 %4, 1
  %14 = select i1 %10, i64 0, i64 %13
  store i64 %14, ptr %12, align 8, !tbaa !117
  %15 = load i32, ptr %3, align 8, !tbaa !70
  %16 = add i32 %15, -32
  %17 = icmp ult i32 %16, -22
  br i1 %17, label %76, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !71
  %21 = add i32 %20, -31
  %22 = icmp ult i32 %21, -25
  br i1 %22, label %76, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %25 = load i32, ptr %24, align 8, !tbaa !72
  %26 = add i32 %25, -31
  %27 = icmp ult i32 %26, -25
  br i1 %27, label %76, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %30 = load i32, ptr %29, align 4, !tbaa !73
  %31 = add i32 %30, -31
  %32 = icmp ult i32 %31, -30
  br i1 %32, label %76, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %35 = load i32, ptr %34, align 8, !tbaa !74
  %36 = add i32 %35, -8
  %37 = icmp ult i32 %36, -5
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, 131072
  %41 = select i1 %37, i1 true, i1 %40
  br i1 %41, label %76, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %44 = load i32, ptr %43, align 8, !tbaa !75
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %45, 9
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %48, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !76
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %49, ptr noundef nonnull readonly align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !77
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %50, align 4, !tbaa !44
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %51 = icmp eq ptr %1, null
  %52 = icmp eq i64 %2, 0
  %53 = or i1 %51, %52
  br i1 %53, label %76, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %56 = load i64, ptr %55, align 8, !tbaa !50
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %0, i64 912
  %64 = load ptr, ptr %63, align 8
  %65 = tail call ptr %60(ptr noundef %64, i64 noundef %2) #34, !inline_history !325
  br label %68

66:                                               ; preds = %58
  %67 = tail call noalias ptr @malloc(i64 noundef %2) #35
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi ptr [ %65, %62 ], [ %67, %66 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %69, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %69, ptr %72, align 8, !tbaa !118
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %69, ptr %73, align 8, !tbaa !119
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %74, align 8, !tbaa !120
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %75, align 8, !tbaa !121
  br label %76

76:                                               ; preds = %71, %68, %54, %47, %18, %23, %28, %33, %5, %42
  %77 = phi i64 [ -42, %18 ], [ -42, %23 ], [ -42, %42 ], [ -42, %5 ], [ -42, %33 ], [ -42, %28 ], [ 0, %47 ], [ -64, %68 ], [ 0, %71 ], [ -64, %54 ]
  ret i64 %77
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_usingDict(ptr noundef captures(none) initializes((60, 64), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %5, align 8, !tbaa !83
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %6, align 8, !tbaa !117
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
  store i32 %14, ptr %15, align 4, !tbaa !44
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = icmp eq ptr %1, null
  %17 = icmp eq i64 %2, 0
  %18 = or i1 %16, %17
  br i1 %18, label %41, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %21 = load i64, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i64 912
  %29 = load ptr, ptr %28, align 8
  %30 = tail call ptr %25(ptr noundef %29, i64 noundef %2) #34, !inline_history !325
  br label %33

31:                                               ; preds = %23
  %32 = tail call noalias ptr @malloc(i64 noundef %2) #35
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %30, %27 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %34, ptr %37, align 8, !tbaa !118
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %34, ptr %38, align 8, !tbaa !119
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %39, align 8, !tbaa !120
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %40, align 8, !tbaa !121
  br label %41

41:                                               ; preds = %36, %33, %19, %13
  %42 = phi i64 [ 0, %13 ], [ -64, %33 ], [ 0, %36 ], [ -64, %19 ]
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_initCStream_srcSize(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %5, align 8, !tbaa !83
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %6, align 8, !tbaa !117
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr null, ptr %7, align 8, !tbaa !114
  %8 = load i32, ptr %5, align 8, !tbaa !83
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %11, align 4, !tbaa !84
  br label %12

12:                                               ; preds = %3, %10
  %13 = icmp slt i32 %1, -131072
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = icmp sgt i32 %1, 22
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = icmp eq i32 %1, 0
  %18 = select i1 %17, i32 3, i32 %1
  br label %19

19:                                               ; preds = %16, %12, %14
  %20 = phi i32 [ %18, %16 ], [ -131072, %12 ], [ 22, %14 ]
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %20, ptr %21, align 4, !tbaa !44
  br i1 %9, label %22, label %25

22:                                               ; preds = %19
  %23 = add i64 %2, 1
  %24 = select i1 %4, i64 0, i64 %23
  store i64 %24, ptr %6, align 8, !tbaa !117
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi i64 [ 0, %22 ], [ -60, %19 ]
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %3, align 8, !tbaa !83
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %4, align 8, !tbaa !117
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr null, ptr %5, align 8, !tbaa !114
  %6 = load i32, ptr %3, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %9, align 4, !tbaa !84
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
  store i32 %18, ptr %19, align 4, !tbaa !44
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #2 {
  %4 = tail call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %8 = load i32, ptr %7, align 4, !tbaa !326
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %12 = load i64, ptr %11, align 8, !tbaa !234
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %14 = load i64, ptr %13, align 8, !tbaa !327
  %15 = sub i64 %12, %14
  br label %26

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %18 = load i64, ptr %17, align 8, !tbaa !328
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %20 = load i64, ptr %19, align 8, !tbaa !144
  %21 = sub i64 %18, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %25 = load i64, ptr %24, align 8, !tbaa !234
  br label %26

26:                                               ; preds = %23, %16, %10, %3
  %27 = phi i64 [ %4, %3 ], [ %15, %10 ], [ %25, %23 ], [ %21, %16 ]
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load i64, ptr %5, align 8, !tbaa !196
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !195
  %9 = icmp ugt i64 %6, %8
  br i1 %9, label %388, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !199
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !198
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %388, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i32 %3, 2
  br i1 %17, label %388, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %20 = load i32, ptr %19, align 8, !tbaa !83
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %24 = load i32, ptr %23, align 4, !tbaa !326
  br label %72

25:                                               ; preds = %18
  %26 = sub i64 %14, %12
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %28 = load i64, ptr %27, align 8, !tbaa !327
  %29 = add i64 %28, %26
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %32 = load i32, ptr %31, align 4, !tbaa !200
  %33 = icmp eq i32 %32, 1
  %34 = icmp eq i32 %3, 0
  %35 = and i1 %34, %33
  %36 = icmp ult i64 %29, 131072
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %54

38:                                               ; preds = %25
  %39 = icmp eq i64 %28, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %2, align 8, !tbaa !197
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %43 = load ptr, ptr %42, align 8, !tbaa !329
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %45, label %388

45:                                               ; preds = %40
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %47 = load i64, ptr %46, align 8, !tbaa !330
  %48 = icmp eq i64 %12, %47
  br i1 %48, label %49, label %388

49:                                               ; preds = %45, %38
  store i64 %14, ptr %11, align 8, !tbaa !199
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !331
  store i64 %29, ptr %27, align 8, !tbaa !327
  %51 = load i32, ptr %30, align 8, !tbaa !332
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i64 6, i64 2
  br label %388

54:                                               ; preds = %25
  %55 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %29)
  %56 = icmp ult i64 %55, -119
  br i1 %56, label %57, label %388

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %59 = load i32, ptr %58, align 4, !tbaa !326
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !331
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %65 = load i32, ptr %64, align 8, !tbaa !333
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i64, ptr %7, align 8, !tbaa !195
  %69 = load i64, ptr %5, align 8, !tbaa !196
  %70 = sub i64 %68, %69
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i64 %70, ptr %71, align 8, !tbaa !334
  br label %72

72:                                               ; preds = %22, %63, %67
  %73 = phi i32 [ %24, %22 ], [ %59, %63 ], [ %59, %67 ]
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %75 = icmp eq i32 %73, 1
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %78 = load ptr, ptr %77, align 8, !tbaa !49
  %79 = load ptr, ptr %2, align 8, !tbaa !197
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %388

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %83 = load i64, ptr %82, align 8, !tbaa !116
  %84 = load i64, ptr %11, align 8, !tbaa !199
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %388

86:                                               ; preds = %81, %72
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %88 = load i32, ptr %87, align 8, !tbaa !333
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i64, ptr %7, align 8, !tbaa !195
  %92 = load i64, ptr %5, align 8, !tbaa !196
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %95 = load i64, ptr %94, align 8, !tbaa !334
  %96 = icmp eq i64 %95, %93
  br i1 %96, label %97, label %388

97:                                               ; preds = %90, %86
  %98 = load ptr, ptr %2, align 8, !tbaa !197
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i64, ptr %13, align 8, !tbaa !198
  %102 = getelementptr inbounds nuw i8, ptr %98, i64 %101
  %103 = load i64, ptr %11, align 8, !tbaa !199
  %104 = getelementptr inbounds nuw i8, ptr %98, i64 %103
  br label %105

105:                                              ; preds = %100, %97
  %106 = phi ptr [ %102, %100 ], [ null, %97 ]
  %107 = phi ptr [ %104, %100 ], [ null, %97 ]
  %108 = load ptr, ptr %1, align 8, !tbaa !193
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load i64, ptr %7, align 8, !tbaa !195
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 %111
  %113 = ptrtoint ptr %112 to i64
  %114 = load i64, ptr %5, align 8, !tbaa !196
  %115 = getelementptr inbounds nuw i8, ptr %108, i64 %114
  br label %116

116:                                              ; preds = %110, %105
  %117 = phi i64 [ %113, %110 ], [ 0, %105 ]
  %118 = phi ptr [ %115, %110 ], [ null, %105 ]
  br i1 %75, label %119, label %128

119:                                              ; preds = %116
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %121 = load i64, ptr %120, align 8, !tbaa !327
  %122 = load i64, ptr %11, align 8, !tbaa !199
  %123 = sub i64 %122, %121
  store i64 %123, ptr %11, align 8, !tbaa !199
  %124 = icmp eq ptr %107, null
  %125 = sub i64 0, %121
  %126 = getelementptr inbounds i8, ptr %107, i64 %125
  %127 = select i1 %124, ptr null, ptr %126
  store i64 0, ptr %120, align 8, !tbaa !327
  br label %128

128:                                              ; preds = %119, %116
  %129 = phi ptr [ %127, %119 ], [ %107, %116 ]
  %130 = icmp eq i32 %3, 2
  %131 = ptrtoint ptr %106 to i64
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %145

145:                                              ; preds = %341, %128
  %146 = phi ptr [ %129, %128 ], [ %342, %341 ]
  %147 = phi ptr [ %118, %128 ], [ %343, %341 ]
  %148 = load i32, ptr %19, align 8, !tbaa !83
  br label %149

149:                                              ; preds = %145, %149
  switch i32 %148, label %149 [
    i32 0, label %388
    i32 1, label %153
    i32 2, label %150
  ], !llvm.loop !335

150:                                              ; preds = %149
  %151 = load i64, ptr %142, align 8, !tbaa !336
  %152 = load i64, ptr %143, align 8, !tbaa !337
  br label %318

153:                                              ; preds = %149
  br i1 %130, label %154, label %185

154:                                              ; preds = %153
  %155 = ptrtoint ptr %147 to i64
  %156 = sub i64 %117, %155
  %157 = ptrtoint ptr %146 to i64
  %158 = sub i64 %131, %157
  %159 = icmp ugt i64 %158, -71777214294589697
  br i1 %159, label %170, label %160

160:                                              ; preds = %154
  %161 = lshr i64 %158, 8
  %162 = add nuw i64 %161, %158
  %163 = icmp ult i64 %158, 131072
  %164 = sub nuw nsw i64 131072, %158
  %165 = lshr i64 %164, 11
  %166 = select i1 %163, i64 %165, i64 0
  %167 = add i64 %162, %166
  %168 = freeze i64 %167
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160, %154
  br label %171

171:                                              ; preds = %170, %160
  %172 = phi i64 [ -72, %170 ], [ %168, %160 ]
  %173 = icmp ult i64 %156, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, ptr %87, align 8, !tbaa !333
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %185

177:                                              ; preds = %174, %171
  %178 = load i64, ptr %132, align 8, !tbaa !144
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %147, i64 noundef %156, ptr noundef %146, i64 noundef %158)
  %182 = icmp ult i64 %181, -119
  br i1 %182, label %183, label %388

183:                                              ; preds = %180
  %184 = getelementptr inbounds nuw i8, ptr %147, i64 %181
  store i32 1, ptr %140, align 4, !tbaa !338
  store i32 0, ptr %19, align 8, !tbaa !83
  store i64 0, ptr %144, align 8, !tbaa !117
  br label %344

185:                                              ; preds = %177, %174, %153
  %186 = load i32, ptr %74, align 4, !tbaa !326
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %185
  %189 = load i64, ptr %135, align 8, !tbaa !328
  %190 = load i64, ptr %132, align 8, !tbaa !144
  %191 = sub i64 %189, %190
  %192 = ptrtoint ptr %146 to i64
  %193 = sub i64 %131, %192
  %194 = tail call i64 @llvm.umin.i64(i64 %191, i64 %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %188
  %197 = load ptr, ptr %136, align 8, !tbaa !143
  %198 = getelementptr inbounds nuw i8, ptr %197, i64 %190
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %198, ptr readonly align 1 %146, i64 %194, i1 false)
  %199 = load i64, ptr %132, align 8, !tbaa !144
  br label %200

200:                                              ; preds = %196, %188
  %201 = phi i64 [ %190, %188 ], [ %199, %196 ]
  %202 = add i64 %201, %194
  store i64 %202, ptr %132, align 8, !tbaa !144
  %203 = icmp eq ptr %146, null
  %204 = getelementptr inbounds nuw i8, ptr %146, i64 %194
  %205 = select i1 %203, ptr null, ptr %204
  switch i32 %3, label %224 [
    i32 0, label %206
    i32 1, label %209
  ]

206:                                              ; preds = %200
  %207 = load i64, ptr %135, align 8, !tbaa !328
  %208 = icmp ult i64 %202, %207
  br i1 %208, label %344, label %224

209:                                              ; preds = %200
  %210 = load i64, ptr %137, align 8, !tbaa !145
  %211 = icmp eq i64 %202, %210
  br i1 %211, label %344, label %224

212:                                              ; preds = %185
  switch i32 %3, label %221 [
    i32 0, label %213
    i32 1, label %219
  ]

213:                                              ; preds = %212
  %214 = ptrtoint ptr %146 to i64
  %215 = sub i64 %131, %214
  %216 = load i64, ptr %133, align 8, !tbaa !234
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  store i64 %215, ptr %134, align 8, !tbaa !327
  br label %344

219:                                              ; preds = %212
  %220 = icmp eq ptr %146, %106
  br i1 %220, label %344, label %221

221:                                              ; preds = %219, %212
  %222 = ptrtoint ptr %147 to i64
  %223 = sub i64 %117, %222
  br label %234

224:                                              ; preds = %213, %209, %206, %200
  %225 = phi ptr [ %205, %206 ], [ %205, %200 ], [ %205, %209 ], [ %146, %213 ]
  %226 = load i32, ptr %74, align 4, !tbaa !326
  %227 = icmp eq i32 %226, 0
  %228 = ptrtoint ptr %147 to i64
  %229 = sub i64 %117, %228
  br i1 %227, label %230, label %234

230:                                              ; preds = %224
  %231 = load i64, ptr %132, align 8, !tbaa !144
  %232 = load i64, ptr %137, align 8, !tbaa !145
  %233 = sub i64 %231, %232
  br label %241

234:                                              ; preds = %224, %221
  %235 = phi i64 [ %223, %221 ], [ %229, %224 ]
  %236 = phi ptr [ %146, %221 ], [ %225, %224 ]
  %237 = ptrtoint ptr %236 to i64
  %238 = sub i64 %131, %237
  %239 = load i64, ptr %133, align 8, !tbaa !234
  %240 = tail call i64 @llvm.umin.i64(i64 %238, i64 %239)
  br label %241

241:                                              ; preds = %234, %230
  %242 = phi i64 [ %229, %230 ], [ %235, %234 ]
  %243 = phi i1 [ true, %230 ], [ false, %234 ]
  %244 = phi ptr [ %225, %230 ], [ %236, %234 ]
  %245 = phi i64 [ %233, %230 ], [ %240, %234 ]
  %246 = icmp ugt i64 %245, -71777214294589697
  br i1 %246, label %257, label %247

247:                                              ; preds = %241
  %248 = lshr i64 %245, 8
  %249 = add nuw i64 %248, %245
  %250 = icmp ult i64 %245, 131072
  %251 = sub nuw nsw i64 131072, %245
  %252 = lshr i64 %251, 11
  %253 = select i1 %250, i64 %252, i64 0
  %254 = add i64 %249, %253
  %255 = freeze i64 %254
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %247, %241
  br label %258

258:                                              ; preds = %257, %247
  %259 = phi i64 [ -72, %257 ], [ %255, %247 ]
  %260 = icmp ult i64 %242, %259
  br i1 %260, label %261, label %267

261:                                              ; preds = %258
  %262 = load i32, ptr %87, align 8, !tbaa !333
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %267, label %264

264:                                              ; preds = %261
  %265 = load ptr, ptr %138, align 8, !tbaa !339
  %266 = load i64, ptr %139, align 8, !tbaa !291
  br label %267

267:                                              ; preds = %264, %261, %258
  %268 = phi i64 [ %266, %264 ], [ %242, %261 ], [ %242, %258 ]
  %269 = phi ptr [ %265, %264 ], [ %147, %261 ], [ %147, %258 ]
  br i1 %243, label %270, label %293

270:                                              ; preds = %267
  %271 = icmp eq ptr %244, %106
  %272 = select i1 %130, i1 %271, i1 false
  %273 = zext i1 %272 to i32
  %274 = load ptr, ptr %136, align 8, !tbaa !143
  %275 = load i64, ptr %137, align 8, !tbaa !145
  %276 = getelementptr inbounds nuw i8, ptr %274, i64 %275
  br i1 %272, label %277, label %279

277:                                              ; preds = %270
  %278 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %269, i64 noundef %268, ptr noundef %276, i64 noundef %245)
  br label %281

279:                                              ; preds = %270
  %280 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %269, i64 noundef %268, ptr noundef %276, i64 noundef %245, i32 noundef 1, i32 noundef 0)
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i64 [ %278, %277 ], [ %280, %279 ]
  %283 = icmp ult i64 %282, -119
  br i1 %283, label %284, label %388

284:                                              ; preds = %281
  store i32 %273, ptr %140, align 4, !tbaa !338
  %285 = load i64, ptr %132, align 8, !tbaa !144
  %286 = load i64, ptr %133, align 8, !tbaa !234
  %287 = add i64 %286, %285
  store i64 %287, ptr %135, align 8, !tbaa !328
  %288 = load i64, ptr %141, align 8, !tbaa !290
  %289 = icmp ugt i64 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  store i64 0, ptr %132, align 8, !tbaa !144
  store i64 %286, ptr %135, align 8, !tbaa !328
  br label %291

291:                                              ; preds = %290, %284
  %292 = phi i64 [ %285, %284 ], [ 0, %290 ]
  store i64 %292, ptr %137, align 8, !tbaa !145
  br label %308

293:                                              ; preds = %267
  %294 = getelementptr inbounds nuw i8, ptr %244, i64 %245
  %295 = icmp eq ptr %294, %106
  %296 = select i1 %130, i1 %295, i1 false
  %297 = zext i1 %296 to i32
  br i1 %296, label %298, label %300

298:                                              ; preds = %293
  %299 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %269, i64 noundef %268, ptr noundef %244, i64 noundef %245)
  br label %302

300:                                              ; preds = %293
  %301 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %269, i64 noundef %268, ptr noundef %244, i64 noundef %245, i32 noundef 1, i32 noundef 0)
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi i64 [ %299, %298 ], [ %301, %300 ]
  %304 = icmp ult i64 %303, -119
  br i1 %304, label %305, label %388

305:                                              ; preds = %302
  %306 = icmp eq ptr %244, null
  %307 = select i1 %306, ptr null, ptr %294
  store i32 %297, ptr %140, align 4, !tbaa !338
  br label %308

308:                                              ; preds = %305, %291
  %309 = phi i32 [ %273, %291 ], [ %297, %305 ]
  %310 = phi i64 [ %282, %291 ], [ %303, %305 ]
  %311 = phi ptr [ %244, %291 ], [ %307, %305 ]
  %312 = icmp eq ptr %269, %147
  br i1 %312, label %313, label %317

313:                                              ; preds = %308
  %314 = getelementptr inbounds nuw i8, ptr %147, i64 %310
  %315 = icmp eq i32 %309, 0
  br i1 %315, label %341, label %316

316:                                              ; preds = %313
  store i32 0, ptr %19, align 8, !tbaa !83
  store i64 0, ptr %144, align 8, !tbaa !117
  br label %344

317:                                              ; preds = %308
  store i64 %310, ptr %142, align 8, !tbaa !336
  store i64 0, ptr %143, align 8, !tbaa !337
  store i32 2, ptr %19, align 8, !tbaa !83
  br label %318

318:                                              ; preds = %317, %150
  %319 = phi i64 [ 0, %317 ], [ %152, %150 ]
  %320 = phi i64 [ %310, %317 ], [ %151, %150 ]
  %321 = phi ptr [ %311, %317 ], [ %146, %150 ]
  %322 = sub i64 %320, %319
  %323 = ptrtoint ptr %147 to i64
  %324 = sub i64 %117, %323
  %325 = tail call i64 @llvm.umin.i64(i64 %324, i64 %322)
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %318
  %328 = load ptr, ptr %138, align 8, !tbaa !339
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 %319
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %147, ptr readonly align 1 %329, i64 %325, i1 false)
  %330 = load i64, ptr %143, align 8, !tbaa !337
  br label %331

331:                                              ; preds = %327, %318
  %332 = phi i64 [ %319, %318 ], [ %330, %327 ]
  %333 = getelementptr inbounds nuw i8, ptr %147, i64 %325
  %334 = add i64 %332, %325
  store i64 %334, ptr %143, align 8, !tbaa !337
  %335 = icmp ugt i64 %322, %324
  br i1 %335, label %344, label %336

336:                                              ; preds = %331
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %142, i8 0, i64 16, i1 false)
  %337 = load i32, ptr %140, align 4, !tbaa !338
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %336
  store i32 0, ptr %19, align 8, !tbaa !83
  store i64 0, ptr %144, align 8, !tbaa !117
  br label %344

340:                                              ; preds = %336
  store i32 1, ptr %19, align 8, !tbaa !83
  br label %341

341:                                              ; preds = %340, %313
  %342 = phi ptr [ %311, %313 ], [ %321, %340 ]
  %343 = phi ptr [ %314, %313 ], [ %333, %340 ]
  br label %145, !llvm.loop !335

344:                                              ; preds = %331, %219, %209, %206, %339, %316, %218, %183
  %345 = phi ptr [ %314, %316 ], [ %333, %339 ], [ %184, %183 ], [ %147, %218 ], [ %147, %206 ], [ %333, %331 ], [ %147, %209 ], [ %147, %219 ]
  %346 = phi ptr [ %311, %316 ], [ %321, %339 ], [ %106, %183 ], [ %106, %218 ], [ %205, %206 ], [ %321, %331 ], [ %205, %209 ], [ %106, %219 ]
  %347 = ptrtoint ptr %346 to i64
  %348 = ptrtoint ptr %98 to i64
  %349 = sub i64 %347, %348
  store i64 %349, ptr %11, align 8, !tbaa !199
  %350 = ptrtoint ptr %345 to i64
  %351 = ptrtoint ptr %108 to i64
  %352 = sub i64 %350, %351
  store i64 %352, ptr %5, align 8, !tbaa !196
  %353 = load i32, ptr %140, align 4, !tbaa !338
  %354 = icmp eq i32 %353, 0
  %355 = load i32, ptr %74, align 4, !tbaa !326
  br i1 %354, label %356, label %372

356:                                              ; preds = %344
  %357 = icmp eq i32 %355, 1
  br i1 %357, label %358, label %362

358:                                              ; preds = %356
  %359 = load i64, ptr %133, align 8, !tbaa !234
  %360 = load i64, ptr %134, align 8, !tbaa !327
  %361 = sub i64 %359, %360
  br label %369

362:                                              ; preds = %356
  %363 = load i64, ptr %135, align 8, !tbaa !328
  %364 = load i64, ptr %132, align 8, !tbaa !144
  %365 = sub i64 %363, %364
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = load i64, ptr %133, align 8, !tbaa !234
  br label %369

369:                                              ; preds = %358, %362, %367
  %370 = phi i64 [ %361, %358 ], [ %368, %367 ], [ %365, %362 ]
  %371 = icmp ult i64 %370, -119
  br i1 %371, label %372, label %388

372:                                              ; preds = %344, %369
  %373 = icmp eq i32 %355, 1
  br i1 %373, label %374, label %376

374:                                              ; preds = %372
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %375, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !331
  br label %376

376:                                              ; preds = %374, %372
  %377 = load i32, ptr %87, align 8, !tbaa !333
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %384

379:                                              ; preds = %376
  %380 = load i64, ptr %7, align 8, !tbaa !195
  %381 = load i64, ptr %5, align 8, !tbaa !196
  %382 = sub i64 %380, %381
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i64 %382, ptr %383, align 8, !tbaa !334
  br label %384

384:                                              ; preds = %376, %379
  %385 = load i64, ptr %142, align 8, !tbaa !336
  %386 = load i64, ptr %143, align 8, !tbaa !337
  %387 = sub i64 %385, %386
  br label %388

388:                                              ; preds = %149, %302, %281, %180, %76, %81, %90, %45, %49, %40, %54, %369, %16, %10, %4, %384
  %389 = phi i64 [ -50, %76 ], [ -70, %4 ], [ -72, %10 ], [ %387, %384 ], [ %370, %369 ], [ %55, %54 ], [ -42, %16 ], [ -50, %45 ], [ %53, %49 ], [ -50, %40 ], [ -50, %90 ], [ -50, %81 ], [ %181, %180 ], [ -62, %149 ], [ %303, %302 ], [ %282, %281 ]
  ret i64 %389
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef range(i32 0, 3) %1, i64 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(224) %6, i64 224, i1 false), !tbaa.struct !115
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %10 = load i64, ptr %9, align 8, !tbaa !116
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %12 = load i32, ptr %11, align 8, !tbaa !4
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %14 = load ptr, ptr %13, align 8, !tbaa !340
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %18 = load ptr, ptr %17, align 8, !tbaa !341
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %22 = load i64, ptr %21, align 8, !tbaa !342
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %24 = load i32, ptr %23, align 8, !tbaa !343
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %26 = tail call ptr @ZSTD_createCDict_advanced2(ptr noundef nonnull %14, i64 noundef %22, i32 noundef 1, i32 noundef %24, ptr noundef nonnull %6, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %25)
  store ptr %26, ptr %17, align 8, !tbaa !341
  %27 = icmp eq ptr %26, null
  br i1 %27, label %178, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %26, ptr %29, align 8, !tbaa !114
  br label %30

30:                                               ; preds = %16, %3, %28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %36 = load ptr, ptr %35, align 8, !tbaa !122
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %32, i64 6068
  %40 = load i32, ptr %39, align 4, !tbaa !259
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %40, ptr %41, align 4, !tbaa !44
  br label %42

42:                                               ; preds = %30, %34, %38
  %43 = icmp eq i32 %1, 2
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = add i64 %2, 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %45, ptr %46, align 8, !tbaa !117
  br label %47

47:                                               ; preds = %44, %42
  %48 = icmp eq ptr %8, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %47
  br i1 %33, label %50, label %54

50:                                               ; preds = %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %52 = load i64, ptr %51, align 8, !tbaa !117
  %53 = add i64 %52, -1
  br label %99

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !257
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %58 = load i64, ptr %57, align 8, !tbaa !117
  %59 = add i64 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %63 = load i32, ptr %62, align 4
  br label %72

64:                                               ; preds = %47
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %66 = load i64, ptr %65, align 8, !tbaa !117
  %67 = add i64 %66, -1
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %71 = load i32, ptr %70, align 4
  br i1 %33, label %99, label %72

72:                                               ; preds = %54, %64
  %73 = phi i32 [ %63, %54 ], [ %71, %64 ]
  %74 = phi i32 [ %61, %54 ], [ %69, %64 ]
  %75 = phi i64 [ %59, %54 ], [ %67, %64 ]
  %76 = phi i64 [ %56, %54 ], [ %10, %64 ]
  %77 = getelementptr inbounds nuw i8, ptr %32, i64 384
  %78 = load i32, ptr %77, align 8, !tbaa !260
  %79 = icmp ult i32 %78, 10
  br i1 %79, label %81, label %80, !prof !238, !nosanitize !130

80:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 18) #38, !nosanitize !130
  unreachable, !nosanitize !130

81:                                               ; preds = %72
  %82 = getelementptr inbounds nuw i8, ptr %32, i64 244
  %83 = load i32, ptr %82, align 4, !tbaa !261
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = zext nneg i32 %78 to i64, !nosanitize !130
  %87 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !116
  %89 = icmp ule i64 %75, %88
  %90 = icmp eq i64 %75, -1
  %91 = or i1 %90, %89
  %92 = icmp eq i32 %74, 0
  br i1 %91, label %96, label %93

93:                                               ; preds = %85
  %94 = icmp eq i32 %73, 1
  %95 = select i1 %94, i1 %92, i1 false
  br i1 %95, label %102, label %99

96:                                               ; preds = %85
  %97 = icmp ne i32 %73, 2
  %98 = select i1 %97, i1 %92, i1 false
  br i1 %98, label %102, label %99

99:                                               ; preds = %50, %96, %93, %64
  %100 = phi i64 [ %53, %50 ], [ %75, %96 ], [ %75, %93 ], [ %67, %64 ]
  %101 = phi i64 [ 0, %50 ], [ %76, %96 ], [ %76, %93 ], [ %10, %64 ]
  br label %102

102:                                              ; preds = %81, %93, %96, %99
  %103 = phi i64 [ %100, %99 ], [ %75, %96 ], [ %75, %81 ], [ %75, %93 ]
  %104 = phi i64 [ %101, %99 ], [ %76, %96 ], [ %76, %81 ], [ %76, %93 ]
  %105 = phi i32 [ 0, %99 ], [ 1, %96 ], [ 1, %81 ], [ 1, %93 ]
  %106 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %5, ptr noundef nonnull %4, i64 noundef %103, i64 noundef %104, i32 noundef %105)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %106, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %107 = getelementptr inbounds nuw i8, ptr %4, i64 140
  %108 = load i32, ptr %107, align 4, !tbaa !79
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %112 = load i32, ptr %111, align 4, !tbaa !75
  %113 = icmp ugt i32 %112, 6
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, ptr %106, align 4, !tbaa !70
  %116 = icmp ugt i32 %115, 16
  %117 = select i1 %116, i32 1, i32 2
  br label %118

118:                                              ; preds = %102, %110, %114
  %119 = phi i32 [ %108, %102 ], [ 2, %110 ], [ %117, %114 ]
  store i32 %119, ptr %107, align 4, !tbaa !79
  %120 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %121 = load i32, ptr %120, align 8, !tbaa !80
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %125 = load i32, ptr %124, align 4, !tbaa !75
  %126 = icmp ugt i32 %125, 6
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, ptr %106, align 4, !tbaa !70
  %129 = icmp ugt i32 %128, 26
  %130 = select i1 %129, i32 1, i32 2
  br label %131

131:                                              ; preds = %118, %123, %127
  %132 = phi i32 [ %121, %118 ], [ 2, %123 ], [ %130, %127 ]
  store i32 %132, ptr %120, align 8, !tbaa !80
  %133 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %134 = load i32, ptr %133, align 8, !tbaa !78
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %138 = load i32, ptr %137, align 4, !tbaa !75
  %139 = add i32 %138, -6
  %140 = icmp ult i32 %139, -3
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load i32, ptr %106, align 4, !tbaa !70
  %143 = icmp ugt i32 %142, 14
  %144 = select i1 %143, i32 1, i32 2
  br label %145

145:                                              ; preds = %131, %136, %141
  %146 = phi i32 [ %134, %131 ], [ %144, %141 ], [ 2, %136 ]
  store i32 %146, ptr %133, align 8, !tbaa !78
  %147 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %148 = load i64, ptr %147, align 8, !tbaa !81
  %149 = icmp eq i64 %148, 0
  %150 = select i1 %149, i64 131072, i64 %148
  store i64 %150, ptr %147, align 8, !tbaa !81
  %151 = getelementptr inbounds nuw i8, ptr %4, i64 216
  %152 = load i32, ptr %151, align 8, !tbaa !82
  %153 = getelementptr inbounds nuw i8, ptr %4, i64 44
  %154 = load i32, ptr %153, align 4, !tbaa !44
  %155 = icmp eq i32 %152, 0
  %156 = icmp slt i32 %154, 10
  %157 = select i1 %156, i32 2, i32 1
  %158 = select i1 %155, i32 %157, i32 %152
  store i32 %158, ptr %151, align 8, !tbaa !82
  %159 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef nonnull %0, ptr noundef %8, i64 noundef %10, i32 noundef %12, i32 noundef 0, ptr noundef %32, ptr noundef nonnull %4, i64 noundef %103, i32 noundef 1)
  %160 = icmp ult i64 %159, -119
  br i1 %160, label %161, label %178

161:                                              ; preds = %145
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %162, i8 0, i64 16, i1 false)
  %164 = load i32, ptr %163, align 4, !tbaa !326
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %168 = load i64, ptr %167, align 8, !tbaa !234
  %169 = icmp eq i64 %168, %103
  %170 = zext i1 %169 to i64
  %171 = add i64 %168, %170
  br label %172

172:                                              ; preds = %161, %166
  %173 = phi i64 [ %171, %166 ], [ 0, %161 ]
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  store i64 %173, ptr %174, align 8, !tbaa !328
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %175, i8 0, i64 16, i1 false)
  store i32 1, ptr %176, align 8, !tbaa !83
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  store i32 0, ptr %177, align 4, !tbaa !338
  br label %178

178:                                              ; preds = %172, %145, %20
  %179 = phi i64 [ -64, %20 ], [ %159, %145 ], [ 0, %172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i64 %179
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2_simpleArgs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef captures(none) %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = alloca %struct.ZSTD_outBuffer_s, align 8
  %10 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %1, ptr %9, align 8, !tbaa !193
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %11, align 8, !tbaa !195
  %12 = load i64, ptr %3, align 8, !tbaa !116
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %12, ptr %13, align 8, !tbaa !196
  store ptr %4, ptr %10, align 8, !tbaa !197
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %5, ptr %14, align 8, !tbaa !198
  %15 = load i64, ptr %6, align 8, !tbaa !116
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %15, ptr %16, align 8, !tbaa !199
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %7)
  %18 = load i64, ptr %13, align 8, !tbaa !196
  store i64 %18, ptr %3, align 8, !tbaa !116
  %19 = load i64, ptr %16, align 8, !tbaa !199
  store i64 %19, ptr %6, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ZSTD_SequencePosition, align 8
  %9 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %6)
  %10 = icmp ult i64 %9, -119
  br i1 %10, label %11, label %251

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %14 = load i32, ptr %13, align 8, !tbaa !173
  %15 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %12, i64 noundef %6, i32 noundef %14)
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 %15
  %17 = sub i64 %2, %15
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %19 = load i32, ptr %18, align 4, !tbaa !236
  %20 = icmp ne i32 %19, 0
  %21 = icmp ne i64 %6, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %25 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %24, ptr noundef captures(none) %5, i64 noundef %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %27 = load i32, ptr %26, align 4, !tbaa !344
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, ptr @ZSTD_transferSequences_wBlockDelim, ptr @ZSTD_transferSequences_noDelim
  br label %41

30:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %32 = load i32, ptr %31, align 4, !tbaa !344
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, ptr @ZSTD_transferSequences_wBlockDelim, ptr @ZSTD_transferSequences_noDelim
  %35 = icmp eq i64 %6, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = icmp ugt i64 %17, 3
  br i1 %37, label %38, label %231

38:                                               ; preds = %36
  store i32 1, ptr %16, align 1, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %39 = add nsw i64 %15, 3
  %40 = add i64 %17, -3
  br label %238

41:                                               ; preds = %23, %30
  %42 = phi ptr [ %29, %23 ], [ %34, %30 ]
  %43 = phi ptr [ %26, %23 ], [ %31, %30 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %58

58:                                               ; preds = %223, %41
  %59 = phi i64 [ %17, %41 ], [ %226, %223 ]
  %60 = phi i64 [ 0, %41 ], [ %225, %223 ]
  %61 = phi i64 [ %6, %41 ], [ %227, %223 ]
  %62 = phi ptr [ %5, %41 ], [ %228, %223 ]
  %63 = phi ptr [ %16, %41 ], [ %229, %223 ]
  %64 = load i32, ptr %43, align 4, !tbaa !344
  %65 = load i64, ptr %44, align 8, !tbaa !234
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %58
  %68 = load i64, ptr %8, align 8
  %69 = and i64 %68, 4294967295
  %70 = icmp ult i64 %69, %4
  br i1 %70, label %74, label %231

71:                                               ; preds = %74
  %72 = add i64 %75, 1
  %73 = icmp eq i64 %72, %4
  br i1 %73, label %231, label %74, !llvm.loop !345

74:                                               ; preds = %67, %71
  %75 = phi i64 [ %72, %71 ], [ %69, %67 ]
  %76 = phi i64 [ %86, %71 ], [ 0, %67 ]
  %77 = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %75
  %78 = load i32, ptr %77, align 4, !tbaa !203
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %81 = load i32, ptr %80, align 4, !tbaa !206
  %82 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %83 = load i32, ptr %82, align 4, !tbaa !205
  %84 = add i32 %83, %81
  %85 = zext i32 %84 to i64
  %86 = add i64 %76, %85
  br i1 %79, label %87, label %71

87:                                               ; preds = %74
  %88 = icmp eq i32 %83, 0
  %89 = select i1 %88, i64 %86, i64 -107
  %90 = icmp ult i64 %89, -119
  br i1 %90, label %91, label %231

91:                                               ; preds = %87
  %92 = icmp ugt i64 %89, %65
  %93 = icmp ugt i64 %89, %61
  %94 = or i1 %92, %93
  br i1 %94, label %231, label %95

95:                                               ; preds = %91
  %96 = icmp eq i64 %89, %61
  br label %101

97:                                               ; preds = %58
  %98 = call i64 @llvm.umin.i64(i64 range(i64 1, 0) %61, i64 %65)
  %99 = icmp ule i64 %61, %65
  %100 = icmp ult i64 %98, -119
  br i1 %100, label %101, label %231

101:                                              ; preds = %97, %95
  %102 = phi i1 [ %96, %95 ], [ %99, %97 ]
  %103 = phi i64 [ %86, %95 ], [ %98, %97 ]
  %104 = zext i1 %102 to i32
  %105 = load ptr, ptr %46, align 8, !tbaa !191
  store ptr %105, ptr %47, align 8, !tbaa !192
  %106 = load ptr, ptr %45, align 8, !tbaa !175
  store ptr %106, ptr %48, align 8, !tbaa !179
  store i32 0, ptr %49, align 8, !tbaa !187
  %107 = load i32, ptr %50, align 8, !tbaa !346
  %108 = call i64 %42(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3, i64 noundef %4, ptr noundef %62, i64 noundef %103, i32 noundef %107) #34, !callees !347, !inline_history !348
  %109 = icmp ult i64 %108, -119
  br i1 %109, label %110, label %231

110:                                              ; preds = %101
  %111 = icmp ult i64 %108, 7
  br i1 %111, label %112, label %123

112:                                              ; preds = %110
  %113 = add nuw nsw i64 %108, 3
  %114 = icmp ugt i64 %113, %59
  br i1 %114, label %231, label %115

115:                                              ; preds = %112
  %116 = trunc nuw nsw i64 %108 to i32
  %117 = shl nuw nsw i32 %116, 3
  %118 = or disjoint i32 %117, %104
  %119 = trunc nuw nsw i32 %118 to i16
  store i16 %119, ptr %63, align 1, !tbaa !222
  %120 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 0, ptr %120, align 1, !tbaa !185
  %121 = getelementptr inbounds nuw i8, ptr %63, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %121, ptr readonly align 1 %62, i64 %108, i1 false)
  %122 = add i64 %113, %60
  br label %223, !llvm.loop !349

123:                                              ; preds = %110
  %124 = icmp ult i64 %59, 3
  br i1 %124, label %231, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %51, align 8, !tbaa !55
  %127 = load ptr, ptr %52, align 8, !tbaa !56
  %128 = getelementptr inbounds nuw i8, ptr %63, i64 3
  %129 = add i64 %59, -3
  %130 = load ptr, ptr %53, align 8, !tbaa !57
  %131 = load i64, ptr %54, align 8, !tbaa !58
  %132 = load i32, ptr %55, align 8, !tbaa !11
  %133 = load ptr, ptr %46, align 8, !tbaa !191
  %134 = load ptr, ptr %47, align 8, !tbaa !192
  %135 = ptrtoint ptr %134 to i64
  %136 = ptrtoint ptr %133 to i64
  %137 = sub i64 %135, %136
  %138 = call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %128, i64 noundef %129, ptr noundef %133, i64 noundef %137, ptr noundef nonnull readonly %45, ptr noundef %126, ptr noundef %127, ptr noundef nonnull readonly %12, ptr noundef %130, i64 noundef %131, i32 noundef %132)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %125
  %141 = icmp eq i64 %138, -70
  %142 = icmp ule i64 %108, %129
  %143 = and i1 %142, %141
  br i1 %143, label %156, label %144

144:                                              ; preds = %140
  %145 = icmp ult i64 %138, -119
  br i1 %145, label %146, label %231

146:                                              ; preds = %144
  %147 = load i32, ptr %56, align 4, !tbaa !92
  %148 = call i32 @llvm.umax.i32(i32 %147, i32 7)
  %149 = add i32 %148, -1
  %150 = zext nneg i32 %149 to i64
  %151 = lshr i64 %108, %150
  %152 = add i64 %108, -2
  %153 = sub i64 %152, %151
  %154 = icmp ult i64 %138, %153
  %155 = select i1 %154, i64 %138, i64 0
  br label %156

156:                                              ; preds = %146, %140, %125
  %157 = phi i64 [ %155, %146 ], [ 0, %140 ], [ 0, %125 ]
  %158 = load i32, ptr %57, align 8, !tbaa !241
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %156
  %161 = load ptr, ptr %48, align 8, !tbaa !179
  %162 = load ptr, ptr %45, align 8, !tbaa !175
  %163 = ptrtoint ptr %161 to i64
  %164 = ptrtoint ptr %162 to i64
  %165 = sub i64 %163, %164
  %166 = load ptr, ptr %47, align 8, !tbaa !192
  %167 = load ptr, ptr %46, align 8, !tbaa !191
  %168 = ptrtoint ptr %166 to i64
  %169 = ptrtoint ptr %167 to i64
  %170 = sub i64 %168, %169
  %171 = icmp ugt i64 %165, 31
  %172 = icmp ugt i64 %170, 9
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %177, label %174

174:                                              ; preds = %160
  %175 = call fastcc i32 @ZSTD_isRLE(ptr noundef %62, i64 noundef %108)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174, %160, %156
  switch i64 %157, label %202 [
    i64 0, label %178
    i64 1, label %190
  ]

178:                                              ; preds = %177
  %179 = add nuw i64 %108, 3
  %180 = icmp ugt i64 %179, %59
  br i1 %180, label %231, label %181

181:                                              ; preds = %178
  %182 = trunc i64 %108 to i32
  %183 = shl i32 %182, 3
  %184 = or disjoint i32 %183, %104
  %185 = trunc i32 %184 to i16
  store i16 %185, ptr %63, align 1, !tbaa !222
  %186 = lshr i32 %183, 16
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %187, ptr %188, align 1, !tbaa !185
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %128, ptr readonly align 1 %62, i64 %108, i1 false)
  %189 = icmp ult i64 %108, -122
  br i1 %189, label %219, label %231

190:                                              ; preds = %177, %174
  %191 = icmp eq i64 %59, 3
  br i1 %191, label %231, label %192

192:                                              ; preds = %190
  %193 = load i8, ptr %62, align 1, !tbaa !185
  %194 = trunc i64 %108 to i32
  %195 = shl i32 %194, 3
  %196 = or disjoint i32 %195, %104
  %197 = trunc i32 %196 to i16
  %198 = or disjoint i16 %197, 2
  store i16 %198, ptr %63, align 1, !tbaa !222
  %199 = lshr i32 %195, 16
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %200, ptr %201, align 1, !tbaa !185
  store i8 %193, ptr %128, align 1, !tbaa !185
  br label %219

202:                                              ; preds = %177
  %203 = load ptr, ptr %51, align 8, !tbaa !350
  %204 = load ptr, ptr %52, align 8, !tbaa !351
  store ptr %204, ptr %51, align 8, !tbaa !350
  store ptr %203, ptr %52, align 8, !tbaa !351
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 5604
  %206 = load i32, ptr %205, align 4, !tbaa !156
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  store i32 1, ptr %205, align 4, !tbaa !156
  br label %209

209:                                              ; preds = %208, %202
  %210 = select i1 %102, i32 5, i32 4
  %211 = trunc i64 %157 to i32
  %212 = shl i32 %211, 3
  %213 = or disjoint i32 %212, %210
  %214 = trunc i32 %213 to i16
  store i16 %214, ptr %63, align 1, !tbaa !222
  %215 = lshr i32 %212, 16
  %216 = trunc i32 %215 to i8
  %217 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %216, ptr %217, align 1, !tbaa !185
  %218 = add nuw i64 %157, 3
  br label %219

219:                                              ; preds = %209, %192, %181
  %220 = phi i64 [ %179, %181 ], [ 4, %192 ], [ %218, %209 ]
  %221 = add i64 %220, %60
  br i1 %102, label %233, label %222

222:                                              ; preds = %219
  store i32 0, ptr %57, align 8, !tbaa !241
  br label %223

223:                                              ; preds = %222, %115
  %224 = phi i64 [ %113, %115 ], [ %220, %222 ]
  %225 = phi i64 [ %122, %115 ], [ %221, %222 ]
  %226 = sub i64 %59, %224
  %227 = sub i64 %61, %108
  %228 = getelementptr inbounds nuw i8, ptr %62, i64 %108
  %229 = getelementptr inbounds nuw i8, ptr %63, i64 %224
  %230 = icmp eq i64 %227, 0
  br i1 %230, label %233, label %58

231:                                              ; preds = %190, %87, %91, %144, %97, %123, %112, %67, %181, %101, %178, %71, %36
  %232 = phi i64 [ -107, %71 ], [ -70, %36 ], [ -70, %190 ], [ %89, %87 ], [ -107, %91 ], [ %138, %144 ], [ %98, %97 ], [ -70, %123 ], [ -70, %112 ], [ -107, %67 ], [ %179, %181 ], [ %108, %101 ], [ -70, %178 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %251

233:                                              ; preds = %219, %223
  %234 = phi i64 [ %225, %223 ], [ %221, %219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %235 = icmp ult i64 %234, -119
  %236 = add i64 %234, %15
  %237 = sub i64 %17, %234
  br i1 %235, label %238, label %251

238:                                              ; preds = %38, %233
  %239 = phi i64 [ %40, %38 ], [ %237, %233 ]
  %240 = phi i64 [ %39, %38 ], [ %236, %233 ]
  %241 = load i32, ptr %18, align 4, !tbaa !236
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %238
  %244 = icmp ugt i64 %239, 3
  br i1 %244, label %245, label %251

245:                                              ; preds = %243
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %247 = call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %246) #39
  %248 = trunc i64 %247 to i32
  %249 = getelementptr inbounds nuw i8, ptr %1, i64 %240
  store i32 %248, ptr %249, align 1, !tbaa !4
  %250 = add i64 %240, 4
  br label %251

251:                                              ; preds = %231, %245, %243, %238, %233, %7
  %252 = phi i64 [ %9, %7 ], [ %240, %238 ], [ %234, %233 ], [ %250, %245 ], [ -70, %243 ], [ %232, %231 ]
  ret i64 %252
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -70, 20) i64 @ZSTD_writeFrameHeader(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #8 {
  %6 = icmp ne i32 %4, 0
  %7 = zext i1 %6 to i32
  %8 = icmp ugt i32 %4, 255
  %9 = zext i1 %8 to i32
  %10 = add nuw nsw i32 %7, %9
  %11 = icmp ugt i32 %4, 65535
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %10, %12
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i32, ptr %15, align 8, !tbaa !94
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %13, i32 0
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !93
  %21 = icmp sgt i32 %20, 0
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !86
  %24 = shl nuw i32 1, %23
  %25 = load i32, ptr %14, align 8, !tbaa !45
  %26 = icmp ne i32 %25, 0
  %27 = zext i32 %24 to i64
  %28 = icmp ule i64 %3, %27
  %29 = select i1 %26, i1 %28, i1 false
  %30 = trunc i32 %23 to i8
  %31 = shl i8 %30, 3
  %32 = add i8 %31, -80
  br i1 %26, label %33, label %42

33:                                               ; preds = %5
  %34 = icmp ugt i64 %3, 255
  %35 = zext i1 %34 to i32
  %36 = icmp ugt i64 %3, 65791
  %37 = zext i1 %36 to i32
  %38 = add nuw nsw i32 %35, %37
  %39 = icmp ugt i64 %3, 4294967294
  %40 = zext i1 %39 to i32
  %41 = add nuw nsw i32 %38, %40
  br label %42

42:                                               ; preds = %5, %33
  %43 = phi i32 [ %41, %33 ], [ 0, %5 ]
  %44 = select i1 %21, i32 4, i32 0
  %45 = add nuw nsw i32 %44, %18
  %46 = select i1 %29, i32 32, i32 0
  %47 = or disjoint i32 %46, %45
  %48 = shl nuw nsw i32 %43, 6
  %49 = or disjoint i32 %48, %47
  %50 = trunc nuw i32 %49 to i8
  %51 = icmp ult i64 %1, 18
  br i1 %51, label %95, label %52

52:                                               ; preds = %42
  %53 = load i32, ptr %2, align 8, !tbaa !85
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -47205080, ptr %0, align 1, !tbaa !4
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i64 [ 4, %55 ], [ 0, %52 ]
  %58 = or disjoint i64 %57, 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %57
  store i8 %50, ptr %59, align 1, !tbaa !185
  br i1 %29, label %63, label %60

60:                                               ; preds = %56
  %61 = or disjoint i64 %57, 2
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %58
  store i8 %32, ptr %62, align 1, !tbaa !185
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %58, %56 ], [ %61, %60 ]
  switch i32 %18, label %76 [
    i32 3, label %73
    i32 1, label %65
    i32 2, label %69
  ]

65:                                               ; preds = %63
  %66 = trunc i32 %4 to i8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  store i8 %66, ptr %67, align 1, !tbaa !185
  %68 = add nuw nsw i64 %64, 1
  br label %76

69:                                               ; preds = %63
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  %71 = trunc i32 %4 to i16
  store i16 %71, ptr %70, align 1, !tbaa !222
  %72 = add nuw nsw i64 %64, 2
  br label %76

73:                                               ; preds = %63
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  store i32 %4, ptr %74, align 1, !tbaa !4
  %75 = add nuw nsw i64 %64, 4
  br label %76

76:                                               ; preds = %63, %73, %69, %65
  %77 = phi i64 [ %64, %63 ], [ %75, %73 ], [ %68, %65 ], [ %72, %69 ]
  switch i32 %43, label %78 [
    i32 3, label %92
    i32 1, label %83
    i32 2, label %88
  ]

78:                                               ; preds = %76
  br i1 %29, label %79, label %95

79:                                               ; preds = %78
  %80 = trunc i64 %3 to i8
  %81 = add nuw nsw i64 %77, 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  store i8 %80, ptr %82, align 1, !tbaa !185
  br label %95

83:                                               ; preds = %76
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  %85 = trunc i64 %3 to i16
  %86 = add i16 %85, -256
  store i16 %86, ptr %84, align 1, !tbaa !222
  %87 = add nuw nsw i64 %77, 2
  br label %95

88:                                               ; preds = %76
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  %90 = trunc i64 %3 to i32
  store i32 %90, ptr %89, align 1, !tbaa !4
  %91 = add nuw nsw i64 %77, 4
  br label %95

92:                                               ; preds = %76
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  store i64 %3, ptr %93, align 1, !tbaa !116
  %94 = add nuw nsw i64 %77, 8
  br label %95

95:                                               ; preds = %83, %88, %92, %79, %78, %42
  %96 = phi i64 [ -70, %42 ], [ %81, %79 ], [ %77, %78 ], [ %94, %92 ], [ %87, %83 ], [ %91, %88 ]
  ret i64 %96
}

declare i32 @ZSTD_XXH64_update(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @convertSequences_noRepcodes(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #18 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = add i64 %2, 1
  br label %7

7:                                                ; preds = %5, %31
  %8 = phi i64 [ 0, %5 ], [ %33, %31 ]
  %9 = phi i64 [ 0, %5 ], [ %32, %31 ]
  %10 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !203
  %12 = add i32 %11, 3
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %8
  store i32 %12, ptr %13, align 4, !tbaa !183
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !206
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i16 %16, ptr %17, align 4, !tbaa !180
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %19 = load i32, ptr %18, align 4, !tbaa !205
  %20 = trunc i32 %19 to i16
  %21 = add i16 %20, -3
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 6
  store i16 %21, ptr %22, align 2, !tbaa !184
  %23 = icmp ugt i32 %19, 65538
  br i1 %23, label %24, label %26, !prof !352

24:                                               ; preds = %7
  %25 = add nuw i64 %8, 1
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi i64 [ %25, %24 ], [ %9, %7 ]
  %28 = icmp ugt i32 %15, 65535
  br i1 %28, label %29, label %31, !prof !352

29:                                               ; preds = %26
  %30 = add i64 %6, %8
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i64 [ %30, %29 ], [ %27, %26 ]
  %33 = add nuw i64 %8, 1
  %34 = icmp eq i64 %33, %2
  br i1 %34, label %35, label %7, !llvm.loop !353

35:                                               ; preds = %31, %3
  %36 = phi i64 [ 0, %3 ], [ %32, %31 ]
  ret i64 %36
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -107, 1) i64 @ZSTD_convertBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
  %5 = alloca %struct.repcodes_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %8 = load i64, ptr %7, align 8, !tbaa !354
  %9 = icmp ult i64 %2, %8
  br i1 %9, label %10, label %203

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false)
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = add i64 %2, -1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %199, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %5, align 8
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %25 = load i32, ptr %20, align 4
  %26 = load i32, ptr %21, align 8
  %27 = load ptr, ptr %23, align 8, !tbaa !179
  br label %79

28:                                               ; preds = %10
  %29 = load ptr, ptr %6, align 8, !tbaa !244
  %30 = add i64 %2, -1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %2
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %34, ptr %35, align 8, !tbaa !243
  br label %199

36:                                               ; preds = %28, %60
  %37 = phi i64 [ %62, %60 ], [ 0, %28 ]
  %38 = phi i64 [ %61, %60 ], [ 0, %28 ]
  %39 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %37
  %40 = load i32, ptr %39, align 4, !tbaa !203
  %41 = add i32 %40, 3
  %42 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %37
  store i32 %41, ptr %42, align 4, !tbaa !183
  %43 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %44 = load i32, ptr %43, align 4, !tbaa !206
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds nuw i8, ptr %42, i64 4
  store i16 %45, ptr %46, align 4, !tbaa !180
  %47 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %48 = load i32, ptr %47, align 4, !tbaa !205
  %49 = trunc i32 %48 to i16
  %50 = add i16 %49, -3
  %51 = getelementptr inbounds nuw i8, ptr %42, i64 6
  store i16 %50, ptr %51, align 2, !tbaa !184
  %52 = icmp ugt i32 %48, 65538
  br i1 %52, label %53, label %55, !prof !352

53:                                               ; preds = %36
  %54 = add nuw i64 %37, 1
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi i64 [ %54, %53 ], [ %38, %36 ]
  %57 = icmp ugt i32 %44, 65535
  br i1 %57, label %58, label %60, !prof !352

58:                                               ; preds = %55
  %59 = add i64 %37, %2
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i64 [ %59, %58 ], [ %56, %55 ]
  %62 = add nuw i64 %37, 1
  %63 = icmp eq i64 %62, %30
  br i1 %63, label %64, label %36, !llvm.loop !353

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %2
  %66 = getelementptr inbounds i8, ptr %65, i64 -8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %66, ptr %67, align 8, !tbaa !243
  %68 = icmp eq i64 %61, 0
  br i1 %68, label %166, label %69

69:                                               ; preds = %64
  %70 = icmp ugt i64 %61, %30
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  br i1 %70, label %76, label %73

73:                                               ; preds = %69
  store i32 2, ptr %71, align 8, !tbaa !355
  %74 = trunc i64 %61 to i32
  %75 = add i32 %74, -1
  store i32 %75, ptr %72, align 4, !tbaa !356
  br label %166

76:                                               ; preds = %69
  store i32 1, ptr %71, align 8, !tbaa !355
  %77 = sub i64 %61, %2
  %78 = trunc i64 %77 to i32
  store i32 %78, ptr %72, align 4, !tbaa !356
  br label %166

79:                                               ; preds = %18, %159
  %80 = phi ptr [ %27, %18 ], [ %136, %159 ]
  %81 = phi i32 [ %26, %18 ], [ %160, %159 ]
  %82 = phi i32 [ %25, %18 ], [ %161, %159 ]
  %83 = phi i64 [ 0, %18 ], [ %163, %159 ]
  %84 = phi i32 [ %19, %18 ], [ %162, %159 ]
  %85 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %83
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %87 = load i32, ptr %86, align 4, !tbaa !206
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %89 = load i32, ptr %88, align 4, !tbaa !205
  %90 = icmp eq i32 %87, 0
  %91 = zext i1 %90 to i32
  %92 = load i32, ptr %85, align 4, !tbaa !203
  %93 = add i32 %92, 3
  %94 = icmp ne i32 %92, %84
  %95 = select i1 %90, i1 true, i1 %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %79
  %97 = icmp eq i32 %92, %82
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  %99 = select i1 %90, i32 1, i32 2
  br label %109

100:                                              ; preds = %96
  %101 = icmp eq i32 %92, %81
  br i1 %101, label %102, label %104

102:                                              ; preds = %100
  %103 = xor i32 %91, 3
  br label %109

104:                                              ; preds = %100
  br i1 %90, label %105, label %109

105:                                              ; preds = %104
  %106 = add i32 %84, -1
  %107 = icmp eq i32 %92, %106
  %108 = select i1 %107, i32 3, i32 %93
  br label %119

109:                                              ; preds = %79, %98, %102, %104
  %110 = phi i32 [ %99, %98 ], [ %103, %102 ], [ 1, %79 ], [ %93, %104 ]
  %111 = icmp ugt i32 %87, 65535
  br i1 %111, label %112, label %119, !prof !357

112:                                              ; preds = %109
  store i32 1, ptr %22, align 8, !tbaa !187
  %113 = load ptr, ptr %6, align 8, !tbaa !175
  %114 = ptrtoint ptr %80 to i64
  %115 = ptrtoint ptr %113 to i64
  %116 = sub i64 %114, %115
  %117 = lshr exact i64 %116, 3
  %118 = trunc i64 %117 to i32
  store i32 %118, ptr %24, align 4, !tbaa !188
  br label %119

119:                                              ; preds = %105, %112, %109
  %120 = phi i32 [ %108, %105 ], [ %110, %112 ], [ %110, %109 ]
  %121 = zext i32 %89 to i64
  %122 = trunc i32 %87 to i16
  %123 = getelementptr inbounds nuw i8, ptr %80, i64 4
  store i16 %122, ptr %123, align 4, !tbaa !180
  store i32 %120, ptr %80, align 4, !tbaa !183
  %124 = add nsw i64 %121, -3
  %125 = icmp ugt i64 %124, 65535
  br i1 %125, label %126, label %133, !prof !352

126:                                              ; preds = %119
  store i32 2, ptr %22, align 8, !tbaa !187
  %127 = load ptr, ptr %6, align 8, !tbaa !175
  %128 = ptrtoint ptr %80 to i64
  %129 = ptrtoint ptr %127 to i64
  %130 = sub i64 %128, %129
  %131 = lshr exact i64 %130, 3
  %132 = trunc i64 %131 to i32
  store i32 %132, ptr %24, align 4, !tbaa !188
  br label %133

133:                                              ; preds = %119, %126
  %134 = trunc i64 %124 to i16
  %135 = getelementptr inbounds nuw i8, ptr %80, i64 6
  store i16 %134, ptr %135, align 2, !tbaa !184
  %136 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %137 = icmp ugt i32 %120, 3
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  store i32 %82, ptr %21, align 8, !tbaa !4
  store i32 %84, ptr %20, align 4, !tbaa !4
  %139 = add i32 %120, -3
  br label %156

140:                                              ; preds = %133
  %141 = xor i1 %90, true
  %142 = sext i1 %141 to i32
  %143 = add nsw i32 %120, %142
  switch i32 %143, label %146 [
    i32 0, label %159
    i32 3, label %144
  ]

144:                                              ; preds = %140
  %145 = add i32 %84, -1
  br label %152

146:                                              ; preds = %140
  %147 = icmp ugt i32 %143, 2
  br i1 %147, label %205, label %148

148:                                              ; preds = %146
  %149 = zext nneg i32 %143 to i64
  %150 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !4
  br label %152

152:                                              ; preds = %148, %144
  %153 = phi i32 [ %145, %144 ], [ %151, %148 ]
  %154 = icmp eq i32 %143, 1
  %155 = select i1 %154, i32 %81, i32 %82
  store i32 %155, ptr %21, align 8, !tbaa !4
  store i32 %84, ptr %20, align 4, !tbaa !4
  br label %156

156:                                              ; preds = %152, %138
  %157 = phi i32 [ %155, %152 ], [ %82, %138 ]
  %158 = phi i32 [ %153, %152 ], [ %139, %138 ]
  store i32 %158, ptr %5, align 8, !tbaa !4
  br label %159

159:                                              ; preds = %140, %156
  %160 = phi i32 [ %81, %140 ], [ %157, %156 ]
  %161 = phi i32 [ %82, %140 ], [ %84, %156 ]
  %162 = phi i32 [ %84, %140 ], [ %158, %156 ]
  %163 = add nuw i64 %83, 1
  %164 = icmp eq i64 %163, %16
  br i1 %164, label %165, label %79, !llvm.loop !358

165:                                              ; preds = %159
  store ptr %136, ptr %23, align 8, !tbaa !179
  br label %166

166:                                              ; preds = %165, %64, %76, %73
  %167 = icmp ugt i64 %2, 1
  %168 = and i1 %167, %14
  br i1 %168, label %169, label %199

169:                                              ; preds = %166
  %170 = icmp ugt i64 %2, 3
  br i1 %170, label %171, label %186

171:                                              ; preds = %169
  %172 = add i64 %2, 4294967294
  %173 = add i64 %2, 4294967292
  %174 = and i64 %173, 4294967295
  %175 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !203
  %177 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %176, ptr %177, align 8, !tbaa !4
  %178 = add i64 %2, 4294967293
  %179 = and i64 %178, 4294967295
  %180 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !203
  %182 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %181, ptr %182, align 4, !tbaa !4
  %183 = and i64 %172, 4294967295
  %184 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !203
  store i32 %185, ptr %5, align 8, !tbaa !4
  br label %199

186:                                              ; preds = %169
  %187 = icmp eq i64 %2, 3
  br i1 %187, label %188, label %195

188:                                              ; preds = %186
  %189 = load i32, ptr %5, align 8, !tbaa !4
  %190 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %189, ptr %190, align 8, !tbaa !4
  %191 = load i32, ptr %1, align 4, !tbaa !203
  %192 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %191, ptr %192, align 4, !tbaa !4
  %193 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %194 = load i32, ptr %193, align 4, !tbaa !203
  store i32 %194, ptr %5, align 8, !tbaa !4
  br label %199

195:                                              ; preds = %186
  %196 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %197 = load <2 x i32>, ptr %5, align 8, !tbaa !4
  store <2 x i32> %197, ptr %196, align 4, !tbaa !4
  %198 = load i32, ptr %1, align 4, !tbaa !203
  store i32 %198, ptr %5, align 8, !tbaa !4
  br label %199

199:                                              ; preds = %15, %32, %171, %195, %188, %166
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %201 = load ptr, ptr %200, align 8, !tbaa !56
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %202, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  br label %203

203:                                              ; preds = %4, %199
  %204 = phi i64 [ 0, %199 ], [ -107, %4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret i64 %204

205:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 46) #37, !nosanitize !130
  unreachable, !nosanitize !130
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_get1BlockSummary(ptr dead_on_unwind noalias writable writeonly sret(%struct.BlockSummary) align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #18 {
  %4 = icmp ugt i64 %2, 3
  br i1 %4, label %5, label %42

5:                                                ; preds = %3
  %6 = add i64 %2, -3
  br label %7

7:                                                ; preds = %5, %39
  %8 = phi i64 [ %23, %39 ], [ 0, %5 ]
  %9 = phi i64 [ %30, %39 ], [ 0, %5 ]
  %10 = phi i64 [ %37, %39 ], [ 0, %5 ]
  %11 = phi i64 [ %40, %39 ], [ 0, %5 ]
  %12 = phi i64 [ %16, %39 ], [ 0, %5 ]
  %13 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %11
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = load i64, ptr %14, align 1, !tbaa !116
  %16 = add i64 %15, %12
  %17 = icmp ugt i64 %15, 4294967295
  br i1 %17, label %18, label %61

18:                                               ; preds = %7
  %19 = or disjoint i64 %11, 1
  %20 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %22 = load i64, ptr %21, align 1, !tbaa !116
  %23 = add i64 %22, %8
  %24 = icmp ugt i64 %22, 4294967295
  br i1 %24, label %25, label %61

25:                                               ; preds = %18
  %26 = or disjoint i64 %11, 2
  %27 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %29 = load i64, ptr %28, align 1, !tbaa !116
  %30 = add i64 %29, %9
  %31 = icmp ugt i64 %29, 4294967295
  br i1 %31, label %32, label %61

32:                                               ; preds = %25
  %33 = or disjoint i64 %11, 3
  %34 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %36 = load i64, ptr %35, align 1, !tbaa !116
  %37 = add i64 %36, %10
  %38 = icmp ugt i64 %36, 4294967295
  br i1 %38, label %39, label %61

39:                                               ; preds = %32
  %40 = add i64 %11, 4
  %41 = icmp ult i64 %40, %6
  br i1 %41, label %7, label %42, !llvm.loop !359

42:                                               ; preds = %39, %3
  %43 = phi i64 [ 0, %3 ], [ %23, %39 ]
  %44 = phi i64 [ 0, %3 ], [ %30, %39 ]
  %45 = phi i64 [ 0, %3 ], [ %37, %39 ]
  %46 = phi i64 [ 0, %3 ], [ %40, %39 ]
  %47 = phi i64 [ 0, %3 ], [ %16, %39 ]
  %48 = icmp ult i64 %46, %2
  br i1 %48, label %49, label %60

49:                                               ; preds = %42, %57
  %50 = phi i64 [ %55, %57 ], [ %47, %42 ]
  %51 = phi i64 [ %58, %57 ], [ %46, %42 ]
  %52 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %54 = load i64, ptr %53, align 1, !tbaa !116
  %55 = add i64 %54, %50
  %56 = icmp ugt i64 %54, 4294967295
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = add i64 %51, 1
  %59 = icmp eq i64 %58, %2
  br i1 %59, label %60, label %49, !llvm.loop !360

60:                                               ; preds = %57, %42
  store i64 -107, ptr %0, align 8, !tbaa !361
  br label %76

61:                                               ; preds = %25, %18, %7, %32, %49
  %62 = phi i64 [ %43, %49 ], [ %8, %7 ], [ %23, %18 ], [ %23, %25 ], [ %23, %32 ]
  %63 = phi i64 [ %44, %49 ], [ %9, %7 ], [ %9, %18 ], [ %30, %25 ], [ %30, %32 ]
  %64 = phi i64 [ %45, %49 ], [ %10, %7 ], [ %10, %18 ], [ %10, %25 ], [ %37, %32 ]
  %65 = phi i64 [ %51, %49 ], [ %11, %7 ], [ %19, %18 ], [ %26, %25 ], [ %33, %32 ]
  %66 = phi i64 [ %55, %49 ], [ %16, %32 ], [ %16, %7 ], [ %16, %18 ], [ %16, %25 ]
  %67 = add i64 %65, 1
  store i64 %67, ptr %0, align 8, !tbaa !361
  %68 = add i64 %63, %62
  %69 = add i64 %68, %64
  %70 = add i64 %69, %66
  %71 = and i64 %70, 4294967295
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %71, ptr %72, align 8, !tbaa !363
  %73 = lshr i64 %70, 32
  %74 = add nuw nsw i64 %71, %73
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %74, ptr %75, align 8, !tbaa !364
  br label %76

76:                                               ; preds = %61, %60
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressSequencesAndLiterals(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #2 {
  %10 = icmp ult i64 %7, %6
  br i1 %10, label %37, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %8)
  %13 = icmp ult i64 %12, -119
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %17 = load i32, ptr %16, align 4, !tbaa !344
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %21 = load i32, ptr %20, align 8, !tbaa !365
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %25 = load i32, ptr %24, align 4, !tbaa !236
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %29 = load i32, ptr %28, align 8, !tbaa !173
  %30 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %15, i64 noundef %8, i32 noundef %29)
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 %30
  %32 = sub i64 %2, %30
  %33 = tail call fastcc i64 @ZSTD_compressSequencesAndLiterals_internal(ptr noundef nonnull %0, ptr noundef %31, i64 noundef %32, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %8)
  %34 = icmp ult i64 %33, -119
  %35 = select i1 %34, i64 %30, i64 0
  %36 = add i64 %35, %33
  br label %37

37:                                               ; preds = %27, %23, %19, %14, %9, %11
  %38 = phi i64 [ %12, %11 ], [ -66, %9 ], [ -14, %14 ], [ -40, %19 ], [ -14, %23 ], [ %36, %27 ]
  ret i64 %38
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSequencesAndLiterals_internal(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 {
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %11 = load i32, ptr %10, align 8, !tbaa !346
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  switch i64 %4, label %24 [
    i64 0, label %173
    i64 1, label %14
  ]

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %16 = load i32, ptr %15, align 4, !tbaa !206
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = icmp ugt i64 %2, 2
  br i1 %19, label %20, label %173

20:                                               ; preds = %18
  store i16 1, ptr %1, align 1, !tbaa !222
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 0, ptr %21, align 1, !tbaa !185
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %23 = add i64 %2, -3
  br label %24

24:                                               ; preds = %20, %8, %14
  %25 = phi ptr [ %22, %20 ], [ %1, %14 ], [ %1, %8 ]
  %26 = phi i64 [ 3, %20 ], [ 0, %14 ], [ 0, %8 ]
  %27 = phi i64 [ %23, %20 ], [ %2, %14 ], [ %2, %8 ]
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %40

40:                                               ; preds = %155, %24
  %41 = phi ptr [ %25, %24 ], [ %166, %155 ]
  %42 = phi i64 [ %26, %24 ], [ %165, %155 ]
  %43 = phi i64 [ %7, %24 ], [ %130, %155 ]
  %44 = phi i64 [ %6, %24 ], [ %144, %155 ]
  %45 = phi ptr [ %5, %24 ], [ %145, %155 ]
  %46 = phi i64 [ %4, %24 ], [ %128, %155 ]
  %47 = phi ptr [ %3, %24 ], [ %127, %155 ]
  %48 = phi i64 [ %27, %24 ], [ %167, %155 ]
  %49 = icmp ugt i64 %46, 3
  br i1 %49, label %50, label %87

50:                                               ; preds = %40
  %51 = add i64 %46, -3
  br label %52

52:                                               ; preds = %84, %50
  %53 = phi i64 [ %68, %84 ], [ 0, %50 ]
  %54 = phi i64 [ %75, %84 ], [ 0, %50 ]
  %55 = phi i64 [ %82, %84 ], [ 0, %50 ]
  %56 = phi i64 [ %85, %84 ], [ 0, %50 ]
  %57 = phi i64 [ %61, %84 ], [ 0, %50 ]
  %58 = getelementptr inbounds nuw [16 x i8], ptr %47, i64 %56
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %60 = load i64, ptr %59, align 1, !tbaa !116, !noalias !366
  %61 = add i64 %60, %57
  %62 = icmp ugt i64 %60, 4294967295
  br i1 %62, label %63, label %105

63:                                               ; preds = %52
  %64 = or disjoint i64 %56, 1
  %65 = getelementptr inbounds nuw [16 x i8], ptr %47, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 4
  %67 = load i64, ptr %66, align 1, !tbaa !116, !noalias !366
  %68 = add i64 %67, %53
  %69 = icmp ugt i64 %67, 4294967295
  br i1 %69, label %70, label %105

70:                                               ; preds = %63
  %71 = or disjoint i64 %56, 2
  %72 = getelementptr inbounds nuw [16 x i8], ptr %47, i64 %71
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %74 = load i64, ptr %73, align 1, !tbaa !116, !noalias !366
  %75 = add i64 %74, %54
  %76 = icmp ugt i64 %74, 4294967295
  br i1 %76, label %77, label %105

77:                                               ; preds = %70
  %78 = or disjoint i64 %56, 3
  %79 = getelementptr inbounds nuw [16 x i8], ptr %47, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %81 = load i64, ptr %80, align 1, !tbaa !116, !noalias !366
  %82 = add i64 %81, %55
  %83 = icmp ugt i64 %81, 4294967295
  br i1 %83, label %84, label %105

84:                                               ; preds = %77
  %85 = add i64 %56, 4
  %86 = icmp ult i64 %85, %51
  br i1 %86, label %52, label %87, !llvm.loop !359

87:                                               ; preds = %84, %40
  %88 = phi i64 [ 0, %40 ], [ %68, %84 ]
  %89 = phi i64 [ 0, %40 ], [ %75, %84 ]
  %90 = phi i64 [ 0, %40 ], [ %82, %84 ]
  %91 = phi i64 [ 0, %40 ], [ %85, %84 ]
  %92 = phi i64 [ 0, %40 ], [ %61, %84 ]
  %93 = icmp ult i64 %91, %46
  br i1 %93, label %94, label %173

94:                                               ; preds = %87, %102
  %95 = phi i64 [ %100, %102 ], [ %92, %87 ]
  %96 = phi i64 [ %103, %102 ], [ %91, %87 ]
  %97 = getelementptr inbounds nuw [16 x i8], ptr %47, i64 %96
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 4
  %99 = load i64, ptr %98, align 1, !tbaa !116, !noalias !366
  %100 = add i64 %99, %95
  %101 = icmp ugt i64 %99, 4294967295
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = add i64 %96, 1
  %104 = icmp eq i64 %103, %46
  br i1 %104, label %173, label %94, !llvm.loop !360

105:                                              ; preds = %52, %63, %70, %77, %94
  %106 = phi i64 [ %88, %94 ], [ %68, %70 ], [ %68, %63 ], [ %53, %52 ], [ %68, %77 ]
  %107 = phi i64 [ %89, %94 ], [ %75, %70 ], [ %54, %63 ], [ %54, %52 ], [ %75, %77 ]
  %108 = phi i64 [ %90, %94 ], [ %55, %70 ], [ %55, %63 ], [ %55, %52 ], [ %82, %77 ]
  %109 = phi i64 [ %96, %94 ], [ %71, %70 ], [ %64, %63 ], [ %56, %52 ], [ %78, %77 ]
  %110 = phi i64 [ %100, %94 ], [ %61, %77 ], [ %61, %70 ], [ %61, %63 ], [ %61, %52 ]
  %111 = add i64 %109, 1
  %112 = add i64 %107, %106
  %113 = add i64 %112, %108
  %114 = add i64 %113, %110
  %115 = and i64 %114, 4294967295
  %116 = lshr i64 %114, 32
  %117 = icmp eq i64 %111, %46
  %118 = icmp ult i64 %111, -119
  br i1 %118, label %119, label %173

119:                                              ; preds = %105
  %120 = icmp ugt i64 %115, %44
  br i1 %120, label %173, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr %29, align 8, !tbaa !191
  store ptr %122, ptr %30, align 8, !tbaa !192
  %123 = load ptr, ptr %28, align 8, !tbaa !175
  store ptr %123, ptr %31, align 8, !tbaa !179
  store i32 0, ptr %32, align 8, !tbaa !187
  %124 = tail call i64 @ZSTD_convertBlockSequences(ptr noundef %0, ptr noundef nonnull %47, i64 noundef %111, i32 noundef %13)
  %125 = icmp ult i64 %124, -119
  br i1 %125, label %126, label %173

126:                                              ; preds = %121
  %127 = getelementptr inbounds nuw [16 x i8], ptr %47, i64 %111
  %128 = sub i64 %46, %111
  %129 = add nuw nsw i64 %116, %115
  %130 = sub i64 %43, %129
  %131 = icmp ult i64 %48, 3
  br i1 %131, label %173, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds nuw i8, ptr %41, i64 3
  %134 = add i64 %48, -3
  %135 = load ptr, ptr %33, align 8, !tbaa !55
  %136 = load ptr, ptr %34, align 8, !tbaa !56
  %137 = load ptr, ptr %35, align 8, !tbaa !57
  %138 = load i64, ptr %36, align 8, !tbaa !58
  %139 = load i32, ptr %37, align 8, !tbaa !11
  %140 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %133, i64 noundef %134, ptr noundef %45, i64 noundef %115, ptr noundef nonnull %28, ptr noundef %135, ptr noundef %136, ptr noundef nonnull %9, ptr noundef %137, i64 noundef %138, i32 noundef %139)
  %141 = icmp ult i64 %140, -119
  br i1 %141, label %142, label %173

142:                                              ; preds = %132
  %143 = load i64, ptr %38, align 8, !tbaa !234
  %144 = sub i64 %44, %115
  %145 = getelementptr inbounds nuw i8, ptr %45, i64 %115
  %146 = add i64 %140, -1
  %147 = icmp ult i64 %146, %143
  br i1 %147, label %148, label %173

148:                                              ; preds = %142
  %149 = load ptr, ptr %33, align 8, !tbaa !350
  %150 = load ptr, ptr %34, align 8, !tbaa !351
  store ptr %150, ptr %33, align 8, !tbaa !350
  store ptr %149, ptr %34, align 8, !tbaa !351
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 5604
  %152 = load i32, ptr %151, align 4, !tbaa !156
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 1, ptr %151, align 4, !tbaa !156
  br label %155

155:                                              ; preds = %154, %148
  %156 = select i1 %117, i32 5, i32 4
  %157 = trunc i64 %140 to i32
  %158 = shl i32 %157, 3
  %159 = or disjoint i32 %158, %156
  %160 = trunc i32 %159 to i16
  store i16 %160, ptr %41, align 1, !tbaa !222
  %161 = lshr i32 %158, 16
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds nuw i8, ptr %41, i64 2
  store i8 %162, ptr %163, align 1, !tbaa !185
  %164 = add nuw i64 %140, 3
  %165 = add i64 %164, %42
  %166 = getelementptr inbounds nuw i8, ptr %41, i64 %164
  %167 = sub i64 %48, %164
  store i32 0, ptr %39, align 8, !tbaa !241
  br i1 %117, label %168, label %40

168:                                              ; preds = %155
  %169 = icmp eq i64 %144, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = icmp eq i64 %130, 0
  %172 = select i1 %171, i64 %165, i64 -107
  br label %173

173:                                              ; preds = %87, %121, %132, %142, %126, %119, %105, %102, %18, %170, %168, %8
  %174 = phi i64 [ -107, %168 ], [ -70, %18 ], [ -107, %8 ], [ %172, %170 ], [ -107, %102 ], [ -107, %87 ], [ -107, %119 ], [ -70, %126 ], [ -49, %142 ], [ %140, %132 ], [ %124, %121 ], [ %111, %105 ]
  ret i64 %174
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_flushStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %5 = load i32, ptr %4, align 4, !tbaa !326, !noalias !369
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !331
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !199
  br label %12

11:                                               ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !369
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i64 [ %10, %7 ], [ 0, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %13, ptr %14, align 8, !tbaa !198
  %15 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_endStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %5 = load i32, ptr %4, align 4, !tbaa !326, !noalias !372
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !331
  br label %10

9:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !372
  br label %10

10:                                               ; preds = %7, %9
  %11 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2)
  %12 = icmp ult i64 %11, -119
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %15 = load i32, ptr %14, align 4, !tbaa !292
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %19 = load i32, ptr %18, align 4, !tbaa !338
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i64 3, i64 0
  br i1 %20, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %24 = load i32, ptr %23, align 4, !tbaa !236
  %25 = shl nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %17, %22
  %28 = phi i64 [ %26, %22 ], [ 0, %17 ]
  %29 = add nuw i64 %21, %11
  %30 = add i64 %29, %28
  br label %31

31:                                               ; preds = %13, %10, %27
  %32 = phi i64 [ %11, %10 ], [ %30, %27 ], [ %11, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i64 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_defaultCLevel() local_unnamed_addr #0 {
  ret i32 3
}

; Function Attrs: nounwind memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getCParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq i64 %2, 0
  %6 = select i1 %5, i64 -1, i64 %2
  tail call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias writable align 4 %0, i32 noundef %1, i64 noundef %6, i64 noundef %3, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind memory(argmem: write, inaccessiblemem: readwrite) uwtable
define dso_local void @ZSTD_getParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_parameters) align 4 captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #21 {
  %5 = icmp eq i64 %2, 0
  %6 = select i1 %5, i64 -1, i64 %2
  tail call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %0, i32 noundef %1, i64 noundef %6, i64 noundef %3, i32 noundef 3)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %7, align 4, !alias.scope !375
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %8, align 4, !tbaa !378, !alias.scope !375
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((216, 232)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %2, ptr %6, align 8, !tbaa !133
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %5, ptr %7, align 8, !tbaa !380
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_CCtxParams_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((200, 216)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %6, align 8, !tbaa !133
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %5, ptr %7, align 8, !tbaa !380
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

declare i64 @ZSTD_ldm_getTableSize(ptr noundef byval(%struct.ldmParams_t) align 8) local_unnamed_addr #13

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_resetCCtx_internal(ptr noundef initializes((240, 464), (968, 972)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5) unnamed_addr #2 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i32 1, ptr %8, align 8, !tbaa !241
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %9, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !115
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %11 = load i32, ptr %10, align 8, !tbaa !80
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %10, ptr noundef nonnull %14) #34
  br label %15

15:                                               ; preds = %13, %6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %17 = load i32, ptr %16, align 4, !tbaa !86
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw i64 1, %18
  %20 = icmp eq i64 %2, 0
  %21 = tail call i64 @llvm.umin.i64(i64 %19, i64 %2)
  %22 = select i1 %20, i64 1, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %24 = load i64, ptr %23, align 8, !tbaa !81
  %25 = tail call i64 @llvm.umin.i64(i64 %24, i64 %22)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %27 = load i32, ptr %26, align 4, !tbaa !90
  %28 = getelementptr i8, ptr %0, i64 448
  %29 = load ptr, ptr %28, align 8, !tbaa !133
  %30 = icmp ne ptr %29, null
  %31 = icmp eq i32 %27, 3
  %32 = or i1 %31, %30
  %33 = select i1 %32, i64 3, i64 4
  %34 = udiv i64 %25, %33
  %35 = icmp eq i32 %5, 1
  br i1 %35, label %36, label %59

36:                                               ; preds = %15
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %38 = load i32, ptr %37, align 8, !tbaa !106
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = lshr i64 %25, 8
  %42 = add nuw i64 %41, %25
  %43 = icmp ult i64 %25, 131072
  %44 = sub nuw nsw i64 131072, %25
  %45 = lshr i64 %44, 11
  %46 = select i1 %43, i64 %45, i64 0
  %47 = add nuw i64 %42, %46
  %48 = freeze i64 %47
  %49 = icmp eq i64 %48, 0
  %50 = add i64 %48, 1
  %51 = select i1 %49, i64 -71, i64 %50
  br label %52

52:                                               ; preds = %36, %40
  %53 = phi i64 [ 0, %36 ], [ %51, %40 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %55 = load i32, ptr %54, align 4, !tbaa !105
  %56 = icmp eq i32 %55, 0
  %57 = add i64 %25, %22
  %58 = select i1 %56, i64 %57, i64 0
  br label %59

59:                                               ; preds = %15, %52
  %60 = phi i64 [ %53, %52 ], [ 0, %15 ]
  %61 = phi i64 [ %58, %52 ], [ 0, %15 ]
  %62 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10, i64 noundef %25) #34
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %65 = load ptr, ptr %64, align 8, !tbaa !227
  %66 = getelementptr i8, ptr %0, i64 3248
  %67 = load ptr, ptr %66, align 8, !tbaa !231
  %68 = ptrtoint ptr %65 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = icmp ugt i64 %70, 3653238784
  %72 = icmp ugt i64 %3, 624951295
  %73 = or i1 %72, %71
  br i1 %73, label %79, label %74

74:                                               ; preds = %59
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 972
  %76 = load i32, ptr %75, align 4, !tbaa !381
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  br label %79

79:                                               ; preds = %74, %59
  %80 = phi i32 [ %78, %74 ], [ 1, %59 ]
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %82 = load i64, ptr %81, align 8, !tbaa !50
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %86 = load i32, ptr %85, align 8, !tbaa !78
  %87 = load ptr, ptr %28, align 8, !tbaa !133
  %88 = icmp ne ptr %87, null
  %89 = zext i1 %88 to i32
  %90 = load i64, ptr %23, align 8, !tbaa !81
  %91 = tail call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %16, ptr noundef nonnull %10, i32 noundef %84, i32 noundef %86, i64 noundef %61, i64 noundef %60, i64 noundef %2, i32 noundef %89, i64 noundef %90)
  %92 = icmp ult i64 %91, -119
  br i1 %92, label %93, label %710

93:                                               ; preds = %79
  %94 = load i64, ptr %81, align 8, !tbaa !50
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 764
  %98 = load i32, ptr %97, align 4, !tbaa !382
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %97, align 4, !tbaa !382
  br label %100

100:                                              ; preds = %96, %93
  %101 = load ptr, ptr %7, align 8, !tbaa !59
  %102 = getelementptr i8, ptr %0, i64 712
  %103 = load ptr, ptr %102, align 8, !tbaa !60
  %104 = ptrtoint ptr %103 to i64
  %105 = ptrtoint ptr %101 to i64
  %106 = sub i64 %104, %105
  %107 = icmp ult i64 %106, %91
  %108 = getelementptr i8, ptr %0, i64 728
  %109 = load ptr, ptr %108, align 8, !tbaa !53
  %110 = getelementptr i8, ptr %0, i64 744
  %111 = load ptr, ptr %110, align 8, !tbaa !383
  %112 = mul i64 %91, 3
  %113 = ptrtoint ptr %111 to i64
  %114 = ptrtoint ptr %109 to i64
  %115 = sub i64 %113, %114
  %116 = icmp ult i64 %115, %112
  br i1 %116, label %121, label %117

117:                                              ; preds = %100
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 764
  %119 = load i32, ptr %118, align 4, !tbaa !382
  %120 = icmp sgt i32 %119, 128
  br label %121

121:                                              ; preds = %100, %117
  %122 = phi i1 [ false, %100 ], [ %120, %117 ]
  %123 = select i1 %107, i1 true, i1 %122
  br i1 %123, label %124, label %180

124:                                              ; preds = %121
  br i1 %95, label %125, label %710

125:                                              ; preds = %124
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %127 = getelementptr i8, ptr %0, i64 904
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr i8, ptr %0, i64 912
  %130 = load ptr, ptr %129, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %131 = icmp eq ptr %101, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = icmp eq ptr %128, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %132
  tail call void %128(ptr noundef %130, ptr noundef nonnull %101) #34, !inline_history !321
  br label %136

135:                                              ; preds = %132
  tail call void @free(ptr noundef nonnull %101) #34
  br label %136

136:                                              ; preds = %125, %134, %135
  %137 = load ptr, ptr %126, align 8, !tbaa !46
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %129, align 8
  %141 = tail call ptr %137(ptr noundef %140, i64 noundef %91) #34, !inline_history !384
  br label %144

142:                                              ; preds = %136
  %143 = tail call noalias ptr @malloc(i64 noundef %91) #35
  br label %144

144:                                              ; preds = %142, %139
  %145 = phi ptr [ %141, %139 ], [ %143, %142 ]
  %146 = icmp eq ptr %145, null
  br i1 %146, label %710, label %147

147:                                              ; preds = %144
  store ptr %145, ptr %7, align 8, !tbaa !59
  %148 = getelementptr inbounds nuw i8, ptr %145, i64 %91
  store ptr %148, ptr %102, align 8, !tbaa !60
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %145, ptr %149, align 8, !tbaa !52
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %145, ptr %150, align 8, !tbaa !54
  %151 = ptrtoint ptr %148 to i64
  %152 = and i64 %151, 63
  %153 = sub nsw i64 0, %152
  %154 = getelementptr inbounds i8, ptr %148, i64 %153
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %154, ptr %155, align 8, !tbaa !385
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i32 0, ptr %156, align 8, !tbaa !319
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 0, ptr %157, align 4, !tbaa !386
  store ptr %145, ptr %108, align 8, !tbaa !53
  store ptr %154, ptr %110, align 8, !tbaa !383
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %158, align 8, !tbaa !51
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %159, align 4, !tbaa !382
  %160 = getelementptr inbounds nuw i8, ptr %145, i64 5632
  %161 = icmp samesign ult i64 %91, 5632
  br i1 %161, label %162, label %163

162:                                              ; preds = %147
  store i8 1, ptr %158, align 8, !tbaa !51
  store ptr null, ptr %63, align 8, !tbaa !55
  br label %710

163:                                              ; preds = %147
  store ptr %160, ptr %149, align 8, !tbaa !52
  store ptr %160, ptr %108, align 8, !tbaa !53
  store ptr %160, ptr %150, align 8, !tbaa !54
  store ptr %145, ptr %63, align 8, !tbaa !55
  %164 = getelementptr inbounds nuw i8, ptr %145, i64 11264
  %165 = icmp samesign ult i64 %91, 11264
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  store i8 1, ptr %158, align 8, !tbaa !51
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr null, ptr %167, align 8, !tbaa !56
  br label %710

168:                                              ; preds = %163
  store ptr %164, ptr %149, align 8, !tbaa !52
  store ptr %164, ptr %108, align 8, !tbaa !53
  store ptr %164, ptr %150, align 8, !tbaa !54
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %160, ptr %169, align 8, !tbaa !56
  %170 = icmp samesign ult i64 %91, 20184
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  store i8 1, ptr %158, align 8, !tbaa !51
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr null, ptr %172, align 8, !tbaa !57
  br label %710

173:                                              ; preds = %168
  %174 = getelementptr inbounds nuw i8, ptr %145, i64 20184
  store ptr %174, ptr %149, align 8, !tbaa !52
  store ptr %174, ptr %150, align 8, !tbaa !54
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %164, ptr %175, align 8, !tbaa !57
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %176, align 8, !tbaa !58
  store ptr %174, ptr %108, align 8, !tbaa !53
  %177 = getelementptr inbounds i8, ptr %148, i64 %153
  store ptr %177, ptr %110, align 8, !tbaa !383
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %178, align 8, !tbaa !51
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 768
  br label %192

180:                                              ; preds = %121
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %182 = load ptr, ptr %181, align 8, !tbaa !52
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %184 = load i32, ptr %183, align 8, !tbaa !319
  %185 = and i64 %104, 63
  %186 = sub nsw i64 0, %185
  %187 = icmp ugt i32 %184, 1
  store ptr %182, ptr %108, align 8, !tbaa !53
  %188 = getelementptr inbounds i8, ptr %103, i64 %186
  store ptr %188, ptr %110, align 8, !tbaa !383
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %189, align 8, !tbaa !51
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 768
  br i1 %187, label %191, label %192

191:                                              ; preds = %180
  store i32 1, ptr %190, align 8, !tbaa !319
  br label %192

192:                                              ; preds = %173, %180, %191
  %193 = phi ptr [ %179, %173 ], [ %190, %180 ], [ %190, %191 ]
  %194 = phi ptr [ %178, %173 ], [ %189, %180 ], [ %189, %191 ]
  %195 = phi i32 [ 1, %173 ], [ %80, %180 ], [ %80, %191 ]
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 3496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %197, ptr noundef nonnull align 4 dereferenceable(28) %16, i64 28, i1 false), !tbaa.struct !76
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %199 = load i32, ptr %198, align 8, !tbaa !111
  %200 = icmp eq i32 %199, 1
  %201 = zext i1 %200 to i32
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store i32 %201, ptr %202, align 8, !tbaa !387
  %203 = add i64 %2, 1
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %203, ptr %204, align 8, !tbaa !117
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %206 = icmp eq i64 %2, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %205, i8 0, i64 16, i1 false)
  br i1 %206, label %207, label %209

207:                                              ; preds = %192
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %208, align 8, !tbaa !388
  br label %209

209:                                              ; preds = %192, %207
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i64 %25, ptr %210, align 8, !tbaa !234
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %212 = tail call i32 @ZSTD_XXH64_reset(ptr noundef nonnull captures(none) %211, i64 noundef 0) #34
  store i32 1, ptr %0, align 8, !tbaa !159
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 0, ptr %213, align 8, !tbaa !173
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 0, ptr %214, align 8, !tbaa !174
  %215 = load ptr, ptr %63, align 8, !tbaa !55
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %216, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 2056
  store i32 0, ptr %217, align 8, !tbaa !155
  %218 = getelementptr inbounds nuw i8, ptr %215, i64 5604
  store i32 0, ptr %218, align 4, !tbaa !156
  %219 = getelementptr inbounds nuw i8, ptr %215, i64 5608
  store i32 0, ptr %219, align 8, !tbaa !157
  %220 = getelementptr inbounds nuw i8, ptr %215, i64 5612
  store i32 0, ptr %220, align 4, !tbaa !158
  %221 = load i32, ptr %85, align 8, !tbaa !78
  %222 = tail call fastcc i64 @ZSTD_reset_matchState(ptr noundef nonnull %64, ptr noundef nonnull %7, ptr noundef nonnull %16, i32 noundef %221, i32 noundef %4, i32 noundef %195, i32 noundef 1)
  %223 = icmp ult i64 %222, -119
  br i1 %223, label %224, label %710

224:                                              ; preds = %209
  %225 = shl i64 %34, 3
  %226 = add i64 %225, 56
  %227 = and i64 %226, -64
  %228 = load i32, ptr %193, align 8, !tbaa !319
  %229 = icmp ult i32 %228, 2
  br i1 %229, label %230, label %250

230:                                              ; preds = %224
  %231 = icmp eq i32 %228, 0
  br i1 %231, label %232, label %249

232:                                              ; preds = %230
  %233 = load ptr, ptr %196, align 8, !tbaa !52
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %233, ptr %234, align 8, !tbaa !54
  %235 = load ptr, ptr %102, align 8, !tbaa !60
  %236 = ptrtoint ptr %235 to i64
  %237 = and i64 %236, 63
  %238 = sub nsw i64 0, %237
  %239 = getelementptr inbounds i8, ptr %235, i64 %238
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %239, ptr %240, align 8, !tbaa !385
  %241 = ptrtoint ptr %233 to i64
  %242 = sub i64 0, %241
  %243 = and i64 %242, 63
  %244 = getelementptr inbounds nuw i8, ptr %233, i64 %243
  %245 = icmp ugt ptr %244, %235
  br i1 %245, label %266, label %246

246:                                              ; preds = %232
  store ptr %244, ptr %196, align 8, !tbaa !52
  store ptr %244, ptr %108, align 8, !tbaa !53
  %247 = icmp eq i64 %243, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %246
  store ptr %244, ptr %234, align 8, !tbaa !54
  br label %249

249:                                              ; preds = %248, %246, %230
  store i32 2, ptr %193, align 8, !tbaa !319
  br label %250

250:                                              ; preds = %249, %224
  %251 = phi i32 [ 2, %249 ], [ %228, %224 ]
  %252 = icmp eq i64 %227, 0
  br i1 %252, label %266, label %253

253:                                              ; preds = %250
  %254 = load ptr, ptr %110, align 8, !tbaa !383
  %255 = sub i64 0, %227
  %256 = getelementptr inbounds i8, ptr %254, i64 %255
  %257 = load ptr, ptr %108, align 8, !tbaa !53
  %258 = icmp ult ptr %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %266

260:                                              ; preds = %253
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %262 = load ptr, ptr %261, align 8, !tbaa !54
  %263 = icmp ult ptr %256, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  store ptr %256, ptr %261, align 8, !tbaa !54
  br label %265

265:                                              ; preds = %264, %260
  store ptr %256, ptr %110, align 8, !tbaa !383
  br label %266

266:                                              ; preds = %232, %250, %259, %265
  %267 = phi i32 [ %251, %265 ], [ %251, %250 ], [ %251, %259 ], [ 0, %232 ]
  %268 = phi ptr [ %256, %265 ], [ null, %250 ], [ null, %259 ], [ null, %232 ]
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr %268, ptr %269, align 8, !tbaa !244
  %270 = load i32, ptr %10, align 8, !tbaa !80
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %369

272:                                              ; preds = %266
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 340
  %274 = load i32, ptr %273, align 4, !tbaa !99
  %275 = zext nneg i32 %274 to i64
  %276 = shl i64 8, %275
  %277 = add nuw i64 %276, 56
  %278 = and i64 %277, -64
  %279 = icmp ult i32 %267, 2
  br i1 %279, label %280, label %298

280:                                              ; preds = %272
  %281 = load ptr, ptr %196, align 8, !tbaa !52
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %281, ptr %282, align 8, !tbaa !54
  %283 = load ptr, ptr %102, align 8, !tbaa !60
  %284 = ptrtoint ptr %283 to i64
  %285 = and i64 %284, 63
  %286 = sub nsw i64 0, %285
  %287 = getelementptr inbounds i8, ptr %283, i64 %286
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %287, ptr %288, align 8, !tbaa !385
  %289 = ptrtoint ptr %281 to i64
  %290 = sub i64 0, %289
  %291 = and i64 %290, 63
  %292 = getelementptr inbounds nuw i8, ptr %281, i64 %291
  %293 = icmp ugt ptr %292, %283
  br i1 %293, label %313, label %294

294:                                              ; preds = %280
  store ptr %292, ptr %196, align 8, !tbaa !52
  store ptr %292, ptr %108, align 8, !tbaa !53
  %295 = icmp eq i64 %291, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %294
  store ptr %292, ptr %282, align 8, !tbaa !54
  br label %297

297:                                              ; preds = %296, %294
  store i32 2, ptr %193, align 8, !tbaa !319
  br label %298

298:                                              ; preds = %297, %272
  %299 = icmp eq i64 %278, 0
  br i1 %299, label %313, label %300

300:                                              ; preds = %298
  %301 = load ptr, ptr %110, align 8, !tbaa !383
  %302 = sub i64 0, %278
  %303 = getelementptr inbounds i8, ptr %301, i64 %302
  %304 = load ptr, ptr %108, align 8, !tbaa !53
  %305 = icmp ult ptr %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %300
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %313

307:                                              ; preds = %300
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %309 = load ptr, ptr %308, align 8, !tbaa !54
  %310 = icmp ult ptr %303, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  store ptr %303, ptr %308, align 8, !tbaa !54
  br label %312

312:                                              ; preds = %311, %307
  store ptr %303, ptr %110, align 8, !tbaa !383
  br label %313

313:                                              ; preds = %280, %298, %306, %312
  %314 = phi ptr [ %303, %312 ], [ null, %298 ], [ null, %306 ], [ null, %280 ]
  %315 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr %314, ptr %316, align 8, !tbaa !389
  tail call void @llvm.memset.p0.i64(ptr align 4 %314, i8 0, i64 %276, i1 false)
  %317 = mul i64 %62, 12
  %318 = add i64 %317, 60
  %319 = and i64 %318, -64
  %320 = load i32, ptr %193, align 8, !tbaa !319
  %321 = icmp ult i32 %320, 2
  br i1 %321, label %322, label %342

322:                                              ; preds = %313
  %323 = icmp eq i32 %320, 0
  br i1 %323, label %324, label %341

324:                                              ; preds = %322
  %325 = load ptr, ptr %196, align 8, !tbaa !52
  %326 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %325, ptr %326, align 8, !tbaa !54
  %327 = load ptr, ptr %102, align 8, !tbaa !60
  %328 = ptrtoint ptr %327 to i64
  %329 = and i64 %328, 63
  %330 = sub nsw i64 0, %329
  %331 = getelementptr inbounds i8, ptr %327, i64 %330
  %332 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %331, ptr %332, align 8, !tbaa !385
  %333 = ptrtoint ptr %325 to i64
  %334 = sub i64 0, %333
  %335 = and i64 %334, 63
  %336 = getelementptr inbounds nuw i8, ptr %325, i64 %335
  %337 = icmp ugt ptr %336, %327
  br i1 %337, label %358, label %338

338:                                              ; preds = %324
  store ptr %336, ptr %196, align 8, !tbaa !52
  store ptr %336, ptr %108, align 8, !tbaa !53
  %339 = icmp eq i64 %335, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %338
  store ptr %336, ptr %326, align 8, !tbaa !54
  br label %341

341:                                              ; preds = %340, %338, %322
  store i32 2, ptr %193, align 8, !tbaa !319
  br label %342

342:                                              ; preds = %341, %313
  %343 = phi i32 [ 2, %341 ], [ %320, %313 ]
  %344 = icmp eq i64 %319, 0
  br i1 %344, label %358, label %345

345:                                              ; preds = %342
  %346 = load ptr, ptr %110, align 8, !tbaa !383
  %347 = sub i64 0, %319
  %348 = getelementptr inbounds i8, ptr %346, i64 %347
  %349 = load ptr, ptr %108, align 8, !tbaa !53
  %350 = icmp ult ptr %348, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %358

352:                                              ; preds = %345
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %354 = load ptr, ptr %353, align 8, !tbaa !54
  %355 = icmp ult ptr %348, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  store ptr %348, ptr %353, align 8, !tbaa !54
  br label %357

357:                                              ; preds = %356, %352
  store ptr %348, ptr %110, align 8, !tbaa !383
  br label %358

358:                                              ; preds = %324, %342, %351, %357
  %359 = phi i32 [ %343, %357 ], [ %343, %342 ], [ %343, %351 ], [ 0, %324 ]
  %360 = phi ptr [ %348, %357 ], [ null, %342 ], [ null, %351 ], [ null, %324 ]
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 3168
  store ptr %360, ptr %361, align 8, !tbaa !390
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 3176
  store i64 %62, ptr %362, align 8, !tbaa !391
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 0, ptr %363, align 8
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr @.str, ptr %364, align 8, !tbaa !231
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr @.str, ptr %365, align 8, !tbaa !228
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 2, ptr %366, align 8, !tbaa !230
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i32 2, ptr %367, align 4, !tbaa !229
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %315, align 8, !tbaa !227
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i32 0, ptr %368, align 8, !tbaa !392
  br label %369

369:                                              ; preds = %358, %266
  %370 = phi i32 [ %359, %358 ], [ %267, %266 ]
  %371 = load ptr, ptr %28, align 8, !tbaa !133
  %372 = icmp eq ptr %371, null
  br i1 %372, label %421, label %373

373:                                              ; preds = %369
  %374 = udiv i64 %25, 3
  %375 = lshr i64 %25, 10
  %376 = add nuw nsw i64 %375, 2
  %377 = add nuw nsw i64 %376, %374
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 5272
  store i64 %377, ptr %378, align 8, !tbaa !393
  %379 = shl i64 %377, 4
  %380 = add i64 %379, 48
  %381 = and i64 %380, -64
  %382 = icmp ult i32 %370, 2
  br i1 %382, label %383, label %401

383:                                              ; preds = %373
  %384 = load ptr, ptr %196, align 8, !tbaa !52
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %384, ptr %385, align 8, !tbaa !54
  %386 = load ptr, ptr %102, align 8, !tbaa !60
  %387 = ptrtoint ptr %386 to i64
  %388 = and i64 %387, 63
  %389 = sub nsw i64 0, %388
  %390 = getelementptr inbounds i8, ptr %386, i64 %389
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %390, ptr %391, align 8, !tbaa !385
  %392 = ptrtoint ptr %384 to i64
  %393 = sub i64 0, %392
  %394 = and i64 %393, 63
  %395 = getelementptr inbounds nuw i8, ptr %384, i64 %394
  %396 = icmp ugt ptr %395, %386
  br i1 %396, label %417, label %397

397:                                              ; preds = %383
  store ptr %395, ptr %196, align 8, !tbaa !52
  store ptr %395, ptr %108, align 8, !tbaa !53
  %398 = icmp eq i64 %394, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %397
  store ptr %395, ptr %385, align 8, !tbaa !54
  br label %400

400:                                              ; preds = %399, %397
  store i32 2, ptr %193, align 8, !tbaa !319
  br label %401

401:                                              ; preds = %400, %373
  %402 = phi i32 [ 2, %400 ], [ %370, %373 ]
  %403 = icmp eq i64 %381, 0
  br i1 %403, label %417, label %404

404:                                              ; preds = %401
  %405 = load ptr, ptr %110, align 8, !tbaa !383
  %406 = sub i64 0, %381
  %407 = getelementptr inbounds i8, ptr %405, i64 %406
  %408 = load ptr, ptr %108, align 8, !tbaa !53
  %409 = icmp ult ptr %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %404
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %417

411:                                              ; preds = %404
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %413 = load ptr, ptr %412, align 8, !tbaa !54
  %414 = icmp ult ptr %407, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  store ptr %407, ptr %412, align 8, !tbaa !54
  br label %416

416:                                              ; preds = %415, %411
  store ptr %407, ptr %110, align 8, !tbaa !383
  br label %417

417:                                              ; preds = %383, %401, %410, %416
  %418 = phi i32 [ %402, %416 ], [ %402, %401 ], [ %402, %410 ], [ 0, %383 ]
  %419 = phi ptr [ %407, %416 ], [ null, %401 ], [ null, %410 ], [ null, %383 ]
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 5264
  store ptr %419, ptr %420, align 8, !tbaa !394
  br label %421

421:                                              ; preds = %417, %369
  %422 = phi i32 [ %418, %417 ], [ %370, %369 ]
  %423 = icmp ult i32 %422, 3
  br i1 %423, label %424, label %444

424:                                              ; preds = %421
  %425 = icmp eq i32 %422, 0
  br i1 %425, label %426, label %443

426:                                              ; preds = %424
  %427 = load ptr, ptr %196, align 8, !tbaa !52
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %427, ptr %428, align 8, !tbaa !54
  %429 = load ptr, ptr %102, align 8, !tbaa !60
  %430 = ptrtoint ptr %429 to i64
  %431 = and i64 %430, 63
  %432 = sub nsw i64 0, %431
  %433 = getelementptr inbounds i8, ptr %429, i64 %432
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %433, ptr %434, align 8, !tbaa !385
  %435 = ptrtoint ptr %427 to i64
  %436 = sub i64 0, %435
  %437 = and i64 %436, 63
  %438 = getelementptr inbounds nuw i8, ptr %427, i64 %437
  %439 = icmp ugt ptr %438, %429
  br i1 %439, label %464, label %440

440:                                              ; preds = %426
  store ptr %438, ptr %196, align 8, !tbaa !52
  store ptr %438, ptr %108, align 8, !tbaa !53
  %441 = icmp eq i64 %437, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %440
  store ptr %438, ptr %428, align 8, !tbaa !54
  br label %443

443:                                              ; preds = %442, %440, %424
  store i32 3, ptr %193, align 8, !tbaa !319
  br label %444

444:                                              ; preds = %421, %443
  %445 = phi i32 [ %422, %421 ], [ 3, %443 ]
  %446 = load ptr, ptr %110, align 8, !tbaa !383
  %447 = sub nuw i64 -32, %25
  %448 = getelementptr inbounds i8, ptr %446, i64 %447
  %449 = load ptr, ptr %108, align 8, !tbaa !53
  %450 = icmp ult ptr %448, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %444
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %458

452:                                              ; preds = %444
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %454 = load ptr, ptr %453, align 8, !tbaa !54
  %455 = icmp ult ptr %448, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %452
  store ptr %448, ptr %453, align 8, !tbaa !54
  br label %457

457:                                              ; preds = %456, %452
  store ptr %448, ptr %110, align 8, !tbaa !383
  br label %458

458:                                              ; preds = %457, %451
  %459 = phi ptr [ null, %451 ], [ %448, %457 ]
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr %459, ptr %460, align 8, !tbaa !395
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i64 %25, ptr %461, align 8, !tbaa !396
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 3560
  store i32 %5, ptr %462, align 8, !tbaa !160
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i64 %61, ptr %463, align 8, !tbaa !290
  br label %486

464:                                              ; preds = %426
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr null, ptr %465, align 8, !tbaa !395
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i64 %25, ptr %466, align 8, !tbaa !396
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 3560
  store i32 %5, ptr %467, align 8, !tbaa !160
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i64 %61, ptr %468, align 8, !tbaa !290
  %469 = load ptr, ptr %196, align 8, !tbaa !52
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %469, ptr %470, align 8, !tbaa !54
  %471 = load ptr, ptr %102, align 8, !tbaa !60
  %472 = ptrtoint ptr %471 to i64
  %473 = and i64 %472, 63
  %474 = sub nsw i64 0, %473
  %475 = getelementptr inbounds i8, ptr %471, i64 %474
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %475, ptr %476, align 8, !tbaa !385
  %477 = ptrtoint ptr %469 to i64
  %478 = sub i64 0, %477
  %479 = and i64 %478, 63
  %480 = getelementptr inbounds nuw i8, ptr %469, i64 %479
  %481 = icmp ugt ptr %480, %471
  br i1 %481, label %506, label %482

482:                                              ; preds = %464
  store ptr %480, ptr %196, align 8, !tbaa !52
  store ptr %480, ptr %108, align 8, !tbaa !53
  %483 = icmp eq i64 %479, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %482
  store ptr %480, ptr %470, align 8, !tbaa !54
  br label %485

485:                                              ; preds = %484, %482
  store i32 3, ptr %193, align 8, !tbaa !319
  br label %486

486:                                              ; preds = %458, %485
  %487 = phi i32 [ 3, %485 ], [ %445, %458 ]
  %488 = icmp eq i64 %61, 0
  br i1 %488, label %502, label %489

489:                                              ; preds = %486
  %490 = load ptr, ptr %110, align 8, !tbaa !383
  %491 = sub i64 0, %61
  %492 = getelementptr inbounds i8, ptr %490, i64 %491
  %493 = load ptr, ptr %108, align 8, !tbaa !53
  %494 = icmp ult ptr %492, %493
  br i1 %494, label %495, label %496

495:                                              ; preds = %489
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %502

496:                                              ; preds = %489
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %498 = load ptr, ptr %497, align 8, !tbaa !54
  %499 = icmp ult ptr %492, %498
  br i1 %499, label %500, label %501

500:                                              ; preds = %496
  store ptr %492, ptr %497, align 8, !tbaa !54
  br label %501

501:                                              ; preds = %500, %496
  store ptr %492, ptr %110, align 8, !tbaa !383
  br label %502

502:                                              ; preds = %501, %486, %495
  %503 = phi ptr [ null, %495 ], [ null, %486 ], [ %492, %501 ]
  %504 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  store ptr %503, ptr %504, align 8, !tbaa !143
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  store i64 %60, ptr %505, align 8, !tbaa !291
  br label %526

506:                                              ; preds = %464
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  store ptr null, ptr %507, align 8, !tbaa !143
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  store i64 %60, ptr %508, align 8, !tbaa !291
  %509 = load ptr, ptr %196, align 8, !tbaa !52
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %509, ptr %510, align 8, !tbaa !54
  %511 = load ptr, ptr %102, align 8, !tbaa !60
  %512 = ptrtoint ptr %511 to i64
  %513 = and i64 %512, 63
  %514 = sub nsw i64 0, %513
  %515 = getelementptr inbounds i8, ptr %511, i64 %514
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %515, ptr %516, align 8, !tbaa !385
  %517 = ptrtoint ptr %509 to i64
  %518 = sub i64 0, %517
  %519 = and i64 %518, 63
  %520 = getelementptr inbounds nuw i8, ptr %509, i64 %519
  %521 = icmp ugt ptr %520, %511
  br i1 %521, label %542, label %522

522:                                              ; preds = %506
  store ptr %520, ptr %196, align 8, !tbaa !52
  store ptr %520, ptr %108, align 8, !tbaa !53
  %523 = icmp eq i64 %519, 0
  br i1 %523, label %525, label %524

524:                                              ; preds = %522
  store ptr %520, ptr %510, align 8, !tbaa !54
  br label %525

525:                                              ; preds = %524, %522
  store i32 3, ptr %193, align 8, !tbaa !319
  br label %526

526:                                              ; preds = %502, %525
  %527 = phi i32 [ 3, %525 ], [ %487, %502 ]
  %528 = icmp eq i64 %60, 0
  br i1 %528, label %542, label %529

529:                                              ; preds = %526
  %530 = load ptr, ptr %110, align 8, !tbaa !383
  %531 = sub i64 0, %60
  %532 = getelementptr inbounds i8, ptr %530, i64 %531
  %533 = load ptr, ptr %108, align 8, !tbaa !53
  %534 = icmp ult ptr %532, %533
  br i1 %534, label %535, label %536

535:                                              ; preds = %529
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %542

536:                                              ; preds = %529
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %538 = load ptr, ptr %537, align 8, !tbaa !54
  %539 = icmp ult ptr %532, %538
  br i1 %539, label %540, label %541

540:                                              ; preds = %536
  store ptr %532, ptr %537, align 8, !tbaa !54
  br label %541

541:                                              ; preds = %540, %536
  store ptr %532, ptr %110, align 8, !tbaa !383
  br label %542

542:                                              ; preds = %506, %526, %535, %541
  %543 = phi i32 [ %527, %541 ], [ %527, %526 ], [ %527, %535 ], [ 0, %506 ]
  %544 = phi ptr [ %532, %541 ], [ null, %526 ], [ null, %535 ], [ null, %506 ]
  %545 = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store ptr %544, ptr %545, align 8, !tbaa !339
  %546 = load i32, ptr %10, align 8, !tbaa !80
  %547 = icmp eq i32 %546, 1
  br i1 %547, label %548, label %592

548:                                              ; preds = %542
  %549 = getelementptr inbounds nuw i8, ptr %0, i64 340
  %550 = load i32, ptr %549, align 4, !tbaa !99
  %551 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %552 = load i32, ptr %551, align 8, !tbaa !101
  %553 = sub i32 %550, %552
  %554 = zext nneg i32 %553 to i64
  %555 = shl nuw i64 1, %554
  %556 = icmp ult i32 %543, 3
  br i1 %556, label %557, label %575

557:                                              ; preds = %548
  %558 = load ptr, ptr %196, align 8, !tbaa !52
  %559 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %558, ptr %559, align 8, !tbaa !54
  %560 = load ptr, ptr %102, align 8, !tbaa !60
  %561 = ptrtoint ptr %560 to i64
  %562 = and i64 %561, 63
  %563 = sub nsw i64 0, %562
  %564 = getelementptr inbounds i8, ptr %560, i64 %563
  %565 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %564, ptr %565, align 8, !tbaa !385
  %566 = ptrtoint ptr %558 to i64
  %567 = sub i64 0, %566
  %568 = and i64 %567, 63
  %569 = getelementptr inbounds nuw i8, ptr %558, i64 %568
  %570 = icmp ugt ptr %569, %560
  br i1 %570, label %588, label %571

571:                                              ; preds = %557
  store ptr %569, ptr %196, align 8, !tbaa !52
  store ptr %569, ptr %108, align 8, !tbaa !53
  %572 = icmp eq i64 %568, 0
  br i1 %572, label %574, label %573

573:                                              ; preds = %571
  store ptr %569, ptr %559, align 8, !tbaa !54
  br label %574

574:                                              ; preds = %573, %571
  store i32 3, ptr %193, align 8, !tbaa !319
  br label %575

575:                                              ; preds = %574, %548
  %576 = load ptr, ptr %110, align 8, !tbaa !383
  %577 = sub i64 0, %555
  %578 = getelementptr inbounds i8, ptr %576, i64 %577
  %579 = load ptr, ptr %108, align 8, !tbaa !53
  %580 = icmp ult ptr %578, %579
  br i1 %580, label %581, label %582

581:                                              ; preds = %575
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %588

582:                                              ; preds = %575
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %584 = load ptr, ptr %583, align 8, !tbaa !54
  %585 = icmp ult ptr %578, %584
  br i1 %585, label %586, label %587

586:                                              ; preds = %582
  store ptr %578, ptr %583, align 8, !tbaa !54
  br label %587

587:                                              ; preds = %586, %582
  store ptr %578, ptr %110, align 8, !tbaa !383
  br label %588

588:                                              ; preds = %557, %581, %587
  %589 = phi ptr [ %578, %587 ], [ null, %557 ], [ null, %581 ]
  %590 = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store ptr %589, ptr %590, align 8, !tbaa !397
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %589, i8 0, i64 %555, i1 false)
  %591 = load i32, ptr %193, align 8, !tbaa !319
  br label %592

592:                                              ; preds = %588, %542
  %593 = phi i32 [ %591, %588 ], [ %543, %542 ]
  %594 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %595 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %594, i8 0, i64 40, i1 false)
  store i64 %34, ptr %595, align 8, !tbaa !354
  %596 = icmp ult i32 %593, 3
  br i1 %596, label %597, label %617

597:                                              ; preds = %592
  %598 = icmp eq i32 %593, 0
  br i1 %598, label %599, label %616

599:                                              ; preds = %597
  %600 = load ptr, ptr %196, align 8, !tbaa !52
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %600, ptr %601, align 8, !tbaa !54
  %602 = load ptr, ptr %102, align 8, !tbaa !60
  %603 = ptrtoint ptr %602 to i64
  %604 = and i64 %603, 63
  %605 = sub nsw i64 0, %604
  %606 = getelementptr inbounds i8, ptr %602, i64 %605
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %606, ptr %607, align 8, !tbaa !385
  %608 = ptrtoint ptr %600 to i64
  %609 = sub i64 0, %608
  %610 = and i64 %609, 63
  %611 = getelementptr inbounds nuw i8, ptr %600, i64 %610
  %612 = icmp ugt ptr %611, %602
  br i1 %612, label %635, label %613

613:                                              ; preds = %599
  store ptr %611, ptr %196, align 8, !tbaa !52
  store ptr %611, ptr %108, align 8, !tbaa !53
  %614 = icmp eq i64 %610, 0
  br i1 %614, label %616, label %615

615:                                              ; preds = %613
  store ptr %611, ptr %601, align 8, !tbaa !54
  br label %616

616:                                              ; preds = %615, %613, %597
  store i32 3, ptr %193, align 8, !tbaa !319
  br label %617

617:                                              ; preds = %616, %592
  %618 = icmp ugt i64 %33, %25
  br i1 %618, label %632, label %619

619:                                              ; preds = %617
  %620 = load ptr, ptr %110, align 8, !tbaa !383
  %621 = sub nsw i64 0, %34
  %622 = getelementptr inbounds i8, ptr %620, i64 %621
  %623 = load ptr, ptr %108, align 8, !tbaa !53
  %624 = icmp ult ptr %622, %623
  br i1 %624, label %625, label %626

625:                                              ; preds = %619
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %632

626:                                              ; preds = %619
  %627 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %628 = load ptr, ptr %627, align 8, !tbaa !54
  %629 = icmp ult ptr %622, %628
  br i1 %629, label %630, label %631

630:                                              ; preds = %626
  store ptr %622, ptr %627, align 8, !tbaa !54
  br label %631

631:                                              ; preds = %630, %626
  store ptr %622, ptr %110, align 8, !tbaa !383
  br label %632

632:                                              ; preds = %631, %617, %625
  %633 = phi ptr [ null, %625 ], [ null, %617 ], [ %622, %631 ]
  %634 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %633, ptr %634, align 8, !tbaa !398
  br label %654

635:                                              ; preds = %599
  %636 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr null, ptr %636, align 8, !tbaa !398
  %637 = load ptr, ptr %196, align 8, !tbaa !52
  %638 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %637, ptr %638, align 8, !tbaa !54
  %639 = load ptr, ptr %102, align 8, !tbaa !60
  %640 = ptrtoint ptr %639 to i64
  %641 = and i64 %640, 63
  %642 = sub nsw i64 0, %641
  %643 = getelementptr inbounds i8, ptr %639, i64 %642
  %644 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %643, ptr %644, align 8, !tbaa !385
  %645 = ptrtoint ptr %637 to i64
  %646 = sub i64 0, %645
  %647 = and i64 %646, 63
  %648 = getelementptr inbounds nuw i8, ptr %637, i64 %647
  %649 = icmp ugt ptr %648, %639
  br i1 %649, label %672, label %650

650:                                              ; preds = %635
  store ptr %648, ptr %196, align 8, !tbaa !52
  store ptr %648, ptr %108, align 8, !tbaa !53
  %651 = icmp eq i64 %647, 0
  br i1 %651, label %653, label %652

652:                                              ; preds = %650
  store ptr %648, ptr %638, align 8, !tbaa !54
  br label %653

653:                                              ; preds = %652, %650
  store i32 3, ptr %193, align 8, !tbaa !319
  br label %654

654:                                              ; preds = %632, %653
  %655 = icmp ugt i64 %33, %25
  br i1 %655, label %669, label %656

656:                                              ; preds = %654
  %657 = load ptr, ptr %110, align 8, !tbaa !383
  %658 = sub nsw i64 0, %34
  %659 = getelementptr inbounds i8, ptr %657, i64 %658
  %660 = load ptr, ptr %108, align 8, !tbaa !53
  %661 = icmp ult ptr %659, %660
  br i1 %661, label %662, label %663

662:                                              ; preds = %656
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %669

663:                                              ; preds = %656
  %664 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %665 = load ptr, ptr %664, align 8, !tbaa !54
  %666 = icmp ult ptr %659, %665
  br i1 %666, label %667, label %668

667:                                              ; preds = %663
  store ptr %659, ptr %664, align 8, !tbaa !54
  br label %668

668:                                              ; preds = %667, %663
  store ptr %659, ptr %110, align 8, !tbaa !383
  br label %669

669:                                              ; preds = %668, %654, %662
  %670 = phi ptr [ null, %662 ], [ null, %654 ], [ %659, %668 ]
  %671 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %670, ptr %671, align 8, !tbaa !399
  br label %691

672:                                              ; preds = %635
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr null, ptr %673, align 8, !tbaa !399
  %674 = load ptr, ptr %196, align 8, !tbaa !52
  %675 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %674, ptr %675, align 8, !tbaa !54
  %676 = load ptr, ptr %102, align 8, !tbaa !60
  %677 = ptrtoint ptr %676 to i64
  %678 = and i64 %677, 63
  %679 = sub nsw i64 0, %678
  %680 = getelementptr inbounds i8, ptr %676, i64 %679
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %680, ptr %681, align 8, !tbaa !385
  %682 = ptrtoint ptr %674 to i64
  %683 = sub i64 0, %682
  %684 = and i64 %683, 63
  %685 = getelementptr inbounds nuw i8, ptr %674, i64 %684
  %686 = icmp ugt ptr %685, %676
  br i1 %686, label %706, label %687

687:                                              ; preds = %672
  store ptr %685, ptr %196, align 8, !tbaa !52
  store ptr %685, ptr %108, align 8, !tbaa !53
  %688 = icmp eq i64 %684, 0
  br i1 %688, label %690, label %689

689:                                              ; preds = %687
  store ptr %685, ptr %675, align 8, !tbaa !54
  br label %690

690:                                              ; preds = %689, %687
  store i32 3, ptr %193, align 8, !tbaa !319
  br label %691

691:                                              ; preds = %669, %690
  %692 = icmp ugt i64 %33, %25
  br i1 %692, label %706, label %693

693:                                              ; preds = %691
  %694 = load ptr, ptr %110, align 8, !tbaa !383
  %695 = sub nsw i64 0, %34
  %696 = getelementptr inbounds i8, ptr %694, i64 %695
  %697 = load ptr, ptr %108, align 8, !tbaa !53
  %698 = icmp ult ptr %696, %697
  br i1 %698, label %699, label %700

699:                                              ; preds = %693
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %706

700:                                              ; preds = %693
  %701 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %702 = load ptr, ptr %701, align 8, !tbaa !54
  %703 = icmp ult ptr %696, %702
  br i1 %703, label %704, label %705

704:                                              ; preds = %700
  store ptr %696, ptr %701, align 8, !tbaa !54
  br label %705

705:                                              ; preds = %704, %700
  store ptr %696, ptr %110, align 8, !tbaa !383
  br label %706

706:                                              ; preds = %672, %691, %699, %705
  %707 = phi ptr [ %696, %705 ], [ null, %691 ], [ null, %699 ], [ null, %672 ]
  %708 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %707, ptr %708, align 8, !tbaa !400
  %709 = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 1, ptr %709, align 4, !tbaa !381
  br label %710

710:                                              ; preds = %144, %171, %166, %162, %124, %209, %79, %706
  %711 = phi i64 [ 0, %706 ], [ %222, %209 ], [ %91, %79 ], [ -64, %171 ], [ -64, %166 ], [ -64, %162 ], [ -64, %144 ], [ -64, %124 ]
  ret i64 %711
}

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -64, 1) i64 @ZSTD_reset_matchState(ptr noundef captures(none) initializes((24, 32), (40, 52), (112, 136), (196, 200), (248, 256), (300, 304)) %0, ptr noundef initializes((24, 32)) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #15 {
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %9 = load i32, ptr %8, align 4, !tbaa !75
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %11 = load i32, ptr %10, align 4, !tbaa !401
  %12 = icmp eq i32 %11, 0
  %13 = icmp ne i32 %6, 0
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = icmp eq i32 %9, 1
  br i1 %16, label %27, label %17

17:                                               ; preds = %15
  %18 = add i32 %9, -3
  %19 = icmp ult i32 %18, 3
  %20 = icmp eq i32 %3, 1
  %21 = and i1 %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %7, %17
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = zext nneg i32 %24 to i64
  %26 = shl i64 4, %25
  br label %27

27:                                               ; preds = %15, %17, %22
  %28 = phi i64 [ %26, %22 ], [ 0, %17 ], [ 0, %15 ]
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i32, ptr %29, align 4, !tbaa !72
  %31 = zext nneg i32 %30 to i64
  %32 = shl nuw i64 1, %31
  br i1 %13, label %33, label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %35 = load i32, ptr %34, align 4, !tbaa !74
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, ptr %2, align 4, !tbaa !70
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 17)
  br label %40

40:                                               ; preds = %37, %27, %33
  %41 = phi i32 [ %39, %37 ], [ 0, %27 ], [ 0, %33 ]
  %42 = icmp eq i32 %41, 0
  %43 = zext nneg i32 %41 to i64
  %44 = icmp eq i32 %5, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 8, !tbaa !227
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %48 = load ptr, ptr %47, align 8, !tbaa !231
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  br label %58

51:                                               ; preds = %40
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str, ptr %53, align 8, !tbaa !231
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str, ptr %54, align 8, !tbaa !228
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %0, align 8, !tbaa !227
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %56, ptr %57, align 8, !tbaa !54
  br label %58

58:                                               ; preds = %45, %51
  %59 = phi ptr [ %50, %45 ], [ %56, %51 ]
  %60 = phi ptr [ %48, %45 ], [ @.str, %51 ]
  %61 = phi ptr [ %46, %45 ], [ getelementptr inbounds nuw (i8, ptr @.str, i64 2), %51 ]
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %41, ptr %62, align 8, !tbaa !402
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %63, align 4, !tbaa !403
  %64 = ptrtoint ptr %61 to i64
  %65 = ptrtoint ptr %60 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %67, ptr %68, align 4, !tbaa !229
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %67, ptr %69, align 8, !tbaa !230
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %67, ptr %70, align 4, !tbaa !232
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %71, align 8, !tbaa !404
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %72, align 4, !tbaa !405
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %73, align 8, !tbaa !406
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %59, ptr %75, align 8, !tbaa !53
  %76 = shl i64 4, %31
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %78 = load i32, ptr %77, align 8, !tbaa !319
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %58
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %59, ptr %81, align 8, !tbaa !54
  %82 = getelementptr i8, ptr %1, i64 8
  %83 = load ptr, ptr %82, align 8, !tbaa !60
  %84 = ptrtoint ptr %83 to i64
  %85 = and i64 %84, 63
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, ptr %83, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %87, ptr %88, align 8, !tbaa !385
  %89 = ptrtoint ptr %59 to i64
  %90 = sub i64 0, %89
  %91 = and i64 %90, 63
  %92 = getelementptr inbounds nuw i8, ptr %59, i64 %91
  %93 = icmp ugt ptr %92, %83
  br i1 %93, label %111, label %94

94:                                               ; preds = %80
  store ptr %92, ptr %74, align 8, !tbaa !52
  store ptr %92, ptr %75, align 8, !tbaa !53
  %95 = icmp eq i64 %91, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  store ptr %92, ptr %81, align 8, !tbaa !54
  br label %97

97:                                               ; preds = %96, %94
  store i32 1, ptr %77, align 8, !tbaa !319
  br label %98

98:                                               ; preds = %58, %97
  %99 = phi ptr [ %92, %97 ], [ %59, %58 ]
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 %76
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %102 = load ptr, ptr %101, align 8, !tbaa !383
  %103 = icmp ugt ptr %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %105, align 8, !tbaa !51
  br label %107

106:                                              ; preds = %98
  store ptr %100, ptr %75, align 8, !tbaa !53
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi ptr [ %99, %104 ], [ %100, %106 ]
  %109 = phi ptr [ null, %104 ], [ %99, %106 ]
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %109, ptr %110, align 8, !tbaa !407
  br label %131

111:                                              ; preds = %80
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %112, align 8, !tbaa !407
  %113 = load ptr, ptr %74, align 8, !tbaa !52
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %113, ptr %114, align 8, !tbaa !54
  %115 = getelementptr i8, ptr %1, i64 8
  %116 = load ptr, ptr %115, align 8, !tbaa !60
  %117 = ptrtoint ptr %116 to i64
  %118 = and i64 %117, 63
  %119 = sub nsw i64 0, %118
  %120 = getelementptr inbounds i8, ptr %116, i64 %119
  %121 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %120, ptr %121, align 8, !tbaa !385
  %122 = ptrtoint ptr %113 to i64
  %123 = sub i64 0, %122
  %124 = and i64 %123, 63
  %125 = getelementptr inbounds nuw i8, ptr %113, i64 %124
  %126 = icmp ugt ptr %125, %116
  br i1 %126, label %146, label %127

127:                                              ; preds = %111
  store ptr %125, ptr %74, align 8, !tbaa !52
  store ptr %125, ptr %75, align 8, !tbaa !53
  %128 = icmp eq i64 %124, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  store ptr %125, ptr %114, align 8, !tbaa !54
  br label %130

130:                                              ; preds = %129, %127
  store i32 1, ptr %77, align 8, !tbaa !319
  br label %131

131:                                              ; preds = %130, %107
  %132 = phi ptr [ %108, %107 ], [ %125, %130 ]
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 %28
  %134 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %135 = load ptr, ptr %134, align 8, !tbaa !383
  %136 = icmp ugt ptr %133, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %138, align 8, !tbaa !51
  br label %140

139:                                              ; preds = %131
  store ptr %133, ptr %75, align 8, !tbaa !53
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi ptr [ %132, %137 ], [ %133, %139 ]
  %142 = phi ptr [ null, %137 ], [ %132, %139 ]
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %142, ptr %143, align 8, !tbaa !408
  %144 = shl nuw nsw i64 4, %43
  %145 = select i1 %42, i64 0, i64 %144
  br label %168

146:                                              ; preds = %111
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %147, align 8, !tbaa !408
  %148 = shl nuw nsw i64 4, %43
  %149 = select i1 %42, i64 0, i64 %148
  %150 = load ptr, ptr %74, align 8, !tbaa !52
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %150, ptr %151, align 8, !tbaa !54
  %152 = getelementptr i8, ptr %1, i64 8
  %153 = load ptr, ptr %152, align 8, !tbaa !60
  %154 = ptrtoint ptr %153 to i64
  %155 = and i64 %154, 63
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, ptr %153, i64 %156
  %158 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %157, ptr %158, align 8, !tbaa !385
  %159 = ptrtoint ptr %150 to i64
  %160 = sub i64 0, %159
  %161 = and i64 %160, 63
  %162 = getelementptr inbounds nuw i8, ptr %150, i64 %161
  %163 = icmp ugt ptr %162, %153
  br i1 %163, label %178, label %164

164:                                              ; preds = %146
  store ptr %162, ptr %74, align 8, !tbaa !52
  store ptr %162, ptr %75, align 8, !tbaa !53
  %165 = icmp eq i64 %161, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %164
  store ptr %162, ptr %151, align 8, !tbaa !54
  br label %167

167:                                              ; preds = %166, %164
  store i32 1, ptr %77, align 8, !tbaa !319
  br label %168

168:                                              ; preds = %167, %140
  %169 = phi i64 [ %145, %140 ], [ %149, %167 ]
  %170 = phi ptr [ %141, %140 ], [ %162, %167 ]
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 %169
  %172 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %173 = load ptr, ptr %172, align 8, !tbaa !383
  %174 = icmp ugt ptr %171, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %176, align 8, !tbaa !51
  br label %178

177:                                              ; preds = %168
  store ptr %171, ptr %75, align 8, !tbaa !53
  br label %178

178:                                              ; preds = %146, %175, %177
  %179 = phi ptr [ %171, %177 ], [ %170, %175 ], [ %59, %146 ]
  %180 = phi ptr [ %170, %177 ], [ null, %175 ], [ null, %146 ]
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %180, ptr %181, align 8, !tbaa !409
  %182 = getelementptr i8, ptr %1, i64 56
  %183 = load i8, ptr %182, align 8, !tbaa !51
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %562

185:                                              ; preds = %178
  %186 = icmp eq i32 %4, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %185
  %188 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %189 = load ptr, ptr %188, align 8, !tbaa !54
  %190 = icmp ult ptr %189, %179
  br i1 %190, label %191, label %199

191:                                              ; preds = %187
  %192 = ptrtoint ptr %179 to i64
  %193 = ptrtoint ptr %189 to i64
  %194 = sub i64 %192, %193
  tail call void @llvm.memset.p0.i64(ptr align 1 %189, i8 0, i64 %194, i1 false)
  %195 = load ptr, ptr %188, align 8, !tbaa !54
  %196 = load ptr, ptr %75, align 8, !tbaa !53
  %197 = icmp ult ptr %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  store ptr %196, ptr %188, align 8, !tbaa !54
  br label %199

199:                                              ; preds = %198, %191, %187, %185
  %200 = phi ptr [ %196, %198 ], [ %196, %191 ], [ %179, %187 ], [ %179, %185 ]
  %201 = load i32, ptr %8, align 4, !tbaa !75
  %202 = add i32 %201, -6
  %203 = icmp ult i32 %202, -3
  %204 = icmp ne i32 %3, 1
  %205 = or i1 %204, %203
  br i1 %205, label %333, label %206

206:                                              ; preds = %199
  %207 = add nuw i64 %32, 63
  %208 = and i64 %207, -64
  %209 = load i32, ptr %77, align 8, !tbaa !319
  br i1 %13, label %210, label %283

210:                                              ; preds = %206
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %210
  %213 = load ptr, ptr %74, align 8, !tbaa !52
  %214 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %213, ptr %214, align 8, !tbaa !54
  %215 = getelementptr i8, ptr %1, i64 8
  %216 = load ptr, ptr %215, align 8, !tbaa !60
  %217 = ptrtoint ptr %216 to i64
  %218 = and i64 %217, 63
  %219 = sub nsw i64 0, %218
  %220 = getelementptr inbounds i8, ptr %216, i64 %219
  %221 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %220, ptr %221, align 8, !tbaa !385
  %222 = ptrtoint ptr %213 to i64
  %223 = sub i64 0, %222
  %224 = and i64 %223, 63
  %225 = getelementptr inbounds nuw i8, ptr %213, i64 %224
  %226 = icmp ugt ptr %225, %216
  br i1 %226, label %253, label %227

227:                                              ; preds = %212
  store ptr %225, ptr %74, align 8, !tbaa !52
  store ptr %225, ptr %75, align 8, !tbaa !53
  %228 = icmp eq i64 %224, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %227
  store ptr %225, ptr %214, align 8, !tbaa !54
  br label %230

230:                                              ; preds = %229, %227
  store i32 1, ptr %77, align 8, !tbaa !319
  br label %231

231:                                              ; preds = %210, %230
  %232 = phi ptr [ %200, %210 ], [ %225, %230 ]
  %233 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %234 = load ptr, ptr %233, align 8, !tbaa !383
  %235 = sub i64 0, %208
  %236 = getelementptr inbounds i8, ptr %234, i64 %235
  %237 = icmp ult ptr %236, %232
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %253

239:                                              ; preds = %231
  %240 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %241 = load ptr, ptr %240, align 8, !tbaa !54
  %242 = icmp ult ptr %236, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  store ptr %236, ptr %240, align 8, !tbaa !54
  br label %244

244:                                              ; preds = %243, %239
  store ptr %236, ptr %233, align 8, !tbaa !383
  %245 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %246 = load ptr, ptr %245, align 8, !tbaa !385
  %247 = icmp ult ptr %236, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = ptrtoint ptr %246 to i64
  %250 = ptrtoint ptr %236 to i64
  %251 = sub i64 %249, %250
  %252 = tail call i64 @llvm.umin.i64(i64 %251, i64 %208)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %236, i8 0, i64 %252, i1 false)
  store ptr %236, ptr %245, align 8, !tbaa !385
  br label %253

253:                                              ; preds = %212, %238, %244, %248
  %254 = phi ptr [ null, %212 ], [ %236, %248 ], [ %236, %244 ], [ null, %238 ]
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %254, ptr %255, align 8, !tbaa !410
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %257 = load i64, ptr %256, align 8, !tbaa !411
  %258 = tail call i64 @llvm.fshl.i64(i64 %257, i64 %257, i64 15)
  %259 = tail call i64 @llvm.fshl.i64(i64 %257, i64 %257, i64 40)
  %260 = xor i64 %259, %258
  %261 = xor i64 %260, %257
  %262 = mul i64 %261, -6939452855193903323
  %263 = lshr i64 %262, 35
  %264 = add nuw nsw i64 %263, 8
  %265 = xor i64 %264, %262
  %266 = mul i64 %265, -6939452855193903323
  %267 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %268 = load i32, ptr %267, align 8, !tbaa !412
  %269 = zext i32 %268 to i64
  %270 = shl nuw nsw i64 %269, 15
  %271 = tail call i64 @llvm.fshl.i64(i64 %269, i64 %269, i64 40)
  %272 = xor i64 %271, %270
  %273 = xor i64 %272, %269
  %274 = mul i64 %273, -6939452855193903323
  %275 = lshr i64 %274, 35
  %276 = add nuw nsw i64 %275, 4
  %277 = xor i64 %276, %274
  %278 = mul i64 %277, -6939452855193903323
  %279 = xor i64 %278, %266
  %280 = lshr i64 %279, 28
  %281 = xor i64 %266, %280
  %282 = xor i64 %281, %278
  store i64 %282, ptr %256, align 8, !tbaa !411
  br label %325

283:                                              ; preds = %206
  %284 = icmp ult i32 %209, 2
  br i1 %284, label %285, label %307

285:                                              ; preds = %283
  %286 = icmp eq i32 %209, 0
  br i1 %286, label %287, label %305

287:                                              ; preds = %285
  %288 = load ptr, ptr %74, align 8, !tbaa !52
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %288, ptr %289, align 8, !tbaa !54
  %290 = getelementptr i8, ptr %1, i64 8
  %291 = load ptr, ptr %290, align 8, !tbaa !60
  %292 = ptrtoint ptr %291 to i64
  %293 = and i64 %292, 63
  %294 = sub nsw i64 0, %293
  %295 = getelementptr inbounds i8, ptr %291, i64 %294
  %296 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %295, ptr %296, align 8, !tbaa !385
  %297 = ptrtoint ptr %288 to i64
  %298 = sub i64 0, %297
  %299 = and i64 %298, 63
  %300 = getelementptr inbounds nuw i8, ptr %288, i64 %299
  %301 = icmp ugt ptr %300, %291
  br i1 %301, label %321, label %302

302:                                              ; preds = %287
  store ptr %300, ptr %74, align 8, !tbaa !52
  store ptr %300, ptr %75, align 8, !tbaa !53
  %303 = icmp eq i64 %299, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %302
  store ptr %300, ptr %289, align 8, !tbaa !54
  br label %305

305:                                              ; preds = %304, %302, %285
  %306 = phi ptr [ %300, %304 ], [ %300, %302 ], [ %200, %285 ]
  store i32 2, ptr %77, align 8, !tbaa !319
  br label %307

307:                                              ; preds = %283, %305
  %308 = phi ptr [ %200, %283 ], [ %306, %305 ]
  %309 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %310 = load ptr, ptr %309, align 8, !tbaa !383
  %311 = sub i64 0, %208
  %312 = getelementptr inbounds i8, ptr %310, i64 %311
  %313 = icmp ult ptr %312, %308
  br i1 %313, label %314, label %315

314:                                              ; preds = %307
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %321

315:                                              ; preds = %307
  %316 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %317 = load ptr, ptr %316, align 8, !tbaa !54
  %318 = icmp ult ptr %312, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  store ptr %312, ptr %316, align 8, !tbaa !54
  br label %320

320:                                              ; preds = %319, %315
  store ptr %312, ptr %309, align 8, !tbaa !383
  br label %321

321:                                              ; preds = %287, %314, %320
  %322 = phi ptr [ %312, %320 ], [ null, %287 ], [ null, %314 ]
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %322, ptr %323, align 8, !tbaa !410
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %322, i8 0, i64 %32, i1 false)
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %324, align 8, !tbaa !411
  br label %325

325:                                              ; preds = %321, %253
  %326 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %327 = load i32, ptr %326, align 4, !tbaa !73
  %328 = tail call i32 @llvm.umax.i32(i32 %327, i32 4)
  %329 = tail call i32 @llvm.umin.i32(i32 %328, i32 6)
  %330 = load i32, ptr %29, align 4, !tbaa !72
  %331 = sub i32 %330, %329
  %332 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %331, ptr %332, align 4, !tbaa !413
  br label %333

333:                                              ; preds = %325, %199
  br i1 %13, label %334, label %557

334:                                              ; preds = %333
  %335 = load i32, ptr %8, align 4, !tbaa !75
  %336 = icmp ugt i32 %335, 6
  br i1 %336, label %337, label %557

337:                                              ; preds = %334
  %338 = load i32, ptr %77, align 8, !tbaa !319
  %339 = icmp ult i32 %338, 2
  br i1 %339, label %340, label %361

340:                                              ; preds = %337
  %341 = icmp eq i32 %338, 0
  br i1 %341, label %342, label %360

342:                                              ; preds = %340
  %343 = load ptr, ptr %74, align 8, !tbaa !52
  %344 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %343, ptr %344, align 8, !tbaa !54
  %345 = getelementptr i8, ptr %1, i64 8
  %346 = load ptr, ptr %345, align 8, !tbaa !60
  %347 = ptrtoint ptr %346 to i64
  %348 = and i64 %347, 63
  %349 = sub nsw i64 0, %348
  %350 = getelementptr inbounds i8, ptr %346, i64 %349
  %351 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %350, ptr %351, align 8, !tbaa !385
  %352 = ptrtoint ptr %343 to i64
  %353 = sub i64 0, %352
  %354 = and i64 %353, 63
  %355 = getelementptr inbounds nuw i8, ptr %343, i64 %354
  %356 = icmp ugt ptr %355, %346
  br i1 %356, label %377, label %357

357:                                              ; preds = %342
  store ptr %355, ptr %74, align 8, !tbaa !52
  store ptr %355, ptr %75, align 8, !tbaa !53
  %358 = icmp eq i64 %354, 0
  br i1 %358, label %360, label %359

359:                                              ; preds = %357
  store ptr %355, ptr %344, align 8, !tbaa !54
  br label %360

360:                                              ; preds = %359, %357, %340
  store i32 2, ptr %77, align 8, !tbaa !319
  br label %361

361:                                              ; preds = %360, %337
  %362 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %363 = load ptr, ptr %362, align 8, !tbaa !383
  %364 = getelementptr inbounds i8, ptr %363, i64 -1024
  %365 = load ptr, ptr %75, align 8, !tbaa !53
  %366 = icmp ult ptr %364, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %361
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %374

368:                                              ; preds = %361
  %369 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %370 = load ptr, ptr %369, align 8, !tbaa !54
  %371 = icmp ult ptr %364, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %368
  store ptr %364, ptr %369, align 8, !tbaa !54
  br label %373

373:                                              ; preds = %372, %368
  store ptr %364, ptr %362, align 8, !tbaa !383
  br label %374

374:                                              ; preds = %373, %367
  %375 = phi ptr [ null, %367 ], [ %364, %373 ]
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %375, ptr %376, align 8, !tbaa !414
  br label %397

377:                                              ; preds = %342
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %378, align 8, !tbaa !414
  %379 = load ptr, ptr %74, align 8, !tbaa !52
  %380 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %379, ptr %380, align 8, !tbaa !54
  %381 = getelementptr i8, ptr %1, i64 8
  %382 = load ptr, ptr %381, align 8, !tbaa !60
  %383 = ptrtoint ptr %382 to i64
  %384 = and i64 %383, 63
  %385 = sub nsw i64 0, %384
  %386 = getelementptr inbounds i8, ptr %382, i64 %385
  %387 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %386, ptr %387, align 8, !tbaa !385
  %388 = ptrtoint ptr %379 to i64
  %389 = sub i64 0, %388
  %390 = and i64 %389, 63
  %391 = getelementptr inbounds nuw i8, ptr %379, i64 %390
  %392 = icmp ugt ptr %391, %382
  br i1 %392, label %413, label %393

393:                                              ; preds = %377
  store ptr %391, ptr %74, align 8, !tbaa !52
  store ptr %391, ptr %75, align 8, !tbaa !53
  %394 = icmp eq i64 %390, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %393
  store ptr %391, ptr %380, align 8, !tbaa !54
  br label %396

396:                                              ; preds = %395, %393
  store i32 2, ptr %77, align 8, !tbaa !319
  br label %397

397:                                              ; preds = %374, %396
  %398 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %399 = load ptr, ptr %398, align 8, !tbaa !383
  %400 = getelementptr inbounds i8, ptr %399, i64 -192
  %401 = load ptr, ptr %75, align 8, !tbaa !53
  %402 = icmp ult ptr %400, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %397
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %410

404:                                              ; preds = %397
  %405 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %406 = load ptr, ptr %405, align 8, !tbaa !54
  %407 = icmp ult ptr %400, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %404
  store ptr %400, ptr %405, align 8, !tbaa !54
  br label %409

409:                                              ; preds = %408, %404
  store ptr %400, ptr %398, align 8, !tbaa !383
  br label %410

410:                                              ; preds = %409, %403
  %411 = phi ptr [ null, %403 ], [ %400, %409 ]
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %411, ptr %412, align 8, !tbaa !415
  br label %433

413:                                              ; preds = %377
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %414, align 8, !tbaa !415
  %415 = load ptr, ptr %74, align 8, !tbaa !52
  %416 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %415, ptr %416, align 8, !tbaa !54
  %417 = getelementptr i8, ptr %1, i64 8
  %418 = load ptr, ptr %417, align 8, !tbaa !60
  %419 = ptrtoint ptr %418 to i64
  %420 = and i64 %419, 63
  %421 = sub nsw i64 0, %420
  %422 = getelementptr inbounds i8, ptr %418, i64 %421
  %423 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %422, ptr %423, align 8, !tbaa !385
  %424 = ptrtoint ptr %415 to i64
  %425 = sub i64 0, %424
  %426 = and i64 %425, 63
  %427 = getelementptr inbounds nuw i8, ptr %415, i64 %426
  %428 = icmp ugt ptr %427, %418
  br i1 %428, label %449, label %429

429:                                              ; preds = %413
  store ptr %427, ptr %74, align 8, !tbaa !52
  store ptr %427, ptr %75, align 8, !tbaa !53
  %430 = icmp eq i64 %426, 0
  br i1 %430, label %432, label %431

431:                                              ; preds = %429
  store ptr %427, ptr %416, align 8, !tbaa !54
  br label %432

432:                                              ; preds = %431, %429
  store i32 2, ptr %77, align 8, !tbaa !319
  br label %433

433:                                              ; preds = %410, %432
  %434 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %435 = load ptr, ptr %434, align 8, !tbaa !383
  %436 = getelementptr inbounds i8, ptr %435, i64 -256
  %437 = load ptr, ptr %75, align 8, !tbaa !53
  %438 = icmp ult ptr %436, %437
  br i1 %438, label %439, label %440

439:                                              ; preds = %433
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %446

440:                                              ; preds = %433
  %441 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %442 = load ptr, ptr %441, align 8, !tbaa !54
  %443 = icmp ult ptr %436, %442
  br i1 %443, label %444, label %445

444:                                              ; preds = %440
  store ptr %436, ptr %441, align 8, !tbaa !54
  br label %445

445:                                              ; preds = %444, %440
  store ptr %436, ptr %434, align 8, !tbaa !383
  br label %446

446:                                              ; preds = %445, %439
  %447 = phi ptr [ null, %439 ], [ %436, %445 ]
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %447, ptr %448, align 8, !tbaa !416
  br label %469

449:                                              ; preds = %413
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %450, align 8, !tbaa !416
  %451 = load ptr, ptr %74, align 8, !tbaa !52
  %452 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %451, ptr %452, align 8, !tbaa !54
  %453 = getelementptr i8, ptr %1, i64 8
  %454 = load ptr, ptr %453, align 8, !tbaa !60
  %455 = ptrtoint ptr %454 to i64
  %456 = and i64 %455, 63
  %457 = sub nsw i64 0, %456
  %458 = getelementptr inbounds i8, ptr %454, i64 %457
  %459 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %458, ptr %459, align 8, !tbaa !385
  %460 = ptrtoint ptr %451 to i64
  %461 = sub i64 0, %460
  %462 = and i64 %461, 63
  %463 = getelementptr inbounds nuw i8, ptr %451, i64 %462
  %464 = icmp ugt ptr %463, %454
  br i1 %464, label %485, label %465

465:                                              ; preds = %449
  store ptr %463, ptr %74, align 8, !tbaa !52
  store ptr %463, ptr %75, align 8, !tbaa !53
  %466 = icmp eq i64 %462, 0
  br i1 %466, label %468, label %467

467:                                              ; preds = %465
  store ptr %463, ptr %452, align 8, !tbaa !54
  br label %468

468:                                              ; preds = %467, %465
  store i32 2, ptr %77, align 8, !tbaa !319
  br label %469

469:                                              ; preds = %446, %468
  %470 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %471 = load ptr, ptr %470, align 8, !tbaa !383
  %472 = getelementptr inbounds i8, ptr %471, i64 -128
  %473 = load ptr, ptr %75, align 8, !tbaa !53
  %474 = icmp ult ptr %472, %473
  br i1 %474, label %475, label %476

475:                                              ; preds = %469
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %482

476:                                              ; preds = %469
  %477 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %478 = load ptr, ptr %477, align 8, !tbaa !54
  %479 = icmp ult ptr %472, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %476
  store ptr %472, ptr %477, align 8, !tbaa !54
  br label %481

481:                                              ; preds = %480, %476
  store ptr %472, ptr %470, align 8, !tbaa !383
  br label %482

482:                                              ; preds = %481, %475
  %483 = phi ptr [ null, %475 ], [ %472, %481 ]
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %483, ptr %484, align 8, !tbaa !417
  br label %505

485:                                              ; preds = %449
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %486, align 8, !tbaa !417
  %487 = load ptr, ptr %74, align 8, !tbaa !52
  %488 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %487, ptr %488, align 8, !tbaa !54
  %489 = getelementptr i8, ptr %1, i64 8
  %490 = load ptr, ptr %489, align 8, !tbaa !60
  %491 = ptrtoint ptr %490 to i64
  %492 = and i64 %491, 63
  %493 = sub nsw i64 0, %492
  %494 = getelementptr inbounds i8, ptr %490, i64 %493
  %495 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %494, ptr %495, align 8, !tbaa !385
  %496 = ptrtoint ptr %487 to i64
  %497 = sub i64 0, %496
  %498 = and i64 %497, 63
  %499 = getelementptr inbounds nuw i8, ptr %487, i64 %498
  %500 = icmp ugt ptr %499, %490
  br i1 %500, label %521, label %501

501:                                              ; preds = %485
  store ptr %499, ptr %74, align 8, !tbaa !52
  store ptr %499, ptr %75, align 8, !tbaa !53
  %502 = icmp eq i64 %498, 0
  br i1 %502, label %504, label %503

503:                                              ; preds = %501
  store ptr %499, ptr %488, align 8, !tbaa !54
  br label %504

504:                                              ; preds = %503, %501
  store i32 2, ptr %77, align 8, !tbaa !319
  br label %505

505:                                              ; preds = %482, %504
  %506 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %507 = load ptr, ptr %506, align 8, !tbaa !383
  %508 = getelementptr inbounds i8, ptr %507, i64 -32832
  %509 = load ptr, ptr %75, align 8, !tbaa !53
  %510 = icmp ult ptr %508, %509
  br i1 %510, label %511, label %512

511:                                              ; preds = %505
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %518

512:                                              ; preds = %505
  %513 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %514 = load ptr, ptr %513, align 8, !tbaa !54
  %515 = icmp ult ptr %508, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %512
  store ptr %508, ptr %513, align 8, !tbaa !54
  br label %517

517:                                              ; preds = %516, %512
  store ptr %508, ptr %506, align 8, !tbaa !383
  br label %518

518:                                              ; preds = %517, %511
  %519 = phi ptr [ null, %511 ], [ %508, %517 ]
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %519, ptr %520, align 8, !tbaa !418
  br label %541

521:                                              ; preds = %485
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %522, align 8, !tbaa !418
  %523 = load ptr, ptr %74, align 8, !tbaa !52
  %524 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %523, ptr %524, align 8, !tbaa !54
  %525 = getelementptr i8, ptr %1, i64 8
  %526 = load ptr, ptr %525, align 8, !tbaa !60
  %527 = ptrtoint ptr %526 to i64
  %528 = and i64 %527, 63
  %529 = sub nsw i64 0, %528
  %530 = getelementptr inbounds i8, ptr %526, i64 %529
  %531 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %530, ptr %531, align 8, !tbaa !385
  %532 = ptrtoint ptr %523 to i64
  %533 = sub i64 0, %532
  %534 = and i64 %533, 63
  %535 = getelementptr inbounds nuw i8, ptr %523, i64 %534
  %536 = icmp ugt ptr %535, %526
  br i1 %536, label %554, label %537

537:                                              ; preds = %521
  store ptr %535, ptr %74, align 8, !tbaa !52
  store ptr %535, ptr %75, align 8, !tbaa !53
  %538 = icmp eq i64 %534, 0
  br i1 %538, label %540, label %539

539:                                              ; preds = %537
  store ptr %535, ptr %524, align 8, !tbaa !54
  br label %540

540:                                              ; preds = %539, %537
  store i32 2, ptr %77, align 8, !tbaa !319
  br label %541

541:                                              ; preds = %518, %540
  %542 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %543 = load ptr, ptr %542, align 8, !tbaa !383
  %544 = getelementptr inbounds i8, ptr %543, i64 -114816
  %545 = load ptr, ptr %75, align 8, !tbaa !53
  %546 = icmp ult ptr %544, %545
  br i1 %546, label %547, label %548

547:                                              ; preds = %541
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %554

548:                                              ; preds = %541
  %549 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %550 = load ptr, ptr %549, align 8, !tbaa !54
  %551 = icmp ult ptr %544, %550
  br i1 %551, label %552, label %553

552:                                              ; preds = %548
  store ptr %544, ptr %549, align 8, !tbaa !54
  br label %553

553:                                              ; preds = %552, %548
  store ptr %544, ptr %542, align 8, !tbaa !383
  br label %554

554:                                              ; preds = %521, %547, %553
  %555 = phi ptr [ %544, %553 ], [ null, %521 ], [ null, %547 ]
  %556 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %555, ptr %556, align 8, !tbaa !419
  br label %557

557:                                              ; preds = %554, %334, %333
  %558 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %558, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !76
  %559 = load i8, ptr %182, align 8, !tbaa !51
  %560 = icmp eq i8 %559, 0
  %561 = select i1 %560, i64 0, i64 -64
  br label %562

562:                                              ; preds = %557, %178
  %563 = phi i64 [ -64, %178 ], [ %561, %557 ]
  ret i64 %563
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #25

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i32 @HUF_validateCTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare i32 @HUF_optimalTableLog(i32 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i64 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((24, 32)) %0, ptr noundef readonly captures(none) %1, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) unnamed_addr #2 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 2224
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 772
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %18 = load ptr, ptr %17, align 8, !tbaa !177
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !176
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %23, align 8, !tbaa !420
  %24 = load ptr, ptr %1, align 8, !tbaa !175
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !179
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
  %39 = load i16, ptr %38, align 4, !tbaa !180
  %40 = load i32, ptr %37, align 4, !tbaa !183
  %41 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %40, i1 true)
  %42 = getelementptr inbounds nuw i8, ptr %37, i64 6
  %43 = load i16, ptr %42, align 2, !tbaa !184
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
  %54 = load i8, ptr %53, align 1, !tbaa !185
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i8 [ %50, %46 ], [ %54, %51 ]
  %57 = getelementptr inbounds nuw i8, ptr %20, i64 %36
  store i8 %56, ptr %57, align 1, !tbaa !185
  %58 = trunc nuw nsw i32 %41 to i8
  %59 = xor i8 %58, 31
  %60 = getelementptr inbounds nuw i8, ptr %18, i64 %36
  store i8 %59, ptr %60, align 1, !tbaa !185
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
  %69 = load i8, ptr %68, align 1, !tbaa !185
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i8 [ %65, %62 ], [ %69, %66 ]
  %72 = getelementptr inbounds nuw i8, ptr %22, i64 %36
  store i8 %71, ptr %72, align 1, !tbaa !185
  %73 = add nuw nsw i64 %36, 1
  %74 = icmp eq i64 %73, %34
  br i1 %74, label %75, label %35, !llvm.loop !186

75:                                               ; preds = %70, %11
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %77 = load i32, ptr %76, align 8, !tbaa !187
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %81 = load i32, ptr %80, align 4, !tbaa !188
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw i8, ptr %20, i64 %82
  store i8 35, ptr %83, align 1, !tbaa !185
  %84 = load i32, ptr %76, align 8, !tbaa !187
  br label %85

85:                                               ; preds = %79, %75
  %86 = phi i32 [ %84, %79 ], [ %77, %75 ]
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %90 = load i32, ptr %89, align 4, !tbaa !188
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds nuw i8, ptr %22, i64 %91
  store i8 52, ptr %92, align 1, !tbaa !185
  br label %93

93:                                               ; preds = %85, %88
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %94, align 8, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  store i32 35, ptr %12, align 4, !tbaa !4
  %95 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %12, ptr noundef %20, i64 noundef %2, ptr noundef %9, i64 noundef %10) #34
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %97 = load i32, ptr %96, align 4, !tbaa !213
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 3548
  store i32 %97, ptr %98, align 4, !tbaa !213
  %99 = load i32, ptr %12, align 4, !tbaa !4
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 2224
  %101 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %98, ptr noundef %8, i32 noundef %99, i64 noundef %95, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %100, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #34
  store i32 %101, ptr %0, align 8, !tbaa !423
  %102 = ptrtoint ptr %6 to i64
  %103 = ptrtoint ptr %5 to i64
  %104 = sub i64 %102, %103
  %105 = load i32, ptr %12, align 4, !tbaa !4
  %106 = call i64 @ZSTD_buildCTable(ptr noundef %5, i64 noundef %104, ptr noundef nonnull %15, i32 noundef 9, i32 noundef %101, ptr noundef %8, i32 noundef %105, ptr noundef %20, i64 noundef %2, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %100, i64 noundef 1316, ptr noundef %9, i64 noundef %10) #34
  %107 = icmp ult i64 %106, -119
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = icmp eq i32 %101, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  store i64 %106, ptr %23, align 8, !tbaa !420
  br label %113

111:                                              ; preds = %93
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %106, ptr %112, align 8, !tbaa !424
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %158

113:                                              ; preds = %108, %110
  %114 = getelementptr inbounds nuw i8, ptr %5, i64 %106
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  store i32 31, ptr %13, align 4, !tbaa !4
  %115 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %13, ptr noundef %18, i64 noundef %2, ptr noundef %9, i64 noundef %10) #34
  %116 = load i32, ptr %13, align 4, !tbaa !4
  %117 = icmp ult i32 %116, 29
  %118 = zext i1 %117 to i32
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %120 = load i32, ptr %119, align 4, !tbaa !217
  %121 = getelementptr inbounds nuw i8, ptr %4, i64 3540
  store i32 %120, ptr %121, align 4, !tbaa !217
  %122 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %121, ptr noundef %8, i32 noundef %116, i64 noundef %115, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %118, i32 noundef %7) #34
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %122, ptr %123, align 4, !tbaa !425
  %124 = ptrtoint ptr %114 to i64
  %125 = sub i64 %102, %124
  %126 = load i32, ptr %13, align 4, !tbaa !4
  %127 = call i64 @ZSTD_buildCTable(ptr noundef %114, i64 noundef %125, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %122, ptr noundef %8, i32 noundef %126, ptr noundef %18, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #34
  %128 = icmp ult i64 %127, -119
  br i1 %128, label %129, label %132

129:                                              ; preds = %113
  %130 = icmp eq i32 %122, 2
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  store i64 %127, ptr %23, align 8, !tbaa !420
  br label %134

132:                                              ; preds = %113
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %127, ptr %133, align 8, !tbaa !424
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %158

134:                                              ; preds = %129, %131
  %135 = getelementptr inbounds nuw i8, ptr %114, i64 %127
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  store i32 52, ptr %14, align 4, !tbaa !4
  %136 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %14, ptr noundef %22, i64 noundef %2, ptr noundef %9, i64 noundef %10) #34
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %138 = load i32, ptr %137, align 4, !tbaa !218
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 3544
  store i32 %138, ptr %139, align 4, !tbaa !218
  %140 = load i32, ptr %14, align 4, !tbaa !4
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 772
  %142 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %139, ptr noundef %8, i32 noundef %140, i64 noundef %136, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %141, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #34
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %142, ptr %143, align 8, !tbaa !426
  %144 = ptrtoint ptr %135 to i64
  %145 = sub i64 %102, %144
  %146 = load i32, ptr %14, align 4, !tbaa !4
  %147 = call i64 @ZSTD_buildCTable(ptr noundef %135, i64 noundef %145, ptr noundef nonnull %16, i32 noundef 9, i32 noundef %142, ptr noundef %8, i32 noundef %146, ptr noundef %22, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %141, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #34
  %148 = icmp ult i64 %147, -119
  br i1 %148, label %149, label %152

149:                                              ; preds = %134
  %150 = icmp eq i32 %142, 2
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  store i64 %147, ptr %23, align 8, !tbaa !420
  br label %154

152:                                              ; preds = %134
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %147, ptr %153, align 8, !tbaa !424
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %158

154:                                              ; preds = %149, %151
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %155 = add nuw nsw i64 %127, %106
  %156 = add nuw nsw i64 %155, %147
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %156, ptr %157, align 8, !tbaa !424
  br label %158

158:                                              ; preds = %152, %132, %111, %154
  ret void
}

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

declare i64 @ZSTD_buildCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #16 {
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = getelementptr i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !231
  %10 = ptrtoint ptr %4 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = icmp ult i32 %13, -624951295
  br i1 %14, label %146, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !86
  %18 = shl nuw i32 1, %17
  %19 = load i32, ptr %6, align 4, !tbaa !88
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %21 = load i32, ptr %20, align 4, !tbaa !92
  %22 = icmp ugt i32 %21, 5
  %23 = sext i1 %22 to i32
  %24 = add i32 %19, %23
  %25 = shl nuw i32 1, %24
  %26 = add i32 %25, -1
  %27 = ptrtoint ptr %3 to i64
  %28 = sub i64 %27, %11
  %29 = trunc i64 %28 to i32
  %30 = and i32 %26, %29
  %31 = icmp samesign ult i32 %30, 2
  %32 = tail call i32 @llvm.umax.i32(i32 %25, i32 2)
  %33 = select i1 %31, i32 %32, i32 0
  %34 = tail call i32 @llvm.umax.i32(i32 %18, i32 %25)
  %35 = add nuw i32 %34, %30
  %36 = add i32 %35, %33
  %37 = sub i32 %29, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw i8, ptr %9, i64 %38
  store ptr %39, ptr %8, align 8, !tbaa !231
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !228
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 %38
  store ptr %42, ptr %40, align 8, !tbaa !228
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %44 = load i32, ptr %43, align 4, !tbaa !229
  %45 = add i32 %37, 2
  %46 = icmp ult i32 %44, %45
  %47 = sub i32 %44, %37
  %48 = select i1 %46, i32 2, i32 %47
  store i32 %48, ptr %43, align 4, !tbaa !229
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %50 = load i32, ptr %49, align 8, !tbaa !230
  %51 = icmp ult i32 %50, %45
  %52 = sub i32 %50, %37
  %53 = select i1 %51, i32 2, i32 %52
  store i32 %53, ptr %49, align 8, !tbaa !230
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %55 = load i32, ptr %54, align 8, !tbaa !427
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8, !tbaa !427
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %58, ptr %59, align 8, !tbaa !54
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %61 = load i32, ptr %60, align 4, !tbaa !87
  %62 = shl nuw i32 1, %61
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %64 = load ptr, ptr %63, align 8, !tbaa !407
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %64, i32 noundef %62, i32 noundef %37)
  %65 = load i32, ptr %20, align 4, !tbaa !92
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %67 = load i32, ptr %66, align 8, !tbaa !78
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %69 = load i32, ptr %68, align 4, !tbaa !401
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %15
  %72 = icmp eq i32 %65, 1
  br i1 %72, label %127, label %73

73:                                               ; preds = %71
  %74 = add i32 %65, -3
  %75 = icmp ult i32 %74, 3
  %76 = icmp eq i32 %67, 1
  %77 = and i1 %75, %76
  br i1 %77, label %127, label %78

78:                                               ; preds = %73, %15
  %79 = load i32, ptr %6, align 4, !tbaa !88
  %80 = shl nuw i32 1, %79
  %81 = icmp eq i32 %65, 6
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %83 = load ptr, ptr %82, align 8, !tbaa !408
  br i1 %81, label %84, label %126

84:                                               ; preds = %78
  %85 = sdiv i32 %80, 16
  %86 = icmp sgt i32 %80, 15
  br i1 %86, label %87, label %127

87:                                               ; preds = %84
  %88 = insertelement <4 x i32> poison, i32 %45, i64 0
  %89 = shufflevector <4 x i32> %88, <4 x i32> poison, <4 x i32> zeroinitializer
  %90 = insertelement <4 x i32> poison, i32 %37, i64 0
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %92

92:                                               ; preds = %87, %92
  %93 = phi i64 [ %123, %92 ], [ 0, %87 ]
  %94 = phi i32 [ %124, %92 ], [ 0, %87 ]
  %95 = getelementptr inbounds nuw [4 x i8], ptr %83, i64 %93
  %96 = load <4 x i32>, ptr %95, align 4, !tbaa !4
  %97 = icmp eq <4 x i32> %96, splat (i32 1)
  %98 = icmp ult <4 x i32> %96, %89
  %99 = sub <4 x i32> %96, %91
  %100 = select <4 x i1> %98, <4 x i32> zeroinitializer, <4 x i32> %99
  %101 = select <4 x i1> %97, <4 x i32> splat (i32 1), <4 x i32> %100
  store <4 x i32> %101, ptr %95, align 4, !tbaa !4
  %102 = getelementptr inbounds nuw i8, ptr %95, i64 16
  %103 = load <4 x i32>, ptr %102, align 4, !tbaa !4
  %104 = icmp eq <4 x i32> %103, splat (i32 1)
  %105 = icmp ult <4 x i32> %103, %89
  %106 = sub <4 x i32> %103, %91
  %107 = select <4 x i1> %105, <4 x i32> zeroinitializer, <4 x i32> %106
  %108 = select <4 x i1> %104, <4 x i32> splat (i32 1), <4 x i32> %107
  store <4 x i32> %108, ptr %102, align 4, !tbaa !4
  %109 = getelementptr inbounds nuw i8, ptr %95, i64 32
  %110 = load <4 x i32>, ptr %109, align 4, !tbaa !4
  %111 = icmp eq <4 x i32> %110, splat (i32 1)
  %112 = icmp ult <4 x i32> %110, %89
  %113 = sub <4 x i32> %110, %91
  %114 = select <4 x i1> %112, <4 x i32> zeroinitializer, <4 x i32> %113
  %115 = select <4 x i1> %111, <4 x i32> splat (i32 1), <4 x i32> %114
  store <4 x i32> %115, ptr %109, align 4, !tbaa !4
  %116 = getelementptr inbounds nuw i8, ptr %95, i64 48
  %117 = load <4 x i32>, ptr %116, align 4, !tbaa !4
  %118 = icmp eq <4 x i32> %117, splat (i32 1)
  %119 = icmp ult <4 x i32> %117, %89
  %120 = sub <4 x i32> %117, %91
  %121 = select <4 x i1> %119, <4 x i32> zeroinitializer, <4 x i32> %120
  %122 = select <4 x i1> %118, <4 x i32> splat (i32 1), <4 x i32> %121
  store <4 x i32> %122, ptr %116, align 4, !tbaa !4
  %123 = add nuw nsw i64 %93, 16
  %124 = add nuw nsw i32 %94, 1
  %125 = icmp eq i32 %124, %85
  br i1 %125, label %127, label %92, !llvm.loop !428

126:                                              ; preds = %78
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %83, i32 noundef %80, i32 noundef %37)
  br label %127

127:                                              ; preds = %92, %126, %84, %73, %71
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %129 = load i32, ptr %128, align 8, !tbaa !402
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = shl nuw i32 1, %129
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %134 = load ptr, ptr %133, align 8, !tbaa !409
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %134, i32 noundef %132, i32 noundef %37)
  br label %135

135:                                              ; preds = %127, %131
  %136 = load ptr, ptr %59, align 8, !tbaa !54
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %138 = load ptr, ptr %137, align 8, !tbaa !53
  %139 = icmp ult ptr %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store ptr %138, ptr %59, align 8, !tbaa !54
  br label %141

141:                                              ; preds = %135, %140
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %143 = load i32, ptr %142, align 4, !tbaa !232
  %144 = tail call i32 @llvm.usub.sat.i32(i32 %143, i32 %37)
  store i32 %144, ptr %142, align 4, !tbaa !232
  store i32 0, ptr %7, align 8, !tbaa !404
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %145, align 8, !tbaa !406
  br label %146

146:                                              ; preds = %141, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
  %7 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %3, i64 noundef %4)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %90

9:                                                ; preds = %6
  %10 = icmp eq i64 %7, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %12 = load i32, ptr %11, align 8, !tbaa !242
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %14, label %15

14:                                               ; preds = %9
  br i1 %13, label %82, label %90

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  br i1 %13, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 5616
  %21 = tail call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %11, ptr noundef nonnull %16, ptr noundef nonnull %20)
  %22 = icmp ult i64 %21, -119
  br i1 %22, label %23, label %90

23:                                               ; preds = %19
  %24 = load <2 x ptr>, ptr %17, align 8, !tbaa !49
  %25 = shufflevector <2 x ptr> %24, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %25, ptr %17, align 8, !tbaa !49
  br label %90

26:                                               ; preds = %15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %33 = load i64, ptr %32, align 8, !tbaa !58
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8, !tbaa !11
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %37 = load ptr, ptr %36, align 8, !tbaa !191
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %39 = load ptr, ptr %38, align 8, !tbaa !192
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %37 to i64
  %42 = sub i64 %40, %41
  %43 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %1, i64 noundef %2, ptr noundef %37, i64 noundef %42, ptr noundef nonnull readonly %16, ptr noundef %18, ptr noundef %28, ptr noundef nonnull readonly %29, ptr noundef %31, i64 noundef %33, i32 noundef %35)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %26
  %46 = icmp eq i64 %43, -70
  %47 = icmp ule i64 %4, %2
  %48 = and i1 %47, %46
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = icmp ult i64 %43, -119
  br i1 %50, label %51, label %62

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %53 = load i32, ptr %52, align 4, !tbaa !92
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 7)
  %55 = add i32 %54, -1
  %56 = zext nneg i32 %55 to i64
  %57 = lshr i64 %4, %56
  %58 = add i64 %4, -2
  %59 = sub i64 %58, %57
  %60 = icmp ult i64 %43, %59
  %61 = select i1 %60, i64 %43, i64 0
  br label %62

62:                                               ; preds = %26, %45, %49, %51
  %63 = phi i64 [ %43, %49 ], [ 0, %26 ], [ 0, %45 ], [ %61, %51 ]
  %64 = icmp eq i32 %5, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %67 = load i32, ptr %66, align 8, !tbaa !241
  %68 = icmp eq i32 %67, 0
  %69 = icmp ult i64 %63, 25
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i64 noundef %4)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i8, ptr %3, align 1, !tbaa !185
  store i8 %75, ptr %1, align 1, !tbaa !185
  br label %82

76:                                               ; preds = %62, %65, %71
  %77 = add i64 %63, -2
  %78 = icmp ult i64 %77, -121
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load <2 x ptr>, ptr %17, align 8, !tbaa !49
  %81 = shufflevector <2 x ptr> %80, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %81, ptr %17, align 8, !tbaa !49
  br label %82

82:                                               ; preds = %14, %74, %79, %76
  %83 = phi i64 [ %63, %76 ], [ %63, %79 ], [ 0, %14 ], [ 1, %74 ]
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %85 = load ptr, ptr %84, align 8, !tbaa !55
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 5604
  %87 = load i32, ptr %86, align 4, !tbaa !156
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, ptr %86, align 4, !tbaa !156
  br label %90

90:                                               ; preds = %6, %14, %82, %89, %19, %23
  %91 = phi i64 [ %83, %82 ], [ 0, %23 ], [ %21, %19 ], [ %83, %89 ], [ %7, %6 ], [ -106, %14 ]
  ret i64 %91
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_reduceTable(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #18 {
  %4 = sdiv i32 %1, 16
  %5 = add i32 %2, 2
  %6 = icmp sgt i32 %1, 15
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = insertelement <4 x i32> poison, i32 %5, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x i32> poison, i32 %2, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %38, %12 ], [ 0, %7 ]
  %14 = phi i32 [ %39, %12 ], [ 0, %7 ]
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %13
  %16 = load <4 x i32>, ptr %15, align 4, !tbaa !4
  %17 = icmp ult <4 x i32> %16, %9
  %18 = sub <4 x i32> %16, %11
  %19 = select <4 x i1> %17, <4 x i32> zeroinitializer, <4 x i32> %18
  store <4 x i32> %19, ptr %15, align 4, !tbaa !4
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %13
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %22 = load <4 x i32>, ptr %21, align 4, !tbaa !4
  %23 = icmp ult <4 x i32> %22, %9
  %24 = sub <4 x i32> %22, %11
  %25 = select <4 x i1> %23, <4 x i32> zeroinitializer, <4 x i32> %24
  store <4 x i32> %25, ptr %21, align 4, !tbaa !4
  %26 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %13
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %28 = load <4 x i32>, ptr %27, align 4, !tbaa !4
  %29 = icmp ult <4 x i32> %28, %9
  %30 = sub <4 x i32> %28, %11
  %31 = select <4 x i1> %29, <4 x i32> zeroinitializer, <4 x i32> %30
  store <4 x i32> %31, ptr %27, align 4, !tbaa !4
  %32 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %13
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %34 = load <4 x i32>, ptr %33, align 4, !tbaa !4
  %35 = icmp ult <4 x i32> %34, %9
  %36 = sub <4 x i32> %34, %11
  %37 = select <4 x i1> %35, <4 x i32> zeroinitializer, <4 x i32> %36
  store <4 x i32> %37, ptr %33, align 4, !tbaa !4
  %38 = add nuw nsw i64 %13, 16
  %39 = add nuw nsw i32 %14, 1
  %40 = icmp eq i32 %39, %4
  br i1 %40, label %41, label %12, !llvm.loop !428

41:                                               ; preds = %12, %3
  ret void
}

declare i64 @ZSTD_splitBlock(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 2) i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.RawSeqStore_t, align 8
  %5 = alloca %struct.ZSTD_SequencePosition, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %8 = icmp ult i64 %2, 7
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %11 = load i32, ptr %10, align 4, !tbaa !164
  %12 = icmp ugt i32 %11, 6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  br i1 %12, label %14, label %15

14:                                               ; preds = %9
  tail call void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef nonnull %13, i64 noundef %2) #34
  br label %359

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %17 = load i32, ptr %16, align 4, !tbaa !429
  tail call void @ZSTD_ldm_skipSequences(ptr noundef nonnull %13, i64 noundef %2, i32 noundef %17) #34
  br label %359

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %22 = load ptr, ptr %21, align 8, !tbaa !191
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %22, ptr %23, align 8, !tbaa !192
  %24 = load ptr, ptr %20, align 8, !tbaa !175
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %24, ptr %25, align 8, !tbaa !179
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 0, ptr %26, align 8, !tbaa !187
  %27 = load ptr, ptr %19, align 8, !tbaa !55
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 3472
  store ptr %27, ptr %28, align 8, !tbaa !430
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %30 = load i32, ptr %29, align 8, !tbaa !431
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store i32 %30, ptr %31, align 8, !tbaa !432
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %33 = load ptr, ptr %32, align 8, !tbaa !433
  %34 = ptrtoint ptr %1 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %39 = load i32, ptr %38, align 4, !tbaa !232
  %40 = add i32 %39, 384
  %41 = icmp ult i32 %40, %37
  br i1 %41, label %42, label %47

42:                                               ; preds = %18
  %43 = sub i32 %37, %39
  %44 = add i32 %43, -384
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 192)
  %46 = sub i32 %37, %45
  store i32 %46, ptr %38, align 4, !tbaa !232
  br label %47

47:                                               ; preds = %42, %18
  %48 = getelementptr i8, ptr %0, i64 3264
  %49 = load i32, ptr %48, align 8, !tbaa !230
  %50 = getelementptr i8, ptr %0, i64 3268
  %51 = load i32, ptr %50, align 4, !tbaa !229
  %52 = icmp ult i32 %51, %49
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %55 = load ptr, ptr %54, align 8, !tbaa !406
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 140
  %59 = load i32, ptr %58, align 4, !tbaa !401
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i64 2, i64 3
  br label %62

62:                                               ; preds = %47, %53, %57
  %63 = phi i64 [ 1, %47 ], [ %61, %57 ], [ 0, %53 ]
  %64 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 5616
  %68 = load i32, ptr %64, align 4, !tbaa !4
  store i32 %68, ptr %67, align 4, !tbaa !4
  %69 = getelementptr inbounds nuw i8, ptr %27, i64 5620
  %70 = load i32, ptr %69, align 4, !tbaa !4
  %71 = getelementptr inbounds nuw i8, ptr %66, i64 5620
  store i32 %70, ptr %71, align 4, !tbaa !4
  %72 = getelementptr inbounds nuw i8, ptr %27, i64 5624
  %73 = load i32, ptr %72, align 4, !tbaa !4
  %74 = getelementptr inbounds nuw i8, ptr %66, i64 5624
  store i32 %73, ptr %74, align 4, !tbaa !4
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %77 = load i64, ptr %76, align 8, !tbaa !434
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %79 = load i64, ptr %78, align 8, !tbaa !224
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %62
  %82 = getelementptr i8, ptr %0, i64 448
  %83 = load ptr, ptr %82, align 8, !tbaa !133
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %359

85:                                               ; preds = %81
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %87 = load i32, ptr %86, align 8, !tbaa !161
  %88 = tail call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %75, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %67, i32 noundef %87, ptr noundef %1, i64 noundef %2) #34
  br label %351

89:                                               ; preds = %62
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %91 = load i32, ptr %90, align 8, !tbaa !233
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %115

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %94 = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, i8 0, i64 24, i1 false)
  %95 = getelementptr i8, ptr %0, i64 448
  %96 = load ptr, ptr %95, align 8, !tbaa !133
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %100 = load ptr, ptr %99, align 8, !tbaa !390
  store ptr %100, ptr %4, align 8, !tbaa !435
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %102 = load i64, ptr %101, align 8, !tbaa !391
  %103 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %102, ptr %103, align 8, !tbaa !436
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %105 = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %104, ptr noundef nonnull %4, ptr noundef nonnull %90, ptr noundef %1, i64 noundef %2) #34
  %106 = icmp ult i64 %105, -119
  br i1 %106, label %109, label %107

107:                                              ; preds = %98, %93
  %108 = phi i64 [ -41, %93 ], [ %105, %98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %359

109:                                              ; preds = %98
  %110 = load ptr, ptr %65, align 8, !tbaa !56
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 5616
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %113 = load i32, ptr %112, align 8, !tbaa !161
  %114 = call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %111, i32 noundef %113, ptr noundef %1, i64 noundef %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %351

115:                                              ; preds = %89
  %116 = getelementptr i8, ptr %0, i64 448
  %117 = load ptr, ptr %116, align 8, !tbaa !133
  %118 = icmp eq ptr %117, null
  br i1 %118, label %300, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %7, align 4, !tbaa !235
  %121 = shl nuw i32 1, %120
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %123 = load ptr, ptr %122, align 8, !tbaa !437
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 5264
  %125 = load ptr, ptr %124, align 8, !tbaa !394
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 5272
  %127 = load i64, ptr %126, align 8, !tbaa !393
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %129 = load i32, ptr %128, align 4, !tbaa !438
  %130 = zext i32 %121 to i64
  %131 = tail call i64 %117(ptr noundef %123, ptr noundef %125, i64 noundef %127, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %129, i64 noundef %130) #34
  %132 = load i64, ptr %126, align 8, !tbaa !393
  %133 = add i64 %131, -1
  %134 = icmp ult i64 %133, %132
  br i1 %134, label %135, label %242

135:                                              ; preds = %119
  %136 = load ptr, ptr %124, align 8, !tbaa !394
  %137 = getelementptr [16 x i8], ptr %136, i64 %131
  %138 = getelementptr i8, ptr %137, i64 -16
  %139 = load i32, ptr %138, align 4, !tbaa !4
  %140 = getelementptr i8, ptr %137, i64 -8
  %141 = load i32, ptr %140, align 4, !tbaa !4
  %142 = icmp eq i32 %139, 0
  %143 = icmp eq i32 %141, 0
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %149, label %145

145:                                              ; preds = %135
  %146 = icmp eq i64 %131, %132
  br i1 %146, label %242, label %147

147:                                              ; preds = %145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %137, i8 0, i64 16, i1 false)
  %148 = add i64 %131, 1
  br label %149

149:                                              ; preds = %135, %147
  %150 = phi i64 [ %148, %147 ], [ %131, %135 ]
  %151 = icmp ult i64 %150, -119
  br i1 %151, label %152, label %242

152:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %153 = load ptr, ptr %124, align 8, !tbaa !394
  %154 = icmp eq i64 %150, 0
  br i1 %154, label %233, label %155

155:                                              ; preds = %152
  %156 = and i64 %150, 3
  %157 = icmp ult i64 %150, 4
  br i1 %157, label %206, label %158

158:                                              ; preds = %155
  %159 = and i64 %150, -4
  br label %160

160:                                              ; preds = %160, %158
  %161 = phi i64 [ 0, %158 ], [ %201, %160 ]
  %162 = phi i64 [ 0, %158 ], [ %196, %160 ]
  %163 = phi i64 [ 0, %158 ], [ %200, %160 ]
  %164 = phi i64 [ 0, %158 ], [ %202, %160 ]
  %165 = getelementptr inbounds nuw [16 x i8], ptr %153, i64 %161
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 4
  %167 = load i32, ptr %166, align 4, !tbaa !206
  %168 = zext i32 %167 to i64
  %169 = add i64 %162, %168
  %170 = getelementptr inbounds nuw i8, ptr %165, i64 8
  %171 = load i32, ptr %170, align 4, !tbaa !205
  %172 = zext i32 %171 to i64
  %173 = add i64 %163, %172
  %174 = getelementptr inbounds nuw [16 x i8], ptr %153, i64 %161
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 20
  %176 = load i32, ptr %175, align 4, !tbaa !206
  %177 = zext i32 %176 to i64
  %178 = add i64 %169, %177
  %179 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %180 = load i32, ptr %179, align 4, !tbaa !205
  %181 = zext i32 %180 to i64
  %182 = add i64 %173, %181
  %183 = getelementptr inbounds nuw [16 x i8], ptr %153, i64 %161
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 36
  %185 = load i32, ptr %184, align 4, !tbaa !206
  %186 = zext i32 %185 to i64
  %187 = add i64 %178, %186
  %188 = getelementptr inbounds nuw i8, ptr %183, i64 40
  %189 = load i32, ptr %188, align 4, !tbaa !205
  %190 = zext i32 %189 to i64
  %191 = add i64 %182, %190
  %192 = getelementptr inbounds nuw [16 x i8], ptr %153, i64 %161
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 52
  %194 = load i32, ptr %193, align 4, !tbaa !206
  %195 = zext i32 %194 to i64
  %196 = add i64 %187, %195
  %197 = getelementptr inbounds nuw i8, ptr %192, i64 56
  %198 = load i32, ptr %197, align 4, !tbaa !205
  %199 = zext i32 %198 to i64
  %200 = add i64 %191, %199
  %201 = add nuw i64 %161, 4
  %202 = add i64 %164, 4
  %203 = icmp eq i64 %202, %159
  br i1 %203, label %204, label %160, !llvm.loop !439

204:                                              ; preds = %160
  %205 = icmp eq i64 %156, 0
  br i1 %205, label %228, label %206

206:                                              ; preds = %204, %155
  %207 = phi i64 [ 0, %155 ], [ %201, %204 ]
  %208 = phi i64 [ 0, %155 ], [ %196, %204 ]
  %209 = phi i64 [ 0, %155 ], [ %200, %204 ]
  %210 = icmp ne i64 %156, 0
  tail call void @llvm.assume(i1 %210)
  br label %211

211:                                              ; preds = %211, %206
  %212 = phi i64 [ %225, %211 ], [ %207, %206 ]
  %213 = phi i64 [ %220, %211 ], [ %208, %206 ]
  %214 = phi i64 [ %224, %211 ], [ %209, %206 ]
  %215 = phi i64 [ %226, %211 ], [ 0, %206 ]
  %216 = getelementptr inbounds nuw [16 x i8], ptr %153, i64 %212
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 4
  %218 = load i32, ptr %217, align 4, !tbaa !206
  %219 = zext i32 %218 to i64
  %220 = add i64 %213, %219
  %221 = getelementptr inbounds nuw i8, ptr %216, i64 8
  %222 = load i32, ptr %221, align 4, !tbaa !205
  %223 = zext i32 %222 to i64
  %224 = add i64 %214, %223
  %225 = add nuw i64 %212, 1
  %226 = add i64 %215, 1
  %227 = icmp eq i64 %226, %156
  br i1 %227, label %228, label %211, !llvm.loop !440

228:                                              ; preds = %211, %204
  %229 = phi i64 [ %196, %204 ], [ %220, %211 ]
  %230 = phi i64 [ %200, %204 ], [ %224, %211 ]
  %231 = add i64 %230, %229
  %232 = icmp ugt i64 %231, %2
  br i1 %232, label %240, label %233

233:                                              ; preds = %152, %228
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %235 = load i32, ptr %234, align 8, !tbaa !346
  %236 = call i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %153, i64 noundef %150, ptr noundef %1, i64 noundef %2, i32 noundef %235)
  %237 = icmp ult i64 %236, -119
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %239, align 8, !tbaa !441
  br label %240

240:                                              ; preds = %228, %233, %238
  %241 = phi i64 [ %236, %233 ], [ 0, %238 ], [ -107, %228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %359

242:                                              ; preds = %119, %145, %149
  %243 = phi i64 [ %150, %149 ], [ -106, %145 ], [ -106, %119 ]
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 436
  %245 = load i32, ptr %244, align 4, !tbaa !442
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %359, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %249 = load i32, ptr %248, align 4, !tbaa !164
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %251 = load i32, ptr %250, align 8, !tbaa !161
  %252 = add i32 %249, -3
  %253 = icmp ugt i32 %252, 2
  %254 = icmp ne i32 %251, 1
  %255 = or i1 %253, %254
  br i1 %255, label %267, label %256

256:                                              ; preds = %247
  %257 = zext nneg i32 %252 to i64
  %258 = mul nuw nsw i64 %63, 24
  %259 = mul nuw nsw i64 %63, 24
  %260 = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %63
  %261 = shl nuw nsw i64 %257, 3
  %262 = add nuw nsw i64 %261, %258
  %263 = shl nuw nsw i64 %257, 3
  %264 = add nuw nsw i64 %259, %263
  %265 = getelementptr inbounds nuw [8 x i8], ptr %260, i64 %257
  br label %279

266:                                              ; preds = %267
  tail call void @llvm.ubsantrap(i8 18) #38, !nosanitize !130
  unreachable, !nosanitize !130

267:                                              ; preds = %247
  %268 = icmp ult i32 %249, 10
  br i1 %268, label %269, label %266, !prof !190, !nosanitize !130

269:                                              ; preds = %267
  %270 = zext nneg i32 %249 to i64
  %271 = mul nuw nsw i64 %63, 80
  %272 = mul nuw nsw i64 %63, 80
  %273 = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %63
  %274 = shl nuw nsw i64 %270, 3
  %275 = add nuw nsw i64 %274, %271
  %276 = shl nuw nsw i64 %270, 3
  %277 = add nuw nsw i64 %272, %276
  %278 = getelementptr inbounds nuw [8 x i8], ptr %273, i64 %270
  br label %279

279:                                              ; preds = %269, %256
  %280 = phi i64 [ 96, %256 ], [ 320, %269 ]
  %281 = phi i64 [ %262, %256 ], [ %275, %269 ]
  %282 = phi i64 [ %264, %256 ], [ %277, %269 ]
  %283 = phi ptr [ %265, %256 ], [ %278, %269 ]
  %284 = sub nsw i64 %280, %281, !nosanitize !130
  %285 = icmp samesign ult i64 %280, %281, !nosanitize !130
  %286 = icmp ult i64 %284, 8, !nosanitize !130
  %287 = or i1 %285, %286, !nosanitize !130
  br i1 %287, label %288, label %289

288:                                              ; preds = %279
  tail call void @llvm.ubsantrap(i8 9) #37, !nosanitize !130
  unreachable, !nosanitize !130

289:                                              ; preds = %279
  %290 = sub nsw i64 %280, %282, !nosanitize !130
  %291 = icmp ult i64 %280, %282, !nosanitize !130
  %292 = icmp ult i64 %290, 8, !nosanitize !130
  %293 = or i1 %291, %292, !nosanitize !130
  br i1 %293, label %361, label %294

294:                                              ; preds = %289
  %295 = load ptr, ptr %283, align 8, !tbaa !49
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %296, align 8, !tbaa !441
  %297 = load ptr, ptr %65, align 8, !tbaa !56
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 5616
  %299 = tail call i64 %295(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %298, ptr noundef %1, i64 noundef %2) #34
  br label %351

300:                                              ; preds = %115
  %301 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %302 = load i32, ptr %301, align 4, !tbaa !164
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %304 = load i32, ptr %303, align 8, !tbaa !161
  %305 = add i32 %302, -3
  %306 = icmp ugt i32 %305, 2
  %307 = icmp ne i32 %304, 1
  %308 = or i1 %306, %307
  br i1 %308, label %320, label %309

309:                                              ; preds = %300
  %310 = zext nneg i32 %305 to i64
  %311 = mul nuw nsw i64 %63, 24
  %312 = mul nuw nsw i64 %63, 24
  %313 = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %63
  %314 = shl nuw nsw i64 %310, 3
  %315 = add nuw nsw i64 %314, %311
  %316 = shl nuw nsw i64 %310, 3
  %317 = add nuw nsw i64 %312, %316
  %318 = getelementptr inbounds nuw [8 x i8], ptr %313, i64 %310
  br label %332

319:                                              ; preds = %320
  tail call void @llvm.ubsantrap(i8 18) #38, !nosanitize !130
  unreachable, !nosanitize !130

320:                                              ; preds = %300
  %321 = icmp ult i32 %302, 10
  br i1 %321, label %322, label %319, !prof !190, !nosanitize !130

322:                                              ; preds = %320
  %323 = zext nneg i32 %302 to i64
  %324 = mul nuw nsw i64 %63, 80
  %325 = mul nuw nsw i64 %63, 80
  %326 = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %63
  %327 = shl nuw nsw i64 %323, 3
  %328 = add nuw nsw i64 %327, %324
  %329 = shl nuw nsw i64 %323, 3
  %330 = add nuw nsw i64 %325, %329
  %331 = getelementptr inbounds nuw [8 x i8], ptr %326, i64 %323
  br label %332

332:                                              ; preds = %322, %309
  %333 = phi i64 [ 96, %309 ], [ 320, %322 ]
  %334 = phi i64 [ %315, %309 ], [ %328, %322 ]
  %335 = phi i64 [ %317, %309 ], [ %330, %322 ]
  %336 = phi ptr [ %318, %309 ], [ %331, %322 ]
  %337 = sub nsw i64 %333, %334, !nosanitize !130
  %338 = icmp samesign ult i64 %333, %334, !nosanitize !130
  %339 = icmp ult i64 %337, 8, !nosanitize !130
  %340 = or i1 %338, %339, !nosanitize !130
  br i1 %340, label %341, label %342

341:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 9) #37, !nosanitize !130
  unreachable, !nosanitize !130

342:                                              ; preds = %332
  %343 = sub nsw i64 %333, %335, !nosanitize !130
  %344 = icmp ult i64 %333, %335, !nosanitize !130
  %345 = icmp ult i64 %343, 8, !nosanitize !130
  %346 = or i1 %344, %345, !nosanitize !130
  br i1 %346, label %362, label %347

347:                                              ; preds = %342
  %348 = load ptr, ptr %336, align 8, !tbaa !49
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %349, align 8, !tbaa !441
  %350 = tail call i64 %348(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %67, ptr noundef %1, i64 noundef %2) #34
  br label %351

351:                                              ; preds = %294, %109, %347, %85
  %352 = phi i64 [ %88, %85 ], [ %114, %109 ], [ %299, %294 ], [ %350, %347 ]
  %353 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %354 = sub i64 0, %352
  %355 = getelementptr inbounds i8, ptr %353, i64 %354
  %356 = load ptr, ptr %23, align 8, !tbaa !192
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %356, ptr nonnull readonly align 1 %355, i64 %352, i1 false)
  %357 = load ptr, ptr %23, align 8, !tbaa !192
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 %352
  store ptr %358, ptr %23, align 8, !tbaa !192
  br label %359

359:                                              ; preds = %242, %240, %81, %107, %14, %15, %351
  %360 = phi i64 [ 1, %14 ], [ 0, %351 ], [ 1, %15 ], [ -41, %81 ], [ %108, %107 ], [ %243, %242 ], [ %241, %240 ]
  ret i64 %360

361:                                              ; preds = %289
  tail call void @llvm.ubsantrap(i8 51) #37, !nosanitize !130
  unreachable, !nosanitize !130

362:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 53) #37, !nosanitize !130
  unreachable, !nosanitize !130
}

declare void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @ZSTD_ldm_skipSequences(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

declare i64 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #26 {
  %8 = alloca %struct.repcodes_s, align 8
  %9 = load i32, ptr %1, align 8, !tbaa !443
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !257
  br label %24

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %19 = load ptr, ptr %18, align 8, !tbaa !127
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %23 = load i64, ptr %22, align 8, !tbaa !128
  br label %24

24:                                               ; preds = %17, %21, %14
  %25 = phi i64 [ %16, %14 ], [ %23, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %28, i64 12, i1 false)
  %29 = zext i32 %9 to i64
  %30 = icmp ugt i64 %3, %29
  br i1 %30, label %31, label %339

31:                                               ; preds = %24
  %32 = load i32, ptr %8, align 8
  %33 = icmp eq i32 %6, 2
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %39 = and i64 %25, 4294967295
  %40 = getelementptr i8, ptr %0, i64 448
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 260
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

52:                                               ; preds = %31, %329
  %53 = phi i32 [ %51, %31 ], [ %116, %329 ]
  %54 = phi i32 [ %50, %31 ], [ %117, %329 ]
  %55 = phi i64 [ %29, %31 ], [ %337, %329 ]
  %56 = phi i32 [ %9, %31 ], [ %336, %329 ]
  %57 = phi ptr [ %4, %31 ], [ %335, %329 ]
  %58 = phi i32 [ %32, %31 ], [ %118, %329 ]
  %59 = ptrtoint ptr %57 to i64
  %60 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %55
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !205
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, ptr %60, align 4, !tbaa !203
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %339, label %67

67:                                               ; preds = %52, %64
  %68 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %69 = load i32, ptr %68, align 4, !tbaa !206
  br i1 %33, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, ptr %60, align 4, !tbaa !203
  %72 = add i32 %71, 3
  br label %115

73:                                               ; preds = %67
  %74 = icmp eq i32 %69, 0
  %75 = zext i1 %74 to i32
  %76 = load i32, ptr %60, align 4, !tbaa !203
  %77 = add i32 %76, 3
  %78 = icmp ne i32 %76, %58
  %79 = select i1 %74, i1 true, i1 %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = icmp eq i32 %76, %54
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = select i1 %74, i32 1, i32 2
  br label %94

84:                                               ; preds = %80
  %85 = icmp eq i32 %76, %53
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = xor i32 %75, 3
  br label %94

88:                                               ; preds = %84
  %89 = add i32 %58, -1
  %90 = icmp eq i32 %76, %89
  %91 = select i1 %74, i1 %90, i1 false
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = icmp ugt i32 %77, 3
  br i1 %93, label %111, label %94

94:                                               ; preds = %88, %73, %86, %82, %92
  %95 = phi i32 [ %77, %92 ], [ %83, %82 ], [ 1, %73 ], [ %87, %86 ], [ 3, %88 ]
  %96 = xor i1 %74, true
  %97 = sext i1 %96 to i32
  %98 = add nsw i32 %95, %97
  switch i32 %98, label %101 [
    i32 0, label %115
    i32 3, label %99
  ]

99:                                               ; preds = %94
  %100 = add i32 %58, -1
  br label %107

101:                                              ; preds = %94
  %102 = icmp ugt i32 %98, 2
  br i1 %102, label %407, label %103

103:                                              ; preds = %101
  %104 = zext nneg i32 %98 to i64
  %105 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !4
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i32 [ %100, %99 ], [ %106, %103 ]
  %109 = icmp eq i32 %98, 1
  %110 = select i1 %109, i32 %53, i32 %54
  br label %111

111:                                              ; preds = %92, %107
  %112 = phi i32 [ %110, %107 ], [ %54, %92 ]
  %113 = phi i32 [ %95, %107 ], [ %77, %92 ]
  %114 = phi i32 [ %108, %107 ], [ %76, %92 ]
  store i32 %112, ptr %35, align 8, !tbaa !4
  store i32 %58, ptr %34, align 4, !tbaa !4
  store i32 %114, ptr %8, align 8, !tbaa !4
  br label %115

115:                                              ; preds = %111, %94, %70
  %116 = phi i32 [ %53, %70 ], [ %53, %94 ], [ %112, %111 ]
  %117 = phi i32 [ %54, %70 ], [ %54, %94 ], [ %58, %111 ]
  %118 = phi i32 [ %58, %70 ], [ %58, %94 ], [ %114, %111 ]
  %119 = phi i32 [ %72, %70 ], [ %95, %94 ], [ %113, %111 ]
  %120 = load i32, ptr %36, align 8, !tbaa !365
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %145, label %122

122:                                              ; preds = %115
  %123 = add i32 %69, %62
  %124 = zext i32 %123 to i64
  %125 = load i64, ptr %37, align 8, !tbaa !445
  %126 = add i64 %125, %124
  store i64 %126, ptr %37, align 8, !tbaa !445
  %127 = load i32, ptr %38, align 4, !tbaa !235
  %128 = shl nuw i32 1, %127
  %129 = zext i32 %128 to i64
  %130 = icmp ugt i64 %126, %129
  %131 = add i64 %126, %39
  %132 = select i1 %130, i64 %129, i64 %131
  %133 = zext i32 %119 to i64
  %134 = add i64 %132, 3
  %135 = icmp ult i64 %134, %133
  br i1 %135, label %405, label %136

136:                                              ; preds = %122
  %137 = load ptr, ptr %40, align 8, !tbaa !133
  %138 = icmp ne ptr %137, null
  %139 = load i32, ptr %41, align 4, !tbaa !429
  %140 = icmp eq i32 %139, 3
  %141 = or i1 %138, %140
  %142 = select i1 %141, i64 3, i64 4
  %143 = zext i32 %62 to i64
  %144 = icmp samesign ugt i64 %142, %143
  br i1 %144, label %405, label %145

145:                                              ; preds = %115, %136
  %146 = load i32, ptr %1, align 8, !tbaa !443
  %147 = sub i32 %56, %146
  %148 = zext i32 %147 to i64
  %149 = load i64, ptr %42, align 8, !tbaa !354
  %150 = icmp ugt i64 %149, %148
  br i1 %150, label %151, label %405

151:                                              ; preds = %145
  %152 = zext i32 %69 to i64
  %153 = zext i32 %62 to i64
  %154 = getelementptr inbounds nuw i8, ptr %57, i64 %152
  %155 = icmp ugt ptr %154, %44
  %156 = load ptr, ptr %45, align 8, !tbaa !192
  br i1 %155, label %179, label %157

157:                                              ; preds = %151
  %158 = load <2 x i64>, ptr %57, align 1, !tbaa !185
  store <2 x i64> %158, ptr %156, align 1, !tbaa !185
  %159 = icmp ugt i32 %69, 16
  br i1 %159, label %160, label %300

160:                                              ; preds = %157
  %161 = load ptr, ptr %45, align 8, !tbaa !192
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 16
  %163 = getelementptr inbounds nuw i8, ptr %57, i64 16
  %164 = getelementptr i8, ptr %161, i64 %152
  %165 = load <2 x i64>, ptr %163, align 1, !tbaa !185
  store <2 x i64> %165, ptr %162, align 1, !tbaa !185
  %166 = icmp ult i32 %69, 33
  br i1 %166, label %300, label %167

167:                                              ; preds = %160
  %168 = getelementptr inbounds nuw i8, ptr %161, i64 32
  br label %169

169:                                              ; preds = %169, %167
  %170 = phi ptr [ %168, %167 ], [ %177, %169 ]
  %171 = phi ptr [ %163, %167 ], [ %175, %169 ]
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %173 = load <2 x i64>, ptr %172, align 1, !tbaa !185
  store <2 x i64> %173, ptr %170, align 1, !tbaa !185
  %174 = getelementptr inbounds nuw i8, ptr %170, i64 16
  %175 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %176 = load <2 x i64>, ptr %175, align 1, !tbaa !185
  store <2 x i64> %176, ptr %174, align 1, !tbaa !185
  %177 = getelementptr inbounds nuw i8, ptr %170, i64 32
  %178 = icmp ult ptr %177, %164
  br i1 %178, label %169, label %304, !llvm.loop !446

179:                                              ; preds = %151
  %180 = icmp ugt ptr %57, %44
  br i1 %180, label %199, label %181

181:                                              ; preds = %179
  %182 = ptrtoint ptr %57 to i64
  %183 = sub i64 %46, %182
  %184 = getelementptr inbounds i8, ptr %156, i64 %183
  %185 = load <2 x i64>, ptr %57, align 1, !tbaa !185
  store <2 x i64> %185, ptr %156, align 1, !tbaa !185
  %186 = icmp ult i64 %183, 17
  br i1 %186, label %199, label %187

187:                                              ; preds = %181
  %188 = getelementptr inbounds nuw i8, ptr %156, i64 16
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi ptr [ %188, %187 ], [ %197, %189 ]
  %191 = phi ptr [ %57, %187 ], [ %195, %189 ]
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 16
  %193 = load <2 x i64>, ptr %192, align 1, !tbaa !185
  store <2 x i64> %193, ptr %190, align 1, !tbaa !185
  %194 = getelementptr inbounds nuw i8, ptr %190, i64 16
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 32
  %196 = load <2 x i64>, ptr %195, align 1, !tbaa !185
  store <2 x i64> %196, ptr %194, align 1, !tbaa !185
  %197 = getelementptr inbounds nuw i8, ptr %190, i64 32
  %198 = icmp ult ptr %197, %184
  br i1 %198, label %189, label %199, !llvm.loop !446

199:                                              ; preds = %189, %181, %179
  %200 = phi ptr [ %57, %179 ], [ %44, %181 ], [ %44, %189 ]
  %201 = phi ptr [ %156, %179 ], [ %184, %181 ], [ %184, %189 ]
  %202 = icmp ult ptr %200, %154
  br i1 %202, label %203, label %304

203:                                              ; preds = %199
  %204 = ptrtoaddr ptr %200 to i64
  %205 = ptrtoaddr ptr %201 to i64
  %206 = ptrtoint ptr %200 to i64
  %207 = add i64 %59, %152
  %208 = sub i64 %207, %206
  %209 = icmp ult i64 %208, 4
  %210 = sub i64 %205, %204
  %211 = icmp ult i64 %210, 32
  %212 = select i1 %209, i1 true, i1 %211
  br i1 %212, label %248, label %213

213:                                              ; preds = %203
  %214 = icmp ult i64 %208, 32
  br i1 %214, label %234, label %215

215:                                              ; preds = %213
  %216 = and i64 %208, 28
  %217 = and i64 %208, -32
  %218 = getelementptr i8, ptr %201, i64 %217
  %219 = getelementptr i8, ptr %200, i64 %217
  br label %220

220:                                              ; preds = %220, %215
  %221 = phi i64 [ 0, %215 ], [ %228, %220 ]
  %222 = getelementptr i8, ptr %201, i64 %221
  %223 = getelementptr i8, ptr %200, i64 %221
  %224 = getelementptr i8, ptr %223, i64 16
  %225 = load <16 x i8>, ptr %223, align 1, !tbaa !185
  %226 = load <16 x i8>, ptr %224, align 1, !tbaa !185
  %227 = getelementptr i8, ptr %222, i64 16
  store <16 x i8> %225, ptr %222, align 1, !tbaa !185
  store <16 x i8> %226, ptr %227, align 1, !tbaa !185
  %228 = add nuw i64 %221, 32
  %229 = icmp eq i64 %228, %217
  br i1 %229, label %230, label %220, !llvm.loop !447

230:                                              ; preds = %220
  %231 = icmp eq i64 %208, %217
  br i1 %231, label %304, label %232

232:                                              ; preds = %230
  %233 = icmp eq i64 %216, 0
  br i1 %233, label %248, label %234, !prof !448

234:                                              ; preds = %213, %232
  %235 = phi i64 [ %217, %232 ], [ 0, %213 ]
  %236 = and i64 %208, -4
  %237 = getelementptr i8, ptr %201, i64 %236
  %238 = getelementptr i8, ptr %200, i64 %236
  br label %239

239:                                              ; preds = %239, %234
  %240 = phi i64 [ %235, %234 ], [ %244, %239 ]
  %241 = getelementptr i8, ptr %201, i64 %240
  %242 = getelementptr i8, ptr %200, i64 %240
  %243 = load <4 x i8>, ptr %242, align 1, !tbaa !185
  store <4 x i8> %243, ptr %241, align 1, !tbaa !185
  %244 = add nuw i64 %240, 4
  %245 = icmp eq i64 %244, %236
  br i1 %245, label %246, label %239, !llvm.loop !449

246:                                              ; preds = %239
  %247 = icmp eq i64 %208, %236
  br i1 %247, label %304, label %248

248:                                              ; preds = %203, %232, %246
  %249 = phi ptr [ %201, %203 ], [ %218, %232 ], [ %237, %246 ]
  %250 = phi ptr [ %200, %203 ], [ %219, %232 ], [ %238, %246 ]
  %251 = add i64 %59, %152
  %252 = ptrtoint ptr %250 to i64
  %253 = sub i64 %251, %252
  %254 = add i64 %59, -1
  %255 = add i64 %254, %152
  %256 = sub i64 %255, %252
  %257 = and i64 %253, 7
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %268, label %259

259:                                              ; preds = %248, %259
  %260 = phi ptr [ %265, %259 ], [ %249, %248 ]
  %261 = phi ptr [ %263, %259 ], [ %250, %248 ]
  %262 = phi i64 [ %266, %259 ], [ 0, %248 ]
  %263 = getelementptr inbounds nuw i8, ptr %261, i64 1
  %264 = load i8, ptr %261, align 1, !tbaa !185
  %265 = getelementptr inbounds nuw i8, ptr %260, i64 1
  store i8 %264, ptr %260, align 1, !tbaa !185
  %266 = add i64 %262, 1
  %267 = icmp eq i64 %266, %257
  br i1 %267, label %268, label %259, !llvm.loop !450

268:                                              ; preds = %259, %248
  %269 = phi ptr [ %249, %248 ], [ %265, %259 ]
  %270 = phi ptr [ %250, %248 ], [ %263, %259 ]
  %271 = icmp ult i64 %256, 7
  br i1 %271, label %304, label %272

272:                                              ; preds = %268, %272
  %273 = phi ptr [ %298, %272 ], [ %269, %268 ]
  %274 = phi ptr [ %296, %272 ], [ %270, %268 ]
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 1
  %276 = load i8, ptr %274, align 1, !tbaa !185
  %277 = getelementptr inbounds nuw i8, ptr %273, i64 1
  store i8 %276, ptr %273, align 1, !tbaa !185
  %278 = getelementptr inbounds nuw i8, ptr %274, i64 2
  %279 = load i8, ptr %275, align 1, !tbaa !185
  %280 = getelementptr inbounds nuw i8, ptr %273, i64 2
  store i8 %279, ptr %277, align 1, !tbaa !185
  %281 = getelementptr inbounds nuw i8, ptr %274, i64 3
  %282 = load i8, ptr %278, align 1, !tbaa !185
  %283 = getelementptr inbounds nuw i8, ptr %273, i64 3
  store i8 %282, ptr %280, align 1, !tbaa !185
  %284 = getelementptr inbounds nuw i8, ptr %274, i64 4
  %285 = load i8, ptr %281, align 1, !tbaa !185
  %286 = getelementptr inbounds nuw i8, ptr %273, i64 4
  store i8 %285, ptr %283, align 1, !tbaa !185
  %287 = getelementptr inbounds nuw i8, ptr %274, i64 5
  %288 = load i8, ptr %284, align 1, !tbaa !185
  %289 = getelementptr inbounds nuw i8, ptr %273, i64 5
  store i8 %288, ptr %286, align 1, !tbaa !185
  %290 = getelementptr inbounds nuw i8, ptr %274, i64 6
  %291 = load i8, ptr %287, align 1, !tbaa !185
  %292 = getelementptr inbounds nuw i8, ptr %273, i64 6
  store i8 %291, ptr %289, align 1, !tbaa !185
  %293 = getelementptr inbounds nuw i8, ptr %274, i64 7
  %294 = load i8, ptr %290, align 1, !tbaa !185
  %295 = getelementptr inbounds nuw i8, ptr %273, i64 7
  store i8 %294, ptr %292, align 1, !tbaa !185
  %296 = getelementptr inbounds nuw i8, ptr %274, i64 8
  %297 = load i8, ptr %293, align 1, !tbaa !185
  %298 = getelementptr inbounds nuw i8, ptr %273, i64 8
  store i8 %297, ptr %295, align 1, !tbaa !185
  %299 = icmp eq ptr %296, %154
  br i1 %299, label %304, label %272, !llvm.loop !451

300:                                              ; preds = %160, %157
  %301 = load ptr, ptr %45, align 8, !tbaa !192
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 %152
  store ptr %302, ptr %45, align 8, !tbaa !192
  %303 = load ptr, ptr %48, align 8, !tbaa !179
  br label %316

304:                                              ; preds = %169, %268, %272, %230, %246, %199
  %305 = load ptr, ptr %45, align 8, !tbaa !192
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 %152
  store ptr %306, ptr %45, align 8, !tbaa !192
  %307 = icmp ugt i32 %69, 65535
  %308 = load ptr, ptr %48, align 8, !tbaa !179
  br i1 %307, label %309, label %316, !prof !452

309:                                              ; preds = %304
  store i32 1, ptr %47, align 8, !tbaa !187
  %310 = load ptr, ptr %43, align 8, !tbaa !175
  %311 = ptrtoint ptr %308 to i64
  %312 = ptrtoint ptr %310 to i64
  %313 = sub i64 %311, %312
  %314 = lshr exact i64 %313, 3
  %315 = trunc i64 %314 to i32
  store i32 %315, ptr %49, align 4, !tbaa !188
  br label %316

316:                                              ; preds = %300, %309, %304
  %317 = phi ptr [ %303, %300 ], [ %308, %309 ], [ %308, %304 ]
  %318 = trunc i32 %69 to i16
  %319 = getelementptr inbounds nuw i8, ptr %317, i64 4
  store i16 %318, ptr %319, align 4, !tbaa !180
  store i32 %119, ptr %317, align 4, !tbaa !183
  %320 = add nsw i64 %153, -3
  %321 = icmp ugt i64 %320, 65535
  br i1 %321, label %322, label %329, !prof !352

322:                                              ; preds = %316
  store i32 2, ptr %47, align 8, !tbaa !187
  %323 = load ptr, ptr %43, align 8, !tbaa !175
  %324 = ptrtoint ptr %317 to i64
  %325 = ptrtoint ptr %323 to i64
  %326 = sub i64 %324, %325
  %327 = lshr exact i64 %326, 3
  %328 = trunc i64 %327 to i32
  store i32 %328, ptr %49, align 4, !tbaa !188
  br label %329

329:                                              ; preds = %316, %322
  %330 = trunc i64 %320 to i16
  %331 = getelementptr inbounds nuw i8, ptr %317, i64 6
  store i16 %330, ptr %331, align 2, !tbaa !184
  %332 = getelementptr inbounds nuw i8, ptr %317, i64 8
  store ptr %332, ptr %48, align 8, !tbaa !179
  %333 = add i32 %69, %62
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds nuw i8, ptr %57, i64 %334
  %336 = add i32 %56, 1
  %337 = zext i32 %336 to i64
  %338 = icmp ugt i64 %3, %337
  br i1 %338, label %52, label %339, !llvm.loop !453

339:                                              ; preds = %329, %64, %24
  %340 = phi ptr [ %4, %24 ], [ %57, %64 ], [ %335, %329 ]
  %341 = phi i32 [ %9, %24 ], [ %56, %64 ], [ %336, %329 ]
  %342 = phi i64 [ %29, %24 ], [ %55, %64 ], [ %337, %329 ]
  %343 = icmp eq i64 %3, %342
  br i1 %343, label %405, label %344

344:                                              ; preds = %339
  %345 = icmp ne i32 %6, 2
  %346 = icmp eq i32 %341, %9
  %347 = select i1 %345, i1 true, i1 %346
  br i1 %347, label %380, label %348

348:                                              ; preds = %344
  %349 = add i32 %341, -1
  %350 = add i32 %9, 2
  %351 = icmp ult i32 %349, %350
  br i1 %351, label %363, label %352

352:                                              ; preds = %348
  %353 = add i32 %341, -3
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !203
  %357 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %356, ptr %357, align 8, !tbaa !4
  %358 = add i32 %341, -2
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %359
  %361 = load i32, ptr %360, align 4, !tbaa !203
  %362 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %361, ptr %362, align 4, !tbaa !4
  br label %376

363:                                              ; preds = %348
  %364 = icmp eq i32 %341, %350
  br i1 %364, label %365, label %373

365:                                              ; preds = %363
  %366 = load i32, ptr %8, align 8, !tbaa !4
  %367 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %366, ptr %367, align 8, !tbaa !4
  %368 = add i32 %341, -2
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !203
  %372 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %371, ptr %372, align 4, !tbaa !4
  br label %376

373:                                              ; preds = %363
  %374 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %375 = load <2 x i32>, ptr %8, align 8, !tbaa !4
  store <2 x i32> %375, ptr %374, align 4, !tbaa !4
  br label %376

376:                                              ; preds = %365, %373, %352
  %377 = zext i32 %349 to i64
  %378 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %377
  %379 = load i32, ptr %378, align 4, !tbaa !203
  store i32 %379, ptr %8, align 8, !tbaa !4
  br label %380

380:                                              ; preds = %376, %344
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %382 = load ptr, ptr %381, align 8, !tbaa !56
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %383, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  %384 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %342
  %385 = getelementptr inbounds nuw i8, ptr %384, i64 4
  %386 = load i32, ptr %385, align 4, !tbaa !206
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %400, label %388

388:                                              ; preds = %380
  %389 = zext i32 %386 to i64
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %391 = load ptr, ptr %390, align 8, !tbaa !192
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %391, ptr readonly align 1 %340, i64 %389, i1 false)
  %392 = load ptr, ptr %390, align 8, !tbaa !192
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 %389
  store ptr %393, ptr %390, align 8, !tbaa !192
  %394 = load i32, ptr %385, align 4, !tbaa !206
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds nuw i8, ptr %340, i64 %395
  %397 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %398 = load i64, ptr %397, align 8, !tbaa !445
  %399 = add i64 %398, %395
  store i64 %399, ptr %397, align 8, !tbaa !445
  br label %400

400:                                              ; preds = %380, %388
  %401 = phi ptr [ %396, %388 ], [ %340, %380 ]
  %402 = icmp eq ptr %401, %10
  br i1 %402, label %403, label %405

403:                                              ; preds = %400
  %404 = add i32 %341, 1
  store i32 %404, ptr %1, align 8, !tbaa !443
  br label %405

405:                                              ; preds = %145, %122, %136, %400, %339, %403
  %406 = phi i64 [ -107, %400 ], [ %5, %403 ], [ -107, %339 ], [ -107, %136 ], [ -107, %122 ], [ -107, %145 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret i64 %406

407:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 63) #37, !nosanitize !130
  unreachable, !nosanitize !130
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @ZSTD_isRLE(ptr noundef %0, i64 noundef %1) unnamed_addr #27 {
  %3 = load i8, ptr %0, align 1, !tbaa !185
  %4 = zext i8 %3 to i64
  %5 = mul nuw i64 %4, 72340172838076673
  %6 = and i64 %1, 31
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %106, label %8

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
  %16 = load i64, ptr %0, align 1, !tbaa !116
  %17 = load i64, ptr %11, align 1, !tbaa !116
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
  %30 = load i64, ptr %27, align 1, !tbaa !116
  %31 = load i64, ptr %26, align 1, !tbaa !116
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
  %59 = load i16, ptr %54, align 1, !tbaa !222
  %60 = load i16, ptr %55, align 1, !tbaa !222
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
  %70 = load i8, ptr %66, align 1, !tbaa !185
  %71 = load i8, ptr %67, align 1, !tbaa !185
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
  br i1 %83, label %84, label %106

84:                                               ; preds = %80, %8
  %85 = icmp ult i64 %1, 32
  br i1 %85, label %106, label %86

86:                                               ; preds = %84, %103
  %87 = phi i64 [ %104, %103 ], [ %6, %84 ]
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i64, ptr %88, align 1, !tbaa !116
  %90 = icmp eq i64 %89, %5
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %93 = load i64, ptr %92, align 1, !tbaa !116
  %94 = icmp eq i64 %93, %5
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %97 = load i64, ptr %96, align 1, !tbaa !116
  %98 = icmp eq i64 %97, %5
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %101 = load i64, ptr %100, align 1, !tbaa !116
  %102 = icmp eq i64 %101, %5
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = add i64 %87, 32
  %105 = icmp eq i64 %104, %1
  br i1 %105, label %106, label %86, !llvm.loop !454

106:                                              ; preds = %103, %86, %91, %95, %99, %84, %80, %2
  %107 = phi i32 [ 0, %80 ], [ 1, %2 ], [ 1, %84 ], [ 1, %103 ], [ 0, %91 ], [ 0, %95 ], [ 0, %99 ], [ 0, %86 ]
  ret i32 %107
}

declare i64 @ZSTD_compressSuperBlock(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef readonly %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #2 {
  %11 = alloca %struct.repcodes_s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !455
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %123, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !179
  %16 = load ptr, ptr %1, align 8, !tbaa !175
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 3
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %23 = load i32, ptr %22, align 8, !tbaa !187
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %27 = load i32, ptr %26, align 4, !tbaa !188
  br label %28

28:                                               ; preds = %25, %13
  %29 = phi i32 [ %27, %25 ], [ %21, %13 ]
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %123, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %36 = zext i32 %29 to i64
  %37 = and i64 %20, 4294967295
  br label %38

38:                                               ; preds = %120, %31
  %39 = phi i64 [ 0, %31 ], [ %121, %120 ]
  %40 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %42 = load i16, ptr %41, align 4, !tbaa !180
  %43 = icmp eq i16 %42, 0
  %44 = icmp ne i64 %39, %36
  %45 = select i1 %43, i1 %44, i1 false
  %46 = zext i1 %45 to i32
  %47 = load i32, ptr %40, align 4, !tbaa !183
  %48 = add i32 %47, -1
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %70

50:                                               ; preds = %38
  %51 = add nuw nsw i32 %48, %46
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, ptr %2, align 4, !tbaa !4
  %55 = add i32 %54, -1
  %56 = load i32, ptr %3, align 4, !tbaa !4
  %57 = add i32 %56, -1
  br label %64

58:                                               ; preds = %50
  %59 = zext nneg i32 %51 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !4
  %62 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %59
  %63 = load i32, ptr %62, align 4, !tbaa !4
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i32 [ %55, %53 ], [ %61, %58 ]
  %66 = phi i32 [ %57, %53 ], [ %63, %58 ]
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = add i32 %66, 3
  store i32 %69, ptr %40, align 4, !tbaa !183
  br label %70

70:                                               ; preds = %68, %38
  %71 = phi i32 [ %47, %38 ], [ %69, %68 ]
  %72 = icmp ugt i32 %71, 3
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load <2 x i32>, ptr %2, align 4, !tbaa !4
  store <2 x i32> %74, ptr %32, align 4, !tbaa !4
  %75 = add i32 %71, -3
  br label %95

76:                                               ; preds = %70, %64
  %77 = phi i32 [ %71, %70 ], [ %47, %64 ]
  %78 = xor i1 %45, true
  %79 = sext i1 %78 to i32
  %80 = add nsw i32 %77, %79
  switch i32 %80, label %84 [
    i32 0, label %97
    i32 3, label %81
  ]

81:                                               ; preds = %76
  %82 = load i32, ptr %2, align 4, !tbaa !4
  %83 = add i32 %82, -1
  br label %89

84:                                               ; preds = %76
  %85 = zext i32 %80 to i64
  %86 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !4
  %88 = load i32, ptr %2, align 4, !tbaa !4
  br label %89

89:                                               ; preds = %84, %81
  %90 = phi i32 [ %82, %81 ], [ %88, %84 ]
  %91 = phi i32 [ %83, %81 ], [ %87, %84 ]
  %92 = icmp eq i32 %80, 1
  %93 = select i1 %92, ptr %33, ptr %32
  %94 = load i32, ptr %93, align 4, !tbaa !4
  store i32 %94, ptr %33, align 4, !tbaa !4
  store i32 %90, ptr %32, align 4, !tbaa !4
  br label %95

95:                                               ; preds = %89, %73
  %96 = phi i32 [ %91, %89 ], [ %75, %73 ]
  store i32 %96, ptr %2, align 4, !tbaa !4
  br label %97

97:                                               ; preds = %95, %76
  %98 = icmp ugt i32 %47, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load <2 x i32>, ptr %3, align 4, !tbaa !4
  store <2 x i32> %100, ptr %34, align 4, !tbaa !4
  %101 = add i32 %47, -3
  br label %118

102:                                              ; preds = %97
  %103 = add nsw i32 %48, %46
  switch i32 %103, label %107 [
    i32 0, label %120
    i32 3, label %104
  ]

104:                                              ; preds = %102
  %105 = load i32, ptr %3, align 4, !tbaa !4
  %106 = add i32 %105, -1
  br label %112

107:                                              ; preds = %102
  %108 = zext i32 %103 to i64
  %109 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !4
  %111 = load i32, ptr %3, align 4, !tbaa !4
  br label %112

112:                                              ; preds = %107, %104
  %113 = phi i32 [ %105, %104 ], [ %111, %107 ]
  %114 = phi i32 [ %106, %104 ], [ %110, %107 ]
  %115 = icmp eq i32 %103, 1
  %116 = select i1 %115, ptr %35, ptr %34
  %117 = load i32, ptr %116, align 4, !tbaa !4
  store i32 %117, ptr %35, align 4, !tbaa !4
  store i32 %113, ptr %34, align 4, !tbaa !4
  br label %118

118:                                              ; preds = %112, %99
  %119 = phi i32 [ %114, %112 ], [ %101, %99 ]
  store i32 %119, ptr %3, align 4, !tbaa !4
  br label %120

120:                                              ; preds = %118, %102
  %121 = add nuw nsw i64 %39, 1
  %122 = icmp eq i64 %121, %37
  br i1 %122, label %123, label %38, !llvm.loop !456

123:                                              ; preds = %120, %28, %10
  %124 = icmp ult i64 %5, 3
  br i1 %124, label %232, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %127 = load ptr, ptr %126, align 8, !tbaa !55
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %129 = load ptr, ptr %128, align 8, !tbaa !56
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %131 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %132 = add i64 %5, -3
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %134 = load ptr, ptr %133, align 8, !tbaa !57
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %136 = load i64, ptr %135, align 8, !tbaa !58
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %138 = load i32, ptr %137, align 8, !tbaa !11
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %140 = load ptr, ptr %139, align 8, !tbaa !191
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %142 = load ptr, ptr %141, align 8, !tbaa !192
  %143 = ptrtoint ptr %142 to i64
  %144 = ptrtoint ptr %140 to i64
  %145 = sub i64 %143, %144
  %146 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %131, i64 noundef %132, ptr noundef %140, i64 noundef %145, ptr noundef readonly %1, ptr noundef %127, ptr noundef %129, ptr noundef nonnull readonly %130, ptr noundef %134, i64 noundef %136, i32 noundef %138)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %165, label %148

148:                                              ; preds = %125
  %149 = icmp eq i64 %146, -70
  %150 = icmp ule i64 %7, %132
  %151 = and i1 %150, %149
  br i1 %151, label %165, label %152

152:                                              ; preds = %148
  %153 = icmp ult i64 %146, -119
  br i1 %153, label %154, label %232

154:                                              ; preds = %152
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %156 = load i32, ptr %155, align 4, !tbaa !92
  %157 = tail call i32 @llvm.umax.i32(i32 %156, i32 7)
  %158 = add i32 %157, -1
  %159 = zext nneg i32 %158 to i64
  %160 = lshr i64 %7, %159
  %161 = add i64 %7, -2
  %162 = sub i64 %161, %160
  %163 = icmp ult i64 %146, %162
  %164 = select i1 %163, i64 %146, i64 0
  br label %165

165:                                              ; preds = %125, %148, %154
  %166 = phi i64 [ %164, %154 ], [ 0, %148 ], [ 0, %125 ]
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %168 = load i32, ptr %167, align 8, !tbaa !241
  %169 = icmp eq i32 %168, 0
  %170 = icmp ult i64 %166, 25
  %171 = and i1 %170, %169
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %6, i64 noundef %7)
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %174, i64 %166, i64 1
  br label %176

176:                                              ; preds = %172, %165
  %177 = phi i64 [ %166, %165 ], [ %175, %172 ]
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %179 = load i32, ptr %178, align 8, !tbaa !242
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %176
  %182 = call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %178, ptr noundef nonnull %1, ptr noundef nonnull %11)
  %183 = icmp ult i64 %182, -119
  br i1 %183, label %184, label %232

184:                                              ; preds = %181
  %185 = load <2 x ptr>, ptr %126, align 8, !tbaa !49
  %186 = shufflevector <2 x ptr> %185, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %186, ptr %126, align 8, !tbaa !49
  br label %232

187:                                              ; preds = %176
  switch i64 %177, label %213 [
    i64 0, label %188
    i64 1, label %201
  ]

188:                                              ; preds = %187
  %189 = add i64 %7, 3
  %190 = icmp ugt i64 %189, %5
  br i1 %190, label %232, label %191

191:                                              ; preds = %188
  %192 = trunc i64 %7 to i32
  %193 = shl i32 %192, 3
  %194 = or disjoint i32 %193, %8
  %195 = trunc i32 %194 to i16
  store i16 %195, ptr %4, align 1, !tbaa !222
  %196 = lshr i32 %193, 16
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %197, ptr %198, align 1, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %131, ptr readonly align 1 %6, i64 %7, i1 false)
  %199 = icmp ult i64 %189, -119
  br i1 %199, label %200, label %232

200:                                              ; preds = %191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !455
  br label %225

201:                                              ; preds = %187
  %202 = icmp eq i64 %5, 3
  br i1 %202, label %232, label %203

203:                                              ; preds = %201
  %204 = load i8, ptr %6, align 1, !tbaa !185
  %205 = trunc i64 %7 to i32
  %206 = shl i32 %205, 3
  %207 = or disjoint i32 %206, %8
  %208 = trunc i32 %207 to i16
  %209 = or disjoint i16 %208, 2
  store i16 %209, ptr %4, align 1, !tbaa !222
  %210 = lshr i32 %206, 16
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %211, ptr %212, align 1, !tbaa !185
  store i8 %204, ptr %131, align 1, !tbaa !185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !455
  br label %225

213:                                              ; preds = %187
  %214 = load <2 x ptr>, ptr %126, align 8, !tbaa !49
  %215 = shufflevector <2 x ptr> %214, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %215, ptr %126, align 8, !tbaa !49
  %216 = trunc i64 %177 to i32
  %217 = shl i32 %216, 3
  %218 = or disjoint i32 %217, %8
  %219 = trunc i32 %218 to i16
  %220 = or disjoint i16 %219, 4
  store i16 %220, ptr %4, align 1, !tbaa !222
  %221 = lshr i32 %217, 16
  %222 = trunc i32 %221 to i8
  %223 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %222, ptr %223, align 1, !tbaa !185
  %224 = add nuw i64 %177, 3
  br label %225

225:                                              ; preds = %203, %213, %200
  %226 = phi i64 [ %189, %200 ], [ 4, %203 ], [ %224, %213 ]
  %227 = load ptr, ptr %126, align 8, !tbaa !55
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 5604
  %229 = load i32, ptr %228, align 4, !tbaa !156
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i32 1, ptr %228, align 4, !tbaa !156
  br label %232

232:                                              ; preds = %201, %152, %188, %225, %231, %123, %181, %191, %184
  %233 = phi i64 [ -70, %188 ], [ 0, %184 ], [ %182, %181 ], [ -70, %123 ], [ %189, %191 ], [ %146, %152 ], [ %226, %231 ], [ %226, %225 ], [ -70, %201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  ret i64 %233
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef captures(none) initializes((0, 80)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #28 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !248
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %80, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 8, !tbaa !175
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %2
  %9 = load ptr, ptr %0, align 8, !tbaa !175
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %75, label %11

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %17 = load i32, ptr %16, align 4, !tbaa !188
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %20 = icmp eq i64 %14, 8
  br i1 %20, label %60, label %21

21:                                               ; preds = %11
  %22 = and i64 %15, -2
  br label %23

23:                                               ; preds = %52, %21
  %24 = phi i64 [ 0, %21 ], [ %53, %52 ]
  %25 = phi i64 [ 0, %21 ], [ %54, %52 ]
  %26 = phi i64 [ 0, %21 ], [ %55, %52 ]
  %27 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %25
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %29 = load i16, ptr %28, align 4, !tbaa !222
  %30 = zext i16 %29 to i64
  %31 = add i64 %24, %30
  %32 = icmp eq i64 %25, %18
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32, ptr %19, align 8, !tbaa !187
  %35 = icmp eq i32 %34, 1
  %36 = add i64 %31, 65536
  %37 = select i1 %35, i64 %36, i64 %31
  br label %38

38:                                               ; preds = %33, %23
  %39 = phi i64 [ %31, %23 ], [ %37, %33 ]
  %40 = or disjoint i64 %25, 1
  %41 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 4
  %43 = load i16, ptr %42, align 4, !tbaa !222
  %44 = zext i16 %43 to i64
  %45 = add i64 %39, %44
  %46 = icmp eq i64 %40, %18
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32, ptr %19, align 8, !tbaa !187
  %49 = icmp eq i32 %48, 1
  %50 = add i64 %45, 65536
  %51 = select i1 %49, i64 %50, i64 %45
  br label %52

52:                                               ; preds = %47, %38
  %53 = phi i64 [ %45, %38 ], [ %51, %47 ]
  %54 = add nuw i64 %25, 2
  %55 = add i64 %26, 2
  %56 = icmp eq i64 %55, %22
  br i1 %56, label %57, label %23, !llvm.loop !250

57:                                               ; preds = %52
  %58 = and i64 %14, 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %57, %11
  %61 = phi i64 [ 0, %11 ], [ %53, %57 ]
  %62 = phi i64 [ 0, %11 ], [ %54, %57 ]
  %63 = trunc i64 %15 to i1
  tail call void @llvm.assume(i1 %63)
  %64 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %62
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 4
  %66 = load i16, ptr %65, align 4, !tbaa !222
  %67 = zext i16 %66 to i64
  %68 = add i64 %61, %67
  %69 = icmp eq i64 %62, %18
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, ptr %19, align 8, !tbaa !187
  %72 = icmp eq i32 %71, 1
  %73 = add i64 %68, 65536
  %74 = select i1 %72, i64 %73, i64 %68
  br label %75

75:                                               ; preds = %57, %70, %60, %6
  %76 = phi i64 [ 0, %6 ], [ %53, %57 ], [ %68, %60 ], [ %74, %70 ]
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %78 = load ptr, ptr %77, align 8, !tbaa !191
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 %76
  store ptr %79, ptr %77, align 8, !tbaa !191
  br label %80

80:                                               ; preds = %75, %4
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %82 = load i32, ptr %81, align 8, !tbaa !187
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %86 = load i32, ptr %85, align 4, !tbaa !188
  %87 = zext i32 %86 to i64
  %88 = icmp ugt i64 %2, %87
  %89 = icmp samesign ult i64 %3, %87
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %92, align 8, !tbaa !187
  br label %98

93:                                               ; preds = %84
  %94 = trunc nuw i64 %2 to i32
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %96 = load i32, ptr %95, align 4, !tbaa !188
  %97 = sub i32 %96, %94
  store i32 %97, ptr %95, align 4, !tbaa !188
  br label %98

98:                                               ; preds = %91, %93, %80
  %99 = load ptr, ptr %1, align 8, !tbaa !175
  %100 = getelementptr inbounds nuw [8 x i8], ptr %99, i64 %2
  store ptr %100, ptr %0, align 8, !tbaa !175
  %101 = load ptr, ptr %1, align 8, !tbaa !175
  %102 = getelementptr inbounds nuw [8 x i8], ptr %101, i64 %3
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %102, ptr %103, align 8, !tbaa !179
  %104 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %105 = load ptr, ptr %104, align 8, !tbaa !179
  %106 = ptrtoint ptr %105 to i64
  %107 = ptrtoint ptr %101 to i64
  %108 = sub i64 %106, %107
  %109 = ashr exact i64 %108, 3
  %110 = icmp eq i64 %3, %109
  br i1 %110, label %183, label %111

111:                                              ; preds = %98
  %112 = icmp eq ptr %102, %100
  br i1 %112, label %177, label %113

113:                                              ; preds = %111
  %114 = ptrtoint ptr %102 to i64
  %115 = ptrtoint ptr %100 to i64
  %116 = sub i64 %114, %115
  %117 = ashr exact i64 %116, 3
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %119 = load i32, ptr %118, align 4, !tbaa !188
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %122 = icmp eq i64 %116, 8
  br i1 %122, label %162, label %123

123:                                              ; preds = %113
  %124 = and i64 %117, -2
  br label %125

125:                                              ; preds = %154, %123
  %126 = phi i64 [ 0, %123 ], [ %155, %154 ]
  %127 = phi i64 [ 0, %123 ], [ %156, %154 ]
  %128 = phi i64 [ 0, %123 ], [ %157, %154 ]
  %129 = getelementptr inbounds nuw [8 x i8], ptr %100, i64 %127
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 4
  %131 = load i16, ptr %130, align 4, !tbaa !222
  %132 = zext i16 %131 to i64
  %133 = add i64 %126, %132
  %134 = icmp eq i64 %127, %120
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = load i32, ptr %121, align 8, !tbaa !187
  %137 = icmp eq i32 %136, 1
  %138 = add i64 %133, 65536
  %139 = select i1 %137, i64 %138, i64 %133
  br label %140

140:                                              ; preds = %135, %125
  %141 = phi i64 [ %133, %125 ], [ %139, %135 ]
  %142 = or disjoint i64 %127, 1
  %143 = getelementptr inbounds nuw [8 x i8], ptr %100, i64 %142
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %145 = load i16, ptr %144, align 4, !tbaa !222
  %146 = zext i16 %145 to i64
  %147 = add i64 %141, %146
  %148 = icmp eq i64 %142, %120
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load i32, ptr %121, align 8, !tbaa !187
  %151 = icmp eq i32 %150, 1
  %152 = add i64 %147, 65536
  %153 = select i1 %151, i64 %152, i64 %147
  br label %154

154:                                              ; preds = %149, %140
  %155 = phi i64 [ %147, %140 ], [ %153, %149 ]
  %156 = add nuw i64 %127, 2
  %157 = add i64 %128, 2
  %158 = icmp eq i64 %157, %124
  br i1 %158, label %159, label %125, !llvm.loop !250

159:                                              ; preds = %154
  %160 = and i64 %116, 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %177, label %162

162:                                              ; preds = %159, %113
  %163 = phi i64 [ 0, %113 ], [ %155, %159 ]
  %164 = phi i64 [ 0, %113 ], [ %156, %159 ]
  %165 = trunc i64 %117 to i1
  tail call void @llvm.assume(i1 %165)
  %166 = getelementptr inbounds nuw [8 x i8], ptr %100, i64 %164
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 4
  %168 = load i16, ptr %167, align 4, !tbaa !222
  %169 = zext i16 %168 to i64
  %170 = add i64 %163, %169
  %171 = icmp eq i64 %164, %120
  br i1 %171, label %172, label %177

172:                                              ; preds = %162
  %173 = load i32, ptr %121, align 8, !tbaa !187
  %174 = icmp eq i32 %173, 1
  %175 = add i64 %170, 65536
  %176 = select i1 %174, i64 %175, i64 %170
  br label %177

177:                                              ; preds = %159, %172, %162, %111
  %178 = phi i64 [ 0, %111 ], [ %155, %159 ], [ %170, %162 ], [ %176, %172 ]
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %180 = load ptr, ptr %179, align 8, !tbaa !191
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 %178
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %181, ptr %182, align 8, !tbaa !192
  br label %183

183:                                              ; preds = %98, %177
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %185 = load ptr, ptr %184, align 8, !tbaa !176
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 %2
  store ptr %186, ptr %184, align 8, !tbaa !176
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %188 = load ptr, ptr %187, align 8, !tbaa !178
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 %2
  store ptr %189, ptr %187, align 8, !tbaa !178
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %191 = load ptr, ptr %190, align 8, !tbaa !177
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 %2
  store ptr %192, ptr %190, align 8, !tbaa !177
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 3768
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 3848
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 3928
  %10 = sub i64 %2, %1
  %11 = icmp ult i64 %10, 300
  br i1 %11, label %40, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %6, align 8, !tbaa !247
  br label %14

14:                                               ; preds = %12, %32
  %15 = phi i64 [ %37, %32 ], [ %13, %12 ]
  %16 = phi i64 [ %18, %32 ], [ %1, %12 ]
  %17 = add i64 %16, %2
  %18 = lshr i64 %17, 1
  %19 = icmp ugt i64 %15, 195
  br i1 %19, label %40, label %20

20:                                               ; preds = %14
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %7, ptr noundef %4, i64 noundef %16, i64 noundef %2)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %8, ptr noundef %4, i64 noundef %16, i64 noundef %18)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %9, ptr noundef %4, i64 noundef %18, i64 noundef %2)
  %21 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %7, ptr noundef %3)
  %22 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %8, ptr noundef %3)
  %23 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %9, ptr noundef %3)
  %24 = icmp ult i64 %21, -119
  %25 = icmp ult i64 %22, -119
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = icmp ult i64 %23, -119
  %29 = add i64 %23, %22
  %30 = icmp ult i64 %29, %21
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  tail call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %0, i64 noundef %16, i64 noundef %18, ptr noundef nonnull %3, ptr noundef %4)
  %33 = trunc i64 %18 to i32
  %34 = load ptr, ptr %0, align 8, !tbaa !245
  %35 = load i64, ptr %6, align 8, !tbaa !247
  %36 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %35
  store i32 %33, ptr %36, align 4, !tbaa !4
  %37 = add i64 %35, 1
  store i64 %37, ptr %6, align 8, !tbaa !247
  %38 = sub nsw i64 %2, %18
  %39 = icmp ult i64 %38, 300
  br i1 %39, label %40, label %14

40:                                               ; preds = %32, %14, %27, %20, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4952
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 3224
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3544
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %16 = load i64, ptr %15, align 8, !tbaa !58
  %17 = tail call i64 @ZSTD_buildBlockEntropyStats(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef %14, i64 noundef %16)
  %18 = icmp ult i64 %17, -119
  br i1 %18, label %19, label %199

19:                                               ; preds = %2
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !191
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load ptr, ptr %22, align 8, !tbaa !192
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %21 to i64
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %28 = load ptr, ptr %27, align 8, !tbaa !177
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %30 = load ptr, ptr %29, align 8, !tbaa !176
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !179
  %35 = load ptr, ptr %0, align 8, !tbaa !175
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 3
  %40 = load ptr, ptr %10, align 8, !tbaa !56
  %41 = load ptr, ptr %13, align 8, !tbaa !57
  %42 = load i64, ptr %15, align 8, !tbaa !58
  %43 = load i32, ptr %7, align 8, !tbaa !457
  %44 = icmp eq i32 %43, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i32 255, ptr %6, align 4, !tbaa !4
  %45 = icmp ugt i64 %26, 1023
  %46 = select i1 %45, i64 4, i64 3
  %47 = icmp ugt i64 %26, 16383
  %48 = zext i1 %47 to i64
  %49 = add nuw nsw i64 %46, %48
  %50 = icmp ult i64 %26, 256
  switch i32 %43, label %67 [
    i32 0, label %68
    i32 1, label %51
    i32 2, label %52
    i32 3, label %52
  ]

51:                                               ; preds = %19
  br label %68

52:                                               ; preds = %19, %19
  %53 = call i64 @HIST_count_wksp(ptr noundef %41, ptr noundef nonnull %6, ptr noundef %21, i64 noundef %26, ptr noundef %41, i64 noundef %42) #34
  %54 = icmp ult i64 %53, -119
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32, ptr %6, align 4, !tbaa !4
  %57 = call i64 @HUF_estimateCompressedSize(ptr noundef %40, ptr noundef %41, i32 noundef %56) #34
  br i1 %44, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %60 = load i64, ptr %59, align 8, !tbaa !458
  %61 = add i64 %60, %57
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i64 [ %61, %58 ], [ %57, %55 ]
  %64 = add i64 %63, 6
  %65 = select i1 %50, i64 %63, i64 %64
  %66 = add i64 %49, %65
  br label %68

67:                                               ; preds = %19
  br label %68

68:                                               ; preds = %67, %62, %52, %51, %19
  %69 = phi i64 [ 0, %67 ], [ 1, %51 ], [ %26, %19 ], [ %66, %62 ], [ %26, %52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %70 = getelementptr inbounds nuw i8, ptr %40, i64 2064
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 5096
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 5100
  %73 = load i32, ptr %72, align 4, !tbaa !459
  %74 = getelementptr inbounds nuw i8, ptr %28, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store i32 31, ptr %5, align 4, !tbaa !4
  %75 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %5, ptr noundef %28, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #34
  switch i32 %73, label %79 [
    i32 0, label %76
    i32 1, label %88
  ]

76:                                               ; preds = %68
  %77 = load i32, ptr %5, align 4, !tbaa !4
  %78 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %41, i32 noundef %77) #34
  br label %85

79:                                               ; preds = %68
  %80 = and i32 %73, -2
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, ptr %5, align 4, !tbaa !4
  %84 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %70, ptr noundef %41, i32 noundef %83) #34
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi i64 [ %78, %76 ], [ %84, %82 ]
  %87 = icmp ult i64 %86, -119
  br i1 %87, label %88, label %99

88:                                               ; preds = %85, %79, %68
  %89 = phi i64 [ %86, %85 ], [ 0, %79 ], [ 0, %68 ]
  %90 = icmp eq ptr %34, %35
  br i1 %90, label %101, label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %96, %91 ], [ %89, %88 ]
  %93 = phi ptr [ %97, %91 ], [ %28, %88 ]
  %94 = load i8, ptr %93, align 1, !tbaa !185
  %95 = zext i8 %94 to i64
  %96 = add i64 %92, %95
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 1
  %98 = icmp ult ptr %97, %74
  br i1 %98, label %91, label %101, !llvm.loop !460

99:                                               ; preds = %85
  %100 = mul i64 %39, 10
  br label %104

101:                                              ; preds = %91, %88
  %102 = phi i64 [ %89, %88 ], [ %96, %91 ]
  %103 = lshr i64 %102, 3
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i64 [ %100, %99 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %106 = load i32, ptr %71, align 8, !tbaa !461
  %107 = getelementptr inbounds nuw i8, ptr %40, i64 4288
  %108 = getelementptr inbounds nuw i8, ptr %30, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i32 35, ptr %4, align 4, !tbaa !4
  %109 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %4, ptr noundef %30, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #34
  switch i32 %106, label %113 [
    i32 0, label %110
    i32 1, label %122
  ]

110:                                              ; preds = %104
  %111 = load i32, ptr %4, align 4, !tbaa !4
  %112 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %111) #34
  br label %119

113:                                              ; preds = %104
  %114 = and i32 %106, -2
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, ptr %4, align 4, !tbaa !4
  %118 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %107, ptr noundef %41, i32 noundef %117) #34
  br label %119

119:                                              ; preds = %116, %110
  %120 = phi i64 [ %112, %110 ], [ %118, %116 ]
  %121 = icmp ult i64 %120, -119
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %113, %104
  %123 = phi i64 [ %120, %119 ], [ 0, %113 ], [ 0, %104 ]
  %124 = icmp eq ptr %34, %35
  br i1 %124, label %140, label %127

125:                                              ; preds = %119
  %126 = mul i64 %39, 10
  br label %143

127:                                              ; preds = %122, %132
  %128 = phi i64 [ %137, %132 ], [ %123, %122 ]
  %129 = phi ptr [ %138, %132 ], [ %30, %122 ]
  %130 = load i8, ptr %129, align 1, !tbaa !185
  %131 = icmp ugt i8 %130, 47
  br i1 %131, label %183, label %132

132:                                              ; preds = %127
  %133 = zext nneg i8 %130 to i64
  %134 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !185
  %136 = zext i8 %135 to i64
  %137 = add i64 %128, %136
  %138 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %139 = icmp ult ptr %138, %108
  br i1 %139, label %127, label %140, !llvm.loop !460

140:                                              ; preds = %132, %122
  %141 = phi i64 [ %123, %122 ], [ %137, %132 ]
  %142 = lshr i64 %141, 3
  br label %143

143:                                              ; preds = %140, %125
  %144 = phi i64 [ %126, %125 ], [ %142, %140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 5104
  %146 = load i32, ptr %145, align 8, !tbaa !219
  %147 = getelementptr inbounds nuw i8, ptr %40, i64 2836
  %148 = getelementptr inbounds nuw i8, ptr %32, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store i32 52, ptr %3, align 4, !tbaa !4
  %149 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %3, ptr noundef %32, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #34
  switch i32 %146, label %153 [
    i32 0, label %150
    i32 1, label %162
  ]

150:                                              ; preds = %143
  %151 = load i32, ptr %3, align 4, !tbaa !4
  %152 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %151) #34
  br label %159

153:                                              ; preds = %143
  %154 = and i32 %146, -2
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32, ptr %3, align 4, !tbaa !4
  %158 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %147, ptr noundef %41, i32 noundef %157) #34
  br label %159

159:                                              ; preds = %156, %150
  %160 = phi i64 [ %152, %150 ], [ %158, %156 ]
  %161 = icmp ult i64 %160, -119
  br i1 %161, label %162, label %165

162:                                              ; preds = %159, %153, %143
  %163 = phi i64 [ %160, %159 ], [ 0, %153 ], [ 0, %143 ]
  %164 = icmp eq ptr %34, %35
  br i1 %164, label %180, label %167

165:                                              ; preds = %159
  %166 = mul i64 %39, 10
  br label %185

167:                                              ; preds = %162, %172
  %168 = phi i64 [ %177, %172 ], [ %163, %162 ]
  %169 = phi ptr [ %178, %172 ], [ %32, %162 ]
  %170 = load i8, ptr %169, align 1, !tbaa !185
  %171 = icmp ugt i8 %170, 63
  br i1 %171, label %184, label %172

172:                                              ; preds = %167
  %173 = zext nneg i8 %170 to i64
  %174 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !185
  %176 = zext i8 %175 to i64
  %177 = add i64 %168, %176
  %178 = getelementptr inbounds nuw i8, ptr %169, i64 1
  %179 = icmp ult ptr %178, %148
  br i1 %179, label %167, label %180, !llvm.loop !460

180:                                              ; preds = %172, %162
  %181 = phi i64 [ %163, %162 ], [ %177, %172 ]
  %182 = lshr i64 %181, 3
  br label %185

183:                                              ; preds = %127
  call void @llvm.ubsantrap(i8 36) #37, !nosanitize !130
  unreachable, !nosanitize !130

184:                                              ; preds = %167
  call void @llvm.ubsantrap(i8 38) #37, !nosanitize !130
  unreachable, !nosanitize !130

185:                                              ; preds = %165, %180
  %186 = phi i64 [ %166, %165 ], [ %182, %180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 5248
  %188 = load i64, ptr %187, align 8, !tbaa !462
  %189 = icmp ugt i64 %39, 32511
  %190 = icmp ugt i64 %39, 127
  %191 = select i1 %190, i64 3, i64 2
  %192 = select i1 %189, i64 4, i64 3
  %193 = add nuw nsw i64 %192, %191
  %194 = add i64 %193, %69
  %195 = add i64 %194, %105
  %196 = add i64 %195, %144
  %197 = add i64 %196, %186
  %198 = add i64 %197, %188
  br label %199

199:                                              ; preds = %2, %185
  %200 = phi i64 [ %198, %185 ], [ %17, %2 ]
  ret i64 %200
}

declare i64 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare i64 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc range(i64 -70, 1) i64 @ZSTD_copyBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #20 {
  %4 = alloca %struct.repcodes_s, align 4
  %5 = load ptr, ptr %1, align 8, !tbaa !175
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !192
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !191
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load i64, ptr %18, align 8, !tbaa !463
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !464
  %22 = getelementptr inbounds nuw [16 x i8], ptr %21, i64 %19
  %23 = add nsw i64 %11, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %25 = load i64, ptr %24, align 8, !tbaa !465
  %26 = sub i64 %25, %19
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %130, label %28

28:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %29 = icmp eq ptr %7, %5
  br i1 %29, label %121, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %4, align 4
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %33 = load i32, ptr %32, align 4, !tbaa !188
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %38 = load i32, ptr %36, align 4
  %39 = load i32, ptr %37, align 4
  br label %40

40:                                               ; preds = %30, %113
  %41 = phi i32 [ %39, %30 ], [ %114, %113 ]
  %42 = phi i32 [ %38, %30 ], [ %115, %113 ]
  %43 = phi i64 [ 0, %30 ], [ %118, %113 ]
  %44 = phi i64 [ 0, %30 ], [ %119, %113 ]
  %45 = phi i32 [ %31, %30 ], [ %116, %113 ]
  %46 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %44
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %48 = load i16, ptr %47, align 4, !tbaa !180
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %44
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 4
  store i32 %49, ptr %51, align 4, !tbaa !206
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 6
  %53 = load i16, ptr %52, align 2, !tbaa !184
  %54 = zext i16 %53 to i32
  %55 = add nuw nsw i32 %54, 3
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %55, ptr %56, align 4, !tbaa !205
  %57 = getelementptr inbounds nuw i8, ptr %50, i64 12
  store i32 0, ptr %57, align 4, !tbaa !466
  %58 = icmp eq i64 %44, %34
  br i1 %58, label %59, label %65

59:                                               ; preds = %40
  %60 = load i32, ptr %35, align 8, !tbaa !187
  switch i32 %60, label %65 [
    i32 1, label %61
    i32 2, label %63
  ]

61:                                               ; preds = %59
  %62 = or disjoint i32 %49, 65536
  store i32 %62, ptr %51, align 4, !tbaa !206
  br label %65

63:                                               ; preds = %59
  %64 = add nuw nsw i32 %54, 65539
  store i32 %64, ptr %56, align 4, !tbaa !205
  br label %65

65:                                               ; preds = %59, %61, %63, %40
  %66 = phi i32 [ %49, %59 ], [ %62, %61 ], [ %49, %63 ], [ %49, %40 ]
  %67 = load i32, ptr %46, align 4, !tbaa !183
  %68 = add i32 %67, -1
  %69 = icmp ult i32 %68, 3
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  store i32 %67, ptr %57, align 4, !tbaa !466
  %71 = icmp eq i32 %66, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %70
  %73 = icmp eq i32 %67, 0
  br i1 %73, label %132, label %74

74:                                               ; preds = %72
  %75 = zext nneg i32 %67 to i64
  %76 = getelementptr [4 x i8], ptr %4, i64 %75
  %77 = getelementptr i8, ptr %76, i64 -4
  %78 = load i32, ptr %77, align 4, !tbaa !4
  br label %89

79:                                               ; preds = %70
  %80 = icmp eq i32 %67, 3
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = add i32 %45, -1
  br label %89

83:                                               ; preds = %79
  %84 = icmp ugt i32 %67, 3
  br i1 %84, label %133, label %85

85:                                               ; preds = %83
  %86 = zext nneg i32 %67 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !4
  br label %89

89:                                               ; preds = %74, %85, %81
  %90 = phi i32 [ %88, %85 ], [ %82, %81 ], [ %78, %74 ]
  store i32 %90, ptr %50, align 4, !tbaa !203
  br label %94

91:                                               ; preds = %65
  %92 = add i32 %67, -3
  store i32 %92, ptr %50, align 4, !tbaa !203
  %93 = icmp ugt i32 %67, 3
  br i1 %93, label %110, label %94

94:                                               ; preds = %89, %91
  %95 = icmp ne i16 %48, 0
  %96 = sext i1 %95 to i32
  %97 = add nsw i32 %67, %96
  switch i32 %97, label %100 [
    i32 0, label %113
    i32 3, label %98
  ]

98:                                               ; preds = %94
  %99 = add i32 %45, -1
  br label %106

100:                                              ; preds = %94
  %101 = icmp ugt i32 %97, 2
  br i1 %101, label %134, label %102

102:                                              ; preds = %100
  %103 = zext nneg i32 %97 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !4
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i32 [ %99, %98 ], [ %105, %102 ]
  %108 = icmp eq i32 %97, 1
  %109 = select i1 %108, i32 %41, i32 %42
  br label %110

110:                                              ; preds = %91, %106
  %111 = phi i32 [ %109, %106 ], [ %42, %91 ]
  %112 = phi i32 [ %107, %106 ], [ %92, %91 ]
  store i32 %111, ptr %37, align 4, !tbaa !4
  store i32 %45, ptr %36, align 4, !tbaa !4
  store i32 %112, ptr %4, align 4, !tbaa !4
  br label %113

113:                                              ; preds = %94, %110
  %114 = phi i32 [ %41, %94 ], [ %111, %110 ]
  %115 = phi i32 [ %42, %94 ], [ %45, %110 ]
  %116 = phi i32 [ %45, %94 ], [ %112, %110 ]
  %117 = zext nneg i32 %66 to i64
  %118 = add i64 %43, %117
  %119 = add nuw i64 %44, 1
  %120 = icmp eq i64 %119, %11
  br i1 %120, label %121, label %40, !llvm.loop !467

121:                                              ; preds = %113, %28
  %122 = phi i64 [ 0, %28 ], [ %118, %113 ]
  %123 = add i64 %122, %17
  %124 = sub i64 %16, %123
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %11
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 4
  store i32 %125, ptr %127, align 4, !tbaa !206
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 8
  store i32 0, ptr %128, align 4, !tbaa !205
  store i32 0, ptr %126, align 4, !tbaa !203
  %129 = add i64 %23, %19
  store i64 %129, ptr %18, align 8, !tbaa !463
  br label %130

130:                                              ; preds = %3, %121
  %131 = phi i64 [ 0, %121 ], [ -70, %3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i64 %131

132:                                              ; preds = %72
  tail call void @llvm.ubsantrap(i8 29) #37, !nosanitize !130
  unreachable, !nosanitize !130

133:                                              ; preds = %83
  tail call void @llvm.ubsantrap(i8 31) #37, !nosanitize !130
  unreachable, !nosanitize !130

134:                                              ; preds = %100
  tail call void @llvm.ubsantrap(i8 33) #37, !nosanitize !130
  unreachable, !nosanitize !130
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly captures(none) %7, ptr noundef %8, i64 noundef %9, i32 noundef %10) unnamed_addr #29 {
  %12 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %14 = load i32, ptr %13, align 4, !tbaa !92
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 2064
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 4288
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 2836
  %18 = load ptr, ptr %4, align 8, !tbaa !175
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !179
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %18 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %26 = load ptr, ptr %25, align 8, !tbaa !177
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !176
  %29 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 212
  %33 = add i64 %9, -212
  %34 = icmp eq ptr %20, %18
  br i1 %34, label %39, label %35

35:                                               ; preds = %11
  %36 = udiv i64 %3, %24
  %37 = icmp ugt i64 %36, 19
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %35, %11
  %40 = phi i32 [ 1, %11 ], [ %38, %35 ]
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %42 = load i32, ptr %41, align 8, !tbaa !97
  switch i32 %42, label %44 [
    i32 1, label %51
    i32 2, label %43
  ]

43:                                               ; preds = %39
  br label %51

44:                                               ; preds = %39
  %45 = icmp eq i32 %14, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %48 = load i32, ptr %47, align 4, !tbaa !91
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %39, %43, %44, %46
  %52 = phi i32 [ 0, %39 ], [ 1, %43 ], [ 0, %44 ], [ %50, %46 ]
  %53 = tail call i64 @ZSTD_compressLiterals(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %32, i64 noundef %33, ptr noundef %5, ptr noundef %6, i32 noundef %14, i32 noundef %52, i32 noundef %40, i32 noundef %10) #34
  %54 = icmp ult i64 %53, -119
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 %53
  br i1 %54, label %56, label %124

56:                                               ; preds = %51
  %57 = ptrtoint ptr %31 to i64
  %58 = sub nsw i64 %1, %53
  %59 = icmp slt i64 %58, 4
  br i1 %59, label %124, label %60

60:                                               ; preds = %56
  %61 = icmp ult i64 %24, 128
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = trunc nuw nsw i64 %24 to i8
  %64 = getelementptr inbounds nuw i8, ptr %55, i64 1
  store i8 %63, ptr %55, align 1, !tbaa !185
  br label %79

65:                                               ; preds = %60
  %66 = icmp ult i64 %24, 32512
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = lshr i64 %24, 8
  %69 = trunc nuw nsw i64 %68 to i8
  %70 = or disjoint i8 %69, -128
  store i8 %70, ptr %55, align 1, !tbaa !185
  %71 = trunc i64 %24 to i8
  %72 = getelementptr inbounds nuw i8, ptr %55, i64 1
  store i8 %71, ptr %72, align 1, !tbaa !185
  %73 = getelementptr inbounds nuw i8, ptr %55, i64 2
  br label %79

74:                                               ; preds = %65
  store i8 -1, ptr %55, align 1, !tbaa !185
  %75 = getelementptr inbounds nuw i8, ptr %55, i64 1
  %76 = trunc i64 %24 to i16
  %77 = add i16 %76, -32512
  store i16 %77, ptr %75, align 1, !tbaa !222
  %78 = getelementptr inbounds nuw i8, ptr %55, i64 3
  br label %79

79:                                               ; preds = %67, %74, %62
  %80 = phi ptr [ %64, %62 ], [ %73, %67 ], [ %78, %74 ]
  br i1 %34, label %81, label %86

81:                                               ; preds = %79
  %82 = getelementptr inbounds nuw i8, ptr %5, i64 2064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3552) %15, ptr noundef nonnull align 8 dereferenceable(3552) %82, i64 3552, i1 false)
  %83 = ptrtoint ptr %80 to i64
  %84 = ptrtoint ptr %0 to i64
  %85 = sub i64 %83, %84
  br label %124

86:                                               ; preds = %79
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %88 = getelementptr inbounds nuw i8, ptr %5, i64 2064
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull %4, i64 noundef %24, ptr noundef nonnull %88, ptr noundef nonnull %15, ptr noundef nonnull %87, ptr noundef nonnull %31, i32 noundef %14, ptr noundef nonnull %8, ptr noundef nonnull %32, i64 noundef %33)
  %89 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %90 = load i64, ptr %89, align 8, !tbaa !424
  %91 = icmp ult i64 %90, -119
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %124

93:                                               ; preds = %86
  %94 = load i32, ptr %12, align 8, !tbaa !423
  %95 = shl i32 %94, 6
  %96 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %97 = load i32, ptr %96, align 4, !tbaa !425
  %98 = shl i32 %97, 4
  %99 = add i32 %98, %95
  %100 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %101 = load i32, ptr %100, align 8, !tbaa !426
  %102 = shl i32 %101, 2
  %103 = add i32 %99, %102
  %104 = trunc i32 %103 to i8
  store i8 %104, ptr %80, align 1, !tbaa !185
  %105 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %106 = load i64, ptr %105, align 8, !tbaa !420
  %107 = getelementptr inbounds nuw i8, ptr %87, i64 %90
  %108 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %109 = load i32, ptr %108, align 8, !tbaa !422
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %110 = ptrtoint ptr %107 to i64
  %111 = sub i64 %57, %110
  %112 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %107, i64 noundef %111, ptr noundef nonnull %17, ptr noundef %30, ptr noundef nonnull %15, ptr noundef %26, ptr noundef nonnull %16, ptr noundef %28, ptr noundef %18, i64 noundef %24, i32 noundef %109, i32 noundef %10) #34
  %113 = icmp ult i64 %112, -119
  br i1 %113, label %114, label %124

114:                                              ; preds = %93
  %115 = icmp eq i64 %106, 0
  %116 = add i64 %112, %106
  %117 = icmp ugt i64 %116, 3
  %118 = or i1 %115, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 %112
  %121 = ptrtoint ptr %120 to i64
  %122 = ptrtoint ptr %0 to i64
  %123 = sub i64 %121, %122
  br label %124

124:                                              ; preds = %93, %92, %56, %114, %51, %119, %81
  %125 = phi i64 [ %53, %51 ], [ %85, %81 ], [ %123, %119 ], [ 0, %114 ], [ %90, %92 ], [ -70, %56 ], [ %112, %93 ]
  ret i64 %125
}

declare i64 @ZSTD_compressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

declare extern_weak i64 @ZSTD_trace_compress_begin(ptr noundef) #13

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 4294967296) i64 @ZSTD_compress_insertDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr noundef %10) unnamed_addr #2 {
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
  store i32 0, ptr %20, align 8, !tbaa !155
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %21, align 4, !tbaa !156
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %22, align 8, !tbaa !157
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %23, align 4, !tbaa !158
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
  %33 = load i32, ptr %32, align 8, !tbaa !94
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
define internal fastcc void @ZSTD_loadDictionaryContent(ptr noundef initializes((40, 48), (136, 140)) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #2 {
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %11 = load i32, ptr %10, align 8, !tbaa !80
  %12 = icmp eq i32 %11, 1
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  %15 = getelementptr i8, ptr %3, i64 28
  %16 = load i32, ptr %15, align 4, !tbaa !75
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
  br i1 %27, label %74, label %28

28:                                               ; preds = %8
  %29 = load ptr, ptr %0, align 8, !tbaa !227
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %33 = load ptr, ptr %32, align 8, !tbaa !228
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %35 = load i32, ptr %34, align 4, !tbaa !229
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %37 = load i32, ptr %36, align 8, !tbaa !230
  br label %54

38:                                               ; preds = %28
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load ptr, ptr %39, align 8, !tbaa !231
  %41 = ptrtoint ptr %29 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i32, ptr %44, align 8, !tbaa !230
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %45, ptr %46, align 4, !tbaa !229
  %47 = trunc i64 %43 to i32
  store i32 %47, ptr %44, align 8, !tbaa !230
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %40, ptr %48, align 8, !tbaa !228
  %49 = sub i64 0, %43
  %50 = getelementptr inbounds i8, ptr %26, i64 %49
  store ptr %50, ptr %39, align 8, !tbaa !231
  %51 = sub i32 %47, %45
  %52 = icmp ult i32 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i32 %47, ptr %46, align 4, !tbaa !229
  br label %54

54:                                               ; preds = %53, %38, %31
  %55 = phi i32 [ %37, %31 ], [ %47, %53 ], [ %47, %38 ]
  %56 = phi i32 [ %35, %31 ], [ %47, %53 ], [ %45, %38 ]
  %57 = phi ptr [ %33, %31 ], [ %40, %53 ], [ %40, %38 ]
  %58 = getelementptr inbounds nuw i8, ptr %26, i64 %25
  store ptr %58, ptr %0, align 8, !tbaa !227
  %59 = zext i32 %56 to i64
  %60 = getelementptr inbounds nuw i8, ptr %57, i64 %59
  %61 = icmp ugt ptr %58, %60
  %62 = zext i32 %55 to i64
  %63 = getelementptr inbounds nuw i8, ptr %57, i64 %62
  %64 = icmp ult ptr %26, %63
  %65 = and i1 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %54
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %68 = ptrtoint ptr %58 to i64
  %69 = ptrtoint ptr %57 to i64
  %70 = sub i64 %68, %69
  %71 = tail call i64 @llvm.umin.i64(i64 %70, i64 %62)
  %72 = trunc nuw i64 %71 to i32
  store i32 %72, ptr %67, align 4, !tbaa !229
  br label %73

73:                                               ; preds = %54, %66
  br i1 %14, label %75, label %133

74:                                               ; preds = %8
  br i1 %14, label %119, label %133

75:                                               ; preds = %73
  %76 = load ptr, ptr %1, align 8, !tbaa !227
  %77 = icmp eq ptr %26, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %80 = load ptr, ptr %79, align 8, !tbaa !228
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %82 = load i32, ptr %81, align 4, !tbaa !229
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %84 = load i32, ptr %83, align 8, !tbaa !230
  br label %101

85:                                               ; preds = %75
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %87 = load ptr, ptr %86, align 8, !tbaa !231
  %88 = ptrtoint ptr %76 to i64
  %89 = ptrtoint ptr %87 to i64
  %90 = sub i64 %88, %89
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %92 = load i32, ptr %91, align 8, !tbaa !230
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %92, ptr %93, align 4, !tbaa !229
  %94 = trunc i64 %90 to i32
  store i32 %94, ptr %91, align 8, !tbaa !230
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %87, ptr %95, align 8, !tbaa !228
  %96 = sub i64 0, %90
  %97 = getelementptr inbounds i8, ptr %26, i64 %96
  store ptr %97, ptr %86, align 8, !tbaa !231
  %98 = sub i32 %94, %92
  %99 = icmp ult i32 %98, 8
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  store i32 %94, ptr %93, align 4, !tbaa !229
  br label %101

101:                                              ; preds = %100, %85, %78
  %102 = phi i32 [ %84, %78 ], [ %94, %100 ], [ %94, %85 ]
  %103 = phi i32 [ %82, %78 ], [ %94, %100 ], [ %92, %85 ]
  %104 = phi ptr [ %80, %78 ], [ %87, %100 ], [ %87, %85 ]
  store ptr %58, ptr %1, align 8, !tbaa !227
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds nuw i8, ptr %104, i64 %105
  %107 = icmp ugt ptr %58, %106
  %108 = zext i32 %102 to i64
  %109 = getelementptr inbounds nuw i8, ptr %104, i64 %108
  %110 = icmp ult ptr %26, %109
  %111 = and i1 %107, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %114 = ptrtoint ptr %58 to i64
  %115 = ptrtoint ptr %104 to i64
  %116 = sub i64 %114, %115
  %117 = tail call i64 @llvm.umin.i64(i64 %116, i64 %108)
  %118 = trunc nuw i64 %117 to i32
  store i32 %118, ptr %113, align 4, !tbaa !229
  br label %119

119:                                              ; preds = %74, %101, %112
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %121 = load i32, ptr %120, align 8, !tbaa !95
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %125 = load ptr, ptr %124, align 8, !tbaa !468
  %126 = ptrtoint ptr %9 to i64
  %127 = ptrtoint ptr %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  br label %130

130:                                              ; preds = %119, %123
  %131 = phi i32 [ %129, %123 ], [ 0, %119 ]
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %131, ptr %132, align 8, !tbaa !469
  tail call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %1, ptr noundef nonnull %26, ptr noundef nonnull %9, ptr noundef nonnull %10) #34
  br label %133

133:                                              ; preds = %74, %130, %73
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %135 = load i32, ptr %134, align 4, !tbaa !87
  %136 = add i32 %135, 3
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %138 = load i32, ptr %137, align 4, !tbaa !88
  %139 = add i32 %138, 1
  %140 = tail call i32 @llvm.umax.i32(i32 %136, i32 %139)
  %141 = tail call i32 @llvm.umin.i32(i32 %140, i32 31)
  %142 = shl nuw i32 1, %141
  %143 = zext i32 %142 to i64
  %144 = icmp samesign ugt i64 %25, %143
  %145 = sub nsw i64 0, %143
  %146 = getelementptr inbounds i8, ptr %9, i64 %145
  %147 = select i1 %144, ptr %146, ptr %26
  %148 = tail call i64 @llvm.umin.i64(i64 %25, i64 %143)
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %150 = load ptr, ptr %149, align 8, !tbaa !433
  %151 = ptrtoint ptr %147 to i64
  %152 = ptrtoint ptr %150 to i64
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %154, ptr %155, align 4, !tbaa !232
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %157 = load i32, ptr %156, align 8, !tbaa !95
  %158 = icmp eq i32 %157, 0
  %159 = ptrtoint ptr %9 to i64
  %160 = sub i64 %159, %152
  %161 = trunc i64 %160 to i32
  %162 = select i1 %158, i32 %161, i32 0
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %162, ptr %163, align 8, !tbaa !404
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 164
  %165 = load i32, ptr %164, align 4, !tbaa !110
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %165, ptr %166, align 8, !tbaa !226
  %167 = icmp samesign ult i64 %148, 9
  br i1 %167, label %199, label %168

168:                                              ; preds = %133
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %147, ptr noundef nonnull %9)
  %169 = load i32, ptr %15, align 4, !tbaa !92
  switch i32 %169, label %194 [
    i32 1, label %170
    i32 2, label %171
    i32 3, label %172
    i32 4, label %172
    i32 5, label %172
    i32 6, label %192
    i32 7, label %192
    i32 8, label %192
    i32 9, label %192
  ]

170:                                              ; preds = %168
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #34
  br label %194

171:                                              ; preds = %168
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #34
  br label %194

172:                                              ; preds = %168, %168, %168
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %174 = load i32, ptr %173, align 4, !tbaa !401
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef nonnull %0, ptr noundef nonnull %177) #34
  br label %194

178:                                              ; preds = %172
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %180 = load i32, ptr %179, align 8, !tbaa !78
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = load i32, ptr %134, align 4, !tbaa !87
  %184 = zext nneg i32 %183 to i64
  %185 = shl nuw i64 1, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %187 = load ptr, ptr %186, align 8, !tbaa !410
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %187, i8 0, i64 %185, i1 false)
  %188 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_row_update(ptr noundef nonnull %0, ptr noundef nonnull %188) #34
  br label %194

189:                                              ; preds = %178
  %190 = getelementptr inbounds i8, ptr %9, i64 -8
  %191 = tail call i32 @ZSTD_insertAndFindFirstIndex(ptr noundef nonnull %0, ptr noundef nonnull %190) #34
  br label %194

192:                                              ; preds = %168, %168, %168, %168
  %193 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_updateTree(ptr noundef nonnull %0, ptr noundef nonnull %193, ptr noundef nonnull %9) #34
  br label %194

194:                                              ; preds = %168, %176, %189, %182, %192, %171, %170
  %195 = load ptr, ptr %149, align 8, !tbaa !433
  %196 = ptrtoint ptr %195 to i64
  %197 = sub i64 %159, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, ptr %155, align 4, !tbaa !232
  br label %199

199:                                              ; preds = %133, %194
  ret void
}

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

declare void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @ZSTD_row_update(ptr noundef, ptr noundef) local_unnamed_addr #13

declare i32 @ZSTD_insertAndFindFirstIndex(ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @ZSTD_updateTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i64 @ZSTD_transferSequences_noDelim(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 %6) unnamed_addr #26 {
  %8 = alloca %struct.repcodes_s, align 4
  %9 = load i32, ptr %1, align 8, !tbaa !443
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !470
  %12 = trunc i64 %5 to i32
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !257
  br label %28

21:                                               ; preds = %7
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %23 = load ptr, ptr %22, align 8, !tbaa !127
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %27 = load i64, ptr %26, align 8, !tbaa !128
  br label %28

28:                                               ; preds = %21, %25, %18
  %29 = phi i64 [ %20, %18 ], [ %27, %25 ], [ 0, %21 ]
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %32, i64 12, i1 false)
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %373, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %8, align 4
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %37 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %38 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %42 = getelementptr i8, ptr %0, i64 448
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %45 = getelementptr inbounds i8, ptr %14, i64 -32
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %47 = ptrtoint ptr %45 to i64
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %51 = load i32, ptr %37, align 4
  %52 = load i32, ptr %38, align 4
  br label %53

53:                                               ; preds = %34, %363
  %54 = phi i32 [ %52, %34 ], [ %150, %363 ]
  %55 = phi i32 [ %51, %34 ], [ %151, %363 ]
  %56 = phi i32 [ %9, %34 ], [ %371, %363 ]
  %57 = phi i32 [ %11, %34 ], [ %107, %363 ]
  %58 = phi i32 [ %13, %34 ], [ %108, %363 ]
  %59 = phi ptr [ %4, %34 ], [ %369, %363 ]
  %60 = phi i32 [ 0, %34 ], [ %103, %363 ]
  %61 = phi i32 [ 0, %34 ], [ %102, %363 ]
  %62 = phi i32 [ %35, %34 ], [ %152, %363 ]
  %63 = ptrtoint ptr %59 to i64
  %64 = zext i32 %56 to i64
  %65 = icmp ugt i64 %3, %64
  %66 = icmp eq i32 %61, 0
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %373

68:                                               ; preds = %53
  %69 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %64
  %70 = load i32, ptr %69, align 4, !tbaa !4
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %72 = load i32, ptr %71, align 4, !tbaa !4
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %74 = load i32, ptr %73, align 4, !tbaa !4
  %75 = add i32 %74, %72
  %76 = icmp uge i32 %58, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = tail call i32 @llvm.usub.sat.i32(i32 %72, i32 %57)
  %79 = tail call i32 @llvm.usub.sat.i32(i32 %57, i32 %72)
  %80 = sub i32 %74, %79
  br label %101

81:                                               ; preds = %68
  %82 = icmp ugt i32 %58, %72
  br i1 %82, label %83, label %373

83:                                               ; preds = %81
  %84 = tail call i32 @llvm.usub.sat.i32(i32 %72, i32 %57)
  %85 = add i32 %57, %84
  %86 = sub i32 %58, %85
  %87 = zext i32 %74 to i64
  %88 = icmp ult i64 %5, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load i32, ptr %36, align 4, !tbaa !429
  %91 = icmp ult i32 %86, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = sub i32 %75, %58
  %94 = icmp ult i32 %93, %90
  %95 = sub nuw i32 %90, %93
  %96 = select i1 %94, i32 %95, i32 %60
  %97 = tail call i32 @llvm.usub.sat.i32(i32 %90, i32 %93)
  %98 = sub i32 %86, %97
  br label %101

99:                                               ; preds = %83, %89
  %100 = sub i32 %58, %72
  br label %373

101:                                              ; preds = %92, %77
  %102 = phi i32 [ 0, %77 ], [ 1, %92 ]
  %103 = phi i32 [ %60, %77 ], [ %96, %92 ]
  %104 = phi i32 [ %78, %77 ], [ %84, %92 ]
  %105 = phi i32 [ %80, %77 ], [ %98, %92 ]
  %106 = phi i32 [ %75, %77 ], [ %97, %92 ]
  %107 = phi i32 [ 0, %77 ], [ %57, %92 ]
  %108 = sub i32 %58, %106
  %109 = icmp eq i32 %104, 0
  %110 = zext i1 %109 to i32
  %111 = add i32 %70, 3
  %112 = icmp ne i32 %70, %62
  %113 = select i1 %109, i1 true, i1 %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %101
  %115 = icmp eq i32 %70, %55
  br i1 %115, label %116, label %118

116:                                              ; preds = %114
  %117 = select i1 %109, i32 1, i32 2
  br label %128

118:                                              ; preds = %114
  %119 = icmp eq i32 %70, %54
  br i1 %119, label %120, label %122

120:                                              ; preds = %118
  %121 = xor i32 %110, 3
  br label %128

122:                                              ; preds = %118
  %123 = add i32 %62, -1
  %124 = icmp eq i32 %70, %123
  %125 = select i1 %109, i1 %124, i1 false
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = icmp ugt i32 %111, 3
  br i1 %127, label %145, label %128

128:                                              ; preds = %122, %101, %120, %116, %126
  %129 = phi i32 [ %111, %126 ], [ %117, %116 ], [ 1, %101 ], [ %121, %120 ], [ 3, %122 ]
  %130 = xor i1 %109, true
  %131 = sext i1 %130 to i32
  %132 = add nsw i32 %129, %131
  switch i32 %132, label %135 [
    i32 0, label %149
    i32 3, label %133
  ]

133:                                              ; preds = %128
  %134 = add i32 %62, -1
  br label %141

135:                                              ; preds = %128
  %136 = icmp ugt i32 %132, 2
  br i1 %136, label %401, label %137

137:                                              ; preds = %135
  %138 = zext nneg i32 %132 to i64
  %139 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !4
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi i32 [ %134, %133 ], [ %140, %137 ]
  %143 = icmp eq i32 %132, 1
  %144 = select i1 %143, i32 %54, i32 %55
  br label %145

145:                                              ; preds = %126, %141
  %146 = phi i32 [ %144, %141 ], [ %55, %126 ]
  %147 = phi i32 [ %129, %141 ], [ %111, %126 ]
  %148 = phi i32 [ %142, %141 ], [ %70, %126 ]
  store i32 %146, ptr %38, align 4, !tbaa !4
  store i32 %62, ptr %37, align 4, !tbaa !4
  store i32 %148, ptr %8, align 4, !tbaa !4
  br label %149

149:                                              ; preds = %128, %145
  %150 = phi i32 [ %54, %128 ], [ %146, %145 ]
  %151 = phi i32 [ %55, %128 ], [ %62, %145 ]
  %152 = phi i32 [ %62, %128 ], [ %148, %145 ]
  %153 = phi i32 [ %129, %128 ], [ %147, %145 ]
  %154 = load i32, ptr %39, align 8, !tbaa !365
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %179, label %156

156:                                              ; preds = %149
  %157 = add i32 %105, %104
  %158 = zext i32 %157 to i64
  %159 = load i64, ptr %40, align 8, !tbaa !445
  %160 = add i64 %159, %158
  store i64 %160, ptr %40, align 8, !tbaa !445
  %161 = load i32, ptr %41, align 4, !tbaa !235
  %162 = shl nuw i32 1, %161
  %163 = zext i32 %162 to i64
  %164 = icmp ugt i64 %160, %163
  %165 = add i64 %160, %29
  %166 = select i1 %164, i64 %163, i64 %165
  %167 = zext i32 %153 to i64
  %168 = add i64 %166, 3
  %169 = icmp ult i64 %168, %167
  br i1 %169, label %399, label %170

170:                                              ; preds = %156
  %171 = load ptr, ptr %42, align 8, !tbaa !133
  %172 = icmp ne ptr %171, null
  %173 = load i32, ptr %36, align 4, !tbaa !429
  %174 = icmp eq i32 %173, 3
  %175 = or i1 %172, %174
  %176 = select i1 %175, i64 3, i64 4
  %177 = zext i32 %105 to i64
  %178 = icmp samesign ugt i64 %176, %177
  br i1 %178, label %399, label %179

179:                                              ; preds = %170, %149
  %180 = load i32, ptr %1, align 8, !tbaa !443
  %181 = sub i32 %56, %180
  %182 = zext i32 %181 to i64
  %183 = load i64, ptr %43, align 8, !tbaa !354
  %184 = icmp ugt i64 %183, %182
  br i1 %184, label %185, label %399

185:                                              ; preds = %179
  %186 = zext i32 %104 to i64
  %187 = zext i32 %105 to i64
  %188 = getelementptr inbounds nuw i8, ptr %59, i64 %186
  %189 = icmp ugt ptr %188, %45
  %190 = load ptr, ptr %46, align 8, !tbaa !192
  br i1 %189, label %213, label %191

191:                                              ; preds = %185
  %192 = load <2 x i64>, ptr %59, align 1, !tbaa !185
  store <2 x i64> %192, ptr %190, align 1, !tbaa !185
  %193 = icmp ugt i32 %104, 16
  br i1 %193, label %194, label %334

194:                                              ; preds = %191
  %195 = load ptr, ptr %46, align 8, !tbaa !192
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 16
  %197 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %198 = getelementptr i8, ptr %195, i64 %186
  %199 = load <2 x i64>, ptr %197, align 1, !tbaa !185
  store <2 x i64> %199, ptr %196, align 1, !tbaa !185
  %200 = icmp ult i32 %104, 33
  br i1 %200, label %334, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds nuw i8, ptr %195, i64 32
  br label %203

203:                                              ; preds = %203, %201
  %204 = phi ptr [ %202, %201 ], [ %211, %203 ]
  %205 = phi ptr [ %197, %201 ], [ %209, %203 ]
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 16
  %207 = load <2 x i64>, ptr %206, align 1, !tbaa !185
  store <2 x i64> %207, ptr %204, align 1, !tbaa !185
  %208 = getelementptr inbounds nuw i8, ptr %204, i64 16
  %209 = getelementptr inbounds nuw i8, ptr %205, i64 32
  %210 = load <2 x i64>, ptr %209, align 1, !tbaa !185
  store <2 x i64> %210, ptr %208, align 1, !tbaa !185
  %211 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %212 = icmp ult ptr %211, %198
  br i1 %212, label %203, label %338, !llvm.loop !446

213:                                              ; preds = %185
  %214 = icmp ugt ptr %59, %45
  br i1 %214, label %233, label %215

215:                                              ; preds = %213
  %216 = ptrtoint ptr %59 to i64
  %217 = sub i64 %47, %216
  %218 = getelementptr inbounds i8, ptr %190, i64 %217
  %219 = load <2 x i64>, ptr %59, align 1, !tbaa !185
  store <2 x i64> %219, ptr %190, align 1, !tbaa !185
  %220 = icmp ult i64 %217, 17
  br i1 %220, label %233, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds nuw i8, ptr %190, i64 16
  br label %223

223:                                              ; preds = %223, %221
  %224 = phi ptr [ %222, %221 ], [ %231, %223 ]
  %225 = phi ptr [ %59, %221 ], [ %229, %223 ]
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 16
  %227 = load <2 x i64>, ptr %226, align 1, !tbaa !185
  store <2 x i64> %227, ptr %224, align 1, !tbaa !185
  %228 = getelementptr inbounds nuw i8, ptr %224, i64 16
  %229 = getelementptr inbounds nuw i8, ptr %225, i64 32
  %230 = load <2 x i64>, ptr %229, align 1, !tbaa !185
  store <2 x i64> %230, ptr %228, align 1, !tbaa !185
  %231 = getelementptr inbounds nuw i8, ptr %224, i64 32
  %232 = icmp ult ptr %231, %218
  br i1 %232, label %223, label %233, !llvm.loop !446

233:                                              ; preds = %223, %215, %213
  %234 = phi ptr [ %59, %213 ], [ %45, %215 ], [ %45, %223 ]
  %235 = phi ptr [ %190, %213 ], [ %218, %215 ], [ %218, %223 ]
  %236 = icmp ult ptr %234, %188
  br i1 %236, label %237, label %338

237:                                              ; preds = %233
  %238 = ptrtoaddr ptr %234 to i64
  %239 = ptrtoaddr ptr %235 to i64
  %240 = ptrtoint ptr %234 to i64
  %241 = add i64 %63, %186
  %242 = sub i64 %241, %240
  %243 = icmp ult i64 %242, 4
  %244 = sub i64 %239, %238
  %245 = icmp ult i64 %244, 32
  %246 = select i1 %243, i1 true, i1 %245
  br i1 %246, label %282, label %247

247:                                              ; preds = %237
  %248 = icmp ult i64 %242, 32
  br i1 %248, label %268, label %249

249:                                              ; preds = %247
  %250 = and i64 %242, 28
  %251 = and i64 %242, -32
  %252 = getelementptr i8, ptr %235, i64 %251
  %253 = getelementptr i8, ptr %234, i64 %251
  br label %254

254:                                              ; preds = %254, %249
  %255 = phi i64 [ 0, %249 ], [ %262, %254 ]
  %256 = getelementptr i8, ptr %235, i64 %255
  %257 = getelementptr i8, ptr %234, i64 %255
  %258 = getelementptr i8, ptr %257, i64 16
  %259 = load <16 x i8>, ptr %257, align 1, !tbaa !185
  %260 = load <16 x i8>, ptr %258, align 1, !tbaa !185
  %261 = getelementptr i8, ptr %256, i64 16
  store <16 x i8> %259, ptr %256, align 1, !tbaa !185
  store <16 x i8> %260, ptr %261, align 1, !tbaa !185
  %262 = add nuw i64 %255, 32
  %263 = icmp eq i64 %262, %251
  br i1 %263, label %264, label %254, !llvm.loop !471

264:                                              ; preds = %254
  %265 = icmp eq i64 %242, %251
  br i1 %265, label %338, label %266

266:                                              ; preds = %264
  %267 = icmp eq i64 %250, 0
  br i1 %267, label %282, label %268, !prof !448

268:                                              ; preds = %247, %266
  %269 = phi i64 [ %251, %266 ], [ 0, %247 ]
  %270 = and i64 %242, -4
  %271 = getelementptr i8, ptr %235, i64 %270
  %272 = getelementptr i8, ptr %234, i64 %270
  br label %273

273:                                              ; preds = %273, %268
  %274 = phi i64 [ %269, %268 ], [ %278, %273 ]
  %275 = getelementptr i8, ptr %235, i64 %274
  %276 = getelementptr i8, ptr %234, i64 %274
  %277 = load <4 x i8>, ptr %276, align 1, !tbaa !185
  store <4 x i8> %277, ptr %275, align 1, !tbaa !185
  %278 = add nuw i64 %274, 4
  %279 = icmp eq i64 %278, %270
  br i1 %279, label %280, label %273, !llvm.loop !472

280:                                              ; preds = %273
  %281 = icmp eq i64 %242, %270
  br i1 %281, label %338, label %282

282:                                              ; preds = %237, %266, %280
  %283 = phi ptr [ %235, %237 ], [ %252, %266 ], [ %271, %280 ]
  %284 = phi ptr [ %234, %237 ], [ %253, %266 ], [ %272, %280 ]
  %285 = add i64 %63, %186
  %286 = ptrtoint ptr %284 to i64
  %287 = sub i64 %285, %286
  %288 = add i64 %63, -1
  %289 = add i64 %288, %186
  %290 = sub i64 %289, %286
  %291 = and i64 %287, 7
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %302, label %293

293:                                              ; preds = %282, %293
  %294 = phi ptr [ %299, %293 ], [ %283, %282 ]
  %295 = phi ptr [ %297, %293 ], [ %284, %282 ]
  %296 = phi i64 [ %300, %293 ], [ 0, %282 ]
  %297 = getelementptr inbounds nuw i8, ptr %295, i64 1
  %298 = load i8, ptr %295, align 1, !tbaa !185
  %299 = getelementptr inbounds nuw i8, ptr %294, i64 1
  store i8 %298, ptr %294, align 1, !tbaa !185
  %300 = add i64 %296, 1
  %301 = icmp eq i64 %300, %291
  br i1 %301, label %302, label %293, !llvm.loop !473

302:                                              ; preds = %293, %282
  %303 = phi ptr [ %283, %282 ], [ %299, %293 ]
  %304 = phi ptr [ %284, %282 ], [ %297, %293 ]
  %305 = icmp ult i64 %290, 7
  br i1 %305, label %338, label %306

306:                                              ; preds = %302, %306
  %307 = phi ptr [ %332, %306 ], [ %303, %302 ]
  %308 = phi ptr [ %330, %306 ], [ %304, %302 ]
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 1
  %310 = load i8, ptr %308, align 1, !tbaa !185
  %311 = getelementptr inbounds nuw i8, ptr %307, i64 1
  store i8 %310, ptr %307, align 1, !tbaa !185
  %312 = getelementptr inbounds nuw i8, ptr %308, i64 2
  %313 = load i8, ptr %309, align 1, !tbaa !185
  %314 = getelementptr inbounds nuw i8, ptr %307, i64 2
  store i8 %313, ptr %311, align 1, !tbaa !185
  %315 = getelementptr inbounds nuw i8, ptr %308, i64 3
  %316 = load i8, ptr %312, align 1, !tbaa !185
  %317 = getelementptr inbounds nuw i8, ptr %307, i64 3
  store i8 %316, ptr %314, align 1, !tbaa !185
  %318 = getelementptr inbounds nuw i8, ptr %308, i64 4
  %319 = load i8, ptr %315, align 1, !tbaa !185
  %320 = getelementptr inbounds nuw i8, ptr %307, i64 4
  store i8 %319, ptr %317, align 1, !tbaa !185
  %321 = getelementptr inbounds nuw i8, ptr %308, i64 5
  %322 = load i8, ptr %318, align 1, !tbaa !185
  %323 = getelementptr inbounds nuw i8, ptr %307, i64 5
  store i8 %322, ptr %320, align 1, !tbaa !185
  %324 = getelementptr inbounds nuw i8, ptr %308, i64 6
  %325 = load i8, ptr %321, align 1, !tbaa !185
  %326 = getelementptr inbounds nuw i8, ptr %307, i64 6
  store i8 %325, ptr %323, align 1, !tbaa !185
  %327 = getelementptr inbounds nuw i8, ptr %308, i64 7
  %328 = load i8, ptr %324, align 1, !tbaa !185
  %329 = getelementptr inbounds nuw i8, ptr %307, i64 7
  store i8 %328, ptr %326, align 1, !tbaa !185
  %330 = getelementptr inbounds nuw i8, ptr %308, i64 8
  %331 = load i8, ptr %327, align 1, !tbaa !185
  %332 = getelementptr inbounds nuw i8, ptr %307, i64 8
  store i8 %331, ptr %329, align 1, !tbaa !185
  %333 = icmp eq ptr %330, %188
  br i1 %333, label %338, label %306, !llvm.loop !474

334:                                              ; preds = %194, %191
  %335 = load ptr, ptr %46, align 8, !tbaa !192
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 %186
  store ptr %336, ptr %46, align 8, !tbaa !192
  %337 = load ptr, ptr %49, align 8, !tbaa !179
  br label %350

338:                                              ; preds = %203, %302, %306, %264, %280, %233
  %339 = load ptr, ptr %46, align 8, !tbaa !192
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 %186
  store ptr %340, ptr %46, align 8, !tbaa !192
  %341 = icmp ugt i32 %104, 65535
  %342 = load ptr, ptr %49, align 8, !tbaa !179
  br i1 %341, label %343, label %350, !prof !452

343:                                              ; preds = %338
  store i32 1, ptr %48, align 8, !tbaa !187
  %344 = load ptr, ptr %44, align 8, !tbaa !175
  %345 = ptrtoint ptr %342 to i64
  %346 = ptrtoint ptr %344 to i64
  %347 = sub i64 %345, %346
  %348 = lshr exact i64 %347, 3
  %349 = trunc i64 %348 to i32
  store i32 %349, ptr %50, align 4, !tbaa !188
  br label %350

350:                                              ; preds = %334, %343, %338
  %351 = phi ptr [ %337, %334 ], [ %342, %343 ], [ %342, %338 ]
  %352 = trunc i32 %104 to i16
  %353 = getelementptr inbounds nuw i8, ptr %351, i64 4
  store i16 %352, ptr %353, align 4, !tbaa !180
  store i32 %153, ptr %351, align 4, !tbaa !183
  %354 = add nsw i64 %187, -3
  %355 = icmp ugt i64 %354, 65535
  br i1 %355, label %356, label %363, !prof !352

356:                                              ; preds = %350
  store i32 2, ptr %48, align 8, !tbaa !187
  %357 = load ptr, ptr %44, align 8, !tbaa !175
  %358 = ptrtoint ptr %351 to i64
  %359 = ptrtoint ptr %357 to i64
  %360 = sub i64 %358, %359
  %361 = lshr exact i64 %360, 3
  %362 = trunc i64 %361 to i32
  store i32 %362, ptr %50, align 4, !tbaa !188
  br label %363

363:                                              ; preds = %356, %350
  %364 = trunc i64 %354 to i16
  %365 = getelementptr inbounds nuw i8, ptr %351, i64 6
  store i16 %364, ptr %365, align 2, !tbaa !184
  %366 = getelementptr inbounds nuw i8, ptr %351, i64 8
  store ptr %366, ptr %49, align 8, !tbaa !179
  %367 = add i32 %105, %104
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds nuw i8, ptr %59, i64 %368
  %370 = zext i1 %76 to i32
  %371 = add i32 %56, %370
  %372 = icmp eq i32 %108, 0
  br i1 %372, label %373, label %53

373:                                              ; preds = %53, %363, %81, %28, %99
  %374 = phi ptr [ %59, %99 ], [ %4, %28 ], [ %59, %53 ], [ %369, %363 ], [ %59, %81 ]
  %375 = phi i32 [ %56, %99 ], [ %9, %28 ], [ %56, %53 ], [ %371, %363 ], [ %56, %81 ]
  %376 = phi i32 [ %100, %99 ], [ 0, %28 ], [ %60, %53 ], [ %103, %363 ], [ %60, %81 ]
  %377 = phi i32 [ %72, %99 ], [ 0, %28 ], [ %58, %53 ], [ 0, %363 ], [ %58, %81 ]
  store i32 %375, ptr %1, align 8, !tbaa !443
  store i32 %377, ptr %10, align 4, !tbaa !470
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %379 = load ptr, ptr %378, align 8, !tbaa !56
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %380, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false)
  %381 = zext i32 %376 to i64
  %382 = sub nsw i64 0, %381
  %383 = getelementptr inbounds i8, ptr %14, i64 %382
  %384 = icmp eq ptr %374, %383
  br i1 %384, label %397, label %385

385:                                              ; preds = %373
  %386 = ptrtoint ptr %383 to i64
  %387 = ptrtoint ptr %374 to i64
  %388 = sub i64 %386, %387
  %389 = and i64 %388, 4294967295
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %391 = load ptr, ptr %390, align 8, !tbaa !192
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %391, ptr readonly align 1 %374, i64 %389, i1 false)
  %392 = load ptr, ptr %390, align 8, !tbaa !192
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 %389
  store ptr %393, ptr %390, align 8, !tbaa !192
  %394 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %395 = load i64, ptr %394, align 8, !tbaa !445
  %396 = add i64 %395, %389
  store i64 %396, ptr %394, align 8, !tbaa !445
  br label %397

397:                                              ; preds = %385, %373
  %398 = sub nsw i64 %5, %381
  br label %399

399:                                              ; preds = %179, %156, %170, %397
  %400 = phi i64 [ %398, %397 ], [ -107, %170 ], [ -107, %156 ], [ -107, %179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret i64 %400

401:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 59) #37, !nosanitize !130
  unreachable, !nosanitize !130
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #30

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind memory(argmem: write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind memory(none) }
attributes #34 = { nounwind }
attributes #35 = { nounwind allocsize(0) }
attributes #36 = { nounwind allocsize(0,1) }
attributes #37 = { nomerge noreturn nounwind }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }

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
!8 = !{i64 1850541}
!9 = !{i64 1850639}
!10 = !{i64 1850753}
!11 = !{!12, !5, i64 8}
!12 = !{!"ZSTD_CCtx_s", !5, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !13, i64 240, !13, i64 464, !5, i64 688, !16, i64 696, !20, i64 704, !16, i64 776, !21, i64 784, !21, i64 792, !21, i64 800, !22, i64 808, !18, i64 896, !23, i64 920, !16, i64 928, !24, i64 936, !5, i64 968, !5, i64 972, !25, i64 976, !28, i64 1056, !19, i64 3168, !16, i64 3176, !30, i64 3184, !31, i64 3224, !19, i64 3544, !16, i64 3552, !5, i64 3560, !27, i64 3568, !16, i64 3576, !16, i64 3584, !16, i64 3592, !16, i64 3600, !27, i64 3608, !16, i64 3616, !16, i64 3624, !16, i64 3632, !5, i64 3640, !5, i64 3644, !36, i64 3648, !16, i64 3672, !16, i64 3680, !37, i64 3688, !38, i64 3728, !39, i64 3736, !21, i64 3760, !40, i64 3768, !19, i64 5264, !16, i64 5272}
!13 = !{!"ZSTD_CCtx_params_s", !5, i64 0, !14, i64 4, !15, i64 32, !5, i64 44, !5, i64 48, !16, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !16, i64 80, !5, i64 88, !5, i64 92, !17, i64 96, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !16, i64 152, !5, i64 160, !5, i64 164, !18, i64 168, !5, i64 192, !5, i64 196, !19, i64 200, !19, i64 208, !5, i64 216}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!16 = !{!"long", !6, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!18 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !6, i64 56, !5, i64 60, !5, i64 64, !5, i64 68}
!21 = !{!"long long", !6, i64 0}
!22 = !{!"XXH64_state_s", !16, i64 0, !6, i64 8, !6, i64 40, !5, i64 72, !5, i64 76, !16, i64 80}
!23 = !{!"p1 _ZTS10POOL_ctx_s", !19, i64 0}
!24 = !{!"", !5, i64 0, !19, i64 8, !16, i64 16, !16, i64 24}
!25 = !{!"", !26, i64 0, !26, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !16, i64 56, !16, i64 64, !5, i64 72, !5, i64 76}
!26 = !{!"p1 _ZTS8SeqDef_s", !19, i64 0}
!27 = !{!"p1 omnipotent char", !19, i64 0}
!28 = !{!"", !29, i64 0, !19, i64 40, !5, i64 48, !27, i64 56, !6, i64 64, !6, i64 576}
!29 = !{!"", !27, i64 0, !27, i64 8, !27, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!30 = !{!"", !19, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!31 = !{!"", !19, i64 0, !19, i64 8, !32, i64 16}
!32 = !{!"ZSTD_MatchState_t", !29, i64 0, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !27, i64 56, !6, i64 64, !16, i64 96, !5, i64 104, !33, i64 112, !33, i64 120, !33, i64 128, !5, i64 136, !5, i64 140, !34, i64 144, !35, i64 248, !14, i64 256, !19, i64 288, !5, i64 296, !5, i64 300}
!33 = !{!"p1 int", !19, i64 0}
!34 = !{!"", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !19, i64 32, !19, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !19, i64 88, !5, i64 96}
!35 = !{!"p1 _ZTS17ZSTD_MatchState_t", !19, i64 0}
!36 = !{!"ZSTD_inBuffer_s", !19, i64 0, !16, i64 8, !16, i64 16}
!37 = !{!"", !19, i64 0, !19, i64 8, !16, i64 16, !5, i64 24, !38, i64 32}
!38 = !{!"p1 _ZTS12ZSTD_CDict_s", !19, i64 0}
!39 = !{!"ZSTD_prefixDict_s", !19, i64 0, !16, i64 8, !5, i64 16}
!40 = !{!"", !25, i64 0, !25, i64 80, !25, i64 160, !25, i64 240, !25, i64 320, !6, i64 400, !41, i64 1184}
!41 = !{!"", !42, i64 0, !43, i64 144}
!42 = !{!"", !5, i64 0, !6, i64 4, !16, i64 136}
!43 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !16, i64 152, !16, i64 160}
!44 = !{!13, !5, i64 44}
!45 = !{!13, !5, i64 32}
!46 = !{!18, !19, i64 0}
!47 = !{!18, !19, i64 8}
!48 = distinct !{null}
!49 = !{!19, !19, i64 0}
!50 = !{!12, !16, i64 928}
!51 = !{!20, !6, i64 56}
!52 = !{!20, !19, i64 16}
!53 = !{!20, !19, i64 24}
!54 = !{!20, !19, i64 32}
!55 = !{!12, !19, i64 3224}
!56 = !{!12, !19, i64 3232}
!57 = !{!12, !19, i64 3544}
!58 = !{!12, !16, i64 3552}
!59 = !{!20, !19, i64 0}
!60 = !{!20, !19, i64 8}
!61 = distinct !{null, null, null}
!62 = distinct !{null}
!63 = !{!12, !19, i64 704}
!64 = !{!65, !19, i64 32}
!65 = !{!"ZSTD_CDict_s", !19, i64 0, !16, i64 8, !5, i64 16, !33, i64 24, !20, i64 32, !32, i64 104, !66, i64 408, !18, i64 6040, !5, i64 6064, !5, i64 6068, !5, i64 6072}
!66 = !{!"", !67, i64 0, !6, i64 5616}
!67 = !{!"", !68, i64 0, !69, i64 2064}
!68 = !{!"", !6, i64 0, !5, i64 2056}
!69 = !{!"", !6, i64 0, !6, i64 772, !6, i64 2224, !5, i64 3540, !5, i64 3544, !5, i64 3548}
!70 = !{!14, !5, i64 0}
!71 = !{!14, !5, i64 4}
!72 = !{!14, !5, i64 8}
!73 = !{!14, !5, i64 12}
!74 = !{!14, !5, i64 16}
!75 = !{!14, !5, i64 24}
!76 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4, i64 24, i64 4, !4}
!77 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!78 = !{!13, !5, i64 160}
!79 = !{!13, !5, i64 140}
!80 = !{!13, !5, i64 96}
!81 = !{!13, !16, i64 152}
!82 = !{!13, !5, i64 216}
!83 = !{!12, !5, i64 3640}
!84 = !{!12, !5, i64 4}
!85 = !{!13, !5, i64 0}
!86 = !{!13, !5, i64 4}
!87 = !{!13, !5, i64 12}
!88 = !{!13, !5, i64 8}
!89 = !{!13, !5, i64 16}
!90 = !{!13, !5, i64 20}
!91 = !{!13, !5, i64 24}
!92 = !{!13, !5, i64 28}
!93 = !{!13, !5, i64 36}
!94 = !{!13, !5, i64 40}
!95 = !{!13, !5, i64 48}
!96 = !{!13, !5, i64 68}
!97 = !{!13, !5, i64 72}
!98 = !{!13, !5, i64 120}
!99 = !{!13, !5, i64 100}
!100 = !{!13, !5, i64 108}
!101 = !{!13, !5, i64 104}
!102 = !{!13, !5, i64 112}
!103 = !{!13, !16, i64 56}
!104 = !{!13, !5, i64 64}
!105 = !{!13, !5, i64 124}
!106 = !{!13, !5, i64 128}
!107 = !{!13, !5, i64 132}
!108 = !{!13, !5, i64 136}
!109 = !{!13, !5, i64 144}
!110 = !{!13, !5, i64 164}
!111 = !{!13, !5, i64 192}
!112 = !{!13, !5, i64 196}
!113 = !{!13, !5, i64 76}
!114 = !{!12, !38, i64 3728}
!115 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4, i64 24, i64 4, !4, i64 28, i64 4, !4, i64 32, i64 4, !4, i64 36, i64 4, !4, i64 40, i64 4, !4, i64 44, i64 4, !4, i64 48, i64 4, !4, i64 56, i64 8, !116, i64 64, i64 4, !4, i64 68, i64 4, !4, i64 72, i64 4, !4, i64 76, i64 4, !4, i64 80, i64 8, !116, i64 88, i64 4, !4, i64 92, i64 4, !4, i64 96, i64 4, !4, i64 100, i64 4, !4, i64 104, i64 4, !4, i64 108, i64 4, !4, i64 112, i64 4, !4, i64 116, i64 4, !4, i64 120, i64 4, !4, i64 124, i64 4, !4, i64 128, i64 4, !4, i64 132, i64 4, !4, i64 136, i64 4, !4, i64 140, i64 4, !4, i64 144, i64 4, !4, i64 152, i64 8, !116, i64 160, i64 4, !4, i64 164, i64 4, !4, i64 168, i64 8, !49, i64 176, i64 8, !49, i64 184, i64 8, !49, i64 192, i64 4, !4, i64 196, i64 4, !4, i64 200, i64 8, !49, i64 208, i64 8, !49, i64 216, i64 4, !4}
!116 = !{!16, !16, i64 0}
!117 = !{!12, !21, i64 784}
!118 = !{!12, !19, i64 3688}
!119 = !{!12, !19, i64 3696}
!120 = !{!12, !16, i64 3704}
!121 = !{!12, !5, i64 3712}
!122 = !{!12, !38, i64 3720}
!123 = distinct !{ptr @ZSTD_freeCDict, null, null}
!124 = distinct !{ptr @ZSTD_freeCDict, null}
!125 = distinct !{ptr @ZSTD_CCtx_loadDictionary_advanced, null}
!126 = !{!12, !23, i64 920}
!127 = !{!12, !19, i64 3736}
!128 = !{!12, !16, i64 3744}
!129 = !{!12, !5, i64 3752}
!130 = !{}
!131 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4}
!132 = !{!17, !5, i64 0}
!133 = !{!13, !19, i64 208}
!134 = !{!135}
!135 = distinct !{!135, !136, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!136 = distinct !{!136, !"ZSTD_makeCCtxParamsFromCParams"}
!137 = distinct !{!137, !138}
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!141 = distinct !{!141, !"ZSTD_makeCCtxParamsFromCParams"}
!142 = distinct !{!142, !138}
!143 = !{!12, !27, i64 3568}
!144 = !{!12, !16, i64 3592}
!145 = !{!12, !16, i64 3584}
!146 = !{!12, !21, i64 792}
!147 = !{!148, !21, i64 0}
!148 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !5, i64 32, !5, i64 36}
!149 = !{!148, !21, i64 8}
!150 = !{!12, !21, i64 800}
!151 = !{!148, !21, i64 16}
!152 = !{!148, !21, i64 24}
!153 = !{!148, !5, i64 32}
!154 = !{!148, !5, i64 36}
!155 = !{!66, !5, i64 2056}
!156 = !{!66, !5, i64 5604}
!157 = !{!66, !5, i64 5608}
!158 = !{!66, !5, i64 5612}
!159 = !{!12, !5, i64 0}
!160 = !{!12, !5, i64 3560}
!161 = !{!12, !5, i64 400}
!162 = !{!12, !5, i64 380}
!163 = !{!12, !16, i64 392}
!164 = !{!12, !5, i64 268}
!165 = !{!12, !5, i64 248}
!166 = !{!12, !5, i64 252}
!167 = !{!12, !5, i64 3288}
!168 = !{!12, !33, i64 3352}
!169 = !{!12, !33, i64 3368}
!170 = !{!12, !33, i64 3360}
!171 = !{i64 0, i64 8, !172, i64 8, i64 8, !172, i64 16, i64 8, !172, i64 24, i64 4, !4, i64 28, i64 4, !4, i64 32, i64 4, !4}
!172 = !{!27, !27, i64 0}
!173 = !{!12, !5, i64 688}
!174 = !{!12, !16, i64 696}
!175 = !{!25, !26, i64 0}
!176 = !{!25, !27, i64 32}
!177 = !{!25, !27, i64 48}
!178 = !{!25, !27, i64 40}
!179 = !{!25, !26, i64 8}
!180 = !{!181, !182, i64 4}
!181 = !{!"SeqDef_s", !5, i64 0, !182, i64 4, !182, i64 6}
!182 = !{!"short", !6, i64 0}
!183 = !{!181, !5, i64 0}
!184 = !{!181, !182, i64 6}
!185 = !{!6, !6, i64 0}
!186 = distinct !{!186, !138}
!187 = !{!25, !5, i64 72}
!188 = !{!25, !5, i64 76}
!189 = !{!"branch_weights", i32 8191, i32 -8192}
!190 = !{!"branch_weights", i32 -8192, i32 8191}
!191 = !{!25, !27, i64 16}
!192 = !{!25, !27, i64 24}
!193 = !{!194, !19, i64 0}
!194 = !{!"ZSTD_outBuffer_s", !19, i64 0, !16, i64 8, !16, i64 16}
!195 = !{!194, !16, i64 8}
!196 = !{!194, !16, i64 16}
!197 = !{!36, !19, i64 0}
!198 = !{!36, !16, i64 8}
!199 = !{!36, !16, i64 16}
!200 = !{!12, !5, i64 140}
!201 = !{!12, !5, i64 144}
!202 = !{!12, !16, i64 952}
!203 = !{!204, !5, i64 0}
!204 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!205 = !{!204, !5, i64 8}
!206 = !{!204, !5, i64 4}
!207 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4}
!208 = distinct !{!208, !138, !209}
!209 = !{!"llvm.loop.peeled.count", i32 1}
!210 = !{!68, !5, i64 2056}
!211 = !{!42, !5, i64 0}
!212 = !{!41, !16, i64 136}
!213 = !{!69, !5, i64 3548}
!214 = !{!215}
!215 = distinct !{!215, !216, !"ZSTD_buildDummySequencesStatistics: argument 0"}
!216 = distinct !{!216, !"ZSTD_buildDummySequencesStatistics"}
!217 = !{!69, !5, i64 3540}
!218 = !{!69, !5, i64 3544}
!219 = !{!43, !5, i64 8}
!220 = !{!43, !16, i64 160}
!221 = !{!41, !16, i64 296}
!222 = !{!182, !182, i64 0}
!223 = !{!12, !19, i64 3184}
!224 = !{!12, !16, i64 3208}
!225 = !{!12, !16, i64 3216}
!226 = !{!32, !5, i64 136}
!227 = !{!29, !27, i64 0}
!228 = !{!29, !27, i64 16}
!229 = !{!29, !5, i64 28}
!230 = !{!29, !5, i64 24}
!231 = !{!29, !27, i64 8}
!232 = !{!32, !5, i64 44}
!233 = !{!12, !5, i64 336}
!234 = !{!12, !16, i64 776}
!235 = !{!12, !5, i64 244}
!236 = !{!12, !5, i64 276}
!237 = !{!12, !5, i64 384}
!238 = !{!"branch_weights", i32 1048575, i32 1}
!239 = !{!35, !35, i64 0}
!240 = !{!32, !5, i64 28}
!241 = !{!12, !5, i64 968}
!242 = !{!12, !5, i64 936}
!243 = !{!12, !26, i64 984}
!244 = !{!12, !26, i64 976}
!245 = !{!246, !33, i64 0}
!246 = !{!"", !33, i64 0, !16, i64 8}
!247 = !{!246, !16, i64 8}
!248 = !{i64 0, i64 8, !249, i64 8, i64 8, !249, i64 16, i64 8, !172, i64 24, i64 8, !172, i64 32, i64 8, !172, i64 40, i64 8, !172, i64 48, i64 8, !172, i64 56, i64 8, !116, i64 64, i64 8, !116, i64 72, i64 4, !4, i64 76, i64 4, !4}
!249 = !{!26, !26, i64 0}
!250 = distinct !{!250, !138}
!251 = distinct !{!251, !138}
!252 = distinct !{!252, !138}
!253 = distinct !{!253, !138}
!254 = distinct !{!254, !138, !255, !256}
!255 = !{!"llvm.loop.unroll.runtime.disable"}
!256 = !{!"llvm.loop.isvectorized", i32 1}
!257 = !{!65, !16, i64 8}
!258 = !{!12, !21, i64 3760}
!259 = !{!65, !5, i64 6068}
!260 = !{!65, !5, i64 384}
!261 = !{!65, !5, i64 244}
!262 = !{!65, !5, i64 6072}
!263 = !{!65, !27, i64 104}
!264 = !{!65, !27, i64 112}
!265 = !{!65, !5, i64 128}
!266 = !{!12, !35, i64 3488}
!267 = !{!12, !5, i64 3264}
!268 = !{!12, !27, i64 3248}
!269 = !{!12, !27, i64 3240}
!270 = !{!12, !5, i64 3280}
!271 = !{!65, !5, i64 6064}
!272 = !{!65, !33, i64 216}
!273 = distinct !{!273, !138, !256, !255}
!274 = distinct !{!274, !138, !256}
!275 = distinct !{!275, !276}
!276 = !{!"llvm.loop.unroll.disable"}
!277 = !{!65, !33, i64 232}
!278 = distinct !{!278, !138, !256, !255}
!279 = distinct !{!279, !276}
!280 = distinct !{!280, !138, !256}
!281 = !{!12, !27, i64 3296}
!282 = !{!65, !27, i64 160}
!283 = !{!65, !16, i64 200}
!284 = !{!12, !16, i64 3336}
!285 = !{!65, !19, i64 0}
!286 = !{!65, !5, i64 16}
!287 = !{!288}
!288 = distinct !{!288, !289, !"ZSTD_getParams_internal: argument 0"}
!289 = distinct !{!289, !"ZSTD_getParams_internal"}
!290 = !{!12, !16, i64 3576}
!291 = !{!12, !16, i64 3616}
!292 = !{!12, !5, i64 316}
!293 = !{!294, !5, i64 0}
!294 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !16, i64 16, !16, i64 24, !16, i64 32, !295, i64 40, !296, i64 48, !297, i64 56}
!295 = !{!"p1 _ZTS18ZSTD_CCtx_params_s", !19, i64 0}
!296 = !{!"p1 _ZTS11ZSTD_CCtx_s", !19, i64 0}
!297 = !{!"p1 _ZTS11ZSTD_DCtx_s", !19, i64 0}
!298 = !{!294, !5, i64 4}
!299 = !{!294, !5, i64 8}
!300 = !{!294, !16, i64 16}
!301 = !{!294, !16, i64 24}
!302 = !{!294, !16, i64 32}
!303 = !{!294, !295, i64 40}
!304 = !{!294, !296, i64 48}
!305 = !{!306}
!306 = distinct !{!306, !307, !"ZSTD_getParams_internal: argument 0"}
!307 = distinct !{!307, !"ZSTD_getParams_internal"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"ZSTD_getParams_internal: argument 0"}
!310 = distinct !{!310, !"ZSTD_getParams_internal"}
!311 = distinct !{ptr @ZSTD_clearAllDicts, null}
!312 = distinct !{ptr @ZSTD_clearAllDicts, ptr @ZSTD_freeCDict, null, null}
!313 = distinct !{ptr @ZSTD_clearAllDicts, ptr @ZSTD_freeCDict, null}
!314 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 8, !49}
!315 = !{!316}
!316 = distinct !{!316, !317, !"ZSTD_dedicatedDictSearch_getCParams: argument 0"}
!317 = distinct !{!317, !"ZSTD_dedicatedDictSearch_getCParams"}
!318 = distinct !{null, null}
!319 = !{!20, !5, i64 64}
!320 = !{!65, !33, i64 24}
!321 = distinct !{null, null}
!322 = distinct !{ptr @ZSTD_createCCtx_advanced, null}
!323 = distinct !{ptr @ZSTD_freeCCtx, null, null, null}
!324 = distinct !{ptr @ZSTD_freeCCtx, null}
!325 = distinct !{ptr @ZSTD_CCtx_loadDictionary, ptr @ZSTD_CCtx_loadDictionary_advanced, null}
!326 = !{!12, !5, i64 364}
!327 = !{!12, !16, i64 3672}
!328 = !{!12, !16, i64 3600}
!329 = !{!12, !19, i64 3648}
!330 = !{!12, !16, i64 3656}
!331 = !{i64 0, i64 8, !49, i64 8, i64 8, !116, i64 16, i64 8, !116}
!332 = !{!12, !5, i64 16}
!333 = !{!12, !5, i64 368}
!334 = !{!12, !16, i64 3680}
!335 = distinct !{!335, !138}
!336 = !{!12, !16, i64 3624}
!337 = !{!12, !16, i64 3632}
!338 = !{!12, !5, i64 3644}
!339 = !{!12, !27, i64 3608}
!340 = !{!37, !19, i64 8}
!341 = !{!37, !38, i64 32}
!342 = !{!37, !16, i64 16}
!343 = !{!37, !5, i64 24}
!344 = !{!12, !5, i64 372}
!345 = distinct !{!345, !138}
!346 = !{!12, !5, i64 456}
!347 = !{ptr @ZSTD_transferSequences_noDelim, ptr @ZSTD_transferSequences_wBlockDelim}
!348 = distinct !{null}
!349 = distinct !{!349, !138}
!350 = !{!31, !19, i64 0}
!351 = !{!31, !19, i64 8}
!352 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!353 = distinct !{!353, !138}
!354 = !{!12, !16, i64 1032}
!355 = !{!12, !5, i64 1048}
!356 = !{!12, !5, i64 1052}
!357 = !{!"branch_weights", !"expected", i32 1125985, i32 2146357663}
!358 = distinct !{!358, !138}
!359 = distinct !{!359, !138}
!360 = distinct !{!360, !138}
!361 = !{!362, !16, i64 0}
!362 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!363 = !{!362, !16, i64 16}
!364 = !{!362, !16, i64 8}
!365 = !{!12, !5, i64 376}
!366 = !{!367}
!367 = distinct !{!367, !368, !"ZSTD_get1BlockSummary: argument 0"}
!368 = distinct !{!368, !"ZSTD_get1BlockSummary"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"inBuffer_forEndFlush: argument 0"}
!371 = distinct !{!371, !"inBuffer_forEndFlush"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"inBuffer_forEndFlush: argument 0"}
!374 = distinct !{!374, !"inBuffer_forEndFlush"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"ZSTD_getParams_internal: argument 0"}
!377 = distinct !{!377, !"ZSTD_getParams_internal"}
!378 = !{!379, !5, i64 28}
!379 = !{!"", !14, i64 0, !15, i64 28}
!380 = !{!13, !19, i64 200}
!381 = !{!12, !5, i64 972}
!382 = !{!20, !5, i64 60}
!383 = !{!20, !19, i64 40}
!384 = distinct !{null, null}
!385 = !{!20, !19, i64 48}
!386 = !{!20, !5, i64 68}
!387 = !{!12, !5, i64 3536}
!388 = !{!12, !5, i64 272}
!389 = !{!12, !19, i64 1096}
!390 = !{!12, !19, i64 3168}
!391 = !{!12, !16, i64 3176}
!392 = !{!12, !5, i64 1104}
!393 = !{!12, !16, i64 5272}
!394 = !{!12, !19, i64 5264}
!395 = !{!12, !27, i64 992}
!396 = !{!12, !16, i64 1040}
!397 = !{!12, !27, i64 1112}
!398 = !{!12, !27, i64 1008}
!399 = !{!12, !27, i64 1016}
!400 = !{!12, !27, i64 1024}
!401 = !{!32, !5, i64 140}
!402 = !{!32, !5, i64 48}
!403 = !{!32, !5, i64 300}
!404 = !{!32, !5, i64 40}
!405 = !{!32, !5, i64 196}
!406 = !{!32, !35, i64 248}
!407 = !{!32, !33, i64 112}
!408 = !{!32, !33, i64 128}
!409 = !{!32, !33, i64 120}
!410 = !{!32, !27, i64 56}
!411 = !{!32, !16, i64 96}
!412 = !{!32, !5, i64 104}
!413 = !{!32, !5, i64 52}
!414 = !{!32, !33, i64 144}
!415 = !{!32, !33, i64 152}
!416 = !{!32, !33, i64 160}
!417 = !{!32, !33, i64 168}
!418 = !{!32, !19, i64 176}
!419 = !{!32, !19, i64 184}
!420 = !{!421, !16, i64 24}
!421 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !16, i64 16, !16, i64 24, !5, i64 32}
!422 = !{!421, !5, i64 32}
!423 = !{!421, !5, i64 0}
!424 = !{!421, !16, i64 16}
!425 = !{!421, !5, i64 4}
!426 = !{!421, !5, i64 8}
!427 = !{!29, !5, i64 32}
!428 = distinct !{!428, !138}
!429 = !{!12, !5, i64 260}
!430 = !{!32, !19, i64 232}
!431 = !{!12, !5, i64 312}
!432 = !{!32, !5, i64 240}
!433 = !{!32, !27, i64 8}
!434 = !{!12, !16, i64 3192}
!435 = !{!30, !19, i64 0}
!436 = !{!30, !16, i64 32}
!437 = !{!12, !19, i64 440}
!438 = !{!12, !5, i64 284}
!439 = distinct !{!439, !138}
!440 = distinct !{!440, !276}
!441 = !{!32, !19, i64 288}
!442 = !{!12, !5, i64 436}
!443 = !{!444, !5, i64 0}
!444 = !{!"", !5, i64 0, !5, i64 4, !16, i64 8}
!445 = !{!444, !16, i64 8}
!446 = distinct !{!446, !138}
!447 = distinct !{!447, !138, !256, !255}
!448 = !{!"branch_weights", i32 4, i32 28}
!449 = distinct !{!449, !138, !256, !255}
!450 = distinct !{!450, !276}
!451 = distinct !{!451, !138, !256}
!452 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!453 = distinct !{!453, !138}
!454 = distinct !{!454, !138}
!455 = !{i64 0, i64 12, !185}
!456 = distinct !{!456, !138}
!457 = !{!41, !5, i64 0}
!458 = !{!42, !16, i64 136}
!459 = !{!43, !5, i64 4}
!460 = distinct !{!460, !138}
!461 = !{!43, !5, i64 0}
!462 = !{!43, !16, i64 152}
!463 = !{!24, !16, i64 16}
!464 = !{!24, !19, i64 8}
!465 = !{!24, !16, i64 24}
!466 = !{!204, !5, i64 12}
!467 = distinct !{!467, !138}
!468 = !{!28, !27, i64 8}
!469 = !{!28, !5, i64 48}
!470 = !{!444, !5, i64 4}
!471 = distinct !{!471, !138, !256, !255}
!472 = distinct !{!472, !138, !256, !255}
!473 = distinct !{!473, !276}
!474 = distinct !{!474, !138, !256}
