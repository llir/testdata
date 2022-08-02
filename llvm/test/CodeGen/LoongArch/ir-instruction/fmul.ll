; RUN: llc --mtriple=loongarch32 --mattr=+d < %s | FileCheck %s --check-prefix=LA32
; RUN: llc --mtriple=loongarch64 --mattr=+d < %s | FileCheck %s --check-prefix=LA64

;; Exercise the 'fmul' LLVM IR: https://llvm.org/docs/LangRef.html#fmul-instruction

define float @fmul_s(float %x, float %y) {
; LA32-LABEL: fmul_s:
; LA32:       # %bb.0:
; LA32-NEXT:    fmul.s $fa0, $fa0, $fa1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: fmul_s:
; LA64:       # %bb.0:
; LA64-NEXT:    fmul.s $fa0, $fa0, $fa1
; LA64-NEXT:    jirl $zero, $ra, 0
  %mul = fmul float %x, %y
  ret float %mul
}

define double @fmul_d(double %x, double %y) {
; LA32-LABEL: fmul_d:
; LA32:       # %bb.0:
; LA32-NEXT:    fmul.d $fa0, $fa0, $fa1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: fmul_d:
; LA64:       # %bb.0:
; LA64-NEXT:    fmul.d $fa0, $fa0, $fa1
; LA64-NEXT:    jirl $zero, $ra, 0
  %mul = fmul double %x, %y
  ret double %mul
}
