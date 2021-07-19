; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+experimental-zfh -verify-machineinstrs \
; RUN:   -target-abi ilp32f < %s | FileCheck -check-prefix=RV32IZFH %s
; RUN: llc -mtriple=riscv64 -mattr=+experimental-zfh -verify-machineinstrs \
; RUN:   -target-abi lp64f < %s | FileCheck -check-prefix=RV64IZFH %s

define i32 @fcmp_false(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_false:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    mv a0, zero
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_false:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    mv a0, zero
; RV64IZFH-NEXT:    ret
  %1 = fcmp false half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_oeq(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_oeq:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    feq.h a0, fa0, fa1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_oeq:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    feq.h a0, fa0, fa1
; RV64IZFH-NEXT:    ret
  %1 = fcmp oeq half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_ogt(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_ogt:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    flt.h a0, fa1, fa0
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_ogt:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    flt.h a0, fa1, fa0
; RV64IZFH-NEXT:    ret
  %1 = fcmp ogt half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_oge(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_oge:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    fle.h a0, fa1, fa0
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_oge:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    fle.h a0, fa1, fa0
; RV64IZFH-NEXT:    ret
  %1 = fcmp oge half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_olt(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_olt:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    flt.h a0, fa0, fa1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_olt:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    flt.h a0, fa0, fa1
; RV64IZFH-NEXT:    ret
  %1 = fcmp olt half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_ole(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_ole:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    fle.h a0, fa0, fa1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_ole:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    fle.h a0, fa0, fa1
; RV64IZFH-NEXT:    ret
  %1 = fcmp ole half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_one(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_one:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    flt.h a0, fa0, fa1
; RV32IZFH-NEXT:    flt.h a1, fa1, fa0
; RV32IZFH-NEXT:    or a0, a1, a0
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_one:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    flt.h a0, fa0, fa1
; RV64IZFH-NEXT:    flt.h a1, fa1, fa0
; RV64IZFH-NEXT:    or a0, a1, a0
; RV64IZFH-NEXT:    ret
  %1 = fcmp one half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_ord(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_ord:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    feq.h a0, fa1, fa1
; RV32IZFH-NEXT:    feq.h a1, fa0, fa0
; RV32IZFH-NEXT:    and a0, a1, a0
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_ord:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    feq.h a0, fa1, fa1
; RV64IZFH-NEXT:    feq.h a1, fa0, fa0
; RV64IZFH-NEXT:    and a0, a1, a0
; RV64IZFH-NEXT:    ret
  %1 = fcmp ord half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_ueq(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_ueq:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    flt.h a0, fa0, fa1
; RV32IZFH-NEXT:    flt.h a1, fa1, fa0
; RV32IZFH-NEXT:    or a0, a1, a0
; RV32IZFH-NEXT:    xori a0, a0, 1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_ueq:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    flt.h a0, fa0, fa1
; RV64IZFH-NEXT:    flt.h a1, fa1, fa0
; RV64IZFH-NEXT:    or a0, a1, a0
; RV64IZFH-NEXT:    xori a0, a0, 1
; RV64IZFH-NEXT:    ret
  %1 = fcmp ueq half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_ugt(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_ugt:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    fle.h a0, fa0, fa1
; RV32IZFH-NEXT:    xori a0, a0, 1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_ugt:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    fle.h a0, fa0, fa1
; RV64IZFH-NEXT:    xori a0, a0, 1
; RV64IZFH-NEXT:    ret
  %1 = fcmp ugt half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_uge(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_uge:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    flt.h a0, fa0, fa1
; RV32IZFH-NEXT:    xori a0, a0, 1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_uge:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    flt.h a0, fa0, fa1
; RV64IZFH-NEXT:    xori a0, a0, 1
; RV64IZFH-NEXT:    ret
  %1 = fcmp uge half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_ult(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_ult:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    fle.h a0, fa1, fa0
; RV32IZFH-NEXT:    xori a0, a0, 1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_ult:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    fle.h a0, fa1, fa0
; RV64IZFH-NEXT:    xori a0, a0, 1
; RV64IZFH-NEXT:    ret
  %1 = fcmp ult half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_ule(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_ule:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    flt.h a0, fa1, fa0
; RV32IZFH-NEXT:    xori a0, a0, 1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_ule:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    flt.h a0, fa1, fa0
; RV64IZFH-NEXT:    xori a0, a0, 1
; RV64IZFH-NEXT:    ret
  %1 = fcmp ule half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_une(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_une:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    feq.h a0, fa0, fa1
; RV32IZFH-NEXT:    xori a0, a0, 1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_une:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    feq.h a0, fa0, fa1
; RV64IZFH-NEXT:    xori a0, a0, 1
; RV64IZFH-NEXT:    ret
  %1 = fcmp une half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_uno(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_uno:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    feq.h a0, fa1, fa1
; RV32IZFH-NEXT:    feq.h a1, fa0, fa0
; RV32IZFH-NEXT:    and a0, a1, a0
; RV32IZFH-NEXT:    xori a0, a0, 1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_uno:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    feq.h a0, fa1, fa1
; RV64IZFH-NEXT:    feq.h a1, fa0, fa0
; RV64IZFH-NEXT:    and a0, a1, a0
; RV64IZFH-NEXT:    xori a0, a0, 1
; RV64IZFH-NEXT:    ret
  %1 = fcmp uno half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}

define i32 @fcmp_true(half %a, half %b) nounwind {
; RV32IZFH-LABEL: fcmp_true:
; RV32IZFH:       # %bb.0:
; RV32IZFH-NEXT:    addi a0, zero, 1
; RV32IZFH-NEXT:    ret
;
; RV64IZFH-LABEL: fcmp_true:
; RV64IZFH:       # %bb.0:
; RV64IZFH-NEXT:    addi a0, zero, 1
; RV64IZFH-NEXT:    ret
  %1 = fcmp true half %a, %b
  %2 = zext i1 %1 to i32
  ret i32 %2
}
