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
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !15 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i8** %1, metadata !20, metadata !DIExpression()), !dbg !47
  %3 = icmp eq i32 %0, 2, !dbg !48
  br i1 %3, label %8, label %4, !dbg !50

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !51, !tbaa !53
  %6 = load i8*, i8** %1, align 8, !dbg !51, !tbaa !53
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %6) #12, !dbg !51
  br label %160, !dbg !57

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !58
  %10 = load i8*, i8** %9, align 8, !dbg !58, !tbaa !53
  call void @llvm.dbg.value(metadata i8* %10, metadata !59, metadata !DIExpression()) #12, !dbg !67
  %11 = tail call i64 @strtol(i8* nocapture nonnull %10, i8** null, i32 10) #12, !dbg !69
  %12 = trunc i64 %11 to i32, !dbg !70
  call void @llvm.dbg.value(metadata i32 %12, metadata !21, metadata !DIExpression()), !dbg !47
  %13 = icmp slt i32 %12, 3, !dbg !71
  br i1 %13, label %160, label %14, !dbg !73

14:                                               ; preds = %8
  %15 = and i32 %12, 1, !dbg !74
  call void @llvm.dbg.value(metadata i32 undef, metadata !21, metadata !DIExpression()), !dbg !47
  %16 = add nsw i32 %12, -2, !dbg !76
  %17 = add nuw nsw i32 %16, %15, !dbg !77
  %18 = sdiv i32 %17, 2, !dbg !78
  %19 = zext i32 %18 to i64
  call void @llvm.dbg.value(metadata i64 %19, metadata !23, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i64 %19, metadata !79, metadata !DIExpression()) #12, !dbg !85
  %20 = tail call noalias i8* @malloc(i64 %19) #12, !dbg !87
  call void @llvm.dbg.value(metadata i8* %20, metadata !84, metadata !DIExpression()) #12, !dbg !85
  %21 = icmp eq i8* %20, null, !dbg !88
  br i1 %21, label %22, label %25, !dbg !90

22:                                               ; preds = %14
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !91, !tbaa !53
  %24 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %23, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !91
  tail call void @exit(i32 1) #13, !dbg !92
  unreachable, !dbg !92

25:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %20, metadata !22, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i8* %20, metadata !93, metadata !DIExpression()) #12, !dbg !101
  call void @llvm.dbg.value(metadata i32 1, metadata !99, metadata !DIExpression()) #12, !dbg !101
  call void @llvm.dbg.value(metadata i64 %19, metadata !100, metadata !DIExpression()) #12, !dbg !101
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %20, i8 1, i64 %19, i1 false) #12, !dbg !103
  %26 = mul nuw nsw i64 %19, 24, !dbg !104
  call void @llvm.dbg.value(metadata i64 %26, metadata !79, metadata !DIExpression()) #12, !dbg !105
  %27 = tail call noalias i8* @malloc(i64 %26) #12, !dbg !107
  call void @llvm.dbg.value(metadata i8* %27, metadata !84, metadata !DIExpression()) #12, !dbg !105
  %28 = icmp eq i8* %27, null, !dbg !108
  br i1 %28, label %29, label %32, !dbg !109

29:                                               ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !110, !tbaa !53
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %30, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !110
  tail call void @exit(i32 1) #13, !dbg !111
  unreachable, !dbg !111

32:                                               ; preds = %25
  %33 = bitcast i8* %27 to %struct.prime*, !dbg !112
  call void @llvm.dbg.value(metadata %struct.prime* %33, metadata !28, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i64 0, metadata !27, metadata !DIExpression()), !dbg !47
  %34 = icmp ult i32 %17, 2, !dbg !113
  br i1 %34, label %80, label %35, !dbg !114

35:                                               ; preds = %32, %78
  %36 = phi i32 [ %55, %78 ], [ 0, %32 ]
  %37 = phi i64 [ %72, %78 ], [ 0, %32 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !41, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i64 %37, metadata !27, metadata !DIExpression()), !dbg !47
  %38 = trunc i64 %37 to i32, !dbg !115
  %39 = shl i32 %38, 1, !dbg !115
  %40 = add i32 %39, 3, !dbg !115
  call void @llvm.dbg.value(metadata i32 %40, metadata !42, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i32 %55, metadata !41, metadata !DIExpression()), !dbg !47
  %41 = zext i32 %36 to i64, !dbg !117
  call void @llvm.dbg.value(metadata %struct.prime* undef, metadata !118, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 %40, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i64 -1, metadata !124, metadata !DIExpression()), !dbg !125
  %42 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %41, i32 0, !dbg !127
  store i32 %40, i32* %42, align 8, !dbg !128, !tbaa !129
  %43 = zext i32 %40 to i64, !dbg !133
  call void @llvm.dbg.value(metadata i64 %43, metadata !134, metadata !DIExpression()), !dbg !144
  %44 = shl i32 %40, 1, !dbg !146
  %45 = and i32 %44, 28, !dbg !146
  %46 = lshr i32 -180781647, %45, !dbg !146
  %47 = zext i32 %46 to i64, !dbg !147
  call void @llvm.dbg.value(metadata i64 %47, metadata !139, metadata !DIExpression()), !dbg !144
  br label %48, !dbg !148

