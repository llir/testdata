; ModuleID = 'coreutils-8.32/src/make-prime-list.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.prime = type { i32, i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [56 x i8] c"Usage: %s LIMIT\0AProduces a list of odd primes <= LIMIT\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Virtual memory exhausted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"/* Generated file -- DO NOT EDIT */\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"#define WIDE_UINT_BITS %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"P (%u, %u,\0A   (\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"),\0A   UINTMAX_MAX / %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0A#undef FIRST_OMITTED_PRIME\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"#define FIRST_OMITTED_PRIME %u\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"write error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c")\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" << %d | \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"(uintmax_t) \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0x%0*xU\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !85 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !89, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8** %1, metadata !90, metadata !DIExpression()), !dbg !113
  %3 = icmp eq i32 %0, 2, !dbg !114
  br i1 %3, label %8, label %4, !dbg !116

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !117, !tbaa !119
  %6 = load i8*, i8** %1, align 8, !dbg !117, !tbaa !119
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %6) #9, !dbg !117
  br label %161, !dbg !123

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !124
  %10 = load i8*, i8** %9, align 8, !dbg !124, !tbaa !119
  call void @llvm.dbg.value(metadata i8* %10, metadata !125, metadata !DIExpression()) #9, !dbg !128
  %11 = tail call i64 @strtol(i8* nocapture nonnull %10, i8** null, i32 10) #9, !dbg !130
  %12 = trunc i64 %11 to i32, !dbg !131
  call void @llvm.dbg.value(metadata i32 %12, metadata !91, metadata !DIExpression()), !dbg !113
  %13 = icmp slt i32 %12, 3, !dbg !132
  br i1 %13, label %161, label %14, !dbg !134

14:                                               ; preds = %8
  %15 = and i32 %12, 1, !dbg !135
  %16 = add nsw i32 %12, -1, !dbg !137
  %17 = add nuw nsw i32 %16, %15, !dbg !137
  call void @llvm.dbg.value(metadata i32 %17, metadata !91, metadata !DIExpression()), !dbg !113
  %18 = add nsw i32 %17, -1, !dbg !138
  %19 = sdiv i32 %18, 2, !dbg !139
  %20 = sext i32 %19 to i64, !dbg !140
  call void @llvm.dbg.value(metadata i64 %20, metadata !93, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %20, metadata !141, metadata !DIExpression()) #9, !dbg !147
  %21 = tail call noalias i8* @malloc(i64 %20) #9, !dbg !149
  call void @llvm.dbg.value(metadata i8* %21, metadata !146, metadata !DIExpression()) #9, !dbg !147
  %22 = icmp eq i8* %21, null, !dbg !150
  br i1 %22, label %23, label %26, !dbg !152

23:                                               ; preds = %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !153, !tbaa !119
  %25 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %24, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !153
  tail call void @exit(i32 1) #10, !dbg !154
  unreachable, !dbg !154

26:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %21, metadata !92, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %21, metadata !155, metadata !DIExpression()) #9, !dbg !163
  call void @llvm.dbg.value(metadata i32 1, metadata !161, metadata !DIExpression()) #9, !dbg !163
  call void @llvm.dbg.value(metadata i64 %20, metadata !162, metadata !DIExpression()) #9, !dbg !163
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %21, i8 1, i64 %20, i1 false) #9, !dbg !165
  %27 = mul nuw nsw i64 %20, 24, !dbg !166
  call void @llvm.dbg.value(metadata i64 %27, metadata !141, metadata !DIExpression()) #9, !dbg !167
  %28 = tail call noalias i8* @malloc(i64 %27) #9, !dbg !169
  call void @llvm.dbg.value(metadata i8* %28, metadata !146, metadata !DIExpression()) #9, !dbg !167
  %29 = icmp eq i8* %28, null, !dbg !170
  br i1 %29, label %30, label %33, !dbg !171

30:                                               ; preds = %26
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !172, !tbaa !119
  %32 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %31, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !172
  tail call void @exit(i32 1) #10, !dbg !173
  unreachable, !dbg !173

