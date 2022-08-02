; RUN: llc --mtriple=loongarch32 --mattr=+d < %s | FileCheck %s --check-prefix=LA32
; RUN: llc --mtriple=loongarch64 --mattr=+d < %s | FileCheck %s --check-prefix=LA64

;; Test integers selection after `fcmp`

define i32 @f32_fcmp_false(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_false:
; LA32:       # %bb.0:
; LA32-NEXT:    move $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_false:
; LA64:       # %bb.0:
; LA64-NEXT:    move $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp false float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_oeq(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_oeq:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.ceq.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_oeq:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.ceq.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp oeq float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_ogt(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_ogt:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.clt.s $fcc0, $fa1, $fa0
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_ogt:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.clt.s $fcc0, $fa1, $fa0
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ogt float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_oge(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_oge:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cle.s $fcc0, $fa1, $fa0
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_oge:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cle.s $fcc0, $fa1, $fa0
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp oge float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_olt(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_olt:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.clt.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_olt:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.clt.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp olt float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_ole(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_ole:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cle.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_ole:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cle.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ole float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_one(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_one:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cne.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_one:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cne.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp one float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_ord(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_ord:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cor.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_ord:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cor.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ord float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_ueq(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_ueq:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cueq.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_ueq:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cueq.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ueq float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_ugt(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_ugt:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cult.s $fcc0, $fa1, $fa0
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_ugt:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cult.s $fcc0, $fa1, $fa0
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ugt float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_uge(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_uge:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cule.s $fcc0, $fa1, $fa0
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_uge:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cule.s $fcc0, $fa1, $fa0
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp uge float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_ult(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_ult:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cult.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_ult:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cult.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ult float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_ule(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_ule:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cule.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_ule:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cule.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ule float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_une(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_une:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cune.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_une:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cune.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp une float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_uno(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_uno:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cun.s $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_uno:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cun.s $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp uno float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f32_fcmp_true(float %a, float %b, i32 %x, i32 %y) {
; LA32-LABEL: f32_fcmp_true:
; LA32:       # %bb.0:
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f32_fcmp_true:
; LA64:       # %bb.0:
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp true float %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_false(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_false:
; LA32:       # %bb.0:
; LA32-NEXT:    move $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_false:
; LA64:       # %bb.0:
; LA64-NEXT:    move $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp false double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_oeq(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_oeq:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.ceq.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_oeq:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.ceq.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp oeq double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_ogt(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_ogt:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.clt.d $fcc0, $fa1, $fa0
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_ogt:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.clt.d $fcc0, $fa1, $fa0
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ogt double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_oge(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_oge:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cle.d $fcc0, $fa1, $fa0
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_oge:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cle.d $fcc0, $fa1, $fa0
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp oge double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_olt(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_olt:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.clt.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_olt:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.clt.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp olt double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_ole(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_ole:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cle.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_ole:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cle.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ole double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_one(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_one:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cne.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_one:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cne.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp one double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_ord(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_ord:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cor.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_ord:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cor.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ord double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_ueq(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_ueq:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cueq.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_ueq:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cueq.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ueq double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_ugt(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_ugt:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cult.d $fcc0, $fa1, $fa0
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_ugt:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cult.d $fcc0, $fa1, $fa0
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ugt double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_uge(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_uge:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cule.d $fcc0, $fa1, $fa0
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_uge:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cule.d $fcc0, $fa1, $fa0
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp uge double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_ult(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_ult:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cult.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_ult:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cult.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ult double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_ule(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_ule:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cule.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_ule:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cule.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp ule double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_une(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_une:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cune.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_une:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cune.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp une double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_uno(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_uno:
; LA32:       # %bb.0:
; LA32-NEXT:    fcmp.cun.d $fcc0, $fa0, $fa1
; LA32-NEXT:    movcf2gr $a2, $fcc0
; LA32-NEXT:    masknez $a1, $a1, $a2
; LA32-NEXT:    maskeqz $a0, $a0, $a2
; LA32-NEXT:    or $a0, $a0, $a1
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_uno:
; LA64:       # %bb.0:
; LA64-NEXT:    fcmp.cun.d $fcc0, $fa0, $fa1
; LA64-NEXT:    movcf2gr $a2, $fcc0
; LA64-NEXT:    masknez $a1, $a1, $a2
; LA64-NEXT:    maskeqz $a0, $a0, $a2
; LA64-NEXT:    or $a0, $a0, $a1
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp uno double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}

define i32 @f64_fcmp_true(double %a, double %b, i32 %x, i32 %y) {
; LA32-LABEL: f64_fcmp_true:
; LA32:       # %bb.0:
; LA32-NEXT:    jirl $zero, $ra, 0
;
; LA64-LABEL: f64_fcmp_true:
; LA64:       # %bb.0:
; LA64-NEXT:    jirl $zero, $ra, 0
  %cmp = fcmp true double %a, %b
  %res = select i1 %cmp, i32 %x, i32 %y
  ret i32 %res
}