48:                                               ; preds = %48, %35
  %49 = phi i64 [ %47, %35 ], [ %52, %48 ], !dbg !149
  call void @llvm.dbg.value(metadata i64 %49, metadata !139, metadata !DIExpression()), !dbg !144
  %50 = mul i64 %49, %43, !dbg !150
  %51 = sub i64 2, %50, !dbg !151
  %52 = mul i64 %51, %49, !dbg !151
  call void @llvm.dbg.value(metadata i64 %52, metadata !140, metadata !DIExpression()), !dbg !152
  %53 = icmp eq i64 %52, %49, !dbg !153
  call void @llvm.dbg.value(metadata i64 %52, metadata !139, metadata !DIExpression()), !dbg !144
  br i1 %53, label %54, label %48, !llvm.loop !155

54:                                               ; preds = %48
  %55 = add i32 %36, 1, !dbg !158
  %56 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %41, i32 1, !dbg !159
  store i64 %49, i64* %56, align 8, !dbg !160, !tbaa !161
  %57 = udiv i64 -1, %43, !dbg !162
  %58 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %41, i32 2, !dbg !163
  store i64 %57, i64* %58, align 8, !dbg !164, !tbaa !165
  %59 = mul i32 %40, %40, !dbg !166
  %60 = add i32 %59, -3, !dbg !168
  %61 = lshr exact i32 %60, 1, !dbg !169
  call void @llvm.dbg.value(metadata i32 %61, metadata !46, metadata !DIExpression()), !dbg !116
  %62 = icmp ult i32 %61, %18, !dbg !170
  br i1 %62, label %63, label %69, !dbg !172

63:                                               ; preds = %54, %63
  %64 = phi i32 [ %67, %63 ], [ %61, %54 ]
  call void @llvm.dbg.value(metadata i32 %64, metadata !46, metadata !DIExpression()), !dbg !116
  %65 = zext i32 %64 to i64, !dbg !173
  %66 = getelementptr inbounds i8, i8* %20, i64 %65, !dbg !174
  store i8 0, i8* %66, align 1, !dbg !175, !tbaa !176
  %67 = add i32 %64, %40, !dbg !177
  call void @llvm.dbg.value(metadata i32 %67, metadata !46, metadata !DIExpression()), !dbg !116
  %68 = icmp ult i32 %67, %18, !dbg !170
  br i1 %68, label %63, label %69, !dbg !172, !llvm.loop !178

69:                                               ; preds = %63, %54
  br label %70, !dbg !181

70:                                               ; preds = %69, %74
  %71 = phi i64 [ %72, %74 ], [ %37, %69 ], !dbg !182
  call void @llvm.dbg.value(metadata i64 %71, metadata !27, metadata !DIExpression()), !dbg !47
  %72 = add i64 %71, 1, !dbg !183
  call void @llvm.dbg.value(metadata i64 %72, metadata !27, metadata !DIExpression()), !dbg !47
  %73 = icmp ult i64 %72, %19, !dbg !184
  br i1 %73, label %74, label %80, !dbg !185

74:                                               ; preds = %70
  %75 = getelementptr inbounds i8, i8* %20, i64 %72, !dbg !186
  %76 = load i8, i8* %75, align 1, !dbg !186, !tbaa !176
  %77 = icmp eq i8 %76, 0, !dbg !187
  br i1 %77, label %70, label %78, !dbg !181, !llvm.loop !188

78:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 %55, metadata !41, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i64 %72, metadata !27, metadata !DIExpression()), !dbg !47
  %79 = icmp ult i64 %72, %19, !dbg !113
  br i1 %79, label %35, label %80, !dbg !114, !llvm.loop !190

80:                                               ; preds = %78, %70, %32
  %81 = phi i32 [ 0, %32 ], [ %55, %70 ], [ %55, %78 ], !dbg !47
  call void @llvm.dbg.value(metadata %struct.prime* %33, metadata !192, metadata !DIExpression()) #12, !dbg !209
  call void @llvm.dbg.value(metadata i32 %81, metadata !199, metadata !DIExpression()) #12, !dbg !209
  call void @llvm.dbg.value(metadata i32 undef, metadata !204, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value)) #12, !dbg !209
  call void @llvm.dbg.value(metadata i32 undef, metadata !203, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !209
  %82 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !211
  %83 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 64) #12, !dbg !212
  call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()) #12, !dbg !209
  call void @llvm.dbg.value(metadata i32 2, metadata !201, metadata !DIExpression()) #12, !dbg !209
  %84 = icmp eq i32 %81, 0, !dbg !213
  br i1 %84, label %117, label %85, !dbg !214

85:                                               ; preds = %80
  %86 = zext i32 %81 to i64, !dbg !213
  br label %87, !dbg !214

87:                                               ; preds = %105, %85
  %88 = phi i64 [ 0, %85 ], [ %113, %105 ]
  %89 = phi i32 [ 2, %85 ], [ %106, %105 ]
  call void @llvm.dbg.value(metadata i64 %88, metadata !200, metadata !DIExpression()) #12, !dbg !209
  call void @llvm.dbg.value(metadata i32 %89, metadata !201, metadata !DIExpression()) #12, !dbg !209
  %90 = trunc i64 %88 to i32, !dbg !215
  %91 = add i32 %90, 8, !dbg !215
  %92 = icmp ult i32 %91, %81, !dbg !216
  br i1 %92, label %96, label %93, !dbg !217

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %88, i32 0
  %95 = load i32, i32* %94, align 8, !dbg !218, !tbaa !129
  br label %105, !dbg !217