33:                                               ; preds = %26
  %34 = bitcast i8* %28 to %struct.prime*, !dbg !174
  call void @llvm.dbg.value(metadata %struct.prime* %34, metadata !95, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !113
  %35 = icmp ugt i32 %17, 2, !dbg !175
  br i1 %35, label %36, label %81, !dbg !176

36:                                               ; preds = %77, %33
  %37 = phi i32 [ 0, %33 ], [ %56, %77 ]
  %38 = phi i64 [ 0, %33 ], [ %75, %77 ]
  call void @llvm.dbg.value(metadata i32 %37, metadata !107, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %38, metadata !94, metadata !DIExpression()), !dbg !113
  %39 = trunc i64 %38 to i32, !dbg !177
  %40 = shl i32 %39, 1, !dbg !177
  %41 = add i32 %40, 3, !dbg !177
  call void @llvm.dbg.value(metadata i32 %41, metadata !108, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %56, metadata !107, metadata !DIExpression()), !dbg !113
  %42 = zext i32 %37 to i64, !dbg !179
  call void @llvm.dbg.value(metadata %struct.prime* undef, metadata !180, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %41, metadata !185, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i64 -1, metadata !186, metadata !DIExpression()), !dbg !187
  %43 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %42, i32 0, !dbg !189
  store i32 %41, i32* %43, align 8, !dbg !190, !tbaa !191
  %44 = zext i32 %41 to i64, !dbg !195
  call void @llvm.dbg.value(metadata i64 %44, metadata !196, metadata !DIExpression()), !dbg !206
  %45 = shl i32 %41, 1, !dbg !208
  %46 = and i32 %45, 28, !dbg !208
  %47 = lshr i32 -180781647, %46, !dbg !208
  %48 = zext i32 %47 to i64, !dbg !209
  call void @llvm.dbg.value(metadata i64 %48, metadata !201, metadata !DIExpression()), !dbg !206
  br label %49, !dbg !210

49:                                               ; preds = %49, %36
  %50 = phi i64 [ %48, %36 ], [ %53, %49 ], !dbg !211
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  %51 = mul i64 %50, %44, !dbg !212
  %52 = sub i64 2, %51, !dbg !213
  %53 = mul i64 %52, %50, !dbg !213
  call void @llvm.dbg.value(metadata i64 %53, metadata !202, metadata !DIExpression()), !dbg !214
  %54 = icmp eq i64 %53, %50, !dbg !215
  call void @llvm.dbg.value(metadata i64 %53, metadata !201, metadata !DIExpression()), !dbg !206
  br i1 %54, label %55, label %49, !llvm.loop !217

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  %56 = add i32 %37, 1, !dbg !220
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %50, metadata !201, metadata !DIExpression()), !dbg !206
  %57 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %42, i32 1, !dbg !221
  store i64 %50, i64* %57, align 8, !dbg !222, !tbaa !223
  %58 = udiv i64 -1, %44, !dbg !224
  %59 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %42, i32 2, !dbg !225
  store i64 %58, i64* %59, align 8, !dbg !226, !tbaa !227
  %60 = mul i32 %41, %41, !dbg !228
  %61 = add i32 %60, -3, !dbg !230
  %62 = lshr exact i32 %61, 1, !dbg !231
  call void @llvm.dbg.value(metadata i32 %62, metadata !112, metadata !DIExpression()), !dbg !178
  %63 = zext i32 %62 to i64, !dbg !232
  %64 = icmp ult i64 %63, %20, !dbg !234
  br i1 %64, label %65, label %72, !dbg !235

65:                                               ; preds = %55, %65
  %66 = phi i64 [ %70, %65 ], [ %63, %55 ]
  %67 = phi i32 [ %69, %65 ], [ %62, %55 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !112, metadata !DIExpression()), !dbg !178
  %68 = getelementptr inbounds i8, i8* %21, i64 %66, !dbg !236
  store i8 0, i8* %68, align 1, !dbg !237, !tbaa !238
  %69 = add i32 %67, %41, !dbg !239
  call void @llvm.dbg.value(metadata i32 %69, metadata !112, metadata !DIExpression()), !dbg !178
  %70 = zext i32 %69 to i64, !dbg !232
  %71 = icmp ult i64 %70, %20, !dbg !234
  br i1 %71, label %65, label %72, !dbg !235, !llvm.loop !240

72:                                               ; preds = %65, %55
  br label %73, !dbg !242

73:                                               ; preds = %72, %77
  %74 = phi i64 [ %75, %77 ], [ %38, %72 ], !dbg !243
  call void @llvm.dbg.value(metadata i64 %74, metadata !94, metadata !DIExpression()), !dbg !113
  %75 = add i64 %74, 1, !dbg !244
  call void @llvm.dbg.value(metadata i64 %75, metadata !94, metadata !DIExpression()), !dbg !113
  %76 = icmp ult i64 %75, %20, !dbg !245
  br i1 %76, label %77, label %81, !dbg !246

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, i8* %21, i64 %75, !dbg !247
  %79 = load i8, i8* %78, align 1, !dbg !247, !tbaa !238
  %80 = icmp eq i8 %79, 0, !dbg !248
  br i1 %80, label %73, label %36, !dbg !242, !llvm.loop !249

81:                                               ; preds = %73, %33
  %82 = phi i32 [ 0, %33 ], [ %56, %73 ], !dbg !113
  call void @llvm.dbg.value(metadata i32 %82, metadata !107, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata %struct.prime* %34, metadata !251, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 %82, metadata !258, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 undef, metadata !263, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value)) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 64, metadata !262, metadata !DIExpression()) #9, !dbg !268
  %83 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !270
  %84 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 64) #9, !dbg !271
  call void @llvm.dbg.value(metadata i32 0, metadata !259, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 2, metadata !260, metadata !DIExpression()) #9, !dbg !268
  %85 = icmp eq i32 %82, 0, !dbg !272
  br i1 %85, label %118, label %86, !dbg !273

86:                                               ; preds = %81
  %87 = zext i32 %82 to i64, !dbg !272
  br label %88, !dbg !273

88:                                               ; preds = %106, %86
  %89 = phi i64 [ 0, %86 ], [ %114, %106 ]
  %90 = phi i32 [ 2, %86 ], [ %107, %106 ]
  call void @llvm.dbg.value(metadata i64 %89, metadata !259, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 %90, metadata !260, metadata !DIExpression()) #9, !dbg !268
  %91 = trunc i64 %89 to i32, !dbg !274
  %92 = add i32 %91, 8, !dbg !274
  %93 = icmp ult i32 %92, %82, !dbg !275
  br i1 %93, label %97, label %94, !dbg !276

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %89, i32 0, !dbg !277
  %96 = load i32, i32* %95, align 8, !dbg !278, !tbaa !191
  br label %106, !dbg !276

