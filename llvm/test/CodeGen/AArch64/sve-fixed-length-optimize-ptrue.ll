; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -aarch64-sve-vector-bits-min=512 -aarch64-sve-vector-bits-max=512  < %s | FileCheck %s

target triple = "aarch64-unknown-linux-gnu"

define void @add_v64i8(<64 x i8>* %a, <64 x i8>* %b) #0 {
; CHECK-LABEL: add_v64i8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.b
; CHECK-NEXT:    ld1b { z0.b }, p0/z, [x0]
; CHECK-NEXT:    ld1b { z1.b }, p0/z, [x1]
; CHECK-NEXT:    add z0.b, p0/m, z0.b, z1.b
; CHECK-NEXT:    st1b { z0.b }, p0, [x0]
; CHECK-NEXT:    ret
  %op1 = load <64 x i8>, <64 x i8>* %a
  %op2 = load <64 x i8>, <64 x i8>* %b
  %res = add <64 x i8> %op1, %op2
  store <64 x i8> %res, <64 x i8>* %a
  ret void
}

define void @add_v32i16(<32 x i16>* %a, <32 x i16>* %b, <32 x i16>* %c) #0 {
; CHECK-LABEL: add_v32i16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.h
; CHECK-NEXT:    ld1h { z0.h }, p0/z, [x0]
; CHECK-NEXT:    ld1h { z1.h }, p0/z, [x1]
; CHECK-NEXT:    add z0.h, p0/m, z0.h, z1.h
; CHECK-NEXT:    st1h { z0.h }, p0, [x0]
; CHECK-NEXT:    ret
  %op1 = load <32 x i16>, <32 x i16>* %a
  %op2 = load <32 x i16>, <32 x i16>* %b
  %res = add <32 x i16> %op1, %op2
  store <32 x i16> %res, <32 x i16>* %a
  ret void
}

define void @abs_v16i32(<16 x i32>* %a) #0 {
; CHECK-LABEL: abs_v16i32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.s
; CHECK-NEXT:    ld1w { z0.s }, p0/z, [x0]
; CHECK-NEXT:    abs z0.s, p0/m, z0.s
; CHECK-NEXT:    st1w { z0.s }, p0, [x0]
; CHECK-NEXT:    ret
  %op1 = load <16 x i32>, <16 x i32>* %a
  %res = call <16 x i32> @llvm.abs.v16i32(<16 x i32> %op1, i1 false)
  store <16 x i32> %res, <16 x i32>* %a
  ret void
}

define void @abs_v8i64(<8 x i64>* %a) #0 {
; CHECK-LABEL: abs_v8i64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [x0]
; CHECK-NEXT:    abs z0.d, p0/m, z0.d
; CHECK-NEXT:    st1d { z0.d }, p0, [x0]
; CHECK-NEXT:    ret
  %op1 = load <8 x i64>, <8 x i64>* %a
  %res = call <8 x i64> @llvm.abs.v8i64(<8 x i64> %op1, i1 false)
  store <8 x i64> %res, <8 x i64>* %a
  ret void
}

define void @fadd_v32f16(<32 x half>* %a, <32 x half>* %b) #0 {
; CHECK-LABEL: fadd_v32f16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.h
; CHECK-NEXT:    ld1h { z0.h }, p0/z, [x0]
; CHECK-NEXT:    ld1h { z1.h }, p0/z, [x1]
; CHECK-NEXT:    fadd z0.h, z0.h, z1.h
; CHECK-NEXT:    st1h { z0.h }, p0, [x0]
; CHECK-NEXT:    ret
  %op1 = load <32 x half>, <32 x half>* %a
  %op2 = load <32 x half>, <32 x half>* %b
  %res = fadd <32 x half> %op1, %op2
  store <32 x half> %res, <32 x half>* %a
  ret void
}

define void @fadd_v16f32(<16 x float>* %a, <16 x float>* %b) #0 {
; CHECK-LABEL: fadd_v16f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.s
; CHECK-NEXT:    ld1w { z0.s }, p0/z, [x0]
; CHECK-NEXT:    ld1w { z1.s }, p0/z, [x1]
; CHECK-NEXT:    fadd z0.s, z0.s, z1.s
; CHECK-NEXT:    st1w { z0.s }, p0, [x0]
; CHECK-NEXT:    ret
  %op1 = load <16 x float>, <16 x float>* %a
  %op2 = load <16 x float>, <16 x float>* %b
  %res = fadd <16 x float> %op1, %op2
  store <16 x float> %res, <16 x float>* %a
  ret void
}

define void @fadd_v8f64(<8 x double>* %a, <8 x double>* %b) #0 {
; CHECK-LABEL: fadd_v8f64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [x0]
; CHECK-NEXT:    ld1d { z1.d }, p0/z, [x1]
; CHECK-NEXT:    fadd z0.d, z0.d, z1.d
; CHECK-NEXT:    st1d { z0.d }, p0, [x0]
; CHECK-NEXT:    ret
  %op1 = load <8 x double>, <8 x double>* %a
  %op2 = load <8 x double>, <8 x double>* %b
  %res = fadd <8 x double> %op1, %op2
  store <8 x double> %res, <8 x double>* %a
  ret void
}

declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1)
declare <8 x i64> @llvm.abs.v8i64(<8 x i64>, i1)

attributes #0 = { "target-features"="+sve" }
