; ModuleID = '../polybench/stencils/jacobi-2d/jacobi-2d.c'
source_filename = "../polybench/stencils/jacobi-2d/jacobi-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8) #8
  %4 = ptrtoaddr ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8) #8
  %6 = ptrtoaddr ptr %5 to i64
  %7 = sub i64 %6, %4
  %8 = icmp ult i64 %7, 16
  br label %9

9:                                                ; preds = %49, %2
  %10 = phi i64 [ 0, %2 ], [ %50, %49 ]
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = sitofp i32 %11 to double
  %13 = getelementptr inbounds nuw [10400 x i8], ptr %3, i64 %10
  %14 = getelementptr inbounds nuw [10400 x i8], ptr %5, i64 %10
  br i1 %8, label %34, label %15

15:                                               ; preds = %9
  %16 = insertelement <2 x double> poison, double %12, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i64 [ 0, %15 ], [ %31, %18 ]
  %20 = phi <2 x i32> [ <i32 0, i32 1>, %15 ], [ %32, %18 ]
  %21 = add <2 x i32> %20, splat (i32 2)
  %22 = uitofp nneg <2 x i32> %21 to <2 x double>
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %22, <2 x double> splat (double 2.000000e+00))
  %24 = fdiv <2 x double> %23, splat (double 1.300000e+03)
  %25 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %19
  store <2 x double> %24, ptr %25, align 8, !tbaa !8
  %26 = add <2 x i32> %20, splat (i32 3)
  %27 = uitofp nneg <2 x i32> %26 to <2 x double>
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %27, <2 x double> splat (double 3.000000e+00))
  %29 = fdiv <2 x double> %28, splat (double 1.300000e+03)
  %30 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %19
  store <2 x double> %29, ptr %30, align 8, !tbaa !8
  %31 = add nuw i64 %19, 2
  %32 = add <2 x i32> %20, splat (i32 2)
  %33 = icmp eq i64 %31, 1300
  br i1 %33, label %49, label %18, !llvm.loop !10

34:                                               ; preds = %9, %34
  %35 = phi i64 [ %47, %34 ], [ 0, %9 ]
  %36 = trunc i64 %35 to i32
  %37 = add i32 %36, 2
  %38 = uitofp nneg i32 %37 to double
  %39 = tail call double @llvm.fmuladd.f64(double %12, double %38, double 2.000000e+00)
  %40 = fdiv double %39, 1.300000e+03
  %41 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %35
  store double %40, ptr %41, align 8, !tbaa !8
  %42 = add i32 %36, 3
  %43 = uitofp nneg i32 %42 to double
  %44 = tail call double @llvm.fmuladd.f64(double %12, double %43, double 3.000000e+00)
  %45 = fdiv double %44, 1.300000e+03
  %46 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %35
  store double %45, ptr %46, align 8, !tbaa !8
  %47 = add nuw nsw i64 %35, 1
  %48 = icmp eq i64 %47, 1300
  br i1 %48, label %49, label %34, !llvm.loop !14

49:                                               ; preds = %18, %34
  %50 = add nuw nsw i64 %10, 1
  %51 = icmp eq i64 %50, 1300
  br i1 %51, label %52, label %9, !llvm.loop !15

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %3, i64 10408
  %54 = getelementptr i8, ptr %3, i64 13509592
  %55 = getelementptr i8, ptr %5, i64 8
  %56 = getelementptr i8, ptr %5, i64 13519992
  %57 = getelementptr i8, ptr %5, i64 10408
  %58 = getelementptr i8, ptr %5, i64 13509592
  %59 = getelementptr i8, ptr %3, i64 8
  %60 = getelementptr i8, ptr %3, i64 13519992
  %61 = icmp ult ptr %57, %60
  %62 = icmp ult ptr %59, %58
  %63 = and i1 %61, %62
  %64 = icmp ult ptr %53, %56
  %65 = icmp ult ptr %55, %54
  %66 = and i1 %64, %65
  br label %67

67:                                               ; preds = %52, %241
  %68 = phi i32 [ %242, %241 ], [ 0, %52 ]
  br label %69

69:                                               ; preds = %153, %67
  %70 = phi i64 [ 1, %67 ], [ %72, %153 ]
  %71 = getelementptr inbounds nuw [10400 x i8], ptr %3, i64 %70
  %72 = add nuw nsw i64 %70, 1
  %73 = getelementptr inbounds nuw [10400 x i8], ptr %3, i64 %72
  %74 = getelementptr inbounds nuw [10400 x i8], ptr %5, i64 %70
  %75 = getelementptr i8, ptr %71, i64 -10400
  br i1 %63, label %114, label %76

