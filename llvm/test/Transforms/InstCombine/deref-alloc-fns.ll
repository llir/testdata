; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -instcombine  -S < %s | FileCheck %s
; RUN: opt -mtriple=x86_64-unknown-linux-gnu < %s -instcombine -S | FileCheck %s --check-prefixes=CHECK,GNU


declare noalias i8* @malloc(i64)
declare noalias i8* @calloc(i64, i64)
declare noalias i8* @realloc(i8* nocapture, i64)
declare noalias nonnull i8* @_Znam(i64) ; throwing version of 'new'
declare noalias nonnull i8* @_Znwm(i64) ; throwing version of 'new'
declare noalias i8* @strdup(i8*)
declare noalias i8* @aligned_alloc(i64, i64)
declare noalias align 16 i8* @memalign(i64, i64)
; new[](unsigned int, align_val_t)
declare noalias i8* @_ZnajSt11align_val_t(i64 %size, i64 %align)

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1

define noalias i8* @malloc_nonconstant_size(i64 %n) {
; CHECK-LABEL: @malloc_nonconstant_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @malloc(i64 [[N:%.*]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @malloc(i64 %n)
  ret i8* %call
}

define noalias i8* @malloc_constant_size() {
; CHECK-LABEL: @malloc_constant_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 40)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @malloc(i64 40)
  ret i8* %call
}

define noalias i8* @aligned_alloc_constant_size() {
; CHECK-LABEL: @aligned_alloc_constant_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias align 32 dereferenceable_or_null(512) i8* @aligned_alloc(i64 32, i64 512)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @aligned_alloc(i64 32, i64 512)
  ret i8* %call
}

define noalias i8* @aligned_alloc_unknown_size_nonzero(i1 %c) {
; CHECK-LABEL: @aligned_alloc_unknown_size_nonzero(
; CHECK-NEXT:    [[SIZE:%.*]] = select i1 [[C:%.*]], i64 64, i64 128
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias align 32 i8* @aligned_alloc(i64 32, i64 [[SIZE]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %size = select i1 %c, i64 64, i64 128
  %call = tail call noalias i8* @aligned_alloc(i64 32, i64 %size)
  ret i8* %call
}

define noalias i8* @aligned_alloc_unknown_size_possibly_zero(i1 %c) {
; CHECK-LABEL: @aligned_alloc_unknown_size_possibly_zero(
; CHECK-NEXT:    [[SIZE:%.*]] = select i1 [[C:%.*]], i64 64, i64 0
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias align 32 i8* @aligned_alloc(i64 32, i64 [[SIZE]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %size = select i1 %c, i64 64, i64 0
  %call = tail call noalias i8* @aligned_alloc(i64 32, i64 %size)
  ret i8* %call
}

define noalias i8* @aligned_alloc_unknown_align(i64 %align) {
; CHECK-LABEL: @aligned_alloc_unknown_align(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable_or_null(128) i8* @aligned_alloc(i64 [[ALIGN:%.*]], i64 128)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @aligned_alloc(i64 %align, i64 128)
  ret i8* %call
}

declare noalias i8* @foo(i8*, i8*, i8*)

define noalias i8* @aligned_alloc_dynamic_args(i64 %align, i64 %size) {
; CHECK-LABEL: @aligned_alloc_dynamic_args(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable_or_null(1024) i8* @aligned_alloc(i64 [[ALIGN:%.*]], i64 1024)
; CHECK-NEXT:    [[CALL_1:%.*]] = tail call noalias dereferenceable_or_null(1024) i8* @aligned_alloc(i64 0, i64 1024)
; CHECK-NEXT:    [[CALL_2:%.*]] = tail call noalias align 32 i8* @aligned_alloc(i64 32, i64 [[SIZE:%.*]])
; CHECK-NEXT:    [[TMP1:%.*]] = call i8* @foo(i8* [[CALL]], i8* [[CALL_1]], i8* [[CALL_2]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @aligned_alloc(i64 %align, i64 1024)
  %call_1 = tail call noalias i8* @aligned_alloc(i64 0, i64 1024)
  %call_2 = tail call noalias i8* @aligned_alloc(i64 32, i64 %size)

  call i8* @foo(i8* %call, i8* %call_1, i8* %call_2)
  ret i8* %call
}

define noalias i8* @memalign_constant_size() {
; GNU-LABEL: @memalign_constant_size(
; GNU-NEXT:    [[CALL:%.*]] = tail call noalias align 32 dereferenceable_or_null(512) i8* @memalign(i64 32, i64 512)
; GNU-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @memalign(i64 32, i64 512)
  ret i8* %call
}

define noalias i8* @memalign_unknown_size_nonzero(i1 %c) {
; GNU-LABEL: @memalign_unknown_size_nonzero(
; GNU-NEXT:    [[SIZE:%.*]] = select i1 [[C:%.*]], i64 64, i64 128
; GNU-NEXT:    [[CALL:%.*]] = tail call noalias align 32 i8* @memalign(i64 32, i64 [[SIZE]])
; GNU-NEXT:    ret i8* [[CALL]]
;
  %size = select i1 %c, i64 64, i64 128
  %call = tail call noalias i8* @memalign(i64 32, i64 %size)
  ret i8* %call
}

define noalias i8* @memalign_unknown_size_possibly_zero(i1 %c) {
; GNU-LABEL: @memalign_unknown_size_possibly_zero(
; GNU-NEXT:    [[SIZE:%.*]] = select i1 [[C:%.*]], i64 64, i64 0
; GNU-NEXT:    [[CALL:%.*]] = tail call noalias align 32 i8* @memalign(i64 32, i64 [[SIZE]])
; GNU-NEXT:    ret i8* [[CALL]]
;
  %size = select i1 %c, i64 64, i64 0
  %call = tail call noalias i8* @memalign(i64 32, i64 %size)
  ret i8* %call
}

define noalias i8* @memalign_unknown_align(i64 %align) {
; GNU-LABEL: @memalign_unknown_align(
; GNU-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable_or_null(128) i8* @memalign(i64 [[ALIGN:%.*]], i64 128)
; GNU-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @memalign(i64 %align, i64 128)
  ret i8* %call
}

define noalias i8* @malloc_constant_size2() {
; CHECK-LABEL: @malloc_constant_size2(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 40)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 40)
  ret i8* %call
}

define noalias i8* @malloc_constant_size3() {
; CHECK-LABEL: @malloc_constant_size3(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable(80) dereferenceable_or_null(40) i8* @malloc(i64 40)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias dereferenceable(80) i8* @malloc(i64 40)
  ret i8* %call
}

define noalias i8* @malloc_constant_zero_size() {
; CHECK-LABEL: @malloc_constant_zero_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @malloc(i64 0)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @malloc(i64 0)
  ret i8* %call
}

define noalias i8* @realloc_nonconstant_size(i8* %p, i64 %n) {
; CHECK-LABEL: @realloc_nonconstant_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @realloc(i8* [[P:%.*]], i64 [[N:%.*]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @realloc(i8* %p, i64 %n)
  ret i8* %call
}

define noalias i8* @realloc_constant_zero_size(i8* %p) {
; CHECK-LABEL: @realloc_constant_zero_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @realloc(i8* [[P:%.*]], i64 0)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @realloc(i8* %p, i64 0)
  ret i8* %call
}

define noalias i8* @realloc_constant_size(i8* %p) {
; CHECK-LABEL: @realloc_constant_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable_or_null(40) i8* @realloc(i8* [[P:%.*]], i64 40)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @realloc(i8* %p, i64 40)
  ret i8* %call
}

define noalias i8* @calloc_nonconstant_size(i64 %n) {
; CHECK-LABEL: @calloc_nonconstant_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @calloc(i64 1, i64 [[N:%.*]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 1, i64 %n)
  ret i8* %call
}

define noalias i8* @calloc_nonconstant_size2(i64 %n) {
; CHECK-LABEL: @calloc_nonconstant_size2(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @calloc(i64 [[N:%.*]], i64 0)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 %n, i64 0)
  ret i8* %call
}

define noalias i8* @calloc_nonconstant_size3(i64 %n) {
; CHECK-LABEL: @calloc_nonconstant_size3(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @calloc(i64 [[N:%.*]], i64 [[N]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 %n, i64 %n)
  ret i8* %call
}

define noalias i8* @calloc_constant_zero_size() {
; CHECK-LABEL: @calloc_constant_zero_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @calloc(i64 0, i64 0)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 0, i64 0)
  ret i8* %call
}

define noalias i8* @calloc_constant_zero_size2(i64 %n) {
; CHECK-LABEL: @calloc_constant_zero_size2(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @calloc(i64 [[N:%.*]], i64 0)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 %n, i64 0)
  ret i8* %call
}


define noalias i8* @calloc_constant_zero_size3(i64 %n) {
; CHECK-LABEL: @calloc_constant_zero_size3(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @calloc(i64 0, i64 [[N:%.*]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 0, i64 %n)
  ret i8* %call
}

define noalias i8* @calloc_constant_zero_size4(i64 %n) {
; CHECK-LABEL: @calloc_constant_zero_size4(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @calloc(i64 0, i64 1)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 0, i64 1)
  ret i8* %call
}

define noalias i8* @calloc_constant_zero_size5(i64 %n) {
; CHECK-LABEL: @calloc_constant_zero_size5(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @calloc(i64 1, i64 0)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 1, i64 0)
  ret i8* %call
}

define noalias i8* @calloc_constant_size() {
; CHECK-LABEL: @calloc_constant_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable_or_null(128) i8* @calloc(i64 16, i64 8)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 16, i64 8)
  ret i8* %call
}

define noalias i8* @calloc_constant_size_overflow() {
; CHECK-LABEL: @calloc_constant_size_overflow(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @calloc(i64 2000000000000, i64 80000000000)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @calloc(i64 2000000000000, i64 80000000000)
  ret i8* %call
}

define noalias i8* @op_new_nonconstant_size(i64 %n) {
; CHECK-LABEL: @op_new_nonconstant_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call i8* @_Znam(i64 [[N:%.*]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call i8* @_Znam(i64 %n)
  ret i8* %call
}

define noalias i8* @op_new_constant_size() {
; CHECK-LABEL: @op_new_constant_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call dereferenceable(40) i8* @_Znam(i64 40)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call i8* @_Znam(i64 40)
  ret i8* %call
}

define noalias i8* @op_new_constant_size2() {
; CHECK-LABEL: @op_new_constant_size2(
; CHECK-NEXT:    [[CALL:%.*]] = tail call dereferenceable(40) i8* @_Znwm(i64 40)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call i8* @_Znwm(i64 40)
  ret i8* %call
}

define noalias i8* @op_new_constant_zero_size() {
; CHECK-LABEL: @op_new_constant_zero_size(
; CHECK-NEXT:    [[CALL:%.*]] = tail call i8* @_Znam(i64 0)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call i8* @_Znam(i64 0)
  ret i8* %call
}

define noalias i8* @strdup_constant_str() {
; CHECK-LABEL: @strdup_constant_str(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable_or_null(6) i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret i8* %call
}

define noalias i8* @strdup_notconstant_str(i8 * %str) {
; CHECK-LABEL: @strdup_notconstant_str(
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias i8* @strdup(i8* [[STR:%.*]])
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call noalias i8* @strdup(i8* %str)
  ret i8* %call
}

; OSS-Fuzz #23214
; https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=23214
define noalias i8* @ossfuzz_23214() {
; CHECK-LABEL: @ossfuzz_23214(
; CHECK-NEXT:  bb:
; CHECK-NEXT:    [[CALL:%.*]] = tail call noalias dereferenceable_or_null(512) i8* @aligned_alloc(i64 -9223372036854775808, i64 512)
; CHECK-NEXT:    ret i8* [[CALL]]
;
bb:
  %and = and i64 -1, -9223372036854775808
  %call = tail call noalias i8* @aligned_alloc(i64 %and, i64 512)
  ret i8* %call
}

define noalias i8* @op_new_align() {
; CHECK-LABEL: @op_new_align(
; CHECK-NEXT:    [[CALL:%.*]] = tail call align 32 dereferenceable_or_null(32) i8* @_ZnajSt11align_val_t(i64 32, i64 32)
; CHECK-NEXT:    ret i8* [[CALL]]
;
  %call = tail call i8* @_ZnajSt11align_val_t(i64 32, i64 32)
  ret i8* %call
}

