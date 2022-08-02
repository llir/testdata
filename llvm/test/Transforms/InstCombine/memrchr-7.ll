; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -passes=instcombine -S | FileCheck %s
;
; Verify that the result of memrchr calls with past-the-end pointers used
; in equality expressions don't cause trouble and either are folded when
; they might be valid or not when they're provably undefined.

declare i8* @memrchr(i8*, i32, i64)


@a5 = constant [5 x i8] c"12345"


; Fold memrchr(a5 + 5, c, 1) == a5 + 5 to an arbitrary constant.
; The call is transformed to a5[5] == c by the memrchr simplifier, with
; a5[5] being indeterminate.  The equality then is the folded with
; an undefined/arbitrary result.

define i1 @call_memrchr_ap5_c_1_eq_a(i32 %c, i64 %n) {
; CHECK-LABEL: @call_memrchr_ap5_c_1_eq_a(
; CHECK-NEXT:    ret i1
;
  %pap5 = getelementptr [5 x i8], [5 x i8]* @a5, i32 0, i32 5
  %qap5 = getelementptr [5 x i8], [5 x i8]* @a5, i32 1, i32 0
  %q = call i8* @memrchr(i8* %pap5, i32 %c, i64 1)
  %cmp = icmp eq i8* %q, %qap5
  ret i1 %cmp
}


; Fold memrchr(a5 + 5, c, 5) == a5 + 5 to an arbitrary constant.

define i1 @call_memrchr_ap5_c_5_eq_a(i32 %c, i64 %n) {
; CHECK-LABEL: @call_memrchr_ap5_c_5_eq_a(
; CHECK-NEXT:    ret i1
;
  %pap5 = getelementptr [5 x i8], [5 x i8]* @a5, i32 0, i32 5
  %qap5 = getelementptr [5 x i8], [5 x i8]* @a5, i32 1, i32 0
  %q = call i8* @memrchr(i8* %pap5, i32 %c, i64 5)
  %cmp = icmp eq i8* %q, %qap5
  ret i1 %cmp
}


; Fold memrchr(a5 + 5, c, n) == a5 to false.

define i1 @fold_memrchr_ap5_c_n_eq_a(i32 %c, i64 %n) {
; CHECK-LABEL: @fold_memrchr_ap5_c_n_eq_a(
; CHECK-NEXT:    ret i1 false
;
  %pa = getelementptr [5 x i8], [5 x i8]* @a5, i32 0, i32 0
  %pap5 = getelementptr [5 x i8], [5 x i8]* @a5, i32 0, i32 5
  %q = call i8* @memrchr(i8* %pap5, i32 %c, i64 %n)
  %cmp = icmp eq i8* %q, %pa
  ret i1 %cmp
}


; Fold memrchr(a5 + 5, c, n) == null to true on the basis that n must
; be zero in order for the call to be valid.

define i1 @fold_memrchr_ap5_c_n_eqz(i32 %c, i64 %n) {
; CHECK-LABEL: @fold_memrchr_ap5_c_n_eqz(
; CHECK-NEXT:    ret i1 true
;
  %p = getelementptr [5 x i8], [5 x i8]* @a5, i32 0, i32 5
  %q = call i8* @memrchr(i8* %p, i32 %c, i64 %n)
  %cmp = icmp eq i8* %q, null
  ret i1 %cmp
}


; Fold memrchr(a5 + 5, '\0', n) == null to true again on the basis that
; n must be zero in order for the call to be valid.

define i1 @fold_memrchr_a_nul_n_eqz(i64 %n) {
; CHECK-LABEL: @fold_memrchr_a_nul_n_eqz(
; CHECK-NEXT:    ret i1 true
;
  %p = getelementptr [5 x i8], [5 x i8]* @a5, i32 0, i32 5
  %q = call i8* @memrchr(i8* %p, i32 0, i64 %n)
  %cmp = icmp eq i8* %q, null
  ret i1 %cmp
}