76:                                               ; preds = %69, %76
  %77 = phi i64 [ %112, %76 ], [ 0, %69 ]
  %78 = or disjoint i64 %77, 1
  %79 = getelementptr [8 x i8], ptr %71, i64 %78
  %80 = getelementptr i8, ptr %79, i64 16
  %81 = load <2 x double>, ptr %79, align 8, !tbaa !8, !alias.scope !16
  %82 = load <2 x double>, ptr %80, align 8, !tbaa !8, !alias.scope !16
  %83 = getelementptr i8, ptr %79, i64 -8
  %84 = getelementptr i8, ptr %79, i64 8
  %85 = load <2 x double>, ptr %83, align 8, !tbaa !8, !alias.scope !16
  %86 = load <2 x double>, ptr %84, align 8, !tbaa !8, !alias.scope !16
  %87 = fadd <2 x double> %81, %85
  %88 = fadd <2 x double> %82, %86
  %89 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 %77
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 16
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %92 = load <2 x double>, ptr %90, align 8, !tbaa !8, !alias.scope !16
  %93 = load <2 x double>, ptr %91, align 8, !tbaa !8, !alias.scope !16
  %94 = fadd <2 x double> %87, %92
  %95 = fadd <2 x double> %88, %93
  %96 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 %78
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 16
  %98 = load <2 x double>, ptr %96, align 8, !tbaa !8, !alias.scope !16
  %99 = load <2 x double>, ptr %97, align 8, !tbaa !8, !alias.scope !16
  %100 = fadd <2 x double> %94, %98
  %101 = fadd <2 x double> %95, %99
  %102 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 %78
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 16
  %104 = load <2 x double>, ptr %102, align 8, !tbaa !8, !alias.scope !16
  %105 = load <2 x double>, ptr %103, align 8, !tbaa !8, !alias.scope !16
  %106 = fadd <2 x double> %100, %104
  %107 = fadd <2 x double> %101, %105
  %108 = fmul <2 x double> %106, splat (double 2.000000e-01)
  %109 = fmul <2 x double> %107, splat (double 2.000000e-01)
  %110 = getelementptr inbounds nuw [8 x i8], ptr %74, i64 %78
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 16
  store <2 x double> %108, ptr %110, align 8, !tbaa !8, !alias.scope !19, !noalias !16
  store <2 x double> %109, ptr %111, align 8, !tbaa !8, !alias.scope !19, !noalias !16
  %112 = add nuw i64 %77, 4
  %113 = icmp eq i64 %112, 1296
  br i1 %113, label %114, label %76, !llvm.loop !21

114:                                              ; preds = %76, %69
  %115 = phi i64 [ 1, %69 ], [ 1297, %76 ]
  br label %116

116:                                              ; preds = %116, %114
  %117 = phi i64 [ %115, %114 ], [ %140, %116 ]
  %118 = getelementptr [8 x i8], ptr %71, i64 %117
  %119 = load double, ptr %118, align 8, !tbaa !8
  %120 = getelementptr i8, ptr %118, i64 -8
  %121 = load double, ptr %120, align 8, !tbaa !8
  %122 = fadd double %119, %121
  %123 = add nuw nsw i64 %117, 1
  %124 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !8
  %126 = fadd double %122, %125
  %127 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 %117
  %128 = load double, ptr %127, align 8, !tbaa !8
  %129 = fadd double %126, %128
  %130 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 %117
  %131 = load double, ptr %130, align 8, !tbaa !8
  %132 = fadd double %129, %131
  %133 = fmul double %132, 2.000000e-01
  %134 = getelementptr inbounds nuw [8 x i8], ptr %74, i64 %117
  store double %133, ptr %134, align 8, !tbaa !8
  %135 = getelementptr [8 x i8], ptr %71, i64 %123
  %136 = load double, ptr %135, align 8, !tbaa !8
  %137 = getelementptr i8, ptr %135, i64 -8
  %138 = load double, ptr %137, align 8, !tbaa !8
  %139 = fadd double %136, %138
  %140 = add nuw nsw i64 %117, 2
  %141 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !8
  %143 = fadd double %139, %142
  %144 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 %123
  %145 = load double, ptr %144, align 8, !tbaa !8
  %146 = fadd double %143, %145
  %147 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 %123
  %148 = load double, ptr %147, align 8, !tbaa !8
  %149 = fadd double %146, %148
  %150 = fmul double %149, 2.000000e-01
  %151 = getelementptr inbounds nuw [8 x i8], ptr %74, i64 %123
  store double %150, ptr %151, align 8, !tbaa !8
  %152 = icmp eq i64 %140, 1299
  br i1 %152, label %153, label %116, !llvm.loop !22

