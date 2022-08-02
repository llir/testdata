; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -passes=instcombine -S | FileCheck %s

; See https://lists.llvm.org/pipermail/llvm-commits/Week-of-Mon-20210412/904154.html
; When replacing an allocation that is only modified by a memcpy/memmove from
; a constant whose alignment is equal to or exceeds that of the allocation,
; we also need to ensure that we actually can replace all uses of an alloca
; with said constant. This matters because it could be e.g. a select between
; two constants, that happens after the first use of an alloca.

%t0 = type { i8*, i64 }

@g0 = external constant %t0
@g1 = external constant %t0
define void @test(i8*%out) {
; CHECK-LABEL: @test(
; CHECK-NEXT:    [[I0:%.*]] = alloca [[T0:%.*]], align 8
; CHECK-NEXT:    [[I1:%.*]] = bitcast %t0* [[I0]] to i8*
; CHECK-NEXT:    [[I2:%.*]] = call i1 @get_cond()
; CHECK-NEXT:    [[I3:%.*]] = select i1 [[I2]], i8* bitcast (%t0* @g0 to i8*), i8* bitcast (%t0* @g1 to i8*)
; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) [[I1]], i8* noundef nonnull align 8 dereferenceable(16) [[I3]], i64 16, i1 false)
; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) [[OUT:%.*]], i8* noundef nonnull align 8 dereferenceable(16) [[I1]], i64 16, i1 false)
; CHECK-NEXT:    ret void
;
  %i0 = alloca %t0
  %i1 = bitcast %t0* %i0 to i8*
  %i2 = call i1 @get_cond()
  %i3 = select i1 %i2, i8* bitcast (%t0* @g0 to i8*), i8* bitcast (%t0* @g1 to i8*)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %i1, i8* %i3, i64 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %out, i8* %i1, i64 16, i1 false)
  ret void
}

define void @test2() {
; CHECK-LABEL: @test2(
; CHECK-NEXT:  bb:
; CHECK-NEXT:    [[I:%.*]] = alloca [[T0:%.*]], align 8
; CHECK-NEXT:    [[I1:%.*]] = call i32 @func(%t0* undef)
; CHECK-NEXT:    [[I2:%.*]] = icmp eq i32 [[I1]], 2503
; CHECK-NEXT:    [[I3:%.*]] = select i1 [[I2]], i8* bitcast (%t0* @g0 to i8*), i8* bitcast (%t0* @g1 to i8*)
; CHECK-NEXT:    [[I4:%.*]] = bitcast %t0* [[I]] to i8*
; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) [[I4]], i8* noundef nonnull align 8 dereferenceable(16) [[I3]], i64 16, i1 false)
; CHECK-NEXT:    [[I5:%.*]] = call i32 @func(%t0* nonnull byval([[T0]]) [[I]])
; CHECK-NEXT:    unreachable
;
bb:
  %i = alloca %t0, align 8
  %i1 = call i32 @func(%t0* undef)
  %i2 = icmp eq i32 %i1, 2503
  %i3 = select i1 %i2, i8* bitcast (%t0* @g0 to i8*), i8* bitcast (%t0* @g1 to i8*)
  %i4 = bitcast %t0* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %i4, i8* noundef nonnull align 8 dereferenceable(16) %i3, i64 16, i1 false)
  %i5 = call i32 @func(%t0* nonnull byval(%t0) %i)
  unreachable
}

declare i32 @func(%t0*)
declare i1 @get_cond()
declare void @llvm.memcpy.p0i8.p0i8.i64(i8*, i8*, i64, i1)