96:                                               ; preds = %87
  %97 = zext i32 %91 to i64, !dbg !219
  %98 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %97, i32 0, !dbg !220
  %99 = load i32, i32* %98, align 8, !dbg !220, !tbaa !129
  %100 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %88, i32 0, !dbg !221
  %101 = load i32, i32* %100, align 8, !dbg !221, !tbaa !129
  %102 = sub i32 %99, %101, !dbg !222
  call void @llvm.dbg.value(metadata i32 %102, metadata !205, metadata !DIExpression()) #12, !dbg !223
  %103 = icmp ugt i32 %102, 255, !dbg !224
  br i1 %103, label %104, label %105, !dbg !226

104:                                              ; preds = %96
  tail call void @abort() #13, !dbg !227
  unreachable, !dbg !227

105:                                              ; preds = %96, %93
  %106 = phi i32 [ %101, %96 ], [ %95, %93 ], !dbg !228
  %107 = phi i32 [ %102, %96 ], [ 255, %93 ]
  %108 = sub i32 %106, %89, !dbg !218
  %109 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %107) #12, !dbg !218
  %110 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %88, i32 1, !dbg !229
  %111 = load i64, i64* %110, align 8, !dbg !229, !tbaa !161
  tail call fastcc void @print_wide_uint(i64 %111, i32 0, i32 64) #12, !dbg !230
  %112 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %106) #12, !dbg !228
  call void @llvm.dbg.value(metadata i32 %106, metadata !201, metadata !DIExpression()) #12, !dbg !209
  %113 = add nuw nsw i64 %88, 1, !dbg !231
  call void @llvm.dbg.value(metadata i64 %113, metadata !200, metadata !DIExpression()) #12, !dbg !209
  %114 = icmp eq i64 %113, %86, !dbg !213
  br i1 %114, label %115, label %87, !dbg !214, !llvm.loop !232

115:                                              ; preds = %105
  %116 = add i32 %106, 2, !dbg !234
  br label %117, !dbg !234

117:                                              ; preds = %115, %80
  %118 = phi i32 [ 4, %80 ], [ %116, %115 ]
  %119 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !234
  call void @llvm.dbg.value(metadata i32 %118, metadata !201, metadata !DIExpression()) #12, !dbg !209
  call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()) #12, !dbg !209
  call void @llvm.dbg.value(metadata i32 1, metadata !202, metadata !DIExpression()) #12, !dbg !209
  %120 = bitcast i8* %27 to i32*, !dbg !235
  %121 = load i32, i32* %120, align 8, !dbg !235, !tbaa !129
  %122 = mul i32 %121, %121, !dbg !241
  %123 = icmp ugt i32 %122, %118, !dbg !242
  br i1 %123, label %146, label %127, !dbg !243

124:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i32 %128, metadata !201, metadata !DIExpression()) #12, !dbg !209
  %125 = add i32 %128, 2, !dbg !244
  call void @llvm.dbg.value(metadata i32 %125, metadata !201, metadata !DIExpression()) #12, !dbg !209
  call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()) #12, !dbg !209
  call void @llvm.dbg.value(metadata i32 1, metadata !202, metadata !DIExpression()) #12, !dbg !209
  %126 = icmp ugt i32 %122, %125, !dbg !242
  br i1 %126, label %146, label %127, !dbg !243

127:                                              ; preds = %117, %124
  %128 = phi i32 [ %125, %124 ], [ %118, %117 ]
  %129 = zext i32 %128 to i64
  br label %136, !dbg !243

130:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i32 %145, metadata !200, metadata !DIExpression()) #12, !dbg !209
  %131 = zext i32 %145 to i64, !dbg !245
  %132 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %131, i32 0, !dbg !235
  %133 = load i32, i32* %132, align 8, !dbg !235, !tbaa !129
  %134 = mul i32 %133, %133, !dbg !241
  %135 = icmp ugt i32 %134, %128, !dbg !242
  br i1 %135, label %146, label %136, !dbg !243, !llvm.loop !246

136:                                              ; preds = %130, %127
  %137 = phi i64 [ 0, %127 ], [ %131, %130 ]
  %138 = phi i32 [ 0, %127 ], [ %145, %130 ]
  call void @llvm.dbg.value(metadata i32 %138, metadata !200, metadata !DIExpression()) #12, !dbg !209
  %139 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %137, i32 1, !dbg !249
  %140 = load i64, i64* %139, align 8, !dbg !249, !tbaa !161
  %141 = mul i64 %140, %129, !dbg !251
  %142 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %137, i32 2, !dbg !252
  %143 = load i64, i64* %142, align 8, !dbg !252, !tbaa !165
  %144 = icmp ugt i64 %141, %143, !dbg !253
  %145 = add i32 %138, 1, !dbg !254
  call void @llvm.dbg.value(metadata i32 %145, metadata !200, metadata !DIExpression()) #12, !dbg !209
  br i1 %144, label %130, label %124, !dbg !255

146:                                              ; preds = %124, %130, %117
  %147 = phi i32 [ %118, %117 ], [ %128, %130 ], [ %125, %124 ], !dbg !244
  %148 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %147) #12, !dbg !256
  tail call void @free(i8* %20) #12, !dbg !257
  tail call void @free(i8* nonnull %27) #12, !dbg !258
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !259, !tbaa !53
  %150 = tail call i32 @ferror(%struct._IO_FILE* %149) #12, !dbg !261
  %151 = tail call i32 @fclose(%struct._IO_FILE* %149), !dbg !262
  %152 = sub i32 0, %151, !dbg !263
  %153 = icmp eq i32 %150, %152, !dbg !263
  br i1 %153, label %160, label %154, !dbg !264