97:                                               ; preds = %88
  %98 = zext i32 %92 to i64, !dbg !279
  %99 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %98, i32 0, !dbg !280
  %100 = load i32, i32* %99, align 8, !dbg !280, !tbaa !191
  %101 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %89, i32 0, !dbg !281
  %102 = load i32, i32* %101, align 8, !dbg !281, !tbaa !191
  %103 = sub i32 %100, %102, !dbg !282
  call void @llvm.dbg.value(metadata i32 %103, metadata !264, metadata !DIExpression()) #9, !dbg !277
  %104 = icmp ugt i32 %103, 255, !dbg !283
  br i1 %104, label %105, label %106, !dbg !285

105:                                              ; preds = %97
  tail call void @abort() #10, !dbg !286
  unreachable, !dbg !286

106:                                              ; preds = %97, %94
  %107 = phi i32 [ %102, %97 ], [ %96, %94 ], !dbg !287
  %108 = phi i32 [ %103, %97 ], [ 255, %94 ]
  %109 = sub i32 %107, %90, !dbg !278
  %110 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %109, i32 %108) #9, !dbg !278
  %111 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %89, i32 1, !dbg !288
  %112 = load i64, i64* %111, align 8, !dbg !288, !tbaa !223
  tail call fastcc void @print_wide_uint(i64 %112, i32 0, i32 64) #9, !dbg !289
  %113 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %107) #9, !dbg !287
  call void @llvm.dbg.value(metadata i32 %107, metadata !260, metadata !DIExpression()) #9, !dbg !268
  %114 = add nuw nsw i64 %89, 1, !dbg !290
  call void @llvm.dbg.value(metadata i64 %114, metadata !259, metadata !DIExpression()) #9, !dbg !268
  %115 = icmp eq i64 %114, %87, !dbg !272
  br i1 %115, label %116, label %88, !dbg !273, !llvm.loop !291

116:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i32 %107, metadata !260, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 %107, metadata !260, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 %107, metadata !260, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 %107, metadata !260, metadata !DIExpression()) #9, !dbg !268
  %117 = add i32 %107, 2, !dbg !293
  br label %118, !dbg !293

118:                                              ; preds = %116, %81
  %119 = phi i32 [ 4, %81 ], [ %117, %116 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !260, metadata !DIExpression()) #9, !dbg !268
  %120 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !293
  call void @llvm.dbg.value(metadata i32 undef, metadata !260, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 %119, metadata !260, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 0, metadata !259, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 1, metadata !261, metadata !DIExpression()) #9, !dbg !268
  %121 = bitcast i8* %28 to i32*, !dbg !294
  %122 = load i32, i32* %121, align 8, !dbg !294, !tbaa !191
  %123 = mul i32 %122, %122, !dbg !300
  %124 = icmp ugt i32 %123, %119, !dbg !301
  br i1 %124, label %147, label %128, !dbg !302

125:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i32 %129, metadata !260, metadata !DIExpression()) #9, !dbg !268
  %126 = add i32 %129, 2, !dbg !303
  call void @llvm.dbg.value(metadata i32 %126, metadata !260, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 0, metadata !259, metadata !DIExpression()) #9, !dbg !268
  call void @llvm.dbg.value(metadata i32 1, metadata !261, metadata !DIExpression()) #9, !dbg !268
  %127 = icmp ugt i32 %123, %126, !dbg !301
  br i1 %127, label %147, label %128, !dbg !302

128:                                              ; preds = %118, %125
  %129 = phi i32 [ %126, %125 ], [ %119, %118 ]
  %130 = zext i32 %129 to i64, !dbg !304
  br label %137, !dbg !302

131:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i32 %146, metadata !259, metadata !DIExpression()) #9, !dbg !268
  %132 = zext i32 %146 to i64, !dbg !306
  %133 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %132, i32 0, !dbg !294
  %134 = load i32, i32* %133, align 8, !dbg !294, !tbaa !191
  %135 = mul i32 %134, %134, !dbg !300
  %136 = icmp ugt i32 %135, %129, !dbg !301
  br i1 %136, label %147, label %137, !dbg !302, !llvm.loop !307

137:                                              ; preds = %131, %128
  %138 = phi i64 [ 0, %128 ], [ %132, %131 ]
  %139 = phi i32 [ 0, %128 ], [ %146, %131 ]
  call void @llvm.dbg.value(metadata i32 %139, metadata !259, metadata !DIExpression()) #9, !dbg !268
  %140 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %138, i32 1, !dbg !310
  %141 = load i64, i64* %140, align 8, !dbg !310, !tbaa !223
  %142 = mul i64 %141, %130, !dbg !311
  %143 = getelementptr inbounds %struct.prime, %struct.prime* %34, i64 %138, i32 2, !dbg !312
  %144 = load i64, i64* %143, align 8, !dbg !312, !tbaa !227
  %145 = icmp ugt i64 %142, %144, !dbg !313
  %146 = add i32 %139, 1, !dbg !314
  call void @llvm.dbg.value(metadata i32 %146, metadata !259, metadata !DIExpression()) #9, !dbg !268
  br i1 %145, label %131, label %125, !dbg !315

147:                                              ; preds = %125, %131, %118
  %148 = phi i32 [ %119, %118 ], [ %129, %131 ], [ %126, %125 ], !dbg !303
  call void @llvm.dbg.value(metadata i32 undef, metadata !261, metadata !DIExpression()) #9, !dbg !268
  %149 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %148) #9, !dbg !316
  tail call void @free(i8* %21) #9, !dbg !317
  tail call void @free(i8* nonnull %28) #9, !dbg !318
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !319, !tbaa !119
  %151 = tail call i32 @ferror(%struct._IO_FILE* %150) #9, !dbg !321
  %152 = tail call i32 @fclose(%struct._IO_FILE* %150), !dbg !322
  %153 = sub i32 0, %152, !dbg !323
  %154 = icmp eq i32 %151, %153, !dbg !323
  br i1 %154, label %161, label %155, !dbg !324