153:                                              ; preds = %116
  %154 = icmp eq i64 %72, 1299
  br i1 %154, label %155, label %69, !llvm.loop !23

155:                                              ; preds = %153, %239
  %156 = phi i64 [ %158, %239 ], [ 1, %153 ]
  %157 = getelementptr inbounds nuw [10400 x i8], ptr %5, i64 %156
  %158 = add nuw nsw i64 %156, 1
  %159 = getelementptr inbounds nuw [10400 x i8], ptr %5, i64 %158
  %160 = getelementptr inbounds nuw [10400 x i8], ptr %3, i64 %156
  %161 = getelementptr i8, ptr %157, i64 -10400
  br i1 %66, label %200, label %162

162:                                              ; preds = %155, %162
  %163 = phi i64 [ %198, %162 ], [ 0, %155 ]
  %164 = or disjoint i64 %163, 1
  %165 = getelementptr [8 x i8], ptr %157, i64 %164
  %166 = getelementptr i8, ptr %165, i64 16
  %167 = load <2 x double>, ptr %165, align 8, !tbaa !8, !alias.scope !24
  %168 = load <2 x double>, ptr %166, align 8, !tbaa !8, !alias.scope !24
  %169 = getelementptr i8, ptr %165, i64 -8
  %170 = getelementptr i8, ptr %165, i64 8
  %171 = load <2 x double>, ptr %169, align 8, !tbaa !8, !alias.scope !24
  %172 = load <2 x double>, ptr %170, align 8, !tbaa !8, !alias.scope !24
  %173 = fadd <2 x double> %167, %171
  %174 = fadd <2 x double> %168, %172
  %175 = getelementptr inbounds nuw [8 x i8], ptr %157, i64 %163
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 16
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %178 = load <2 x double>, ptr %176, align 8, !tbaa !8, !alias.scope !24
  %179 = load <2 x double>, ptr %177, align 8, !tbaa !8, !alias.scope !24
  %180 = fadd <2 x double> %173, %178
  %181 = fadd <2 x double> %174, %179
  %182 = getelementptr inbounds nuw [8 x i8], ptr %159, i64 %164
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 16
  %184 = load <2 x double>, ptr %182, align 8, !tbaa !8, !alias.scope !24
  %185 = load <2 x double>, ptr %183, align 8, !tbaa !8, !alias.scope !24
  %186 = fadd <2 x double> %180, %184
  %187 = fadd <2 x double> %181, %185
  %188 = getelementptr inbounds nuw [8 x i8], ptr %161, i64 %164
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %190 = load <2 x double>, ptr %188, align 8, !tbaa !8, !alias.scope !24
  %191 = load <2 x double>, ptr %189, align 8, !tbaa !8, !alias.scope !24
  %192 = fadd <2 x double> %186, %190
  %193 = fadd <2 x double> %187, %191
  %194 = fmul <2 x double> %192, splat (double 2.000000e-01)
  %195 = fmul <2 x double> %193, splat (double 2.000000e-01)
  %196 = getelementptr inbounds nuw [8 x i8], ptr %160, i64 %164
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 16
  store <2 x double> %194, ptr %196, align 8, !tbaa !8, !alias.scope !27, !noalias !24
  store <2 x double> %195, ptr %197, align 8, !tbaa !8, !alias.scope !27, !noalias !24
  %198 = add nuw i64 %163, 4
  %199 = icmp eq i64 %198, 1296
  br i1 %199, label %200, label %162, !llvm.loop !29

200:                                              ; preds = %162, %155
  %201 = phi i64 [ 1, %155 ], [ 1297, %162 ]
  br label %202

