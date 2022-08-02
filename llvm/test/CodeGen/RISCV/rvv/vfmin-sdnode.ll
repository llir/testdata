; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+d,+zfh,+v -target-abi=ilp32d \
; RUN:     -verify-machineinstrs < %s | FileCheck %s
; RUN: llc -mtriple=riscv64 -mattr=+d,+zfh,+v -target-abi=lp64d \
; RUN:     -verify-machineinstrs < %s | FileCheck %s

declare <vscale x 1 x half> @llvm.minnum.nxv1f16(<vscale x 1 x half>, <vscale x 1 x half>)

define <vscale x 1 x half> @vfmin_nxv1f16_vv(<vscale x 1 x half> %a, <vscale x 1 x half> %b) {
; CHECK-LABEL: vfmin_nxv1f16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, mf4, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <vscale x 1 x half> @llvm.minnum.nxv1f16(<vscale x 1 x half> %a, <vscale x 1 x half> %b)
  ret <vscale x 1 x half> %v
}

define <vscale x 1 x half> @vfmin_nxv1f16_vf(<vscale x 1 x half> %a, half %b) {
; CHECK-LABEL: vfmin_nxv1f16_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, mf4, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 1 x half> poison, half %b, i32 0
  %splat = shufflevector <vscale x 1 x half> %head, <vscale x 1 x half> poison, <vscale x 1 x i32> zeroinitializer
  %v = call <vscale x 1 x half> @llvm.minnum.nxv1f16(<vscale x 1 x half> %a, <vscale x 1 x half> %splat)
  ret <vscale x 1 x half> %v
}

declare <vscale x 2 x half> @llvm.minnum.nxv2f16(<vscale x 2 x half>, <vscale x 2 x half>)

define <vscale x 2 x half> @vfmin_nxv2f16_vv(<vscale x 2 x half> %a, <vscale x 2 x half> %b) {
; CHECK-LABEL: vfmin_nxv2f16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, mf2, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <vscale x 2 x half> @llvm.minnum.nxv2f16(<vscale x 2 x half> %a, <vscale x 2 x half> %b)
  ret <vscale x 2 x half> %v
}

define <vscale x 2 x half> @vfmin_nxv2f16_vf(<vscale x 2 x half> %a, half %b) {
; CHECK-LABEL: vfmin_nxv2f16_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, mf2, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 2 x half> poison, half %b, i32 0
  %splat = shufflevector <vscale x 2 x half> %head, <vscale x 2 x half> poison, <vscale x 2 x i32> zeroinitializer
  %v = call <vscale x 2 x half> @llvm.minnum.nxv2f16(<vscale x 2 x half> %a, <vscale x 2 x half> %splat)
  ret <vscale x 2 x half> %v
}

declare <vscale x 4 x half> @llvm.minnum.nxv4f16(<vscale x 4 x half>, <vscale x 4 x half>)

define <vscale x 4 x half> @vfmin_nxv4f16_vv(<vscale x 4 x half> %a, <vscale x 4 x half> %b) {
; CHECK-LABEL: vfmin_nxv4f16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, m1, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <vscale x 4 x half> @llvm.minnum.nxv4f16(<vscale x 4 x half> %a, <vscale x 4 x half> %b)
  ret <vscale x 4 x half> %v
}

define <vscale x 4 x half> @vfmin_nxv4f16_vf(<vscale x 4 x half> %a, half %b) {
; CHECK-LABEL: vfmin_nxv4f16_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, m1, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 4 x half> poison, half %b, i32 0
  %splat = shufflevector <vscale x 4 x half> %head, <vscale x 4 x half> poison, <vscale x 4 x i32> zeroinitializer
  %v = call <vscale x 4 x half> @llvm.minnum.nxv4f16(<vscale x 4 x half> %a, <vscale x 4 x half> %splat)
  ret <vscale x 4 x half> %v
}

declare <vscale x 8 x half> @llvm.minnum.nxv8f16(<vscale x 8 x half>, <vscale x 8 x half>)

define <vscale x 8 x half> @vfmin_nxv8f16_vv(<vscale x 8 x half> %a, <vscale x 8 x half> %b) {
; CHECK-LABEL: vfmin_nxv8f16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, m2, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v10
; CHECK-NEXT:    ret
  %v = call <vscale x 8 x half> @llvm.minnum.nxv8f16(<vscale x 8 x half> %a, <vscale x 8 x half> %b)
  ret <vscale x 8 x half> %v
}

