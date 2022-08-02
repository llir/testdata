; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=aarch64-- -o - < %s | FileCheck %s

; Verify that we can fold csneg/csel into csinc instruction.

target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; char csinc1 (char a, char b) { return !a ? b+1 : b+3; }
define dso_local i8 @csinc1(i8 %a, i8 %b) local_unnamed_addr #0 {
; CHECK-LABEL: csinc1:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    tst w0, #0xff
; CHECK-NEXT:    mov w8, #3
; CHECK-NEXT:    csinc w8, w8, wzr, ne
; CHECK-NEXT:    add w0, w8, w1
; CHECK-NEXT:    ret
entry:
  %tobool.not = icmp eq i8 %a, 0
  %cond.v = select i1 %tobool.not, i8 1, i8 3
  %cond = add i8 %cond.v, %b
  ret i8 %cond
}

; short csinc2 (short a, short b) { return !a ? b+1 : b+3; }
define dso_local i16 @csinc2(i16 %a, i16 %b) local_unnamed_addr #0 {
; CHECK-LABEL: csinc2:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    tst w0, #0xffff
; CHECK-NEXT:    mov w8, #3
; CHECK-NEXT:    csinc w8, w8, wzr, ne
; CHECK-NEXT:    add w0, w8, w1
; CHECK-NEXT:    ret
entry:
  %tobool.not = icmp eq i16 %a, 0
  %cond.v = select i1 %tobool.not, i16 1, i16 3
  %cond = add i16 %cond.v, %b
  ret i16 %cond
}

; int csinc3 (int a, int b) { return !a ? b+1 : b+3; }
define dso_local i32 @csinc3(i32 %a, i32 %b) local_unnamed_addr #0 {
; CHECK-LABEL: csinc3:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    cmp w0, #0
; CHECK-NEXT:    mov w8, #3
; CHECK-NEXT:    csinc w8, w8, wzr, ne
; CHECK-NEXT:    add w0, w8, w1
; CHECK-NEXT:    ret
entry:
  %tobool.not = icmp eq i32 %a, 0
  %cond.v = select i1 %tobool.not, i32 1, i32 3
  %cond = add nsw i32 %cond.v, %b
  ret i32 %cond
}

; long long csinc4 (long long a, long long b) { return !a ? b+1 : b+3; }
define dso_local i64 @csinc4(i64 %a, i64 %b) local_unnamed_addr #0 {
; CHECK-LABEL: csinc4:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    cmp x0, #0
; CHECK-NEXT:    mov w8, #3
; CHECK-NEXT:    csinc x8, x8, xzr, ne
; CHECK-NEXT:    add x0, x8, x1
; CHECK-NEXT:    ret
entry:
  %tobool.not = icmp eq i64 %a, 0
  %cond.v = select i1 %tobool.not, i64 1, i64 3
  %cond = add nsw i64 %cond.v, %b
  ret i64 %cond
}