155:                                              ; preds = %147
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !325, !tbaa !119
  %157 = tail call i32* @__errno_location() #11, !dbg !325
  %158 = load i32, i32* %157, align 4, !dbg !325, !tbaa !327
  %159 = tail call i8* @strerror(i32 %158) #9, !dbg !325
  %160 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %156, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %159) #9, !dbg !325
  br label %161, !dbg !328

161:                                              ; preds = %147, %8, %155, %4
  %162 = phi i32 [ 1, %4 ], [ 1, %155 ], [ 0, %8 ], [ 0, %147 ], !dbg !113
  ret i32 %162, !dbg !329
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare !dbg !74 i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_wide_uint(i64 %0, i32 %1, i32 %2) unnamed_addr #0 !dbg !330 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !334, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %1, metadata !335, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %2, metadata !336, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 7, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 28, metadata !338, metadata !DIExpression()), !dbg !343
  %4 = trunc i64 %0 to i32, !dbg !344
  %5 = and i32 %4, 268435455, !dbg !344
  call void @llvm.dbg.value(metadata i32 %5, metadata !339, metadata !DIExpression()), !dbg !343
  %6 = zext i32 %5 to i64, !dbg !345
  %7 = icmp eq i64 %6, %0, !dbg !346
  br i1 %7, label %20, label %8, !dbg !347

8:                                                ; preds = %3
  %9 = lshr i64 %0, 28, !dbg !348
  %10 = icmp ugt i64 %0, 72057594037927935, !dbg !349
  call void @llvm.dbg.value(metadata i1 %10, metadata !340, metadata !DIExpression()), !dbg !350
  br i1 %10, label %11, label %16, !dbg !351

11:                                               ; preds = %8
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !352
  %13 = add nsw i32 %1, 1, !dbg !354
  tail call fastcc void @print_wide_uint(i64 %9, i32 %13, i32 %2), !dbg !355
  %14 = add nsw i32 %1, 3, !dbg !356
  %15 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !356
  br label %18, !dbg !356

16:                                               ; preds = %8
  %17 = add nsw i32 %1, 1, !dbg !354
  tail call fastcc void @print_wide_uint(i64 %9, i32 %17, i32 %2), !dbg !355
  br label %18, !dbg !358

18:                                               ; preds = %16, %11
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 28) #9, !dbg !359
  br label %28, !dbg !360

20:                                               ; preds = %3
  %21 = icmp eq i32 %1, 0, !dbg !361
  br i1 %21, label %28, label %22, !dbg !363

22:                                               ; preds = %20
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !364
  %24 = add i32 %2, -1, !dbg !366
  %25 = urem i32 %24, 28, !dbg !367
  %26 = and i32 %25, 3, !dbg !368
  %27 = add nuw nsw i32 %26, 1, !dbg !369
  call void @llvm.dbg.value(metadata i32 %27, metadata !337, metadata !DIExpression()), !dbg !343
  br label %28, !dbg !370

28:                                               ; preds = %20, %22, %18
  %29 = phi i32 [ 7, %18 ], [ %27, %22 ], [ 7, %20 ], !dbg !343
  call void @llvm.dbg.value(metadata i32 %29, metadata !337, metadata !DIExpression()), !dbg !343
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %29, i32 %5) #9, !dbg !371
  ret void, !dbg !372
}

