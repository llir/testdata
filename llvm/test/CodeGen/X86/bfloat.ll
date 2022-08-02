; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-linux-gnu | FileCheck %s

define void @add(ptr %pa, ptr %pb, ptr %pc) {
; CHECK-LABEL: add:
; CHECK:       # %bb.0:
; CHECK-NEXT:    pushq %rbx
; CHECK-NEXT:    .cfi_def_cfa_offset 16
; CHECK-NEXT:    .cfi_offset %rbx, -16
; CHECK-NEXT:    movq %rdx, %rbx
; CHECK-NEXT:    movzwl (%rdi), %eax
; CHECK-NEXT:    shll $16, %eax
; CHECK-NEXT:    movd %eax, %xmm1
; CHECK-NEXT:    movzwl (%rsi), %eax
; CHECK-NEXT:    shll $16, %eax
; CHECK-NEXT:    movd %eax, %xmm0
; CHECK-NEXT:    addss %xmm1, %xmm0
; CHECK-NEXT:    callq __truncsfbf2@PLT
; CHECK-NEXT:    movw %ax, (%rbx)
; CHECK-NEXT:    popq %rbx
; CHECK-NEXT:    .cfi_def_cfa_offset 8
; CHECK-NEXT:    retq
  %a = load bfloat, ptr %pa
  %b = load bfloat, ptr %pb
  %add = fadd bfloat %a, %b
  store bfloat %add, ptr %pc
  ret void
}

define void @add_double(ptr %pa, ptr %pb, ptr %pc) {
; CHECK-LABEL: add_double:
; CHECK:       # %bb.0:
; CHECK-NEXT:    pushq %r14
; CHECK-NEXT:    .cfi_def_cfa_offset 16
; CHECK-NEXT:    pushq %rbx
; CHECK-NEXT:    .cfi_def_cfa_offset 24
; CHECK-NEXT:    pushq %rax
; CHECK-NEXT:    .cfi_def_cfa_offset 32
; CHECK-NEXT:    .cfi_offset %rbx, -24
; CHECK-NEXT:    .cfi_offset %r14, -16
; CHECK-NEXT:    movq %rdx, %r14
; CHECK-NEXT:    movq %rsi, %rbx
; CHECK-NEXT:    movsd {{.*#+}} xmm0 = mem[0],zero
; CHECK-NEXT:    callq __truncdfbf2@PLT
; CHECK-NEXT:    # kill: def $ax killed $ax def $eax
; CHECK-NEXT:    shll $16, %eax
; CHECK-NEXT:    movl %eax, {{[-0-9]+}}(%r{{[sb]}}p) # 4-byte Spill
; CHECK-NEXT:    movsd {{.*#+}} xmm0 = mem[0],zero
; CHECK-NEXT:    callq __truncdfbf2@PLT
; CHECK-NEXT:    # kill: def $ax killed $ax def $eax
; CHECK-NEXT:    shll $16, %eax
; CHECK-NEXT:    movd %eax, %xmm0
; CHECK-NEXT:    addss {{[-0-9]+}}(%r{{[sb]}}p), %xmm0 # 4-byte Folded Reload
; CHECK-NEXT:    cvtss2sd %xmm0, %xmm0
; CHECK-NEXT:    movsd %xmm0, (%r14)
; CHECK-NEXT:    addq $8, %rsp
; CHECK-NEXT:    .cfi_def_cfa_offset 24
; CHECK-NEXT:    popq %rbx
; CHECK-NEXT:    .cfi_def_cfa_offset 16
; CHECK-NEXT:    popq %r14
; CHECK-NEXT:    .cfi_def_cfa_offset 8
; CHECK-NEXT:    retq
  %la = load double, ptr %pa
  %a = fptrunc double %la to bfloat
  %lb = load double, ptr %pb
  %b = fptrunc double %lb to bfloat
  %add = fadd bfloat %a, %b
  %dadd = fpext bfloat %add to double
  store double %dadd, ptr %pc
  ret void
}

define void @add_constant(ptr %pa, ptr %pc) {
; CHECK-LABEL: add_constant:
; CHECK:       # %bb.0:
; CHECK-NEXT:    pushq %rbx
; CHECK-NEXT:    .cfi_def_cfa_offset 16
; CHECK-NEXT:    .cfi_offset %rbx, -16
; CHECK-NEXT:    movq %rsi, %rbx
; CHECK-NEXT:    movzwl (%rdi), %eax
; CHECK-NEXT:    shll $16, %eax
; CHECK-NEXT:    movd %eax, %xmm0
; CHECK-NEXT:    addss {{\.?LCPI[0-9]+_[0-9]+}}(%rip), %xmm0
; CHECK-NEXT:    callq __truncsfbf2@PLT
; CHECK-NEXT:    movw %ax, (%rbx)
; CHECK-NEXT:    popq %rbx
; CHECK-NEXT:    .cfi_def_cfa_offset 8
; CHECK-NEXT:    retq
  %a = load bfloat, ptr %pa
  %add = fadd bfloat %a, 1.0
  store bfloat %add, ptr %pc
  ret void
}

define void @store_constant(ptr %pc) {
; CHECK-LABEL: store_constant:
; CHECK:       # %bb.0:
; CHECK-NEXT:    movw $16256, (%rdi) # imm = 0x3F80
; CHECK-NEXT:    retq
  store bfloat 1.0, ptr %pc
  ret void
}

define void @fold_ext_trunc(ptr %pa, ptr %pc) {
; CHECK-LABEL: fold_ext_trunc:
; CHECK:       # %bb.0:
; CHECK-NEXT:    movzwl (%rdi), %eax
; CHECK-NEXT:    movw %ax, (%rsi)
; CHECK-NEXT:    retq
  %a = load bfloat, ptr %pa
  %ext = fpext bfloat %a to float
  %trunc = fptrunc float %ext to bfloat
  store bfloat %trunc, ptr %pc
  ret void
}
