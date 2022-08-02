; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -passes=instcombine -S | FileCheck %s

; The pattern:
;   icmp eq/ne (and (X shift Y), Z), 0
; is equivalent to pattern
;   icmp eq/ne (and (Z oppositeshift Y), X), 0
; We should canonicalize to one of them.
; Let's go with 'lshr'.
; Exception: unless it's a shift of constant, then don't touch it.

;------------------------------------------------------------------------------;
; Basic scalar test
;------------------------------------------------------------------------------;

define i1 @t0(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @t0(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[X:%.*]], [[Y:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = and i32 [[T0]], [[Z:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[T1]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = shl i32 %x, %y
  %t1 = and i32 %t0, %z
  %t2 = icmp eq i32 %t1, 0
  ret i1 %t2
}

define i1 @t1_ne(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @t1_ne(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[X:%.*]], [[Y:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = and i32 [[T0]], [[Z:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp ne i32 [[T1]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = shl i32 %x, %y
  %t1 = and i32 %t0, %z
  %t2 = icmp ne i32 %t1, 0
  ret i1 %t2
}

;------------------------------------------------------------------------------;
; Basic vector test
;------------------------------------------------------------------------------;

define <4 x i1> @t2_vec_splat(<4 x i32> %x, <4 x i32> %y, <4 x i32> %z) {
; CHECK-LABEL: @t2_vec_splat(
; CHECK-NEXT:    [[T0:%.*]] = shl <4 x i32> [[X:%.*]], [[Y:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = and <4 x i32> [[T0]], [[Z:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq <4 x i32> [[T1]], zeroinitializer
; CHECK-NEXT:    ret <4 x i1> [[T2]]
;
  %t0 = shl <4 x i32> %x, %y
  %t1 = and <4 x i32> %t0, %z
  %t2 = icmp eq <4 x i32> %t1, <i32 0, i32 0, i32 0, i32 0>
  ret <4 x i1> %t2
}

define <4 x i1> @t3_vec_splat_undef(<4 x i32> %x, <4 x i32> %y, <4 x i32> %z) {
; CHECK-LABEL: @t3_vec_splat_undef(
; CHECK-NEXT:    [[T0:%.*]] = shl <4 x i32> [[X:%.*]], [[Y:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = and <4 x i32> [[T0]], [[Z:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq <4 x i32> [[T1]], <i32 0, i32 0, i32 undef, i32 0>
; CHECK-NEXT:    ret <4 x i1> [[T2]]
;
  %t0 = shl <4 x i32> %x, %y
  %t1 = and <4 x i32> %t0, %z
  %t2 = icmp eq <4 x i32> %t1, <i32 0, i32 0, i32 undef, i32 0>
  ret <4 x i1> %t2
}

;------------------------------------------------------------------------------;
; Commutativity
;------------------------------------------------------------------------------;

declare i32 @gen32()

define i1 @t4_commutative(i32 %x, i32 %y) {
; CHECK-LABEL: @t4_commutative(
; CHECK-NEXT:    [[Z:%.*]] = call i32 @gen32()
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[X:%.*]], [[Y:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = and i32 [[Z]], [[T0]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[T1]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %z = call i32 @gen32()
  %t0 = shl i32 %x, %y
  %t1 = and i32 %z, %t0 ; swapped
  %t2 = icmp eq i32 %t1, 0
  ret i1 %t2
}

;------------------------------------------------------------------------------;
; Shifts in both hands of 'and'
;------------------------------------------------------------------------------;

define i1 @t5_twoshifts0(i32 %a, i32 %b, i32 %c, i32 %d) {
; CHECK-LABEL: @t5_twoshifts0(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[A:%.*]], [[B:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = shl i32 [[T0]], [[C:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = and i32 [[T1]], [[D:%.*]]
; CHECK-NEXT:    [[T3:%.*]] = icmp eq i32 [[T2]], 0
; CHECK-NEXT:    ret i1 [[T3]]
;
  %t0 = shl i32 %a, %b
  %t1 = shl i32 %t0, %c
  %t2 = and i32 %t1, %d
  %t3 = icmp eq i32 %t2, 0
  ret i1 %t3
}

define i1 @t6_twoshifts1(i32 %a, i32 %b, i32 %c, i32 %d) {
; CHECK-LABEL: @t6_twoshifts1(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[A:%.*]], [[B:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = shl i32 [[C:%.*]], [[D:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = and i32 [[T1]], [[T0]]
; CHECK-NEXT:    [[T3:%.*]] = icmp eq i32 [[T2]], 0
; CHECK-NEXT:    ret i1 [[T3]]
;
  %t0 = shl i32 %a, %b
  %t1 = shl i32 %c, %d
  %t2 = and i32 %t1, %t0
  %t3 = icmp eq i32 %t2, 0
  ret i1 %t3
}

define i1 @t7_twoshifts2(i32 %a, i32 %b, i32 %c, i32 %d) {
; CHECK-LABEL: @t7_twoshifts2(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 1, [[B:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = shl i32 [[C:%.*]], [[D:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = and i32 [[T1]], [[T0]]
; CHECK-NEXT:    [[T3:%.*]] = icmp eq i32 [[T2]], 0
; CHECK-NEXT:    ret i1 [[T3]]
;
  %t0 = shl i32 1, %b
  %t1 = shl i32 %c, %d
  %t2 = and i32 %t1, %t0
  %t3 = icmp eq i32 %t2, 0
  ret i1 %t3
}

define i1 @t8_twoshifts3(i32 %a, i32 %b, i32 %c, i32 %d) {
; CHECK-LABEL: @t8_twoshifts3(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[A:%.*]], [[B:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = shl i32 1, [[D:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = and i32 [[T1]], [[T0]]
; CHECK-NEXT:    [[T3:%.*]] = icmp eq i32 [[T2]], 0
; CHECK-NEXT:    ret i1 [[T3]]
;
  %t0 = shl i32 %a, %b
  %t1 = shl i32 1, %d
  %t2 = and i32 %t1, %t0
  %t3 = icmp eq i32 %t2, 0
  ret i1 %t3
}

;------------------------------------------------------------------------------;
; Extra uses
;------------------------------------------------------------------------------;

declare void @use32(i32)

define i1 @t9_extrause0(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @t9_extrause0(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[X:%.*]], [[Y:%.*]]
; CHECK-NEXT:    call void @use32(i32 [[T0]])
; CHECK-NEXT:    [[T1:%.*]] = and i32 [[T0]], [[Z:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[T1]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = shl i32 %x, %y
  call void @use32(i32 %t0)
  %t1 = and i32 %t0, %z
  %t2 = icmp eq i32 %t1, 0
  ret i1 %t2
}

define i1 @t10_extrause1(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @t10_extrause1(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[X:%.*]], [[Y:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = and i32 [[T0]], [[Z:%.*]]
; CHECK-NEXT:    call void @use32(i32 [[T1]])
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[T1]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = shl i32 %x, %y
  %t1 = and i32 %t0, %z
  call void @use32(i32 %t1)
  %t2 = icmp eq i32 %t1, 0
  ret i1 %t2
}

define i1 @t11_extrause2(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @t11_extrause2(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[X:%.*]], [[Y:%.*]]
; CHECK-NEXT:    call void @use32(i32 [[T0]])
; CHECK-NEXT:    [[T1:%.*]] = and i32 [[T0]], [[Z:%.*]]
; CHECK-NEXT:    call void @use32(i32 [[T1]])
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[T1]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = shl i32 %x, %y
  call void @use32(i32 %t0)
  %t1 = and i32 %t0, %z
  call void @use32(i32 %t1)
  %t2 = icmp eq i32 %t1, 0
  ret i1 %t2
}

;------------------------------------------------------------------------------;
; Constants
;------------------------------------------------------------------------------;

define i1 @t12_shift_of_const0(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @t12_shift_of_const0(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 1, [[Y:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = and i32 [[T0]], [[Z:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[T1]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = shl i32 1, %y
  %t1 = and i32 %t0, %z
  %t2 = icmp eq i32 %t1, 0
  ret i1 %t2
}
define i1 @t13_shift_of_const1(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @t13_shift_of_const1(
; CHECK-NEXT:    [[T0:%.*]] = lshr i32 1, [[Y:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = and i32 [[T0]], [[Z:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[T1]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = lshr i32 1, %y
  %t1 = and i32 %t0, %z
  %t2 = icmp eq i32 %t1, 0
  ret i1 %t2
}

define i1 @t14_and_with_const0(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @t14_and_with_const0(
; CHECK-NEXT:    [[TMP1:%.*]] = lshr i32 1, [[Y:%.*]]
; CHECK-NEXT:    [[TMP2:%.*]] = and i32 [[TMP1]], [[X:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[TMP2]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = shl i32 %x, %y
  %t1 = and i32 %t0, 1
  %t2 = icmp eq i32 %t1, 0
  ret i1 %t2
}
define i1 @t15_and_with_const1(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @t15_and_with_const1(
; CHECK-NEXT:    [[TMP1:%.*]] = shl i32 1, [[Y:%.*]]
; CHECK-NEXT:    [[TMP2:%.*]] = and i32 [[TMP1]], [[X:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[TMP2]], 0
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = lshr i32 %x, %y
  %t1 = and i32 %t0, 1
  %t2 = icmp eq i32 %t1, 0
  ret i1 %t2
}

;------------------------------------------------------------------------------;
; Negative test
;------------------------------------------------------------------------------;

define i1 @n16(i32 %x, i32 %y, i32 %z) {
; CHECK-LABEL: @n16(
; CHECK-NEXT:    [[T0:%.*]] = shl i32 [[X:%.*]], [[Y:%.*]]
; CHECK-NEXT:    [[T1:%.*]] = and i32 [[T0]], [[Z:%.*]]
; CHECK-NEXT:    [[T2:%.*]] = icmp eq i32 [[T1]], 1
; CHECK-NEXT:    ret i1 [[T2]]
;
  %t0 = shl i32 %x, %y
  %t1 = and i32 %t0, %z
  %t2 = icmp eq i32 %t1, 1 ; not with '0'
  ret i1 %t2
}
