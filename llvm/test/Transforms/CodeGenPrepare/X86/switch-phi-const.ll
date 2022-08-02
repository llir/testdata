; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt %s -mtriple=x86_64-- -codegenprepare -S | FileCheck %s
@g = global i32 0
@effect = global i32 0

define void @switch_phi_const(i32 %x) {
; CHECK-LABEL: @switch_phi_const(
; CHECK-NEXT:  bb0:
; CHECK-NEXT:    switch i32 [[X:%.*]], label [[DEFAULT:%.*]] [
; CHECK-NEXT:    i32 13, label [[CASE_13:%.*]]
; CHECK-NEXT:    i32 42, label [[CASE_42:%.*]]
; CHECK-NEXT:    i32 50, label [[CASE_50_51:%.*]]
; CHECK-NEXT:    i32 51, label [[CASE_50_51]]
; CHECK-NEXT:    i32 55, label [[CASE_55:%.*]]
; CHECK-NEXT:    i32 7, label [[CASE_7:%.*]]
; CHECK-NEXT:    ]
; CHECK:       case_13:
; CHECK-NEXT:    [[X0:%.*]] = phi i32 [ [[X]], [[BB0:%.*]] ], [ [[X_LOOPBACK:%.*]], [[CASE_7]] ]
; CHECK-NEXT:    store i32 13, i32* @effect, align 4
; CHECK-NEXT:    br label [[CASE_42]]
; CHECK:       case_42:
; CHECK-NEXT:    [[X1:%.*]] = phi i32 [ [[X]], [[BB0]] ], [ [[X0]], [[CASE_13]] ]
; CHECK-NEXT:    store i32 [[X1]], i32* @effect, align 4
; CHECK-NEXT:    br label [[CASE_50_51]]
; CHECK:       case_50_51:
; CHECK-NEXT:    [[X2:%.*]] = phi i32 [ 50, [[BB0]] ], [ 50, [[BB0]] ], [ [[X1]], [[CASE_42]] ]
; CHECK-NEXT:    [[X2_2:%.*]] = phi i32 [ 51, [[BB0]] ], [ 51, [[BB0]] ], [ [[X1]], [[CASE_42]] ]
; CHECK-NEXT:    store i32 [[X2]], i32* @effect, align 4
; CHECK-NEXT:    store i32 [[X2_2]], i32* @effect, align 4
; CHECK-NEXT:    br label [[CASE_55]]
; CHECK:       case_55:
; CHECK-NEXT:    [[X3:%.*]] = phi i32 [ 42, [[BB0]] ], [ 55, [[CASE_50_51]] ]
; CHECK-NEXT:    store i32 [[X3]], i32* @effect, align 4
; CHECK-NEXT:    br label [[DEFAULT]]
; CHECK:       case_7:
; CHECK-NEXT:    [[X_LOOPBACK]] = load i32, i32* @g, align 4
; CHECK-NEXT:    store i32 7, i32* @effect, align 4
; CHECK-NEXT:    br label [[CASE_13]]
; CHECK:       default:
; CHECK-NEXT:    ret void
;
bb0:
  switch i32 %x, label %default [
  i32 13, label %case_13
  i32 42, label %case_42
  i32 50, label %case_50_51
  i32 51, label %case_50_51
  i32 55, label %case_55
  i32 7, label %case_7
  ]

case_13:
  ; We should replace 13 with %x
  %x0 = phi i32 [ 13, %bb0 ], [ %x_loopback, %case_7 ]
  store i32 13, i32* @effect, align 4
  br label %case_42

case_42:
  ; We should replace 42 with %x
  %x1 = phi i32 [ 42, %bb0 ], [ %x0, %case_13 ]
  store i32 %x1, i32* @effect, align 4
  br label %case_50_51

case_50_51:
  ; Must not replace the PHI argument: Case values 50 and 51 jump here.
  %x2 = phi i32 [ 50, %bb0 ], [ 50, %bb0 ], [ %x1, %case_42 ]
  %x2.2 = phi i32 [ 51, %bb0 ], [ 51, %bb0 ], [ %x1, %case_42 ]
  store i32 %x2, i32* @effect, align 4
  store i32 %x2.2, i32* @effect, align 4
  br label %case_55

case_55:
  ; We must not replace any of the PHI arguments:
  ; - 42 is the wrong constant
  ; - %case_42 is not the switch predecessor block.
  %x3 = phi i32 [ 42, %bb0 ], [ 55, %case_50_51 ]
  store i32 %x3, i32* @effect, align 4
  br label %default

case_7:
  %x_loopback = load i32, i32* @g, align 4
  store i32 7, i32* @effect, align 4
  br label %case_13

default:
  ret void
}

define void @switch_phi_const_multiple_phis(i32 %x) {
; CHECK-LABEL: @switch_phi_const_multiple_phis(
; CHECK-NEXT:  bb0:
; CHECK-NEXT:    br i1 undef, label [[BB1:%.*]], label [[CASE_13:%.*]]
; CHECK:       bb1:
; CHECK-NEXT:    [[COND:%.*]] = icmp eq i32 [[X:%.*]], 13
; CHECK-NEXT:    br i1 [[COND]], label [[CASE_13]], label [[DEFAULT:%.*]]
; CHECK:       case_13:
; CHECK-NEXT:    [[X0:%.*]] = phi i32 [ [[X]], [[BB1]] ], [ 1, [[BB0:%.*]] ]
; CHECK-NEXT:    [[N0:%.*]] = phi i32 [ 14, [[BB1]] ], [ 1, [[BB0]] ]
; CHECK-NEXT:    [[X1:%.*]] = phi i32 [ 27, [[BB0]] ], [ [[X]], [[BB1]] ]
; CHECK-NEXT:    store volatile i32 [[X0]], i32* @effect, align 4
; CHECK-NEXT:    store volatile i32 [[N0]], i32* @effect, align 4
; CHECK-NEXT:    store volatile i32 [[X1]], i32* @effect, align 4
; CHECK-NEXT:    ret void
; CHECK:       default:
; CHECK-NEXT:    ret void
;
bb0:
  br i1 undef, label %bb1, label %case_13

bb1:
  switch i32 %x, label %default [
  i32 13, label %case_13
  ]

case_13:
  ; Check that replacement works for multiple PHIs.
  ; Should perform replacement for %x0, %x1 but not %n0
  %x0 = phi i32 [13, %bb1], [1, %bb0]
  %n0 = phi i32 [14, %bb1], [1, %bb0]
  %x1 = phi i32 [27, %bb0], [13, %bb1]
  store volatile i32 %x0, i32* @effect, align 4
  store volatile i32 %n0, i32* @effect, align 4
  store volatile i32 %x1, i32* @effect, align 4
  ret void

default:
  ret void
}

define void @switch_phi_const_degenerate() {
; CHECK-LABEL: @switch_phi_const_degenerate(
; CHECK-NEXT:  bb0:
; CHECK-NEXT:    br i1 undef, label [[CASE_42:%.*]], label [[BB1:%.*]]
; CHECK:       bb1:
; CHECK-NEXT:    br label [[CASE_42]]
; CHECK:       case_42:
; CHECK-NEXT:    [[X:%.*]] = phi i32 [ 0, [[BB0:%.*]] ], [ 42, [[BB1]] ]
; CHECK-NEXT:    store volatile i32 [[X]], i32* @effect, align 4
; CHECK-NEXT:    ret void
;
bb0:
  br i1 undef, label %case_42, label %bb1

bb1:
  switch i32 42, label %unreachable [
  i32 42, label %case_42
  ]

case_42:
  ; We should not end up in an endless loop 42 with the switch condition 42.
  %x = phi i32 [0, %bb0], [42, %bb1]
  store volatile i32 %x, i32* @effect, align 4
  ret void

unreachable:
  unreachable
}

@g64 = global i64 0
@effect64 = global i64 0

define void @switch_trunc_phi_const(i32 %x) {
; CHECK-LABEL: @switch_trunc_phi_const(
; CHECK-NEXT:  bb0:
; CHECK-NEXT:    [[TMP0:%.*]] = zext i32 [[X:%.*]] to i64
; CHECK-NEXT:    [[TMP1:%.*]] = zext i32 [[X]] to i64
; CHECK-NEXT:    switch i32 [[X]], label [[DEFAULT:%.*]] [
; CHECK-NEXT:    i32 13, label [[CASE_13:%.*]]
; CHECK-NEXT:    i32 42, label [[CASE_42:%.*]]
; CHECK-NEXT:    i32 55, label [[CASE_55:%.*]]
; CHECK-NEXT:    i32 7, label [[CASE_7:%.*]]
; CHECK-NEXT:    ]
; CHECK:       case_13:
; CHECK-NEXT:    [[X0:%.*]] = phi i64 [ [[TMP0]], [[BB0:%.*]] ], [ [[X7:%.*]], [[CASE_7]] ]
; CHECK-NEXT:    store i64 13, i64* @effect64, align 4
; CHECK-NEXT:    br label [[CASE_42]]
; CHECK:       case_42:
; CHECK-NEXT:    [[X1:%.*]] = phi i64 [ [[TMP1]], [[BB0]] ], [ [[X0]], [[CASE_13]] ]
; CHECK-NEXT:    store i64 [[X1]], i64* @effect64, align 4
; CHECK-NEXT:    br label [[CASE_55]]
; CHECK:       case_55:
; CHECK-NEXT:    [[X2:%.*]] = phi i64 [ 3895, [[BB0]] ], [ 55, [[CASE_42]] ]
; CHECK-NEXT:    store i64 [[X2]], i64* @effect64, align 4
; CHECK-NEXT:    br label [[DEFAULT]]
; CHECK:       case_7:
; CHECK-NEXT:    [[X7]] = load i64, i64* @g64, align 4
; CHECK-NEXT:    store i64 7, i64* @effect64, align 4
; CHECK-NEXT:    br label [[CASE_13]]
; CHECK:       default:
; CHECK-NEXT:    ret void
;
bb0:
  switch i32 %x, label %default [
  i32 13, label %case_13
  i32 42, label %case_42
  i32 55, label %case_55
  i32 7, label %case_7
  ]

case_13:
  ; We should replace 13 with zext %x to i64
  %x0 = phi i64 [ 13, %bb0 ], [ %x7, %case_7 ]
  store i64 13, i64* @effect64, align 4
  br label %case_42

case_42:
  ; We should replace 42 with zext i32 %x to i64
  %x1 = phi i64 [ 42, %bb0 ], [ %x0, %case_13 ]
  store i64 %x1, i64* @effect64, align 4
  br label %case_55

case_55:
  ; We must not replace any of the PHI arguments! (3898 == 0xf00 + 55)
  %x2 = phi i64 [ 3895, %bb0 ], [ 55, %case_42 ]
  store i64 %x2, i64* @effect64, align 4
  br label %default

case_7:
  %x7 = load i64, i64* @g64, align 4
  store i64 7, i64* @effect64, align 4
  br label %case_13

default:
  ret void
}
