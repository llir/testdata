; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -S -licm < %s | FileCheck %s

; Make sure that a store of a pointer to itself is handled correctly.

define void @test(ptr %p1, ptr %p2, ptr noalias %p3) {
; CHECK-LABEL: @test(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br label [[LOOP:%.*]]
; CHECK:       loop:
; CHECK-NEXT:    [[P:%.*]] = phi ptr [ [[P1:%.*]], [[ENTRY:%.*]] ], [ [[P2:%.*]], [[LOOP]] ]
; CHECK-NEXT:    [[V:%.*]] = load i64, ptr [[P]], align 4
; CHECK-NEXT:    [[CMP:%.*]] = icmp eq i64 [[V]], 0
; CHECK-NEXT:    br i1 [[CMP]], label [[LOOP]], label [[LOOP_EXIT:%.*]]
; CHECK:       loop.exit:
; CHECK-NEXT:    store ptr [[P3:%.*]], ptr [[P3]], align 8
; CHECK-NEXT:    ret void
;
entry:
  br label %loop

loop:
  %p = phi ptr [ %p1, %entry ], [ %p2, %loop ]
  %v = load i64, ptr %p
  %cmp = icmp eq i64 %v, 0
  store ptr %p3, ptr %p3
  br i1 %cmp, label %loop, label %loop.exit

loop.exit:
  ret void
}
