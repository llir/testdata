; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -instsimplify -S | FileCheck %s

define i32 @poison(i32 %x) {
; CHECK-LABEL: @poison(
; CHECK-NEXT:    ret i32 poison
;
  %v = xor i32 %x, poison
  ret i32 %v
}

define i4 @xor_and_or_not_commute0(i4 %a, i4 %b) {
; CHECK-LABEL: @xor_and_or_not_commute0(
; CHECK-NEXT:    [[NOT:%.*]] = xor i4 [[A:%.*]], -1
; CHECK-NEXT:    ret i4 [[NOT]]
;
  %and = and i4 %a, %b
  %not = xor i4 %a, -1
  %or = or i4 %not, %b
  %r = xor i4 %and, %or
  ret i4 %r
}

define <2 x i4> @xor_and_or_not_commute1(<2 x i4> %a, <2 x i4> %b) {
; CHECK-LABEL: @xor_and_or_not_commute1(
; CHECK-NEXT:    [[NOT:%.*]] = xor <2 x i4> [[A:%.*]], <i4 -1, i4 -1>
; CHECK-NEXT:    ret <2 x i4> [[NOT]]
;
  %and = and <2 x i4> %a, %b
  %not = xor <2 x i4> %a, <i4 -1, i4 -1>
  %or = or <2 x i4> %not, %b
  %r = xor <2 x i4> %or, %and
  ret <2 x i4> %r
}

define i74 @xor_and_or_not_commute2(i74 %a, i74 %b) {
; CHECK-LABEL: @xor_and_or_not_commute2(
; CHECK-NEXT:    [[NOT:%.*]] = xor i74 [[A:%.*]], -1
; CHECK-NEXT:    ret i74 [[NOT]]
;
  %and = and i74 %b, %a
  %not = xor i74 %a, -1
  %or = or i74 %not, %b
  %r = xor i74 %and, %or
  ret i74 %r
}

define <2 x i4> @xor_and_or_not_commute3(<2 x i4> %a, <2 x i4> %b) {
; CHECK-LABEL: @xor_and_or_not_commute3(
; CHECK-NEXT:    [[NOT:%.*]] = xor <2 x i4> [[A:%.*]], <i4 -1, i4 -1>
; CHECK-NEXT:    ret <2 x i4> [[NOT]]
;
  %and = and <2 x i4> %b, %a
  %not = xor <2 x i4> %a, <i4 -1, i4 -1>
  %or = or <2 x i4> %not, %b
  %r = xor <2 x i4> %or, %and
  ret <2 x i4> %r
}

define i8 @xor_and_or_not_commute4(i8 %a, i8 %b) {
; CHECK-LABEL: @xor_and_or_not_commute4(
; CHECK-NEXT:    [[NOT:%.*]] = xor i8 [[A:%.*]], -1
; CHECK-NEXT:    ret i8 [[NOT]]
;
  %and = and i8 %a, %b
  %not = xor i8 %a, -1
  %or = or i8 %b, %not
  %r = xor i8 %and, %or
  ret i8 %r
}

define i8 @xor_and_or_not_commute5(i8 %a, i8 %b) {
; CHECK-LABEL: @xor_and_or_not_commute5(
; CHECK-NEXT:    [[NOT:%.*]] = xor i8 [[A:%.*]], -1
; CHECK-NEXT:    ret i8 [[NOT]]
;
  %and = and i8 %a, %b
  %not = xor i8 %a, -1
  %or = or i8 %b, %not
  %r = xor i8 %or, %and
  ret i8 %r
}

define i8 @xor_and_or_not_commute6(i8 %a, i8 %b) {
; CHECK-LABEL: @xor_and_or_not_commute6(
; CHECK-NEXT:    [[NOT:%.*]] = xor i8 [[A:%.*]], -1
; CHECK-NEXT:    ret i8 [[NOT]]
;
  %and = and i8 %b, %a
  %not = xor i8 %a, -1
  %or = or i8 %b, %not
  %r = xor i8 %and, %or
  ret i8 %r
}

define i8 @xor_and_or_not_commute7(i8 %a, i8 %b) {
; CHECK-LABEL: @xor_and_or_not_commute7(
; CHECK-NEXT:    [[NOT:%.*]] = xor i8 [[A:%.*]], -1
; CHECK-NEXT:    ret i8 [[NOT]]
;
  %and = and i8 %b, %a
  %not = xor i8 %a, -1
  %or = or i8 %b, %not
  %r = xor i8 %or, %and
  ret i8 %r
}

; negative test - must match specific values

define i4 @xor_and_or_not_wrong_val1(i4 %a, i4 %b, i4 %c) {
; CHECK-LABEL: @xor_and_or_not_wrong_val1(
; CHECK-NEXT:    [[AND:%.*]] = and i4 [[A:%.*]], [[C:%.*]]
; CHECK-NEXT:    [[NOT:%.*]] = xor i4 [[A]], -1
; CHECK-NEXT:    [[OR:%.*]] = or i4 [[NOT]], [[B:%.*]]
; CHECK-NEXT:    [[R:%.*]] = xor i4 [[AND]], [[OR]]
; CHECK-NEXT:    ret i4 [[R]]
;
  %and = and i4 %a, %c
  %not = xor i4 %a, -1
  %or = or i4 %not, %b
  %r = xor i4 %and, %or
  ret i4 %r
}

; negative test - must match specific values

define i4 @xor_and_or_not_wrong_val2(i4 %a, i4 %b, i4 %c) {
; CHECK-LABEL: @xor_and_or_not_wrong_val2(
; CHECK-NEXT:    [[AND:%.*]] = and i4 [[C:%.*]], [[B:%.*]]
; CHECK-NEXT:    [[NOT:%.*]] = xor i4 [[A:%.*]], -1
; CHECK-NEXT:    [[OR:%.*]] = or i4 [[NOT]], [[B]]
; CHECK-NEXT:    [[R:%.*]] = xor i4 [[AND]], [[OR]]
; CHECK-NEXT:    ret i4 [[R]]
;
  %and = and i4 %c, %b
  %not = xor i4 %a, -1
  %or = or i4 %not, %b
  %r = xor i4 %and, %or
  ret i4 %r
}

; negative test - incorrect to propagate undef element

define <2 x i4> @xor_and_or_not_undef_elt(<2 x i4> %a, <2 x i4> %b) {
; CHECK-LABEL: @xor_and_or_not_undef_elt(
; CHECK-NEXT:    [[AND:%.*]] = and <2 x i4> [[B:%.*]], [[A:%.*]]
; CHECK-NEXT:    [[NOT:%.*]] = xor <2 x i4> [[A]], <i4 -1, i4 undef>
; CHECK-NEXT:    [[OR:%.*]] = or <2 x i4> [[NOT]], [[B]]
; CHECK-NEXT:    [[R:%.*]] = xor <2 x i4> [[OR]], [[AND]]
; CHECK-NEXT:    ret <2 x i4> [[R]]
;
  %and = and <2 x i4> %b, %a
  %not = xor <2 x i4> %a, <i4 -1, i4 undef>
  %or = or <2 x i4> %not, %b
  %r = xor <2 x i4> %or, %and
  ret <2 x i4> %r
}

define i4 @xor_or_and_not_commute0(i4 %a, i4 %b) {
; CHECK-LABEL: @xor_or_and_not_commute0(
; CHECK-NEXT:    ret i4 [[A:%.*]]
;
  %not = xor i4 %a, -1
  %and = and i4 %not, %b
  %or = or i4 %a, %b
  %r = xor i4 %and, %or
  ret i4 %r
}

define <2 x i4> @xor_or_and_not_commute1(<2 x i4> %a, <2 x i4> %b) {
; CHECK-LABEL: @xor_or_and_not_commute1(
; CHECK-NEXT:    ret <2 x i4> [[A:%.*]]
;
  %not = xor <2 x i4> %a, <i4 -1, i4 -1>
  %and = and <2 x i4> %not, %b
  %or = or <2 x i4> %a, %b
  %r = xor <2 x i4> %or, %and
  ret <2 x i4> %r
}

define i74 @xor_or_and_not_commute2(i74 %a, i74 %b) {
; CHECK-LABEL: @xor_or_and_not_commute2(
; CHECK-NEXT:    ret i74 [[A:%.*]]
;
  %not = xor i74 %a, -1
  %and = and i74 %b, %not
  %or = or i74 %a, %b
  %r = xor i74 %and, %or
  ret i74 %r
}

define <2 x i4> @xor_or_and_not_commute3(<2 x i4> %a, <2 x i4> %b) {
; CHECK-LABEL: @xor_or_and_not_commute3(
; CHECK-NEXT:    ret <2 x i4> [[A:%.*]]
;
  %not = xor <2 x i4> %a, <i4 -1, i4 -1>
  %and = and <2 x i4> %b, %not
  %or = or <2 x i4> %a, %b
  %r = xor <2 x i4> %or, %and
  ret <2 x i4> %r
}

define i8 @xor_or_and_not_commute4(i8 %a, i8 %b) {
; CHECK-LABEL: @xor_or_and_not_commute4(
; CHECK-NEXT:    ret i8 [[A:%.*]]
;
  %not = xor i8 %a, -1
  %and = and i8 %not, %b
  %or = or i8 %b, %a
  %r = xor i8 %and, %or
  ret i8 %r
}

define i8 @xor_or_and_not_commute5(i8 %a, i8 %b) {
; CHECK-LABEL: @xor_or_and_not_commute5(
; CHECK-NEXT:    ret i8 [[A:%.*]]
;
  %not = xor i8 %a, -1
  %and = and i8 %not, %b
  %or = or i8 %b, %a
  %r = xor i8 %or, %and
  ret i8 %r
}

define i8 @xor_or_and_not_commute6(i8 %a, i8 %b) {
; CHECK-LABEL: @xor_or_and_not_commute6(
; CHECK-NEXT:    ret i8 [[A:%.*]]
;
  %not = xor i8 %a, -1
  %and = and i8 %b, %not
  %or = or i8 %b, %a
  %r = xor i8 %and, %or
  ret i8 %r
}

define i8 @xor_or_and_not_commute7(i8 %a, i8 %b) {
; CHECK-LABEL: @xor_or_and_not_commute7(
; CHECK-NEXT:    ret i8 [[A:%.*]]
;
  %not = xor i8 %a, -1
  %and = and i8 %b, %not
  %or = or i8 %b, %a
  %r = xor i8 %or, %and
  ret i8 %r
}

; negative test - must match specific values

define i4 @xor_or_and_not_wrong_val1(i4 %a, i4 %b, i4 %c) {
; CHECK-LABEL: @xor_or_and_not_wrong_val1(
; CHECK-NEXT:    [[NOT:%.*]] = xor i4 [[A:%.*]], -1
; CHECK-NEXT:    [[AND:%.*]] = and i4 [[NOT]], [[C:%.*]]
; CHECK-NEXT:    [[OR:%.*]] = or i4 [[A]], [[B:%.*]]
; CHECK-NEXT:    [[R:%.*]] = xor i4 [[AND]], [[OR]]
; CHECK-NEXT:    ret i4 [[R]]
;
  %not = xor i4 %a, -1
  %and = and i4 %not, %c
  %or = or i4 %a, %b
  %r = xor i4 %and, %or
  ret i4 %r
}

; negative test - must match specific values

define i4 @xor_or_and_not_wrong_val2(i4 %a, i4 %b, i4 %c) {
; CHECK-LABEL: @xor_or_and_not_wrong_val2(
; CHECK-NEXT:    [[AND:%.*]] = and i4 [[C:%.*]], [[B:%.*]]
; CHECK-NEXT:    [[OR:%.*]] = or i4 [[A:%.*]], [[B]]
; CHECK-NEXT:    [[R:%.*]] = xor i4 [[AND]], [[OR]]
; CHECK-NEXT:    ret i4 [[R]]
;
  %not = xor i4 %a, -1
  %and = and i4 %c, %b
  %or = or i4 %a, %b
  %r = xor i4 %and, %or
  ret i4 %r
}

define <2 x i4> @xor_or_and_not_undef_elt(<2 x i4> %a, <2 x i4> %b) {
; CHECK-LABEL: @xor_or_and_not_undef_elt(
; CHECK-NEXT:    ret <2 x i4> [[A:%.*]]
;
  %not = xor <2 x i4> %a, <i4 -1, i4 undef>
  %and = and <2 x i4> %b, %not
  %or = or <2 x i4> %a, %b
  %r = xor <2 x i4> %or, %and
  ret <2 x i4> %r
}