154:                                              ; preds = %146
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !265, !tbaa !53
  %156 = tail call i32* @__errno_location() #14, !dbg !265
  %157 = load i32, i32* %156, align 4, !dbg !265, !tbaa !267
  %158 = tail call i8* @strerror(i32 %157) #12, !dbg !265
  %159 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %155, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %158) #12, !dbg !265
  br label %160, !dbg !268

160:                                              ; preds = %146, %8, %154, %4
  %161 = phi i32 [ 1, %4 ], [ 1, %154 ], [ 0, %8 ], [ 0, %146 ], !dbg !47
  ret i32 %161, !dbg !269
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare !dbg !270 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #7

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_wide_uint(i64 %0, i32 %1, i32 %2) unnamed_addr #0 !dbg !272 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %1, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %2, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 7, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 28, metadata !280, metadata !DIExpression()), !dbg !285
  %4 = trunc i64 %0 to i32, !dbg !286
  %5 = and i32 %4, 268435455, !dbg !286
  call void @llvm.dbg.value(metadata i32 %5, metadata !281, metadata !DIExpression()), !dbg !285
  %6 = zext i32 %5 to i64, !dbg !287
  %7 = icmp eq i64 %6, %0, !dbg !288
  br i1 %7, label %20, label %8, !dbg !289

8:                                                ; preds = %3
  %9 = lshr i64 %0, 28, !dbg !290
  %10 = icmp ult i64 %0, 72057594037927936, !dbg !291
  call void @llvm.dbg.value(metadata i1 %10, metadata !282, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !292
  br i1 %10, label %16, label %11, !dbg !293

11:                                               ; preds = %8
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !294
  %13 = add nsw i32 %1, 1, !dbg !296
  tail call fastcc void @print_wide_uint(i64 %9, i32 %13, i32 %2), !dbg !297
  %14 = add nsw i32 %1, 3, !dbg !298
  %15 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !298
  br label %18, !dbg !298

16:                                               ; preds = %8
  %17 = add nsw i32 %1, 1, !dbg !296
  tail call fastcc void @print_wide_uint(i64 %9, i32 %17, i32 %2), !dbg !297
  br label %18, !dbg !300

18:                                               ; preds = %16, %11
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 28) #12, !dbg !301
  br label %28, !dbg !302

20:                                               ; preds = %3
  %21 = icmp eq i32 %1, 0, !dbg !303
  br i1 %21, label %28, label %22, !dbg !305

22:                                               ; preds = %20
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !306
  %24 = add i32 %2, -1, !dbg !308
  %25 = urem i32 %24, 28, !dbg !309
  %26 = and i32 %25, 3, !dbg !310
  %27 = add nuw nsw i32 %26, 1, !dbg !311
  call void @llvm.dbg.value(metadata i32 %27, metadata !279, metadata !DIExpression()), !dbg !285
  br label %28, !dbg !312

28:                                               ; preds = %20, %22, %18
  %29 = phi i32 [ 7, %18 ], [ %27, %22 ], [ 7, %20 ], !dbg !285
  call void @llvm.dbg.value(metadata i32 %29, metadata !279, metadata !DIExpression()), !dbg !285
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %29, i32 %5) #12, !dbg !313
  ret void, !dbg !314
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind readonly
declare !dbg !315 noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !370 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare i8* @strerror(i32) local_unnamed_addr #11

