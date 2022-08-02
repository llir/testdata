; RUN: llc --mtriple=loongarch32 --mattr=+d < %s | FileCheck %s --check-prefix=LA32
; RUN: llc --mtriple=loongarch64 --mattr=+d < %s | FileCheck %s --check-prefix=LA64

;; Exercise the 'fadd' LLVM IR: https://llvm.org/docs/LangRef.html#fadd-instruction

define float @fadd_s(float %x, float %y) {
; LA32-LABEL: fadd_s:
; LA32:       # %bb.0:
; LA32-NEXT:    fadd.s $fa0, $fa0, $fa1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: fadd_s:
; LA64:       # %bb.0:
; LA64-NEXT:    fadd.s $fa0, $fa0, $fa1
; LA64-NEXT:    jirl $zero, $ra, 0
  %add = fadd float %x, %y
  ret float %add
}

define double @fadd_d(double %x, double %y) {
; LA32-LABEL: fadd_d:
; LA32:       # %bb.0:
; LA32-NEXT:    fadd.d $fa0, $fa0, $fa1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: fadd_d:
; LA64:       # %bb.0:
; LA64-NEXT:    fadd.d $fa0, $fa0, $fa1
; LA64-NEXT:    jirl $zero, $ra, 0
  %add = fadd double %x, %y
  ret double %add
}
