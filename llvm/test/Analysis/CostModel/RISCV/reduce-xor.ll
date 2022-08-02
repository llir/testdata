; NOTE: Assertions have been autogenerated by utils/update_analyze_test_checks.py
; RUN: opt < %s -mtriple=riscv32 -mattr=+v -riscv-v-vector-bits-min=256 -passes='print<cost-model>' -cost-kind=throughput 2>&1 -disable-output | FileCheck %s
; RUN: opt < %s -mtriple=riscv64 -mattr=+v -riscv-v-vector-bits-min=256 -passes='print<cost-model>' -cost-kind=throughput 2>&1 -disable-output | FileCheck %s

define i32 @reduce_i1(i32 %arg) {
; CHECK-LABEL: 'reduce_i1'
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V1 = call i1 @llvm.vector.reduce.xor.v1i1(<1 x i1> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V2 = call i1 @llvm.vector.reduce.xor.v2i1(<2 x i1> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V4 = call i1 @llvm.vector.reduce.xor.v4i1(<4 x i1> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V8 = call i1 @llvm.vector.reduce.xor.v8i1(<8 x i1> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V16 = call i1 @llvm.vector.reduce.xor.v16i1(<16 x i1> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V32 = call i1 @llvm.vector.reduce.xor.v32i1(<32 x i1> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V64 = call i1 @llvm.vector.reduce.xor.v64i1(<64 x i1> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V128 = call i1 @llvm.vector.reduce.xor.v128i1(<128 x i1> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: ret i32 undef
;
  %V1   = call i1 @llvm.vector.reduce.xor.v1i1(<1 x i1> undef)
  %V2   = call i1 @llvm.vector.reduce.xor.v2i1(<2 x i1> undef)
  %V4   = call i1 @llvm.vector.reduce.xor.v4i1(<4 x i1> undef)
  %V8   = call i1 @llvm.vector.reduce.xor.v8i1(<8 x i1> undef)
  %V16  = call i1 @llvm.vector.reduce.xor.v16i1(<16 x i1> undef)
  %V32  = call i1 @llvm.vector.reduce.xor.v32i1(<32 x i1> undef)
  %V64  = call i1 @llvm.vector.reduce.xor.v64i1(<64 x i1> undef)
  %V128 = call i1 @llvm.vector.reduce.xor.v128i1(<128 x i1> undef)
  ret i32 undef
}

define i32 @reduce_i8(i32 %arg) {
; CHECK-LABEL: 'reduce_i8'
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V1 = call i8 @llvm.vector.reduce.xor.v1i8(<1 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 3 for instruction: %V2 = call i8 @llvm.vector.reduce.xor.v2i8(<2 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4 = call i8 @llvm.vector.reduce.xor.v4i8(<4 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 5 for instruction: %V8 = call i8 @llvm.vector.reduce.xor.v8i8(<8 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 6 for instruction: %V16 = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 7 for instruction: %V32 = call i8 @llvm.vector.reduce.xor.v32i8(<32 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V64 = call i8 @llvm.vector.reduce.xor.v64i8(<64 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 9 for instruction: %V128 = call i8 @llvm.vector.reduce.xor.v128i8(<128 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: ret i32 undef
;
  %V1   = call i8 @llvm.vector.reduce.xor.v1i8(<1 x i8> undef)
  %V2   = call i8 @llvm.vector.reduce.xor.v2i8(<2 x i8> undef)
  %V4   = call i8 @llvm.vector.reduce.xor.v4i8(<4 x i8> undef)
  %V8   = call i8 @llvm.vector.reduce.xor.v8i8(<8 x i8> undef)
  %V16  = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> undef)
  %V32  = call i8 @llvm.vector.reduce.xor.v32i8(<32 x i8> undef)
  %V64  = call i8 @llvm.vector.reduce.xor.v64i8(<64 x i8> undef)
  %V128 = call i8 @llvm.vector.reduce.xor.v128i8(<128 x i8> undef)
  ret i32 undef
}

define i32 @reduce_i16(i32 %arg) {
; CHECK-LABEL: 'reduce_i16'
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V1 = call i16 @llvm.vector.reduce.xor.v1i16(<1 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 3 for instruction: %V2 = call i16 @llvm.vector.reduce.xor.v2i16(<2 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4 = call i16 @llvm.vector.reduce.xor.v4i16(<4 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 5 for instruction: %V8 = call i16 @llvm.vector.reduce.xor.v8i16(<8 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 6 for instruction: %V16 = call i16 @llvm.vector.reduce.xor.v16i16(<16 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 7 for instruction: %V32 = call i16 @llvm.vector.reduce.xor.v32i16(<32 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V64 = call i16 @llvm.vector.reduce.xor.v64i16(<64 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 9 for instruction: %V128 = call i16 @llvm.vector.reduce.xor.v128i16(<128 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: ret i32 undef
;
  %V1   = call i16 @llvm.vector.reduce.xor.v1i16(<1 x i16> undef)
  %V2   = call i16 @llvm.vector.reduce.xor.v2i16(<2 x i16> undef)
  %V4   = call i16 @llvm.vector.reduce.xor.v4i16(<4 x i16> undef)
  %V8   = call i16 @llvm.vector.reduce.xor.v8i16(<8 x i16> undef)
  %V16  = call i16 @llvm.vector.reduce.xor.v16i16(<16 x i16> undef)
  %V32  = call i16 @llvm.vector.reduce.xor.v32i16(<32 x i16> undef)
  %V64  = call i16 @llvm.vector.reduce.xor.v64i16(<64 x i16> undef)
  %V128 = call i16 @llvm.vector.reduce.xor.v128i16(<128 x i16> undef)
  ret i32 undef
}

define i32 @reduce_i32(i32 %arg) {
; CHECK-LABEL: 'reduce_i32'
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V1 = call i32 @llvm.vector.reduce.xor.v1i32(<1 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 3 for instruction: %V2 = call i32 @llvm.vector.reduce.xor.v2i32(<2 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 5 for instruction: %V8 = call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 6 for instruction: %V16 = call i32 @llvm.vector.reduce.xor.v16i32(<16 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 7 for instruction: %V32 = call i32 @llvm.vector.reduce.xor.v32i32(<32 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V64 = call i32 @llvm.vector.reduce.xor.v64i32(<64 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 10 for instruction: %V128 = call i32 @llvm.vector.reduce.xor.v128i32(<128 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: ret i32 undef
;
  %V1   = call i32 @llvm.vector.reduce.xor.v1i32(<1 x i32> undef)
  %V2   = call i32 @llvm.vector.reduce.xor.v2i32(<2 x i32> undef)
  %V4   = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> undef)
  %V8   = call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> undef)
  %V16  = call i32 @llvm.vector.reduce.xor.v16i32(<16 x i32> undef)
  %V32  = call i32 @llvm.vector.reduce.xor.v32i32(<32 x i32> undef)
  %V64  = call i32 @llvm.vector.reduce.xor.v64i32(<64 x i32> undef)
  %V128 = call i32 @llvm.vector.reduce.xor.v128i32(<128 x i32> undef)
  ret i32 undef
}

define i32 @reduce_i64(i32 %arg) {
; CHECK-LABEL: 'reduce_i64'
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V1 = call i64 @llvm.vector.reduce.xor.v1i64(<1 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 3 for instruction: %V2 = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4 = call i64 @llvm.vector.reduce.xor.v4i64(<4 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 5 for instruction: %V8 = call i64 @llvm.vector.reduce.xor.v8i64(<8 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 6 for instruction: %V16 = call i64 @llvm.vector.reduce.xor.v16i64(<16 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 7 for instruction: %V32 = call i64 @llvm.vector.reduce.xor.v32i64(<32 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 9 for instruction: %V64 = call i64 @llvm.vector.reduce.xor.v64i64(<64 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 12 for instruction: %V128 = call i64 @llvm.vector.reduce.xor.v128i64(<128 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: ret i32 undef
;
  %V1   = call i64 @llvm.vector.reduce.xor.v1i64(<1 x i64> undef)
  %V2   = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> undef)
  %V4   = call i64 @llvm.vector.reduce.xor.v4i64(<4 x i64> undef)
  %V8   = call i64 @llvm.vector.reduce.xor.v8i64(<8 x i64> undef)
  %V16  = call i64 @llvm.vector.reduce.xor.v16i64(<16 x i64> undef)
  %V32  = call i64 @llvm.vector.reduce.xor.v32i64(<32 x i64> undef)
  %V64  = call i64 @llvm.vector.reduce.xor.v64i64(<64 x i64> undef)
  %V128 = call i64 @llvm.vector.reduce.xor.v128i64(<128 x i64> undef)
  ret i32 undef
}

declare i1 @llvm.vector.reduce.xor.v1i1(<1 x i1>)
declare i1 @llvm.vector.reduce.xor.v2i1(<2 x i1>)
declare i1 @llvm.vector.reduce.xor.v4i1(<4 x i1>)
declare i1 @llvm.vector.reduce.xor.v8i1(<8 x i1>)
declare i1 @llvm.vector.reduce.xor.v16i1(<16 x i1>)
declare i1 @llvm.vector.reduce.xor.v32i1(<32 x i1>)
declare i1 @llvm.vector.reduce.xor.v64i1(<64 x i1>)
declare i1 @llvm.vector.reduce.xor.v128i1(<128 x i1>)
declare i8 @llvm.vector.reduce.xor.v1i8(<1 x i8>)
declare i8 @llvm.vector.reduce.xor.v2i8(<2 x i8>)
declare i8 @llvm.vector.reduce.xor.v4i8(<4 x i8>)
declare i8 @llvm.vector.reduce.xor.v8i8(<8 x i8>)
declare i8 @llvm.vector.reduce.xor.v16i8(<16 x i8>)
declare i8 @llvm.vector.reduce.xor.v32i8(<32 x i8>)
declare i8 @llvm.vector.reduce.xor.v64i8(<64 x i8>)
declare i8 @llvm.vector.reduce.xor.v128i8(<128 x i8>)
declare i16 @llvm.vector.reduce.xor.v1i16(<1 x i16>)
declare i16 @llvm.vector.reduce.xor.v2i16(<2 x i16>)
declare i16 @llvm.vector.reduce.xor.v4i16(<4 x i16>)
declare i16 @llvm.vector.reduce.xor.v8i16(<8 x i16>)
declare i16 @llvm.vector.reduce.xor.v16i16(<16 x i16>)
declare i16 @llvm.vector.reduce.xor.v32i16(<32 x i16>)
declare i16 @llvm.vector.reduce.xor.v64i16(<64 x i16>)
declare i16 @llvm.vector.reduce.xor.v128i16(<128 x i16>)
declare i32 @llvm.vector.reduce.xor.v1i32(<1 x i32>)
declare i32 @llvm.vector.reduce.xor.v2i32(<2 x i32>)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>)
declare i32 @llvm.vector.reduce.xor.v8i32(<8 x i32>)
declare i32 @llvm.vector.reduce.xor.v16i32(<16 x i32>)
declare i32 @llvm.vector.reduce.xor.v32i32(<32 x i32>)
declare i32 @llvm.vector.reduce.xor.v64i32(<64 x i32>)
declare i32 @llvm.vector.reduce.xor.v128i32(<128 x i32>)
declare i64 @llvm.vector.reduce.xor.v1i64(<1 x i64>)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>)
declare i64 @llvm.vector.reduce.xor.v4i64(<4 x i64>)
declare i64 @llvm.vector.reduce.xor.v8i64(<8 x i64>)
declare i64 @llvm.vector.reduce.xor.v16i64(<16 x i64>)
declare i64 @llvm.vector.reduce.xor.v32i64(<32 x i64>)
declare i64 @llvm.vector.reduce.xor.v64i64(<64 x i64>)
declare i64 @llvm.vector.reduce.xor.v128i64(<128 x i64>)