define <vscale x 8 x half> @vfmin_nxv8f16_vf(<vscale x 8 x half> %a, half %b) {
; CHECK-LABEL: vfmin_nxv8f16_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, m2, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 8 x half> poison, half %b, i32 0
  %splat = shufflevector <vscale x 8 x half> %head, <vscale x 8 x half> poison, <vscale x 8 x i32> zeroinitializer
  %v = call <vscale x 8 x half> @llvm.minnum.nxv8f16(<vscale x 8 x half> %a, <vscale x 8 x half> %splat)
  ret <vscale x 8 x half> %v
}

declare <vscale x 16 x half> @llvm.minnum.nxv16f16(<vscale x 16 x half>, <vscale x 16 x half>)

define <vscale x 16 x half> @vfmin_nxv16f16_vv(<vscale x 16 x half> %a, <vscale x 16 x half> %b) {
; CHECK-LABEL: vfmin_nxv16f16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, m4, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v12
; CHECK-NEXT:    ret
  %v = call <vscale x 16 x half> @llvm.minnum.nxv16f16(<vscale x 16 x half> %a, <vscale x 16 x half> %b)
  ret <vscale x 16 x half> %v
}

define <vscale x 16 x half> @vfmin_nxv16f16_vf(<vscale x 16 x half> %a, half %b) {
; CHECK-LABEL: vfmin_nxv16f16_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, m4, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 16 x half> poison, half %b, i32 0
  %splat = shufflevector <vscale x 16 x half> %head, <vscale x 16 x half> poison, <vscale x 16 x i32> zeroinitializer
  %v = call <vscale x 16 x half> @llvm.minnum.nxv16f16(<vscale x 16 x half> %a, <vscale x 16 x half> %splat)
  ret <vscale x 16 x half> %v
}

declare <vscale x 32 x half> @llvm.minnum.nxv32f16(<vscale x 32 x half>, <vscale x 32 x half>)

define <vscale x 32 x half> @vfmin_nxv32f16_vv(<vscale x 32 x half> %a, <vscale x 32 x half> %b) {
; CHECK-LABEL: vfmin_nxv32f16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, m8, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v16
; CHECK-NEXT:    ret
  %v = call <vscale x 32 x half> @llvm.minnum.nxv32f16(<vscale x 32 x half> %a, <vscale x 32 x half> %b)
  ret <vscale x 32 x half> %v
}

define <vscale x 32 x half> @vfmin_nxv32f16_vf(<vscale x 32 x half> %a, half %b) {
; CHECK-LABEL: vfmin_nxv32f16_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e16, m8, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 32 x half> poison, half %b, i32 0
  %splat = shufflevector <vscale x 32 x half> %head, <vscale x 32 x half> poison, <vscale x 32 x i32> zeroinitializer
  %v = call <vscale x 32 x half> @llvm.minnum.nxv32f16(<vscale x 32 x half> %a, <vscale x 32 x half> %splat)
  ret <vscale x 32 x half> %v
}

declare <vscale x 1 x float> @llvm.minnum.nxv1f32(<vscale x 1 x float>, <vscale x 1 x float>)

define <vscale x 1 x float> @vfmin_nxv1f32_vv(<vscale x 1 x float> %a, <vscale x 1 x float> %b) {
; CHECK-LABEL: vfmin_nxv1f32_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, mf2, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <vscale x 1 x float> @llvm.minnum.nxv1f32(<vscale x 1 x float> %a, <vscale x 1 x float> %b)
  ret <vscale x 1 x float> %v
}

define <vscale x 1 x float> @vfmin_nxv1f32_vf(<vscale x 1 x float> %a, float %b) {
; CHECK-LABEL: vfmin_nxv1f32_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, mf2, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 1 x float> poison, float %b, i32 0
  %splat = shufflevector <vscale x 1 x float> %head, <vscale x 1 x float> poison, <vscale x 1 x i32> zeroinitializer
  %v = call <vscale x 1 x float> @llvm.minnum.nxv1f32(<vscale x 1 x float> %a, <vscale x 1 x float> %splat)
  ret <vscale x 1 x float> %v
}

declare <vscale x 2 x float> @llvm.minnum.nxv2f32(<vscale x 2 x float>, <vscale x 2 x float>)

define <vscale x 2 x float> @vfmin_nxv2f32_vv(<vscale x 2 x float> %a, <vscale x 2 x float> %b) {
; CHECK-LABEL: vfmin_nxv2f32_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, m1, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <vscale x 2 x float> @llvm.minnum.nxv2f32(<vscale x 2 x float> %a, <vscale x 2 x float> %b)
  ret <vscale x 2 x float> %v
}

