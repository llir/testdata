; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; PR34438
; Loop has a short trip count of 8 iterations. It should be vectorized because no runtime checks or tail loop are necessary.
; Two cases tested AVX (MaxVF=8 = TripCount) and AVX512 (MaxVF=16 > TripCount)

; RUN: opt < %s -loop-vectorize -mtriple=x86_64-apple-macosx10.8.0 -mcpu=corei7-avx -S | FileCheck %s
; RUN: opt < %s -loop-vectorize -mtriple=x86_64-apple-macosx10.8.0 -mcpu=skylake-avx512 -S | FileCheck %s

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

define void @small_tc(float* noalias nocapture %A, float* noalias nocapture readonly %B) {
; CHECK-LABEL: @small_tc(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br i1 false, label [[SCALAR_PH:%.*]], label [[VECTOR_PH:%.*]]
; CHECK:       vector.ph:
; CHECK-NEXT:    br label [[VECTOR_BODY:%.*]]
; CHECK:       vector.body:
; CHECK-NEXT:    [[INDEX:%.*]] = phi i64 [ 0, [[VECTOR_PH]] ], [ [[INDEX_NEXT:%.*]], [[VECTOR_BODY]] ]
; CHECK-NEXT:    [[TMP0:%.*]] = add i64 [[INDEX]], 0
; CHECK-NEXT:    [[TMP1:%.*]] = getelementptr inbounds float, float* [[B:%.*]], i64 [[TMP0]]
; CHECK-NEXT:    [[TMP2:%.*]] = getelementptr inbounds float, float* [[TMP1]], i32 0
; CHECK-NEXT:    [[TMP3:%.*]] = bitcast float* [[TMP2]] to <8 x float>*
; CHECK-NEXT:    [[WIDE_LOAD:%.*]] = load <8 x float>, <8 x float>* [[TMP3]], align 4, !llvm.access.group !0
; CHECK-NEXT:    [[TMP4:%.*]] = getelementptr inbounds float, float* [[A:%.*]], i64 [[TMP0]]
; CHECK-NEXT:    [[TMP5:%.*]] = getelementptr inbounds float, float* [[TMP4]], i32 0
; CHECK-NEXT:    [[TMP6:%.*]] = bitcast float* [[TMP5]] to <8 x float>*
; CHECK-NEXT:    [[WIDE_LOAD1:%.*]] = load <8 x float>, <8 x float>* [[TMP6]], align 4, !llvm.access.group !0
; CHECK-NEXT:    [[TMP7:%.*]] = fadd fast <8 x float> [[WIDE_LOAD]], [[WIDE_LOAD1]]
; CHECK-NEXT:    [[TMP8:%.*]] = bitcast float* [[TMP5]] to <8 x float>*
; CHECK-NEXT:    store <8 x float> [[TMP7]], <8 x float>* [[TMP8]], align 4, !llvm.access.group !0
; CHECK-NEXT:    [[INDEX_NEXT]] = add nuw i64 [[INDEX]], 8
; CHECK-NEXT:    br i1 true, label [[MIDDLE_BLOCK:%.*]], label [[VECTOR_BODY]], [[LOOP1:!llvm.loop !.*]]
; CHECK:       middle.block:
; CHECK-NEXT:    [[CMP_N:%.*]] = icmp eq i64 8, 8
; CHECK-NEXT:    br i1 [[CMP_N]], label [[FOR_END:%.*]], label [[SCALAR_PH]]
; CHECK:       scalar.ph:
; CHECK-NEXT:    [[BC_RESUME_VAL:%.*]] = phi i64 [ 8, [[MIDDLE_BLOCK]] ], [ 0, [[ENTRY:%.*]] ]
; CHECK-NEXT:    br label [[FOR_BODY:%.*]]
; CHECK:       for.body:
; CHECK-NEXT:    [[INDVARS_IV:%.*]] = phi i64 [ [[BC_RESUME_VAL]], [[SCALAR_PH]] ], [ [[INDVARS_IV_NEXT:%.*]], [[FOR_BODY]] ]
; CHECK-NEXT:    [[ARRAYIDX:%.*]] = getelementptr inbounds float, float* [[B]], i64 [[INDVARS_IV]]
; CHECK-NEXT:    [[TMP10:%.*]] = load float, float* [[ARRAYIDX]], align 4, !llvm.access.group !0
; CHECK-NEXT:    [[ARRAYIDX2:%.*]] = getelementptr inbounds float, float* [[A]], i64 [[INDVARS_IV]]
; CHECK-NEXT:    [[TMP11:%.*]] = load float, float* [[ARRAYIDX2]], align 4, !llvm.access.group !0
; CHECK-NEXT:    [[ADD:%.*]] = fadd fast float [[TMP10]], [[TMP11]]
; CHECK-NEXT:    store float [[ADD]], float* [[ARRAYIDX2]], align 4, !llvm.access.group !0
; CHECK-NEXT:    [[INDVARS_IV_NEXT]] = add nuw nsw i64 [[INDVARS_IV]], 1
; CHECK-NEXT:    [[EXITCOND:%.*]] = icmp eq i64 [[INDVARS_IV_NEXT]], 8
; CHECK-NEXT:    br i1 [[EXITCOND]], label [[FOR_END]], label [[FOR_BODY]], [[LOOP3:!llvm.loop !.*]]
; CHECK:       for.end:
; CHECK-NEXT:    ret void
;
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float, float* %B, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4, !llvm.access.group !5
  %arrayidx2 = getelementptr inbounds float, float* %A, i64 %indvars.iv
  %1 = load float, float* %arrayidx2, align 4, !llvm.access.group !5
  %add = fadd fast float %0, %1
  store float %add, float* %arrayidx2, align 4, !llvm.access.group !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !4

for.end:
  ret void
}

!3 = !{!3, !{!"llvm.loop.parallel_accesses", !5}}
!4 = !{!4}
!5 = distinct !{}
