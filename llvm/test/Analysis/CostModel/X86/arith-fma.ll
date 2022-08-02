; NOTE: Assertions have been autogenerated by utils/update_analyze_test_checks.py
; RUN: opt < %s -enable-no-nans-fp-math  -passes="print<cost-model>" 2>&1 -disable-output -mtriple=x86_64-apple-macosx10.8.0 -mattr=+xop | FileCheck %s --check-prefixes=XOP
; RUN: opt < %s -enable-no-nans-fp-math  -passes="print<cost-model>" 2>&1 -disable-output -mtriple=x86_64-apple-macosx10.8.0 -mattr=+fma,+avx | FileCheck %s --check-prefixes=AVX
; RUN: opt < %s -enable-no-nans-fp-math  -passes="print<cost-model>" 2>&1 -disable-output -mtriple=x86_64-apple-macosx10.8.0 -mattr=+fma,+avx2 | FileCheck %s --check-prefixes=AVX
; RUN: opt < %s -enable-no-nans-fp-math  -passes="print<cost-model>" 2>&1 -disable-output -mtriple=x86_64-apple-macosx10.8.0 -mattr=+fma,+avx512f | FileCheck %s --check-prefixes=AVX512
; RUN: opt < %s -enable-no-nans-fp-math  -passes="print<cost-model>" 2>&1 -disable-output -mtriple=x86_64-apple-macosx10.8.0 -mattr=+fma,+avx512f,+avx512bw | FileCheck %s --check-prefixes=AVX512

define i32 @fma(i32 %arg) {
; XOP-LABEL: 'fma'
; XOP-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %F32 = call float @llvm.fma.f32(float undef, float undef, float undef)
; XOP-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V4F32 = call <4 x float> @llvm.fma.v4f32(<4 x float> undef, <4 x float> undef, <4 x float> undef)
; XOP-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V8F32 = call <8 x float> @llvm.fma.v8f32(<8 x float> undef, <8 x float> undef, <8 x float> undef)
; XOP-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V16F32 = call <16 x float> @llvm.fma.v16f32(<16 x float> undef, <16 x float> undef, <16 x float> undef)
; XOP-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %F64 = call double @llvm.fma.f64(double undef, double undef, double undef)
; XOP-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V2F64 = call <2 x double> @llvm.fma.v2f64(<2 x double> undef, <2 x double> undef, <2 x double> undef)
; XOP-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V4F64 = call <4 x double> @llvm.fma.v4f64(<4 x double> undef, <4 x double> undef, <4 x double> undef)
; XOP-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V8F64 = call <8 x double> @llvm.fma.v8f64(<8 x double> undef, <8 x double> undef, <8 x double> undef)
; XOP-NEXT:  Cost Model: Found an estimated cost of 0 for instruction: ret i32 undef
;
; AVX-LABEL: 'fma'
; AVX-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %F32 = call float @llvm.fma.f32(float undef, float undef, float undef)
; AVX-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V4F32 = call <4 x float> @llvm.fma.v4f32(<4 x float> undef, <4 x float> undef, <4 x float> undef)
; AVX-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V8F32 = call <8 x float> @llvm.fma.v8f32(<8 x float> undef, <8 x float> undef, <8 x float> undef)
; AVX-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V16F32 = call <16 x float> @llvm.fma.v16f32(<16 x float> undef, <16 x float> undef, <16 x float> undef)
; AVX-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %F64 = call double @llvm.fma.f64(double undef, double undef, double undef)
; AVX-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V2F64 = call <2 x double> @llvm.fma.v2f64(<2 x double> undef, <2 x double> undef, <2 x double> undef)
; AVX-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V4F64 = call <4 x double> @llvm.fma.v4f64(<4 x double> undef, <4 x double> undef, <4 x double> undef)
; AVX-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V8F64 = call <8 x double> @llvm.fma.v8f64(<8 x double> undef, <8 x double> undef, <8 x double> undef)
; AVX-NEXT:  Cost Model: Found an estimated cost of 0 for instruction: ret i32 undef
;
; AVX512-LABEL: 'fma'
; AVX512-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %F32 = call float @llvm.fma.f32(float undef, float undef, float undef)
; AVX512-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V4F32 = call <4 x float> @llvm.fma.v4f32(<4 x float> undef, <4 x float> undef, <4 x float> undef)
; AVX512-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V8F32 = call <8 x float> @llvm.fma.v8f32(<8 x float> undef, <8 x float> undef, <8 x float> undef)
; AVX512-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V16F32 = call <16 x float> @llvm.fma.v16f32(<16 x float> undef, <16 x float> undef, <16 x float> undef)
; AVX512-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %F64 = call double @llvm.fma.f64(double undef, double undef, double undef)
; AVX512-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V2F64 = call <2 x double> @llvm.fma.v2f64(<2 x double> undef, <2 x double> undef, <2 x double> undef)
; AVX512-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V4F64 = call <4 x double> @llvm.fma.v4f64(<4 x double> undef, <4 x double> undef, <4 x double> undef)
; AVX512-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V8F64 = call <8 x double> @llvm.fma.v8f64(<8 x double> undef, <8 x double> undef, <8 x double> undef)
; AVX512-NEXT:  Cost Model: Found an estimated cost of 0 for instruction: ret i32 undef
;
  %F32 = call float @llvm.fma.f32(float undef, float undef, float undef)
  %V4F32 = call <4 x float> @llvm.fma.v4f32(<4 x float> undef, <4 x float> undef, <4 x float> undef)
  %V8F32 = call <8 x float> @llvm.fma.v8f32(<8 x float> undef, <8 x float> undef, <8 x float> undef)
  %V16F32 = call <16 x float> @llvm.fma.v16f32(<16 x float> undef, <16 x float> undef, <16 x float> undef)

  %F64 = call double @llvm.fma.f64(double undef, double undef, double undef)
  %V2F64 = call <2 x double> @llvm.fma.v2f64(<2 x double> undef, <2 x double> undef, <2 x double> undef)
  %V4F64 = call <4 x double> @llvm.fma.v4f64(<4 x double> undef, <4 x double> undef, <4 x double> undef)
  %V8F64 = call <8 x double> @llvm.fma.v8f64(<8 x double> undef, <8 x double> undef, <8 x double> undef)

  ret i32 undef
}

declare float @llvm.fma.f32(float, float, float)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>)

declare double @llvm.fma.f64(double, double, double)
declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>)
declare <4 x double> @llvm.fma.v4f64(<4 x double>, <4 x double>, <4 x double>)
declare <8 x double> @llvm.fma.v8f64(<8 x double>, <8 x double>, <8 x double>)
