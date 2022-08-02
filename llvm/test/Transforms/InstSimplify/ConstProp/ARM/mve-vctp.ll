; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -passes=instsimplify -S -o - %s | FileCheck %s

target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"

define <16 x i1> @vctp8_0() {
; CHECK-LABEL: @vctp8_0(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <16 x i1> zeroinitializer
;
entry:
  %int = call <16 x i1> @llvm.arm.mve.vctp8(i32 0)
  ret <16 x i1> %int
}

define <16 x i1> @vctp8_1() {
; CHECK-LABEL: @vctp8_1(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
;
entry:
  %int = call <16 x i1> @llvm.arm.mve.vctp8(i32 1)
  ret <16 x i1> %int
}

define <16 x i1> @vctp8_8() {
; CHECK-LABEL: @vctp8_8(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
;
entry:
  %int = call <16 x i1> @llvm.arm.mve.vctp8(i32 8)
  ret <16 x i1> %int
}

define <16 x i1> @vctp8_15() {
; CHECK-LABEL: @vctp8_15(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false>
;
entry:
  %int = call <16 x i1> @llvm.arm.mve.vctp8(i32 15)
  ret <16 x i1> %int
}

define <16 x i1> @vctp8_16() {
; CHECK-LABEL: @vctp8_16(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
;
entry:
  %int = call <16 x i1> @llvm.arm.mve.vctp8(i32 16)
  ret <16 x i1> %int
}

define <16 x i1> @vctp8_100() {
; CHECK-LABEL: @vctp8_100(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
;
entry:
  %int = call <16 x i1> @llvm.arm.mve.vctp8(i32 100)
  ret <16 x i1> %int
}

define <16 x i1> @vctp8_m1() {
; CHECK-LABEL: @vctp8_m1(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
;
entry:
  %int = call <16 x i1> @llvm.arm.mve.vctp8(i32 -1)
  ret <16 x i1> %int
}



define <8 x i1> @vctp16_0() {
; CHECK-LABEL: @vctp16_0(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <8 x i1> zeroinitializer
;
entry:
  %int = call <8 x i1> @llvm.arm.mve.vctp16(i32 0)
  ret <8 x i1> %int
}

define <8 x i1> @vctp16_1() {
; CHECK-LABEL: @vctp16_1(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
;
entry:
  %int = call <8 x i1> @llvm.arm.mve.vctp16(i32 1)
  ret <8 x i1> %int
}

define <8 x i1> @vctp16_4() {
; CHECK-LABEL: @vctp16_4(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false>
;
entry:
  %int = call <8 x i1> @llvm.arm.mve.vctp16(i32 4)
  ret <8 x i1> %int
}

define <8 x i1> @vctp16_7() {
; CHECK-LABEL: @vctp16_7(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false>
;
entry:
  %int = call <8 x i1> @llvm.arm.mve.vctp16(i32 7)
  ret <8 x i1> %int
}

define <8 x i1> @vctp16_8() {
; CHECK-LABEL: @vctp16_8(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
;
entry:
  %int = call <8 x i1> @llvm.arm.mve.vctp16(i32 8)
  ret <8 x i1> %int
}

define <8 x i1> @vctp16_100() {
; CHECK-LABEL: @vctp16_100(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
;
entry:
  %int = call <8 x i1> @llvm.arm.mve.vctp16(i32 100)
  ret <8 x i1> %int
}

define <8 x i1> @vctp16_m1() {
; CHECK-LABEL: @vctp16_m1(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
;
entry:
  %int = call <8 x i1> @llvm.arm.mve.vctp16(i32 -1)
  ret <8 x i1> %int
}



define <4 x i1> @vctp32_0() {
; CHECK-LABEL: @vctp32_0(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <4 x i1> zeroinitializer
;
entry:
  %int = call <4 x i1> @llvm.arm.mve.vctp32(i32 0)
  ret <4 x i1> %int
}

define <4 x i1> @vctp32_1() {
; CHECK-LABEL: @vctp32_1(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <4 x i1> <i1 true, i1 false, i1 false, i1 false>
;
entry:
  %int = call <4 x i1> @llvm.arm.mve.vctp32(i32 1)
  ret <4 x i1> %int
}

define <4 x i1> @vctp32_3() {
; CHECK-LABEL: @vctp32_3(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <4 x i1> <i1 true, i1 true, i1 true, i1 false>
;
entry:
  %int = call <4 x i1> @llvm.arm.mve.vctp32(i32 3)
  ret <4 x i1> %int
}

define <4 x i1> @vctp32_4() {
; CHECK-LABEL: @vctp32_4(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <4 x i1> <i1 true, i1 true, i1 true, i1 true>
;
entry:
  %int = call <4 x i1> @llvm.arm.mve.vctp32(i32 4)
  ret <4 x i1> %int
}

define <4 x i1> @vctp32_100() {
; CHECK-LABEL: @vctp32_100(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <4 x i1> <i1 true, i1 true, i1 true, i1 true>
;
entry:
  %int = call <4 x i1> @llvm.arm.mve.vctp32(i32 100)
  ret <4 x i1> %int
}

define <4 x i1> @vctp32_m1() {
; CHECK-LABEL: @vctp32_m1(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <4 x i1> <i1 true, i1 true, i1 true, i1 true>
;
entry:
  %int = call <4 x i1> @llvm.arm.mve.vctp32(i32 -1)
  ret <4 x i1> %int
}



define <2 x i1> @vctp64_0() {
; CHECK-LABEL: @vctp64_0(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <2 x i1> zeroinitializer
;
entry:
  %int = call <2 x i1> @llvm.arm.mve.vctp64(i32 0)
  ret <2 x i1> %int
}

define <2 x i1> @vctp64_1() {
; CHECK-LABEL: @vctp64_1(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <2 x i1> <i1 true, i1 false>
;
entry:
  %int = call <2 x i1> @llvm.arm.mve.vctp64(i32 1)
  ret <2 x i1> %int
}

define <2 x i1> @vctp64_2() {
; CHECK-LABEL: @vctp64_2(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <2 x i1> <i1 true, i1 true>
;
entry:
  %int = call <2 x i1> @llvm.arm.mve.vctp64(i32 2)
  ret <2 x i1> %int
}

define <2 x i1> @vctp64_100() {
; CHECK-LABEL: @vctp64_100(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <2 x i1> <i1 true, i1 true>
;
entry:
  %int = call <2 x i1> @llvm.arm.mve.vctp64(i32 100)
  ret <2 x i1> %int
}

define <2 x i1> @vctp64_m1() {
; CHECK-LABEL: @vctp64_m1(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    ret <2 x i1> <i1 true, i1 true>
;
entry:
  %int = call <2 x i1> @llvm.arm.mve.vctp64(i32 -1)
  ret <2 x i1> %int
}



declare <2 x i1> @llvm.arm.mve.vctp64(i32)
declare <4 x i1> @llvm.arm.mve.vctp32(i32)
declare <8 x i1> @llvm.arm.mve.vctp16(i32)
declare <16 x i1> @llvm.arm.mve.vctp8(i32)
