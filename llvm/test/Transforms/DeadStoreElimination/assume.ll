; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -passes=dse -S < %s | FileCheck %s

@global = external constant i8

define void @f() {
; CHECK-LABEL: @f(
; CHECK-NEXT:    [[TMP1:%.*]] = call noalias i8* @_Znwm(i64 32)
; CHECK-NEXT:    [[TMP2:%.*]] = icmp ugt i8* [[TMP1]], @global
; CHECK-NEXT:    call void @llvm.assume(i1 [[TMP2]])
; CHECK-NEXT:    ret void
;
  %tmp1 = call noalias i8* @_Znwm(i64 32)
  %tmp2 = icmp ugt i8* %tmp1, @global
  call void @llvm.assume(i1 %tmp2)
  store i8 0, i8* %tmp1, align 1
  ret void
}

define void @f2() {
; CHECK-LABEL: @f2(
; CHECK-NEXT:    [[TMP1:%.*]] = call noalias i8* @_Znwm(i64 32)
; CHECK-NEXT:    [[TMP2:%.*]] = icmp ugt i8* [[TMP1]], @global
; CHECK-NEXT:    call void @llvm.assume(i1 [[TMP2]])
; CHECK-NEXT:    call void @quux(i8* @global)
; CHECK-NEXT:    ret void
;
  %tmp1 = call noalias i8* @_Znwm(i64 32)
  %tmp2 = icmp ugt i8* %tmp1, @global
  call void @llvm.assume(i1 %tmp2)
  store i8 0, i8* %tmp1, align 1
  call void @quux(i8* @global)
  ret void
}

declare i8* @_Znwm(i64)

declare void @llvm.assume(i1)

declare void @quux(i8*)
