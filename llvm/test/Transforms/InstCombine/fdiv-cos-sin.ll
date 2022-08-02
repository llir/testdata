; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -S -passes=instcombine < %s | FileCheck %s

define double @fdiv_cos_sin(double %a) {
; CHECK-LABEL: @fdiv_cos_sin(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.cos.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call double @llvm.sin.f64(double [[A]])
; CHECK-NEXT:    [[DIV:%.*]] = fdiv double [[TMP1]], [[TMP2]]
; CHECK-NEXT:    ret double [[DIV]]
;
  %1 = call double @llvm.cos.f64(double %a)
  %2 = call double @llvm.sin.f64(double %a)
  %div = fdiv double %1, %2
  ret double %div
}

define double @fdiv_strict_cos_strict_sin_reassoc(double %a) {
; CHECK-LABEL: @fdiv_strict_cos_strict_sin_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.cos.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.sin.f64(double [[A]])
; CHECK-NEXT:    [[DIV:%.*]] = fdiv double [[TMP1]], [[TMP2]]
; CHECK-NEXT:    ret double [[DIV]]
;
  %1 = call double @llvm.cos.f64(double %a)
  %2 = call reassoc double @llvm.sin.f64(double %a)
  %div = fdiv double %1, %2
  ret double %div
}

define double @fdiv_reassoc_cos_strict_sin_strict(double %a, i32* dereferenceable(2) %dummy) {
; CHECK-LABEL: @fdiv_reassoc_cos_strict_sin_strict(
; CHECK-NEXT:    [[TAN:%.*]] = call reassoc double @tan(double [[A:%.*]]) #1
; CHECK-NEXT:    [[TMP1:%.*]] = fdiv reassoc double 1.000000e+00, [[TAN]]
; CHECK-NEXT:    ret double [[TMP1]]
;
  %1 = call double @llvm.cos.f64(double %a)
  %2 = call double @llvm.sin.f64(double %a)
  %div = fdiv reassoc double %1, %2
  ret double %div
}

define double @fdiv_reassoc_cos_reassoc_sin_strict(double %a) {
; CHECK-LABEL: @fdiv_reassoc_cos_reassoc_sin_strict(
; CHECK-NEXT:    [[TAN:%.*]] = call reassoc double @tan(double [[A:%.*]]) #1
; CHECK-NEXT:    [[TMP1:%.*]] = fdiv reassoc double 1.000000e+00, [[TAN]]
; CHECK-NEXT:    ret double [[TMP1]]
;
  %1 = call reassoc double @llvm.cos.f64(double %a)
  %2 = call double @llvm.sin.f64(double %a)
  %div = fdiv reassoc double %1, %2
  ret double %div
}

define double @fdiv_cos_sin_reassoc_multiple_uses(double %a) {
; CHECK-LABEL: @fdiv_cos_sin_reassoc_multiple_uses(
; CHECK-NEXT:    [[TMP1:%.*]] = call reassoc double @llvm.cos.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.sin.f64(double [[A]])
; CHECK-NEXT:    [[DIV:%.*]] = fdiv reassoc double [[TMP1]], [[TMP2]]
; CHECK-NEXT:    call void @use(double [[TMP2]])
; CHECK-NEXT:    ret double [[DIV]]
;
  %1 = call reassoc double @llvm.cos.f64(double %a)
  %2 = call reassoc double @llvm.sin.f64(double %a)
  %div = fdiv reassoc double %1, %2
  call void @use(double %2)
  ret double %div
}

define double @fdiv_cos_sin_reassoc(double %a) {
; CHECK-LABEL: @fdiv_cos_sin_reassoc(
; CHECK-NEXT:    [[TAN:%.*]] = call reassoc double @tan(double [[A:%.*]]) #1
; CHECK-NEXT:    [[TMP1:%.*]] = fdiv reassoc double 1.000000e+00, [[TAN]]
; CHECK-NEXT:    ret double [[TMP1]]
;
  %1 = call reassoc double @llvm.cos.f64(double %a)
  %2 = call reassoc double @llvm.sin.f64(double %a)
  %div = fdiv reassoc double %1, %2
  ret double %div
}

define half @fdiv_cosf16_sinf16_reassoc(half %a) {
; CHECK-LABEL: @fdiv_cosf16_sinf16_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call reassoc half @llvm.cos.f16(half [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc half @llvm.sin.f16(half [[A]])
; CHECK-NEXT:    [[DIV:%.*]] = fdiv reassoc half [[TMP1]], [[TMP2]]
; CHECK-NEXT:    ret half [[DIV]]
;
  %1 = call reassoc half @llvm.cos.f16(half %a)
  %2 = call reassoc half @llvm.sin.f16(half %a)
  %div = fdiv reassoc half %1, %2
  ret half %div
}

define float @fdiv_cosf_sinf_reassoc(float %a) {
; CHECK-LABEL: @fdiv_cosf_sinf_reassoc(
; CHECK-NEXT:    [[TANF:%.*]] = call reassoc float @tanf(float [[A:%.*]]) #1
; CHECK-NEXT:    [[TMP1:%.*]] = fdiv reassoc float 1.000000e+00, [[TANF]]
; CHECK-NEXT:    ret float [[TMP1]]
;
  %1 = call reassoc float @llvm.cos.f32(float %a)
  %2 = call reassoc float @llvm.sin.f32(float %a)
  %div = fdiv reassoc float %1, %2
  ret float %div
}

define fp128 @fdiv_cosfp128_sinfp128_reassoc(fp128 %a) {
; CHECK-LABEL: @fdiv_cosfp128_sinfp128_reassoc(
; CHECK-NEXT:    [[TANL:%.*]] = call reassoc fp128 @tanl(fp128 [[A:%.*]]) #1
; CHECK-NEXT:    [[TMP1:%.*]] = fdiv reassoc fp128 0xL00000000000000003FFF000000000000, [[TANL]]
; CHECK-NEXT:    ret fp128 [[TMP1]]
;
  %1 = call reassoc fp128 @llvm.cos.fp128(fp128 %a)
  %2 = call reassoc fp128 @llvm.sin.fp128(fp128 %a)
  %div = fdiv reassoc fp128 %1, %2
  ret fp128 %div
}

declare half @llvm.cos.f16(half) #1
declare float @llvm.cos.f32(float) #1
declare double @llvm.cos.f64(double) #1
declare fp128 @llvm.cos.fp128(fp128) #1

declare half @llvm.sin.f16(half) #1
declare float @llvm.sin.f32(float) #1
declare double @llvm.sin.f64(double) #1
declare fp128 @llvm.sin.fp128(fp128) #1

declare void @use(double)

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { nounwind readnone }