define <vscale x 2 x float> @vfmin_nxv2f32_vf(<vscale x 2 x float> %a, float %b) {
; CHECK-LABEL: vfmin_nxv2f32_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, m1, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 2 x float> poison, float %b, i32 0
  %splat = shufflevector <vscale x 2 x float> %head, <vscale x 2 x float> poison, <vscale x 2 x i32> zeroinitializer
  %v = call <vscale x 2 x float> @llvm.minnum.nxv2f32(<vscale x 2 x float> %a, <vscale x 2 x float> %splat)
  ret <vscale x 2 x float> %v
}

declare <vscale x 4 x float> @llvm.minnum.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>)

define <vscale x 4 x float> @vfmin_nxv4f32_vv(<vscale x 4 x float> %a, <vscale x 4 x float> %b) {
; CHECK-LABEL: vfmin_nxv4f32_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, m2, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v10
; CHECK-NEXT:    ret
  %v = call <vscale x 4 x float> @llvm.minnum.nxv4f32(<vscale x 4 x float> %a, <vscale x 4 x float> %b)
  ret <vscale x 4 x float> %v
}

define <vscale x 4 x float> @vfmin_nxv4f32_vf(<vscale x 4 x float> %a, float %b) {
; CHECK-LABEL: vfmin_nxv4f32_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, m2, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 4 x float> poison, float %b, i32 0
  %splat = shufflevector <vscale x 4 x float> %head, <vscale x 4 x float> poison, <vscale x 4 x i32> zeroinitializer
  %v = call <vscale x 4 x float> @llvm.minnum.nxv4f32(<vscale x 4 x float> %a, <vscale x 4 x float> %splat)
  ret <vscale x 4 x float> %v
}

declare <vscale x 8 x float> @llvm.minnum.nxv8f32(<vscale x 8 x float>, <vscale x 8 x float>)

define <vscale x 8 x float> @vfmin_nxv8f32_vv(<vscale x 8 x float> %a, <vscale x 8 x float> %b) {
; CHECK-LABEL: vfmin_nxv8f32_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, m4, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v12
; CHECK-NEXT:    ret
  %v = call <vscale x 8 x float> @llvm.minnum.nxv8f32(<vscale x 8 x float> %a, <vscale x 8 x float> %b)
  ret <vscale x 8 x float> %v
}

define <vscale x 8 x float> @vfmin_nxv8f32_vf(<vscale x 8 x float> %a, float %b) {
; CHECK-LABEL: vfmin_nxv8f32_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, m4, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 8 x float> poison, float %b, i32 0
  %splat = shufflevector <vscale x 8 x float> %head, <vscale x 8 x float> poison, <vscale x 8 x i32> zeroinitializer
  %v = call <vscale x 8 x float> @llvm.minnum.nxv8f32(<vscale x 8 x float> %a, <vscale x 8 x float> %splat)
  ret <vscale x 8 x float> %v
}

declare <vscale x 16 x float> @llvm.minnum.nxv16f32(<vscale x 16 x float>, <vscale x 16 x float>)

define <vscale x 16 x float> @vfmin_nxv16f32_vv(<vscale x 16 x float> %a, <vscale x 16 x float> %b) {
; CHECK-LABEL: vfmin_nxv16f32_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, m8, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v16
; CHECK-NEXT:    ret
  %v = call <vscale x 16 x float> @llvm.minnum.nxv16f32(<vscale x 16 x float> %a, <vscale x 16 x float> %b)
  ret <vscale x 16 x float> %v
}

define <vscale x 16 x float> @vfmin_nxv16f32_vf(<vscale x 16 x float> %a, float %b) {
; CHECK-LABEL: vfmin_nxv16f32_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e32, m8, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 16 x float> poison, float %b, i32 0
  %splat = shufflevector <vscale x 16 x float> %head, <vscale x 16 x float> poison, <vscale x 16 x i32> zeroinitializer
  %v = call <vscale x 16 x float> @llvm.minnum.nxv16f32(<vscale x 16 x float> %a, <vscale x 16 x float> %splat)
  ret <vscale x 16 x float> %v
}

declare <vscale x 1 x double> @llvm.minnum.nxv1f64(<vscale x 1 x double>, <vscale x 1 x double>)

define <vscale x 1 x double> @vfmin_nxv1f64_vv(<vscale x 1 x double> %a, <vscale x 1 x double> %b) {
; CHECK-LABEL: vfmin_nxv1f64_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e64, m1, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <vscale x 1 x double> @llvm.minnum.nxv1f64(<vscale x 1 x double> %a, <vscale x 1 x double> %b)
  ret <vscale x 1 x double> %v
}

