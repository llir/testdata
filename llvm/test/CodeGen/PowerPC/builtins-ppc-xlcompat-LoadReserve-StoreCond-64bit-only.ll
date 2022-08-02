; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -verify-machineinstrs -mtriple=powerpc64le-unknown-linux-gnu \
; RUN:   -mcpu=pwr8 < %s | FileCheck %s --check-prefix=CHECK
; RUN: llc -verify-machineinstrs -mtriple=powerpc64-unknown-linux-gnu \
; RUN:   -mcpu=pwr8 < %s | FileCheck %s --check-prefix=CHECK
; RUN: llc -verify-machineinstrs -mtriple=powerpc64-unknown-aix \
; RUN:   -mcpu=pwr8 < %s | FileCheck %s --check-prefix=CHECK

declare i64 @llvm.ppc.ldarx(i8*)
define dso_local i64 @test_ldarx(i64* readnone %a) {
; CHECK-LABEL: test_ldarx:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    #APP
; CHECK-NEXT:    ldarx 3, 0, 3
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    blr
entry:
  %0 = call i64 asm sideeffect "ldarx $0, ${1:y}", "=r,*Z,~{memory}"(i64* elementtype(i64) %a)
  ret i64 %0
}

declare i32 @llvm.ppc.stdcx(i8*, i64)
define dso_local i64 @test_stdcx(i64* %a, i64 %b) {
; CHECK-LABEL: test_stdcx:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    stdcx. 4, 0, 3
; CHECK-NEXT:    mfocrf 3, 128
; CHECK-NEXT:    srwi 3, 3, 28
; CHECK-NEXT:    extsw 3, 3
; CHECK-NEXT:    blr
entry:
  %0 = bitcast i64* %a to i8*
  %1 = tail call i32 @llvm.ppc.stdcx(i8* %0, i64 %b)
  %conv = sext i32 %1 to i64
  ret i64 %conv
}
