; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -instcombine -S < %s | FileCheck %s

define void @test01(i8* %ptr0, i8* %ptr1) {
; CHECK-LABEL: @test01(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1
; CHECK-NEXT:    store i8 43, i8* [[PTR1:%.*]], align 1
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0
  store i8 43, i8* %ptr1
  ret void
}

define void @test02_keep(i8* %ptr0, i8* %ptr1) {
; CHECK-LABEL: @test02_keep(
; CHECK-NEXT:    call void @llvm.experimental.noalias.scope.decl(metadata !0)
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !0
; CHECK-NEXT:    store i8 43, i8* [[PTR1:%.*]], align 1, !noalias !3
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !0
  store i8 43, i8* %ptr1, !noalias !5
  ret void
}

define void @test03(i8* %ptr0, i8* %ptr1) {
; CHECK-LABEL: @test03(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !5
; CHECK-NEXT:    store i8 43, i8* [[PTR1:%.*]], align 1, !noalias !3
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !3
  store i8 43, i8* %ptr1, !noalias !5
  ret void
}

define void @test04_keep(i8* %ptr0, i8* %ptr1) {
; CHECK-LABEL: @test04_keep(
; CHECK-NEXT:    call void @llvm.experimental.noalias.scope.decl(metadata !0)
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !3
; CHECK-NEXT:    store i8 43, i8* [[PTR1:%.*]], align 1, !noalias !3
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !5
  store i8 43, i8* %ptr1, !noalias !5
  ret void
}

define void @test05_keep(i8* %ptr0, i8* %ptr1) {
; CHECK-LABEL: @test05_keep(
; CHECK-NEXT:    call void @llvm.experimental.noalias.scope.decl(metadata !0)
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !3
; CHECK-NEXT:    store i8 43, i8* [[PTR1:%.*]], align 1, !noalias !0
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !5
  store i8 43, i8* %ptr1, !noalias !0
  ret void
}

define void @test06(i8* %ptr0, i8* %ptr1) {
; CHECK-LABEL: @test06(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !3
; CHECK-NEXT:    store i8 43, i8* [[PTR1:%.*]], align 1, !noalias !5
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !5
  store i8 43, i8* %ptr1, !noalias !3
  ret void
}

define void @test07(i8* %ptr0, i8* %ptr1) {
; CHECK-LABEL: @test07(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !0
; CHECK-NEXT:    store i8 43, i8* [[PTR1:%.*]], align 1, !noalias !5
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !0
  store i8 43, i8* %ptr1, !noalias !3
  ret void
}

define void @test08(i8* %ptr0, i8* %ptr1) {
; CHECK-LABEL: @test08(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !5
; CHECK-NEXT:    store i8 43, i8* [[PTR1:%.*]], align 1, !noalias !0
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !3
  store i8 43, i8* %ptr1, !noalias !0
  ret void
}

define void @test11(i8* %ptr0) {
; CHECK-LABEL: @test11(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !0
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !0
  ret void
}

define void @test12(i8* %ptr0) {
; CHECK-LABEL: @test12(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !5
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !3
  ret void
}

define void @test13(i8* %ptr0) {
; CHECK-LABEL: @test13(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !alias.scope !3
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !alias.scope !5
  ret void
}

define void @test14(i8* %ptr0) {
; CHECK-LABEL: @test14(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !noalias !0
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !noalias !0
  ret void
}

define void @test15(i8* %ptr0) {
; CHECK-LABEL: @test15(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !noalias !5
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !noalias !3
  ret void
}

define void @test16(i8* %ptr0) {
; CHECK-LABEL: @test16(
; CHECK-NEXT:    store i8 42, i8* [[PTR0:%.*]], align 1, !noalias !3
; CHECK-NEXT:    ret void
;
  call void @llvm.experimental.noalias.scope.decl(metadata !0)
  store i8 42, i8* %ptr0, !noalias !5
  ret void
}

declare void @llvm.experimental.noalias.scope.decl(metadata)

!0 = !{ !1 }
!1 = distinct !{ !1, !2 }
!2 = distinct !{ !2 }
!3 = !{ !4 }
!4 = distinct !{ !4, !2 }
!5 = !{ !1, !4 }
