; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --check-attributes
; RUN: opt < %s -S -openmp-opt-cgscc        | FileCheck %s
; RUN: opt < %s -S -passes=openmp-opt-cgscc | FileCheck %s

declare void @unknown()

; __kmpc functions
define void @__kmpc_noinline() noinline nounwind {
; CHECK: Function Attrs: nounwind
; CHECK-LABEL: @__kmpc_noinline(
; CHECK-NEXT:    call void @unknown()
; CHECK-NEXT:    ret void
;
  call void @unknown()
  ret void
}
; omp_X functions
define void @omp_noinline() noinline nounwind {
; CHECK: Function Attrs: nounwind
; CHECK-LABEL: @omp_noinline(
; CHECK-NEXT:    call void @unknown()
; CHECK-NEXT:    ret void
;
  call void @unknown()
  ret void
}
; _OMP namespace
define void @_ZN4_OMP_noinline() noinline nounwind {
; CHECK: Function Attrs: nounwind
; CHECK-LABEL: @_ZN4_OMP_noinline(
; CHECK-NEXT:    call void @unknown()
; CHECK-NEXT:    ret void
;
  call void @unknown()
  ret void
}

; Negative tests:

define void @__kmpc_noinline_optnone() noinline optnone nounwind {
; CHECK: Function Attrs: noinline nounwind optnone
; CHECK-LABEL: @__kmpc_noinline_optnone(
; CHECK-NEXT:    call void @unknown()
; CHECK-NEXT:    ret void
;
  call void @unknown()
  ret void
}
define void @omp_noinline_optnone() noinline optnone nounwind {
; CHECK: Function Attrs: noinline nounwind optnone
; CHECK-LABEL: @omp_noinline_optnone(
; CHECK-NEXT:    call void @unknown()
; CHECK-NEXT:    ret void
;
  call void @unknown()
  ret void
}
; _OMP namespace
define void @_ZN4_OMP_noinline_optnone() noinline optnone nounwind {
; CHECK: Function Attrs: noinline nounwind optnone
; CHECK-LABEL: @_ZN4_OMP_noinline_optnone(
; CHECK-NEXT:    call void @unknown()
; CHECK-NEXT:    ret void
;
  call void @unknown()
  ret void
}
define void @a___kmpc_noinline() noinline nounwind {
; CHECK: Function Attrs: noinline nounwind
; CHECK-LABEL: @a___kmpc_noinline(
; CHECK-NEXT:    call void @unknown()
; CHECK-NEXT:    ret void
;
  call void @unknown()
  ret void
}
define void @a_omp_noinline() noinline nounwind {
; CHECK: Function Attrs: noinline nounwind
; CHECK-LABEL: @a_omp_noinline(
; CHECK-NEXT:    call void @unknown()
; CHECK-NEXT:    ret void
;
  call void @unknown()
  ret void
}
define void @a__ZN4_OMP_noinline() noinline nounwind {
; CHECK: Function Attrs: noinline nounwind
; CHECK-LABEL: @a__ZN4_OMP_noinline(
; CHECK-NEXT:    call void @unknown()
; CHECK-NEXT:    ret void
;
  call void @unknown()
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"openmp", i32 50}