; Function Attrs: nounwind
declare !dbg !4 void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare !dbg !9 i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !72 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i8* @strerror(i32) local_unnamed_addr #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/make-prime-list.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2 = !{}
!3 = !{!4, !9, !72, !13, !73, !8, !74}
!4 = !DISubprogram(name: "free", scope: !5, file: !5, line: 565, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DISubprogram(name: "ferror", scope: !10, file: !10, line: 761, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !16, line: 49, size: 1728, elements: !17)
!16 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!17 = !{!18, !19, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !35, !36, !37, !38, !42, !44, !46, !50, !53, !55, !58, !61, !62, !63, !67, !68}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !16, line: 51, baseType: !13, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !15, file: !16, line: 54, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !15, file: !16, line: 55, baseType: !20, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !15, file: !16, line: 56, baseType: !20, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !15, file: !16, line: 57, baseType: !20, size: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !15, file: !16, line: 58, baseType: !20, size: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !15, file: !16, line: 59, baseType: !20, size: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !15, file: !16, line: 60, baseType: !20, size: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !15, file: !16, line: 61, baseType: !20, size: 64, offset: 512)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !15, file: !16, line: 64, baseType: !20, size: 64, offset: 576)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !15, file: !16, line: 65, baseType: !20, size: 64, offset: 640)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !15, file: !16, line: 66, baseType: !20, size: 64, offset: 704)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !15, file: !16, line: 68, baseType: !33, size: 64, offset: 768)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !16, line: 36, flags: DIFlagFwdDecl)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !15, file: !16, line: 70, baseType: !14, size: 64, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !15, file: !16, line: 72, baseType: !13, size: 32, offset: 896)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !15, file: !16, line: 73, baseType: !13, size: 32, offset: 928)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !15, file: !16, line: 74, baseType: !39, size: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !40, line: 152, baseType: !41)
!40 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !15, file: !16, line: 77, baseType: !43, size: 16, offset: 1024)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !15, file: !16, line: 78, baseType: !45, size: 8, offset: 1040)
!45 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !15, file: !16, line: 79, baseType: !47, size: 8, offset: 1048)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !16, line: 81, baseType: !51, size: 64, offset: 1088)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !16, line: 43, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !16, line: 89, baseType: !54, size: 64, offset: 1152)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !40, line: 153, baseType: !41)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !15, file: !16, line: 91, baseType: !56, size: 64, offset: 1216)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !16, line: 37, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !15, file: !16, line: 92, baseType: !59, size: 64, offset: 1280)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !16, line: 38, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !15, file: !16, line: 93, baseType: !14, size: 64, offset: 1344)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !15, file: !16, line: 94, baseType: !8, size: 64, offset: 1408)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !15, file: !16, line: 95, baseType: !64, size: 64, offset: 1472)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 46, baseType: !66)
!65 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!66 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !15, file: !16, line: 96, baseType: !13, size: 32, offset: 1536)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !15, file: !16, line: 98, baseType: !69, size: 160, offset: 1568)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 20)
!72 = !DISubprogram(name: "fclose", scope: !10, file: !10, line: 213, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!74 = !DISubprogram(name: "puts", scope: !10, file: !10, line: 632, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!75 = !DISubroutineType(types: !76)
!76 = !{!13, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!79 = !{!"clang version 10.0.0 "}
!80 = !{i32 7, !"Dwarf Version", i32 4}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 7, !"PIC Level", i32 2}
!84 = !{i32 7, !"PIE Level", i32 2}
!85 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 172, type: !86, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!13, !13, !73}
!88 = !{!89, !90, !91, !92, !93, !94, !95, !107, !108, !112}
!89 = !DILocalVariable(name: "argc", arg: 1, scope: !85, file: !1, line: 172, type: !13)
!90 = !DILocalVariable(name: "argv", arg: 2, scope: !85, file: !1, line: 172, type: !73)
!91 = !DILocalVariable(name: "limit", scope: !85, file: !1, line: 174, type: !13)
!92 = !DILocalVariable(name: "sieve", scope: !85, file: !1, line: 176, type: !20)
!93 = !DILocalVariable(name: "size", scope: !85, file: !1, line: 177, type: !64)
!94 = !DILocalVariable(name: "i", scope: !85, file: !1, line: 177, type: !64)
!95 = !DILocalVariable(name: "prime_list", scope: !85, file: !1, line: 179, type: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prime", file: !1, line: 49, size: 192, elements: !98)
!98 = !{!99, !101, !106}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !97, file: !1, line: 51, baseType: !100, size: 32)
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pinv", scope: !97, file: !1, line: 52, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "wide_uint", file: !1, line: 45, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !104, line: 102, baseType: !105)
!104 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !40, line: 73, baseType: !66)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "lim", scope: !97, file: !1, line: 53, baseType: !102, size: 64, offset: 128)
!107 = !DILocalVariable(name: "nprimes", scope: !85, file: !1, line: 180, type: !100)
!108 = !DILocalVariable(name: "p", scope: !109, file: !1, line: 206, type: !100)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 205, column: 5)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 204, column: 3)
!111 = distinct !DILexicalBlock(scope: !85, file: !1, line: 204, column: 3)
!112 = !DILocalVariable(name: "j", scope: !109, file: !1, line: 207, type: !100)
!113 = !DILocation(line: 0, scope: !85)
!114 = !DILocation(line: 182, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !85, file: !1, line: 182, column: 7)
!116 = !DILocation(line: 182, column: 7, scope: !85)
!117 = !DILocation(line: 184, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 183, column: 5)
!119 = !{!120, !120, i64 0}
!120 = !{!"any pointer", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !DILocation(line: 186, column: 7, scope: !118)
!124 = !DILocation(line: 188, column: 17, scope: !85)
!125 = !DILocalVariable(name: "__nptr", arg: 1, scope: !126, file: !5, line: 361, type: !77)
!126 = distinct !DISubprogram(name: "atoi", scope: !5, file: !5, line: 361, type: !75, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!127 = !{!125}
!128 = !DILocation(line: 0, scope: !126, inlinedAt: !129)
!129 = distinct !DILocation(line: 188, column: 11, scope: !85)
!130 = !DILocation(line: 363, column: 16, scope: !126, inlinedAt: !129)
!131 = !DILocation(line: 363, column: 10, scope: !126, inlinedAt: !129)
!132 = !DILocation(line: 189, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !85, file: !1, line: 189, column: 7)
!134 = !DILocation(line: 189, column: 7, scope: !85)
!135 = !DILocation(line: 193, column: 16, scope: !136)
!136 = distinct !DILexicalBlock(scope: !85, file: !1, line: 193, column: 8)
!137 = !DILocation(line: 193, column: 8, scope: !85)
!138 = !DILocation(line: 196, column: 16, scope: !85)
!139 = !DILocation(line: 196, column: 19, scope: !85)
!140 = !DILocation(line: 196, column: 10, scope: !85)
!141 = !DILocalVariable(name: "s", arg: 1, scope: !142, file: !1, line: 161, type: !64)
!142 = distinct !DISubprogram(name: "xalloc", scope: !1, file: !1, line: 161, type: !143, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{!8, !64}
!145 = !{!141, !146}
!146 = !DILocalVariable(name: "p", scope: !142, file: !1, line: 163, type: !8)
!147 = !DILocation(line: 0, scope: !142, inlinedAt: !148)
!148 = distinct !DILocation(line: 198, column: 11, scope: !85)
!149 = !DILocation(line: 163, column: 13, scope: !142, inlinedAt: !148)
!150 = !DILocation(line: 164, column: 7, scope: !151, inlinedAt: !148)
!151 = distinct !DILexicalBlock(scope: !142, file: !1, line: 164, column: 7)
!152 = !DILocation(line: 164, column: 7, scope: !142, inlinedAt: !148)
!153 = !DILocation(line: 167, column: 3, scope: !142, inlinedAt: !148)
!154 = !DILocation(line: 168, column: 3, scope: !142, inlinedAt: !148)
!155 = !DILocalVariable(name: "__dest", arg: 1, scope: !156, file: !157, line: 59, type: !8)
!156 = distinct !DISubprogram(name: "memset", scope: !157, file: !157, line: 59, type: !158, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!157 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!158 = !DISubroutineType(types: !159)
!159 = !{!8, !8, !13, !64}
!160 = !{!155, !161, !162}
!161 = !DILocalVariable(name: "__ch", arg: 2, scope: !156, file: !157, line: 59, type: !13)
!162 = !DILocalVariable(name: "__len", arg: 3, scope: !156, file: !157, line: 59, type: !64)
!163 = !DILocation(line: 0, scope: !156, inlinedAt: !164)
!164 = distinct !DILocation(line: 199, column: 3, scope: !85)
!165 = !DILocation(line: 71, column: 10, scope: !156, inlinedAt: !164)
!166 = !DILocation(line: 201, column: 29, scope: !85)
!167 = !DILocation(line: 0, scope: !142, inlinedAt: !168)
!168 = distinct !DILocation(line: 201, column: 16, scope: !85)
!169 = !DILocation(line: 163, column: 13, scope: !142, inlinedAt: !168)
!170 = !DILocation(line: 164, column: 7, scope: !151, inlinedAt: !168)
!171 = !DILocation(line: 164, column: 7, scope: !142, inlinedAt: !168)
!172 = !DILocation(line: 167, column: 3, scope: !142, inlinedAt: !168)
!173 = !DILocation(line: 168, column: 3, scope: !142, inlinedAt: !168)
!174 = !DILocation(line: 201, column: 16, scope: !85)
!175 = !DILocation(line: 204, column: 17, scope: !110)
!176 = !DILocation(line: 204, column: 3, scope: !111)
!177 = !DILocation(line: 206, column: 20, scope: !109)
!178 = !DILocation(line: 0, scope: !109)
!179 = !DILocation(line: 209, column: 23, scope: !109)
!180 = !DILocalVariable(name: "info", arg: 1, scope: !181, file: !1, line: 70, type: !96)
!181 = distinct !DISubprogram(name: "process_prime", scope: !1, file: !1, line: 70, type: !182, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !96, !100}
!184 = !{!180, !185, !186}
!185 = !DILocalVariable(name: "p", arg: 2, scope: !181, file: !1, line: 70, type: !100)
!186 = !DILocalVariable(name: "max", scope: !181, file: !1, line: 72, type: !102)
!187 = !DILocation(line: 0, scope: !181, inlinedAt: !188)
!188 = distinct !DILocation(line: 209, column: 7, scope: !109)
!189 = !DILocation(line: 73, column: 9, scope: !181, inlinedAt: !188)
!190 = !DILocation(line: 73, column: 11, scope: !181, inlinedAt: !188)
!191 = !{!192, !193, i64 0}
!192 = !{!"prime", !193, i64 0, !194, i64 8, !194, i64 16}
!193 = !{!"int", !121, i64 0}
!194 = !{!"long", !121, i64 0}
!195 = !DILocation(line: 74, column: 25, scope: !181, inlinedAt: !188)
!196 = !DILocalVariable(name: "a", arg: 1, scope: !197, file: !1, line: 57, type: !102)
!197 = distinct !DISubprogram(name: "binvert", scope: !1, file: !1, line: 57, type: !198, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!102, !102}
!200 = !{!196, !201, !202}
!201 = !DILocalVariable(name: "x", scope: !197, file: !1, line: 59, type: !102)
!202 = !DILocalVariable(name: "y", scope: !203, file: !1, line: 62, type: !102)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 61, column: 5)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 60, column: 3)
!205 = distinct !DILexicalBlock(scope: !197, file: !1, line: 60, column: 3)
!206 = !DILocation(line: 0, scope: !197, inlinedAt: !207)
!207 = distinct !DILocation(line: 74, column: 16, scope: !181, inlinedAt: !188)
!208 = !DILocation(line: 59, column: 28, scope: !197, inlinedAt: !207)
!209 = !DILocation(line: 59, column: 17, scope: !197, inlinedAt: !207)
!210 = !DILocation(line: 60, column: 3, scope: !197, inlinedAt: !207)
!211 = !DILocation(line: 59, column: 13, scope: !197, inlinedAt: !207)
!212 = !DILocation(line: 62, column: 28, scope: !203, inlinedAt: !207)
!213 = !DILocation(line: 62, column: 25, scope: !203, inlinedAt: !207)
!214 = !DILocation(line: 0, scope: !203, inlinedAt: !207)
!215 = !DILocation(line: 63, column: 13, scope: !216, inlinedAt: !207)
!216 = distinct !DILexicalBlock(scope: !203, file: !1, line: 63, column: 11)
!217 = distinct !{!217, !218, !219}
!218 = !DILocation(line: 60, column: 3, scope: !205, inlinedAt: !207)
!219 = !DILocation(line: 66, column: 5, scope: !205, inlinedAt: !207)
!220 = !DILocation(line: 209, column: 41, scope: !109)
!221 = !DILocation(line: 74, column: 9, scope: !181, inlinedAt: !188)
!222 = !DILocation(line: 74, column: 14, scope: !181, inlinedAt: !188)
!223 = !{!192, !194, i64 8}
!224 = !DILocation(line: 75, column: 19, scope: !181, inlinedAt: !188)
!225 = !DILocation(line: 75, column: 9, scope: !181, inlinedAt: !188)
!226 = !DILocation(line: 75, column: 13, scope: !181, inlinedAt: !188)
!227 = !{!192, !194, i64 16}
!228 = !DILocation(line: 211, column: 18, scope: !229)
!229 = distinct !DILexicalBlock(scope: !109, file: !1, line: 211, column: 7)
!230 = !DILocation(line: 211, column: 21, scope: !229)
!231 = !DILocation(line: 211, column: 25, scope: !229)
!232 = !DILocation(line: 211, column: 29, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !1, line: 211, column: 7)
!234 = !DILocation(line: 211, column: 31, scope: !233)
!235 = !DILocation(line: 211, column: 7, scope: !229)
!236 = !DILocation(line: 212, column: 9, scope: !233)
!237 = !DILocation(line: 212, column: 18, scope: !233)
!238 = !{!121, !121, i64 0}
!239 = !DILocation(line: 211, column: 40, scope: !233)
!240 = distinct !{!240, !235, !241}
!241 = !DILocation(line: 212, column: 20, scope: !229)
!242 = !DILocation(line: 214, column: 7, scope: !109)
!243 = !DILocation(line: 0, scope: !111)
!244 = !DILocation(line: 214, column: 14, scope: !109)
!245 = !DILocation(line: 214, column: 18, scope: !109)
!246 = !DILocation(line: 214, column: 25, scope: !109)
!247 = !DILocation(line: 214, column: 28, scope: !109)
!248 = !DILocation(line: 214, column: 37, scope: !109)
!249 = distinct !{!249, !242, !250}
!250 = !DILocation(line: 215, column: 9, scope: !109)
!251 = !DILocalVariable(name: "primes", arg: 1, scope: !252, file: !1, line: 110, type: !255)
!252 = distinct !DISubprogram(name: "output_primes", scope: !1, file: !1, line: 110, type: !253, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !257)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255, !100}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!257 = !{!251, !258, !259, !260, !261, !262, !263, !264}
!258 = !DILocalVariable(name: "nprimes", arg: 2, scope: !252, file: !1, line: 110, type: !100)
!259 = !DILocalVariable(name: "i", scope: !252, file: !1, line: 112, type: !100)
!260 = !DILocalVariable(name: "p", scope: !252, file: !1, line: 113, type: !100)
!261 = !DILocalVariable(name: "is_prime", scope: !252, file: !1, line: 114, type: !13)
!262 = !DILocalVariable(name: "wide_uint_bits", scope: !252, file: !1, line: 119, type: !100)
!263 = !DILocalVariable(name: "mask", scope: !252, file: !1, line: 120, type: !102)
!264 = !DILocalVariable(name: "d8", scope: !265, file: !1, line: 129, type: !100)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 128, column: 5)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 127, column: 3)
!267 = distinct !DILexicalBlock(scope: !252, file: !1, line: 127, column: 3)
!268 = !DILocation(line: 0, scope: !252, inlinedAt: !269)
!269 = distinct !DILocation(line: 218, column: 3, scope: !85)
!270 = !DILocation(line: 124, column: 3, scope: !252, inlinedAt: !269)
!271 = !DILocation(line: 125, column: 3, scope: !252, inlinedAt: !269)
!272 = !DILocation(line: 127, column: 24, scope: !266, inlinedAt: !269)
!273 = !DILocation(line: 127, column: 3, scope: !267, inlinedAt: !269)
!274 = !DILocation(line: 129, column: 27, scope: !265, inlinedAt: !269)
!275 = !DILocation(line: 129, column: 31, scope: !265, inlinedAt: !269)
!276 = !DILocation(line: 129, column: 25, scope: !265, inlinedAt: !269)
!277 = !DILocation(line: 0, scope: !265, inlinedAt: !269)
!278 = !DILocation(line: 132, column: 7, scope: !265, inlinedAt: !269)
!279 = !DILocation(line: 129, column: 43, scope: !265, inlinedAt: !269)
!280 = !DILocation(line: 129, column: 57, scope: !265, inlinedAt: !269)
!281 = !DILocation(line: 129, column: 71, scope: !265, inlinedAt: !269)
!282 = !DILocation(line: 129, column: 59, scope: !265, inlinedAt: !269)
!283 = !DILocation(line: 130, column: 15, scope: !284, inlinedAt: !269)
!284 = distinct !DILexicalBlock(scope: !265, file: !1, line: 130, column: 11)
!285 = !DILocation(line: 130, column: 11, scope: !265, inlinedAt: !269)
!286 = !DILocation(line: 131, column: 9, scope: !284, inlinedAt: !269)
!287 = !DILocation(line: 134, column: 7, scope: !265, inlinedAt: !269)
!288 = !DILocation(line: 133, column: 34, scope: !265, inlinedAt: !269)
!289 = !DILocation(line: 133, column: 7, scope: !265, inlinedAt: !269)
!290 = !DILocation(line: 127, column: 36, scope: !266, inlinedAt: !269)
!291 = distinct !{!291, !273, !292}
!292 = !DILocation(line: 136, column: 5, scope: !267, inlinedAt: !269)
!293 = !DILocation(line: 138, column: 3, scope: !252, inlinedAt: !269)
!294 = !DILocation(line: 146, column: 25, scope: !295, inlinedAt: !269)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 146, column: 15)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 145, column: 9)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 144, column: 7)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 144, column: 7)
!299 = distinct !DILexicalBlock(scope: !252, file: !1, line: 142, column: 5)
!300 = !DILocation(line: 146, column: 27, scope: !295, inlinedAt: !269)
!301 = !DILocation(line: 146, column: 41, scope: !295, inlinedAt: !269)
!302 = !DILocation(line: 146, column: 15, scope: !296, inlinedAt: !269)
!303 = !DILocation(line: 143, column: 9, scope: !299, inlinedAt: !269)
!304 = !DILocation(line: 0, scope: !305, inlinedAt: !269)
!305 = distinct !DILexicalBlock(scope: !296, file: !1, line: 148, column: 15)
!306 = !DILocation(line: 146, column: 15, scope: !295, inlinedAt: !269)
!307 = distinct !{!307, !308, !309}
!308 = !DILocation(line: 144, column: 7, scope: !298, inlinedAt: !269)
!309 = !DILocation(line: 153, column: 9, scope: !298, inlinedAt: !269)
!310 = !DILocation(line: 148, column: 29, scope: !305, inlinedAt: !269)
!311 = !DILocation(line: 148, column: 17, scope: !305, inlinedAt: !269)
!312 = !DILocation(line: 148, column: 47, scope: !305, inlinedAt: !269)
!313 = !DILocation(line: 148, column: 34, scope: !305, inlinedAt: !269)
!314 = !DILocation(line: 144, column: 44, scope: !297, inlinedAt: !269)
!315 = !DILocation(line: 148, column: 15, scope: !296, inlinedAt: !269)
!316 = !DILocation(line: 157, column: 3, scope: !252, inlinedAt: !269)
!317 = !DILocation(line: 220, column: 3, scope: !85)
!318 = !DILocation(line: 221, column: 3, scope: !85)
!319 = !DILocation(line: 223, column: 15, scope: !320)
!320 = distinct !DILexicalBlock(scope: !85, file: !1, line: 223, column: 7)
!321 = !DILocation(line: 223, column: 7, scope: !320)
!322 = !DILocation(line: 223, column: 25, scope: !320)
!323 = !DILocation(line: 223, column: 23, scope: !320)
!324 = !DILocation(line: 223, column: 7, scope: !85)
!325 = !DILocation(line: 225, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !320, file: !1, line: 224, column: 5)
!327 = !{!193, !193, i64 0}
!328 = !DILocation(line: 226, column: 7, scope: !326)
!329 = !DILocation(line: 230, column: 1, scope: !85)
!330 = distinct !DISubprogram(name: "print_wide_uint", scope: !1, file: !1, line: 79, type: !331, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !102, !13, !100}
!333 = !{!334, !335, !336, !337, !338, !339, !340}
!334 = !DILocalVariable(name: "n", arg: 1, scope: !330, file: !1, line: 79, type: !102)
!335 = !DILocalVariable(name: "nesting", arg: 2, scope: !330, file: !1, line: 79, type: !13)
!336 = !DILocalVariable(name: "wide_uint_bits", arg: 3, scope: !330, file: !1, line: 79, type: !100)
!337 = !DILocalVariable(name: "hex_digits_per_literal", scope: !330, file: !1, line: 84, type: !13)
!338 = !DILocalVariable(name: "bits_per_literal", scope: !330, file: !1, line: 85, type: !13)
!339 = !DILocalVariable(name: "remainder", scope: !330, file: !1, line: 87, type: !100)
!340 = !DILocalVariable(name: "needs_parentheses", scope: !341, file: !1, line: 91, type: !13)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 90, column: 5)
!342 = distinct !DILexicalBlock(scope: !330, file: !1, line: 89, column: 7)
!343 = !DILocation(line: 0, scope: !330)
!344 = !DILocation(line: 87, column: 24, scope: !330)
!345 = !DILocation(line: 89, column: 12, scope: !342)
!346 = !DILocation(line: 89, column: 9, scope: !342)
!347 = !DILocation(line: 89, column: 7, scope: !330)
!348 = !DILocation(line: 91, column: 33, scope: !341)
!349 = !DILocation(line: 91, column: 73, scope: !341)
!350 = !DILocation(line: 0, scope: !341)
!351 = !DILocation(line: 92, column: 11, scope: !341)
!352 = !DILocation(line: 93, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !341, file: !1, line: 92, column: 11)
!354 = !DILocation(line: 94, column: 55, scope: !341)
!355 = !DILocation(line: 94, column: 7, scope: !341)
!356 = !DILocation(line: 96, column: 9, scope: !357)
!357 = distinct !DILexicalBlock(scope: !341, file: !1, line: 95, column: 11)
!358 = !DILocation(line: 95, column: 11, scope: !341)
!359 = !DILocation(line: 97, column: 7, scope: !341)
!360 = !DILocation(line: 98, column: 5, scope: !341)
!361 = !DILocation(line: 99, column: 12, scope: !362)
!362 = distinct !DILexicalBlock(scope: !342, file: !1, line: 99, column: 12)
!363 = !DILocation(line: 99, column: 12, scope: !342)
!364 = !DILocation(line: 101, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !1, line: 100, column: 5)
!366 = !DILocation(line: 103, column: 28, scope: !365)
!367 = !DILocation(line: 103, column: 33, scope: !365)
!368 = !DILocation(line: 103, column: 53, scope: !365)
!369 = !DILocation(line: 103, column: 57, scope: !365)
!370 = !DILocation(line: 104, column: 5, scope: !365)
!371 = !DILocation(line: 106, column: 3, scope: !330)
!372 = !DILocation(line: 107, column: 1, scope: !330)
