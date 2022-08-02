; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -verify-machineinstrs -mtriple=aarch64-none-linux-gnu -mattr=+neon | FileCheck %s

define <4 x half> @shuffle1(<2 x half> %a, <2 x half> %b) {
; CHECK-LABEL: shuffle1:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    zip1 v0.2s, v1.2s, v0.2s
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <2 x half> %a, <2 x half> %b, <4 x i32> <i32 2, i32 3, i32 0, i32 undef>
  ret <4 x half> %res
}

define <4 x half> @shuffle2(<2 x half> %a, <2 x half> %b) {
; CHECK-LABEL: shuffle2:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    zip1 v0.2s, v0.2s, v1.2s
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <2 x half> %a, <2 x half> %b, <4 x i32> <i32 undef, i32 1, i32 2, i32 undef>
  ret <4 x half> %res
}

define <4 x i32> @shuffle3(<4 x i32> %a, <4 x i32> %b) {
; CHECK-LABEL: shuffle3:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    mov v0.d[0], v1.d[1]
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  ret <4 x i32> %res
}

define <4 x float> @shuffle4(<4 x float> %a, <4 x float> %b) {
; CHECK-LABEL: shuffle4:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    mov v0.d[1], v1.d[1]
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x float> %res
}

define <16 x i8> @shuffle5(<16 x i8> %a, <16 x i8> %b) {
; CHECK-LABEL: shuffle5:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    uzp1 v0.8h, v0.8h, v1.8h
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 4, i32 5,
                                                               i32 8, i32 9, i32 12, i32 13,
                                                               i32 16, i32 17, i32 20, i32 21,
                                                               i32 24, i32 25, i32 28, i32 29>
  ret <16 x i8> %res
}

define <16 x i8> @shuffle6(<16 x i8> %a, <16 x i8> %b) {
; CHECK-LABEL: shuffle6:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    trn1 v0.8h, v0.8h, v1.8h
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <16 x i8> %a, <16 x i8> %b, <16 x i32> <i32 0, i32 1, i32 16, i32 17,
                                                               i32 4, i32 5, i32 20, i32 21,
                                                               i32 8, i32 9, i32 24, i32 25,
                                                               i32 12, i32 13, i32 28, i32 29>
  ret <16 x i8> %res
}

define <8 x i8> @shuffle7(<8 x i8> %a, <8 x i8> %b) {
; CHECK-LABEL: shuffle7:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    uzp2 v0.4h, v0.4h, v1.4h
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <8 x i8> %a, <8 x i8> %b, <8 x i32> <i32 2, i32 3, i32 6, i32 undef,
                                                            i32 undef, i32 11, i32 14, i32 undef>
  ret <8 x i8> %res
}

define <8 x i8> @shuffle8(<8 x i8> %a, <8 x i8> %b) {
; CHECK-LABEL: shuffle8:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    trn2 v0.4h, v0.4h, v1.4h
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <8 x i8> %a, <8 x i8> %b, <8 x i32> <i32 2, i32 3, i32 10, i32 undef,
                                                            i32 undef, i32 7, i32 14, i32 undef>
  ret <8 x i8> %res
}

; No blocks
define <8 x i8> @shuffle9(<8 x i8> %a) {
; CHECK-LABEL: shuffle9:
; CHECK:       // %bb.0:
; CHECK-NEXT:    rev32 v0.4h, v0.4h
; CHECK-NEXT:    ret
  %res = shufflevector <8 x i8> %a, <8 x i8> undef, <8 x i32> <i32 2, i32 3, i32 0, i32 1,
                                                               i32 6, i32 7, i32 4, i32 5>
  ret <8 x i8> %res
}

define <8 x i16> @shuffle10(<8 x i16> %a) {
; CHECK-LABEL: shuffle10:
; CHECK:       // %bb.0:
; CHECK-NEXT:    rev64 v0.4s, v0.4s
; CHECK-NEXT:    ret
  %res = shufflevector <8 x i16> %a, <8 x i16> undef, <8 x i32> <i32 2, i32 3, i32 0, i32 1,
                                                                 i32 undef, i32 undef, i32 4, i32 5>
  ret <8 x i16> %res
}

define <4 x i16> @shuffle11(<8 x i16> %a, <8 x i16> %b) {
; CHECK-LABEL: shuffle11:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    mov v1.s[1], v0.s[0]
; CHECK-NEXT:    fmov d0, d1
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <8 x i16> %a, <8 x i16> %b, <4 x i32> <i32 8, i32 9, i32 0, i32 1>
  ret <4 x i16> %res
}

define <8 x i8> @shuffle12(<8 x i8> %a, <8 x i8> %b) {
; CHECK-LABEL: shuffle12:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    uzp1 v0.4h, v0.4h, v1.4h
; CHECK-NEXT:    trn2 v0.4h, v0.4h, v0.4h
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <8 x i8> %a, <8 x i8> %b, <8 x i32> <i32 4, i32 5, i32 4, i32 undef,
                                                            i32 undef, i32 13, i32 12, i32 undef>
  ret <8 x i8> %res
}

define <8 x i16> @shuffle_widen_faili1(<4 x i16> %a, <4 x i16> %b) {
; CHECK-LABEL: shuffle_widen_faili1:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    rev32 v2.4h, v0.4h
; CHECK-NEXT:    rev32 v3.4h, v1.4h
; CHECK-NEXT:    ext v1.8b, v2.8b, v1.8b, #4
; CHECK-NEXT:    ext v0.8b, v3.8b, v0.8b, #4
; CHECK-NEXT:    mov v0.d[1], v1.d[0]
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <4 x i16> %a, <4 x i16> %b, <8 x i32> <i32 7, i32 6, i32 0, i32 1,
                                                              i32 3, i32 2, i32 4, i32 5>
  ret <8 x i16> %res
}

define <8 x i16> @shuffle_widen_fail2(<4 x i16> %a, <4 x i16> %b) {
; CHECK-LABEL: shuffle_widen_fail2:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    uzp1 v2.4h, v0.4h, v0.4h
; CHECK-NEXT:    trn1 v3.4h, v1.4h, v1.4h
; CHECK-NEXT:    ext v1.8b, v2.8b, v1.8b, #4
; CHECK-NEXT:    ext v0.8b, v3.8b, v0.8b, #4
; CHECK-NEXT:    mov v0.d[1], v1.d[0]
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <4 x i16> %a, <4 x i16> %b, <8 x i32> <i32 6, i32 6, i32 0, i32 1,
                                                              i32 undef, i32 2, i32 4, i32 5>
  ret <8 x i16> %res
}

define <8 x i16> @shuffle_widen_fail3(<8 x i16> %a, <8 x i16> %b) {
; CHECK-LABEL: shuffle_widen_fail3:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    adrp x8, .LCPI14_0
; CHECK-NEXT:    // kill: def $q1 killed $q1 killed $q0_q1 def $q0_q1
; CHECK-NEXT:    // kill: def $q0 killed $q0 killed $q0_q1 def $q0_q1
; CHECK-NEXT:    ldr q2, [x8, :lo12:.LCPI14_0]
; CHECK-NEXT:    tbl v0.16b, { v0.16b, v1.16b }, v2.16b
; CHECK-NEXT:    ret
entry:
  %res = shufflevector <8 x i16> %a, <8 x i16> %b, <8 x i32> <i32 1, i32 5, i32 12, i32 14,
                                                              i32 10, i32 6, i32 7, i32 13>
  ret <8 x i16> %res
}