define <vscale x 1 x double> @vfmin_nxv1f64_vf(<vscale x 1 x double> %a, double %b) {
; CHECK-LABEL: vfmin_nxv1f64_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e64, m1, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 1 x double> poison, double %b, i32 0
  %splat = shufflevector <vscale x 1 x double> %head, <vscale x 1 x double> poison, <vscale x 1 x i32> zeroinitializer
  %v = call <vscale x 1 x double> @llvm.minnum.nxv1f64(<vscale x 1 x double> %a, <vscale x 1 x double> %splat)
  ret <vscale x 1 x double> %v
}

declare <vscale x 2 x double> @llvm.minnum.nxv2f64(<vscale x 2 x double>, <vscale x 2 x double>)

define <vscale x 2 x double> @vfmin_nxv2f64_vv(<vscale x 2 x double> %a, <vscale x 2 x double> %b) {
; CHECK-LABEL: vfmin_nxv2f64_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e64, m2, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v10
; CHECK-NEXT:    ret
  %v = call <vscale x 2 x double> @llvm.minnum.nxv2f64(<vscale x 2 x double> %a, <vscale x 2 x double> %b)
  ret <vscale x 2 x double> %v
}

define <vscale x 2 x double> @vfmin_nxv2f64_vf(<vscale x 2 x double> %a, double %b) {
; CHECK-LABEL: vfmin_nxv2f64_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e64, m2, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 2 x double> poison, double %b, i32 0
  %splat = shufflevector <vscale x 2 x double> %head, <vscale x 2 x double> poison, <vscale x 2 x i32> zeroinitializer
  %v = call <vscale x 2 x double> @llvm.minnum.nxv2f64(<vscale x 2 x double> %a, <vscale x 2 x double> %splat)
  ret <vscale x 2 x double> %v
}

declare <vscale x 4 x double> @llvm.minnum.nxv4f64(<vscale x 4 x double>, <vscale x 4 x double>)

define <vscale x 4 x double> @vfmin_nxv4f64_vv(<vscale x 4 x double> %a, <vscale x 4 x double> %b) {
; CHECK-LABEL: vfmin_nxv4f64_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e64, m4, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v12
; CHECK-NEXT:    ret
  %v = call <vscale x 4 x double> @llvm.minnum.nxv4f64(<vscale x 4 x double> %a, <vscale x 4 x double> %b)
  ret <vscale x 4 x double> %v
}

define <vscale x 4 x double> @vfmin_nxv4f64_vf(<vscale x 4 x double> %a, double %b) {
; CHECK-LABEL: vfmin_nxv4f64_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e64, m4, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 4 x double> poison, double %b, i32 0
  %splat = shufflevector <vscale x 4 x double> %head, <vscale x 4 x double> poison, <vscale x 4 x i32> zeroinitializer
  %v = call <vscale x 4 x double> @llvm.minnum.nxv4f64(<vscale x 4 x double> %a, <vscale x 4 x double> %splat)
  ret <vscale x 4 x double> %v
}

declare <vscale x 8 x double> @llvm.minnum.nxv8f64(<vscale x 8 x double>, <vscale x 8 x double>)

define <vscale x 8 x double> @vfmin_nxv8f64_vv(<vscale x 8 x double> %a, <vscale x 8 x double> %b) {
; CHECK-LABEL: vfmin_nxv8f64_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e64, m8, ta, mu
; CHECK-NEXT:    vfmin.vv v8, v8, v16
; CHECK-NEXT:    ret
  %v = call <vscale x 8 x double> @llvm.minnum.nxv8f64(<vscale x 8 x double> %a, <vscale x 8 x double> %b)
  ret <vscale x 8 x double> %v
}

define <vscale x 8 x double> @vfmin_nxv8f64_vf(<vscale x 8 x double> %a, double %b) {
; CHECK-LABEL: vfmin_nxv8f64_vf:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli a0, zero, e64, m8, ta, mu
; CHECK-NEXT:    vfmin.vf v8, v8, fa0
; CHECK-NEXT:    ret
  %head = insertelement <vscale x 8 x double> poison, double %b, i32 0
  %splat = shufflevector <vscale x 8 x double> %head, <vscale x 8 x double> poison, <vscale x 8 x i32> zeroinitializer
  %v = call <vscale x 8 x double> @llvm.minnum.nxv8f64(<vscale x 8 x double> %a, <vscale x 8 x double> %splat)
  ret <vscale x 8 x double> %v
}
