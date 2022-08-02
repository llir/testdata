; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -passes=constraint-elimination -S %s | FileCheck %s

; Make sure we do not incorrectly add variables to the system.

define i1 @test(i32* %p1, i32* %p2, i32 %num_rows, i32 %start_row, i1 %c) {
; CHECK-LABEL: @test(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[ADD:%.*]] = add i32 [[NUM_ROWS:%.*]], [[START_ROW:%.*]]
; CHECK-NEXT:    [[L3:%.*]] = load i32, i32* [[P1:%.*]], align 4
; CHECK-NEXT:    [[CMP6:%.*]] = icmp ugt i32 [[L3]], [[START_ROW]]
; CHECK-NEXT:    br i1 [[C:%.*]], label [[IF_END36:%.*]], label [[IF_END36]]
; CHECK:       if.end36:
; CHECK-NEXT:    [[L1:%.*]] = load i32, i32* [[P2:%.*]], align 4
; CHECK-NEXT:    [[CMP37:%.*]] = icmp ult i32 [[L1]], [[ADD]]
; CHECK-NEXT:    br i1 [[CMP37]], label [[IF_THEN39:%.*]], label [[EXIT:%.*]]
; CHECK:       if.then39:
; CHECK-NEXT:    [[CMP41:%.*]] = icmp ult i32 [[L1]], [[START_ROW]]
; CHECK-NEXT:    ret i1 [[CMP41]]
; CHECK:       exit:
; CHECK-NEXT:    ret i1 false
;
entry:
  %add = add i32 %num_rows, %start_row
  %l3 = load i32, i32* %p1, align 4
  %cmp6 = icmp ugt i32 %l3, %start_row
  br i1 %c, label %if.end36, label %if.end36

if.end36:                                         ; preds = %if.then11
  %l1 = load i32, i32* %p2, align 4
  %cmp37 = icmp ult i32 %l1, %add
  br i1 %cmp37, label %if.then39, label %exit

if.then39:                                        ; preds = %if.end36
  %cmp41 = icmp ult i32 %l1, %start_row
  ret i1 %cmp41

exit:                                             ; preds = %if.end36
  ret i1 false
}