attributes #0 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/make-prime-list.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!"clang version 12.0.1"}
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 172, type: !16, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !27, !28, !41, !42, !46}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 172, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 172, type: !5)
!21 = !DILocalVariable(name: "limit", scope: !15, file: !1, line: 174, type: !4)
!22 = !DILocalVariable(name: "sieve", scope: !15, file: !1, line: 176, type: !6)
!23 = !DILocalVariable(name: "size", scope: !15, file: !1, line: 177, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 46, baseType: !26)
!25 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 177, type: !24)
!28 = !DILocalVariable(name: "prime_list", scope: !15, file: !1, line: 179, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prime", file: !1, line: 49, size: 192, elements: !31)
!31 = !{!32, !34, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !30, file: !1, line: 51, baseType: !33, size: 32)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "pinv", scope: !30, file: !1, line: 52, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "wide_uint", file: !1, line: 45, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !37, line: 102, baseType: !38)
!37 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !39, line: 73, baseType: !26)
!39 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lim", scope: !30, file: !1, line: 53, baseType: !35, size: 64, offset: 128)
!41 = !DILocalVariable(name: "nprimes", scope: !15, file: !1, line: 180, type: !33)
!42 = !DILocalVariable(name: "p", scope: !43, file: !1, line: 206, type: !33)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 205, column: 5)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 204, column: 3)
!45 = distinct !DILexicalBlock(scope: !15, file: !1, line: 204, column: 3)
!46 = !DILocalVariable(name: "j", scope: !43, file: !1, line: 207, type: !33)
!47 = !DILocation(line: 0, scope: !15)
!48 = !DILocation(line: 182, column: 12, scope: !49)
!49 = distinct !DILexicalBlock(scope: !15, file: !1, line: 182, column: 7)
!50 = !DILocation(line: 182, column: 7, scope: !15)
!51 = !DILocation(line: 184, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 183, column: 5)
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 186, column: 7, scope: !52)
!58 = !DILocation(line: 188, column: 17, scope: !15)
!59 = !DILocalVariable(name: "__nptr", arg: 1, scope: !60, file: !61, line: 361, type: !64)
!60 = distinct !DISubprogram(name: "atoi", scope: !61, file: !61, line: 361, type: !62, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!61 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!62 = !DISubroutineType(types: !63)
!63 = !{!4, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!66 = !{!59}
!67 = !DILocation(line: 0, scope: !60, inlinedAt: !68)
!68 = distinct !DILocation(line: 188, column: 11, scope: !15)
!69 = !DILocation(line: 363, column: 16, scope: !60, inlinedAt: !68)
!70 = !DILocation(line: 363, column: 10, scope: !60, inlinedAt: !68)
!71 = !DILocation(line: 189, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !15, file: !1, line: 189, column: 7)
!73 = !DILocation(line: 189, column: 7, scope: !15)
!74 = !DILocation(line: 193, column: 16, scope: !75)
!75 = distinct !DILexicalBlock(scope: !15, file: !1, line: 193, column: 8)
!76 = !DILocation(line: 193, column: 8, scope: !15)
!77 = !DILocation(line: 196, column: 16, scope: !15)
!78 = !DILocation(line: 196, column: 19, scope: !15)
!79 = !DILocalVariable(name: "s", arg: 1, scope: !80, file: !1, line: 161, type: !24)
!80 = distinct !DISubprogram(name: "xalloc", scope: !1, file: !1, line: 161, type: !81, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!8, !24}
!83 = !{!79, !84}
!84 = !DILocalVariable(name: "p", scope: !80, file: !1, line: 163, type: !8)
!85 = !DILocation(line: 0, scope: !80, inlinedAt: !86)
!86 = distinct !DILocation(line: 198, column: 11, scope: !15)
!87 = !DILocation(line: 163, column: 13, scope: !80, inlinedAt: !86)
!88 = !DILocation(line: 164, column: 7, scope: !89, inlinedAt: !86)
!89 = distinct !DILexicalBlock(scope: !80, file: !1, line: 164, column: 7)
!90 = !DILocation(line: 164, column: 7, scope: !80, inlinedAt: !86)
!91 = !DILocation(line: 167, column: 3, scope: !80, inlinedAt: !86)
!92 = !DILocation(line: 168, column: 3, scope: !80, inlinedAt: !86)
!93 = !DILocalVariable(name: "__dest", arg: 1, scope: !94, file: !95, line: 57, type: !8)
!94 = distinct !DISubprogram(name: "memset", scope: !95, file: !95, line: 57, type: !96, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!95 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!96 = !DISubroutineType(types: !97)
!97 = !{!8, !8, !4, !24}
!98 = !{!93, !99, !100}
!99 = !DILocalVariable(name: "__ch", arg: 2, scope: !94, file: !95, line: 57, type: !4)
!100 = !DILocalVariable(name: "__len", arg: 3, scope: !94, file: !95, line: 57, type: !24)
!101 = !DILocation(line: 0, scope: !94, inlinedAt: !102)
!102 = distinct !DILocation(line: 199, column: 3, scope: !15)
!103 = !DILocation(line: 59, column: 10, scope: !94, inlinedAt: !102)
!104 = !DILocation(line: 201, column: 29, scope: !15)
!105 = !DILocation(line: 0, scope: !80, inlinedAt: !106)
!106 = distinct !DILocation(line: 201, column: 16, scope: !15)
!107 = !DILocation(line: 163, column: 13, scope: !80, inlinedAt: !106)
!108 = !DILocation(line: 164, column: 7, scope: !89, inlinedAt: !106)
!109 = !DILocation(line: 164, column: 7, scope: !80, inlinedAt: !106)
!110 = !DILocation(line: 167, column: 3, scope: !80, inlinedAt: !106)
!111 = !DILocation(line: 168, column: 3, scope: !80, inlinedAt: !106)
!112 = !DILocation(line: 201, column: 16, scope: !15)
!113 = !DILocation(line: 204, column: 17, scope: !44)
!114 = !DILocation(line: 204, column: 3, scope: !45)
!115 = !DILocation(line: 206, column: 20, scope: !43)
!116 = !DILocation(line: 0, scope: !43)
!117 = !DILocation(line: 209, column: 23, scope: !43)
!118 = !DILocalVariable(name: "info", arg: 1, scope: !119, file: !1, line: 70, type: !29)
!119 = distinct !DISubprogram(name: "process_prime", scope: !1, file: !1, line: 70, type: !120, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !29, !33}
!122 = !{!118, !123, !124}
!123 = !DILocalVariable(name: "p", arg: 2, scope: !119, file: !1, line: 70, type: !33)
!124 = !DILocalVariable(name: "max", scope: !119, file: !1, line: 72, type: !35)
!125 = !DILocation(line: 0, scope: !119, inlinedAt: !126)
!126 = distinct !DILocation(line: 209, column: 7, scope: !43)
!127 = !DILocation(line: 73, column: 9, scope: !119, inlinedAt: !126)
!128 = !DILocation(line: 73, column: 11, scope: !119, inlinedAt: !126)
!129 = !{!130, !131, i64 0}
!130 = !{!"prime", !131, i64 0, !132, i64 8, !132, i64 16}
!131 = !{!"int", !55, i64 0}
!132 = !{!"long", !55, i64 0}
!133 = !DILocation(line: 74, column: 25, scope: !119, inlinedAt: !126)
!134 = !DILocalVariable(name: "a", arg: 1, scope: !135, file: !1, line: 57, type: !35)
!135 = distinct !DISubprogram(name: "binvert", scope: !1, file: !1, line: 57, type: !136, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!35, !35}
!138 = !{!134, !139, !140}
!139 = !DILocalVariable(name: "x", scope: !135, file: !1, line: 59, type: !35)
!140 = !DILocalVariable(name: "y", scope: !141, file: !1, line: 62, type: !35)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 61, column: 5)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 60, column: 3)
!143 = distinct !DILexicalBlock(scope: !135, file: !1, line: 60, column: 3)
!144 = !DILocation(line: 0, scope: !135, inlinedAt: !145)
!145 = distinct !DILocation(line: 74, column: 16, scope: !119, inlinedAt: !126)
!146 = !DILocation(line: 59, column: 28, scope: !135, inlinedAt: !145)
!147 = !DILocation(line: 59, column: 17, scope: !135, inlinedAt: !145)
!148 = !DILocation(line: 60, column: 3, scope: !135, inlinedAt: !145)
!149 = !DILocation(line: 59, column: 13, scope: !135, inlinedAt: !145)
!150 = !DILocation(line: 62, column: 28, scope: !141, inlinedAt: !145)
!151 = !DILocation(line: 62, column: 25, scope: !141, inlinedAt: !145)
!152 = !DILocation(line: 0, scope: !141, inlinedAt: !145)
!153 = !DILocation(line: 63, column: 13, scope: !154, inlinedAt: !145)
!154 = distinct !DILexicalBlock(scope: !141, file: !1, line: 63, column: 11)
!155 = distinct !{!155, !156, !157}
!156 = !DILocation(line: 60, column: 3, scope: !143, inlinedAt: !145)
!157 = !DILocation(line: 66, column: 5, scope: !143, inlinedAt: !145)
!158 = !DILocation(line: 209, column: 41, scope: !43)
!159 = !DILocation(line: 74, column: 9, scope: !119, inlinedAt: !126)
!160 = !DILocation(line: 74, column: 14, scope: !119, inlinedAt: !126)
!161 = !{!130, !132, i64 8}
!162 = !DILocation(line: 75, column: 19, scope: !119, inlinedAt: !126)
!163 = !DILocation(line: 75, column: 9, scope: !119, inlinedAt: !126)
!164 = !DILocation(line: 75, column: 13, scope: !119, inlinedAt: !126)
!165 = !{!130, !132, i64 16}
!166 = !DILocation(line: 211, column: 18, scope: !167)
!167 = distinct !DILexicalBlock(scope: !43, file: !1, line: 211, column: 7)
!168 = !DILocation(line: 211, column: 21, scope: !167)
!169 = !DILocation(line: 211, column: 25, scope: !167)
!170 = !DILocation(line: 211, column: 31, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 211, column: 7)
!172 = !DILocation(line: 211, column: 7, scope: !167)
!173 = !DILocation(line: 211, column: 29, scope: !171)
!174 = !DILocation(line: 212, column: 9, scope: !171)
!175 = !DILocation(line: 212, column: 18, scope: !171)
!176 = !{!55, !55, i64 0}
!177 = !DILocation(line: 211, column: 40, scope: !171)
!178 = distinct !{!178, !172, !179, !180}
!179 = !DILocation(line: 212, column: 20, scope: !167)
!180 = !{!"llvm.loop.mustprogress"}
!181 = !DILocation(line: 214, column: 7, scope: !43)
!182 = !DILocation(line: 0, scope: !45)
!183 = !DILocation(line: 214, column: 14, scope: !43)
!184 = !DILocation(line: 214, column: 18, scope: !43)
!185 = !DILocation(line: 214, column: 25, scope: !43)
!186 = !DILocation(line: 214, column: 28, scope: !43)
!187 = !DILocation(line: 214, column: 37, scope: !43)
!188 = distinct !{!188, !181, !189, !180}
!189 = !DILocation(line: 215, column: 9, scope: !43)
!190 = distinct !{!190, !114, !191, !180}
!191 = !DILocation(line: 216, column: 5, scope: !45)
!192 = !DILocalVariable(name: "primes", arg: 1, scope: !193, file: !1, line: 110, type: !196)
!193 = distinct !DISubprogram(name: "output_primes", scope: !1, file: !1, line: 110, type: !194, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !196, !33}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!198 = !{!192, !199, !200, !201, !202, !203, !204, !205}
!199 = !DILocalVariable(name: "nprimes", arg: 2, scope: !193, file: !1, line: 110, type: !33)
!200 = !DILocalVariable(name: "i", scope: !193, file: !1, line: 112, type: !33)
!201 = !DILocalVariable(name: "p", scope: !193, file: !1, line: 113, type: !33)
!202 = !DILocalVariable(name: "is_prime", scope: !193, file: !1, line: 114, type: !4)
!203 = !DILocalVariable(name: "wide_uint_bits", scope: !193, file: !1, line: 119, type: !33)
!204 = !DILocalVariable(name: "mask", scope: !193, file: !1, line: 120, type: !35)
!205 = !DILocalVariable(name: "d8", scope: !206, file: !1, line: 129, type: !33)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 128, column: 5)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 127, column: 3)
!208 = distinct !DILexicalBlock(scope: !193, file: !1, line: 127, column: 3)
!209 = !DILocation(line: 0, scope: !193, inlinedAt: !210)
!210 = distinct !DILocation(line: 218, column: 3, scope: !15)
!211 = !DILocation(line: 124, column: 3, scope: !193, inlinedAt: !210)
!212 = !DILocation(line: 125, column: 3, scope: !193, inlinedAt: !210)
!213 = !DILocation(line: 127, column: 24, scope: !207, inlinedAt: !210)
!214 = !DILocation(line: 127, column: 3, scope: !208, inlinedAt: !210)
!215 = !DILocation(line: 129, column: 27, scope: !206, inlinedAt: !210)
!216 = !DILocation(line: 129, column: 31, scope: !206, inlinedAt: !210)
!217 = !DILocation(line: 129, column: 25, scope: !206, inlinedAt: !210)
!218 = !DILocation(line: 132, column: 7, scope: !206, inlinedAt: !210)
!219 = !DILocation(line: 129, column: 43, scope: !206, inlinedAt: !210)
!220 = !DILocation(line: 129, column: 57, scope: !206, inlinedAt: !210)
!221 = !DILocation(line: 129, column: 71, scope: !206, inlinedAt: !210)
!222 = !DILocation(line: 129, column: 59, scope: !206, inlinedAt: !210)
!223 = !DILocation(line: 0, scope: !206, inlinedAt: !210)
!224 = !DILocation(line: 130, column: 15, scope: !225, inlinedAt: !210)
!225 = distinct !DILexicalBlock(scope: !206, file: !1, line: 130, column: 11)
!226 = !DILocation(line: 130, column: 11, scope: !206, inlinedAt: !210)
!227 = !DILocation(line: 131, column: 9, scope: !225, inlinedAt: !210)
!228 = !DILocation(line: 134, column: 7, scope: !206, inlinedAt: !210)
!229 = !DILocation(line: 133, column: 34, scope: !206, inlinedAt: !210)
!230 = !DILocation(line: 133, column: 7, scope: !206, inlinedAt: !210)
!231 = !DILocation(line: 127, column: 36, scope: !207, inlinedAt: !210)
!232 = distinct !{!232, !214, !233, !180}
!233 = !DILocation(line: 136, column: 5, scope: !208, inlinedAt: !210)
!234 = !DILocation(line: 138, column: 3, scope: !193, inlinedAt: !210)
!235 = !DILocation(line: 146, column: 25, scope: !236, inlinedAt: !210)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 146, column: 15)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 145, column: 9)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 144, column: 7)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 144, column: 7)
!240 = distinct !DILexicalBlock(scope: !193, file: !1, line: 142, column: 5)
!241 = !DILocation(line: 146, column: 27, scope: !236, inlinedAt: !210)
!242 = !DILocation(line: 146, column: 41, scope: !236, inlinedAt: !210)
!243 = !DILocation(line: 146, column: 15, scope: !237, inlinedAt: !210)
!244 = !DILocation(line: 143, column: 9, scope: !240, inlinedAt: !210)
!245 = !DILocation(line: 146, column: 15, scope: !236, inlinedAt: !210)
!246 = distinct !{!246, !247, !248, !180}
!247 = !DILocation(line: 144, column: 7, scope: !239, inlinedAt: !210)
!248 = !DILocation(line: 153, column: 9, scope: !239, inlinedAt: !210)
!249 = !DILocation(line: 148, column: 29, scope: !250, inlinedAt: !210)
!250 = distinct !DILexicalBlock(scope: !237, file: !1, line: 148, column: 15)
!251 = !DILocation(line: 148, column: 17, scope: !250, inlinedAt: !210)
!252 = !DILocation(line: 148, column: 47, scope: !250, inlinedAt: !210)
!253 = !DILocation(line: 148, column: 34, scope: !250, inlinedAt: !210)
!254 = !DILocation(line: 144, column: 44, scope: !238, inlinedAt: !210)
!255 = !DILocation(line: 148, column: 15, scope: !237, inlinedAt: !210)
!256 = !DILocation(line: 157, column: 3, scope: !193, inlinedAt: !210)
!257 = !DILocation(line: 220, column: 3, scope: !15)
!258 = !DILocation(line: 221, column: 3, scope: !15)
!259 = !DILocation(line: 223, column: 15, scope: !260)
!260 = distinct !DILexicalBlock(scope: !15, file: !1, line: 223, column: 7)
!261 = !DILocation(line: 223, column: 7, scope: !260)
!262 = !DILocation(line: 223, column: 25, scope: !260)
!263 = !DILocation(line: 223, column: 23, scope: !260)
!264 = !DILocation(line: 223, column: 7, scope: !15)
!265 = !DILocation(line: 225, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !260, file: !1, line: 224, column: 5)
!267 = !{!131, !131, i64 0}
!268 = !DILocation(line: 226, column: 7, scope: !266)
!269 = !DILocation(line: 230, column: 1, scope: !15)
!270 = !DISubprogram(name: "puts", scope: !271, file: !271, line: 637, type: !62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!271 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!272 = distinct !DISubprogram(name: "print_wide_uint", scope: !1, file: !1, line: 79, type: !273, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !35, !4, !33}
!275 = !{!276, !277, !278, !279, !280, !281, !282}
!276 = !DILocalVariable(name: "n", arg: 1, scope: !272, file: !1, line: 79, type: !35)
!277 = !DILocalVariable(name: "nesting", arg: 2, scope: !272, file: !1, line: 79, type: !4)
!278 = !DILocalVariable(name: "wide_uint_bits", arg: 3, scope: !272, file: !1, line: 79, type: !33)
!279 = !DILocalVariable(name: "hex_digits_per_literal", scope: !272, file: !1, line: 84, type: !4)
!280 = !DILocalVariable(name: "bits_per_literal", scope: !272, file: !1, line: 85, type: !4)
!281 = !DILocalVariable(name: "remainder", scope: !272, file: !1, line: 87, type: !33)
!282 = !DILocalVariable(name: "needs_parentheses", scope: !283, file: !1, line: 91, type: !4)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 90, column: 5)
!284 = distinct !DILexicalBlock(scope: !272, file: !1, line: 89, column: 7)
!285 = !DILocation(line: 0, scope: !272)
!286 = !DILocation(line: 87, column: 24, scope: !272)
!287 = !DILocation(line: 89, column: 12, scope: !284)
!288 = !DILocation(line: 89, column: 9, scope: !284)
!289 = !DILocation(line: 89, column: 7, scope: !272)
!290 = !DILocation(line: 91, column: 33, scope: !283)
!291 = !DILocation(line: 91, column: 73, scope: !283)
!292 = !DILocation(line: 0, scope: !283)
!293 = !DILocation(line: 92, column: 11, scope: !283)
!294 = !DILocation(line: 93, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !283, file: !1, line: 92, column: 11)
!296 = !DILocation(line: 94, column: 55, scope: !283)
!297 = !DILocation(line: 94, column: 7, scope: !283)
!298 = !DILocation(line: 96, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !283, file: !1, line: 95, column: 11)
!300 = !DILocation(line: 95, column: 11, scope: !283)
!301 = !DILocation(line: 97, column: 7, scope: !283)
!302 = !DILocation(line: 98, column: 5, scope: !283)
!303 = !DILocation(line: 99, column: 12, scope: !304)
!304 = distinct !DILexicalBlock(scope: !284, file: !1, line: 99, column: 12)
!305 = !DILocation(line: 99, column: 12, scope: !284)
!306 = !DILocation(line: 101, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !1, line: 100, column: 5)
!308 = !DILocation(line: 103, column: 28, scope: !307)
!309 = !DILocation(line: 103, column: 33, scope: !307)
!310 = !DILocation(line: 103, column: 53, scope: !307)
!311 = !DILocation(line: 103, column: 57, scope: !307)
!312 = !DILocation(line: 104, column: 5, scope: !307)
!313 = !DILocation(line: 106, column: 3, scope: !272)
!314 = !DILocation(line: 107, column: 1, scope: !272)
!315 = !DISubprogram(name: "ferror", scope: !271, file: !271, line: 766, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!316 = !DISubroutineType(types: !317)
!317 = !{!4, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !320, line: 49, size: 1728, elements: !321)
!320 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !337, !338, !339, !340, !343, !345, !347, !351, !354, !356, !359, !362, !363, !364, !365, !366}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !319, file: !320, line: 51, baseType: !4, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !319, file: !320, line: 54, baseType: !6, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !319, file: !320, line: 55, baseType: !6, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !319, file: !320, line: 56, baseType: !6, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !319, file: !320, line: 57, baseType: !6, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !319, file: !320, line: 58, baseType: !6, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !319, file: !320, line: 59, baseType: !6, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !319, file: !320, line: 60, baseType: !6, size: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !319, file: !320, line: 61, baseType: !6, size: 64, offset: 512)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !319, file: !320, line: 64, baseType: !6, size: 64, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !319, file: !320, line: 65, baseType: !6, size: 64, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !319, file: !320, line: 66, baseType: !6, size: 64, offset: 704)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !319, file: !320, line: 68, baseType: !335, size: 64, offset: 768)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !320, line: 36, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !319, file: !320, line: 70, baseType: !318, size: 64, offset: 832)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !319, file: !320, line: 72, baseType: !4, size: 32, offset: 896)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !319, file: !320, line: 73, baseType: !4, size: 32, offset: 928)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !319, file: !320, line: 74, baseType: !341, size: 64, offset: 960)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !39, line: 152, baseType: !342)
!342 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !319, file: !320, line: 77, baseType: !344, size: 16, offset: 1024)
!344 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !319, file: !320, line: 78, baseType: !346, size: 8, offset: 1040)
!346 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !319, file: !320, line: 79, baseType: !348, size: 8, offset: 1048)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 1)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !319, file: !320, line: 81, baseType: !352, size: 64, offset: 1088)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !320, line: 43, baseType: null)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !319, file: !320, line: 89, baseType: !355, size: 64, offset: 1152)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !39, line: 153, baseType: !342)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !319, file: !320, line: 91, baseType: !357, size: 64, offset: 1216)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !320, line: 37, flags: DIFlagFwdDecl)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !319, file: !320, line: 92, baseType: !360, size: 64, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !320, line: 38, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !319, file: !320, line: 93, baseType: !318, size: 64, offset: 1344)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !319, file: !320, line: 94, baseType: !8, size: 64, offset: 1408)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !319, file: !320, line: 95, baseType: !24, size: 64, offset: 1472)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !319, file: !320, line: 96, baseType: !4, size: 32, offset: 1536)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !319, file: !320, line: 98, baseType: !367, size: 160, offset: 1568)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 20)
!370 = !DISubprogram(name: "fclose", scope: !271, file: !271, line: 213, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
