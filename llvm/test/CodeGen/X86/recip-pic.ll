; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i386-unknown-linux-gnu  -enable-unsafe-fp-math -mcpu=slm -relocation-model=pic | FileCheck %s --check-prefix=CHECK

define fastcc float @foo(float %x) unnamed_addr #0 {
; CHECK-LABEL: foo:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    calll .L0$pb
; CHECK-NEXT:    .cfi_adjust_cfa_offset 4
; CHECK-NEXT:  .L0$pb:
; CHECK-NEXT:    popl %eax
; CHECK-NEXT:    .cfi_adjust_cfa_offset -4
; CHECK-NEXT:  .Ltmp0:
; CHECK-NEXT:    addl $_GLOBAL_OFFSET_TABLE_+(.Ltmp0-.L0$pb), %eax
; CHECK-NEXT:    movss {{.*#+}} xmm1 = mem[0],zero,zero,zero
; CHECK-NEXT:    divss %xmm0, %xmm1
; CHECK-NEXT:    movaps %xmm1, %xmm0
; CHECK-NEXT:    movss %xmm1, (%eax)
; CHECK-NEXT:    retl
entry:
  %div = fdiv fast float 3.0, %x
  store float %div, ptr undef, align 4
  ret float %div
}