202:                                              ; preds = %202, %200
  %203 = phi i64 [ %201, %200 ], [ %226, %202 ]
  %204 = getelementptr [8 x i8], ptr %157, i64 %203
  %205 = load double, ptr %204, align 8, !tbaa !8
  %206 = getelementptr i8, ptr %204, i64 -8
  %207 = load double, ptr %206, align 8, !tbaa !8
  %208 = fadd double %205, %207
  %209 = add nuw nsw i64 %203, 1
  %210 = getelementptr inbounds nuw [8 x i8], ptr %157, i64 %209
  %211 = load double, ptr %210, align 8, !tbaa !8
  %212 = fadd double %208, %211
  %213 = getelementptr inbounds nuw [8 x i8], ptr %159, i64 %203
  %214 = load double, ptr %213, align 8, !tbaa !8
  %215 = fadd double %212, %214
  %216 = getelementptr inbounds nuw [8 x i8], ptr %161, i64 %203
  %217 = load double, ptr %216, align 8, !tbaa !8
  %218 = fadd double %215, %217
  %219 = fmul double %218, 2.000000e-01
  %220 = getelementptr inbounds nuw [8 x i8], ptr %160, i64 %203
  store double %219, ptr %220, align 8, !tbaa !8
  %221 = getelementptr [8 x i8], ptr %157, i64 %209
  %222 = load double, ptr %221, align 8, !tbaa !8
  %223 = getelementptr i8, ptr %221, i64 -8
  %224 = load double, ptr %223, align 8, !tbaa !8
  %225 = fadd double %222, %224
  %226 = add nuw nsw i64 %203, 2
  %227 = getelementptr inbounds nuw [8 x i8], ptr %157, i64 %226
  %228 = load double, ptr %227, align 8, !tbaa !8
  %229 = fadd double %225, %228
  %230 = getelementptr inbounds nuw [8 x i8], ptr %159, i64 %209
  %231 = load double, ptr %230, align 8, !tbaa !8
  %232 = fadd double %229, %231
  %233 = getelementptr inbounds nuw [8 x i8], ptr %161, i64 %209
  %234 = load double, ptr %233, align 8, !tbaa !8
  %235 = fadd double %232, %234
  %236 = fmul double %235, 2.000000e-01
  %237 = getelementptr inbounds nuw [8 x i8], ptr %160, i64 %209
  store double %236, ptr %237, align 8, !tbaa !8
  %238 = icmp eq i64 %226, 1299
  br i1 %238, label %239, label %202, !llvm.loop !30

239:                                              ; preds = %202
  %240 = icmp eq i64 %158, 1299
  br i1 %240, label %241, label %155, !llvm.loop !31

241:                                              ; preds = %239
  %242 = add nuw nsw i32 %68, 1
  %243 = icmp eq i32 %242, 500
  br i1 %243, label %244, label %67, !llvm.loop !32

244:                                              ; preds = %241
  %245 = icmp sgt i32 %0, 42
  br i1 %245, label %246, label %251

246:                                              ; preds = %244
  %247 = load ptr, ptr %1, align 8, !tbaa !33
  %248 = load i8, ptr %247, align 1
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  tail call fastcc void @print_array(ptr noundef nonnull %3)
  br label %251

251:                                              ; preds = %250, %246, %244
  tail call void @free(ptr noundef nonnull %3) #8
  tail call void @free(ptr noundef nonnull %5) #8
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef readonly captures(none) %0) unnamed_addr #2 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 22, i64 1, ptr %2) #9
  %4 = load ptr, ptr @stderr, align 8, !tbaa !36
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #10
  br label %6

6:                                                ; preds = %1, %26
  %7 = phi i64 [ 0, %1 ], [ %27, %26 ]
  %8 = mul nuw nsw i64 %7, 1300
  %9 = getelementptr inbounds nuw [10400 x i8], ptr %0, i64 %7
  br label %10

10:                                               ; preds = %6, %19
  %11 = phi i64 [ 0, %6 ], [ %24, %19 ]
  %12 = add nuw nsw i64 %11, %8
  %13 = trunc nuw nsw i64 %12 to i32
  %14 = urem i32 %13, 20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr @stderr, align 8, !tbaa !36
  %18 = tail call i32 @fputc(i32 10, ptr %17)
  br label %19

19:                                               ; preds = %10, %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !36
  %21 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11
  %22 = load double, ptr %21, align 8, !tbaa !8
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.5, double noundef %22) #10
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, 1300
  br i1 %25, label %26, label %10, !llvm.loop !38

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %7, 1
  %28 = icmp eq i64 %27, 1300
  br i1 %28, label %29, label %6, !llvm.loop !39

29:                                               ; preds = %26
  %30 = load ptr, ptr @stderr, align 8, !tbaa !36
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #10
  %32 = load ptr, ptr @stderr, align 8, !tbaa !36
  %33 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %32) #9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { cold nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !11, !12, !13}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !11, !12, !13}
!30 = distinct !{!30, !11, !12}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 omnipotent char", !35, i64 0}
!35 = !{!"any pointer", !6, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 _ZTS8_IO_FILE", !35, i64 0}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
