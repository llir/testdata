; NOTE: Assertions have been autogenerated by utils/update_analyze_test_checks.py UTC_ARGS: --filter "LV: Found an estimated cost of [0-9]+ for VF [0-9]+ For instruction:\s*store i16 %v3, ptr %out3"
; RUN: opt -loop-vectorize -vectorizer-maximize-bandwidth -S -mattr=+sse2 --debug-only=loop-vectorize < %s 2>&1 | FileCheck %s --check-prefix=SSE2
; RUN: opt -loop-vectorize -vectorizer-maximize-bandwidth -S -mattr=+avx  --debug-only=loop-vectorize < %s 2>&1 | FileCheck %s --check-prefix=AVX1
; RUN: opt -loop-vectorize -vectorizer-maximize-bandwidth -S -mattr=+avx2 --debug-only=loop-vectorize < %s 2>&1 | FileCheck %s --check-prefix=AVX2
; RUN: opt -loop-vectorize -vectorizer-maximize-bandwidth -S -mattr=+avx512vl --debug-only=loop-vectorize < %s 2>&1 | FileCheck %s --check-prefix=AVX512DQ
; RUN: opt -loop-vectorize -vectorizer-maximize-bandwidth -S -mattr=+avx512vl,+avx512bw --debug-only=loop-vectorize < %s 2>&1 | FileCheck %s --check-prefix=AVX512BW
; REQUIRES: asserts

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = global [1024 x i8] zeroinitializer, align 128
@B = global [1024 x i16] zeroinitializer, align 128

define void @test() {
; SSE2-LABEL: 'test'
; SSE2:  LV: Found an estimated cost of 1 for VF 1 For instruction: store i16 %v3, ptr %out3, align 2
; SSE2:  LV: Found an estimated cost of 17 for VF 2 For instruction: store i16 %v3, ptr %out3, align 2
; SSE2:  LV: Found an estimated cost of 34 for VF 4 For instruction: store i16 %v3, ptr %out3, align 2
; SSE2:  LV: Found an estimated cost of 68 for VF 8 For instruction: store i16 %v3, ptr %out3, align 2
; SSE2:  LV: Found an estimated cost of 136 for VF 16 For instruction: store i16 %v3, ptr %out3, align 2
;
; AVX1-LABEL: 'test'
; AVX1:  LV: Found an estimated cost of 1 for VF 1 For instruction: store i16 %v3, ptr %out3, align 2
; AVX1:  LV: Found an estimated cost of 17 for VF 2 For instruction: store i16 %v3, ptr %out3, align 2
; AVX1:  LV: Found an estimated cost of 35 for VF 4 For instruction: store i16 %v3, ptr %out3, align 2
; AVX1:  LV: Found an estimated cost of 70 for VF 8 For instruction: store i16 %v3, ptr %out3, align 2
; AVX1:  LV: Found an estimated cost of 144 for VF 16 For instruction: store i16 %v3, ptr %out3, align 2
; AVX1:  LV: Found an estimated cost of 288 for VF 32 For instruction: store i16 %v3, ptr %out3, align 2
;
; AVX2-LABEL: 'test'
; AVX2:  LV: Found an estimated cost of 1 for VF 1 For instruction: store i16 %v3, ptr %out3, align 2
; AVX2:  LV: Found an estimated cost of 3 for VF 2 For instruction: store i16 %v3, ptr %out3, align 2
; AVX2:  LV: Found an estimated cost of 7 for VF 4 For instruction: store i16 %v3, ptr %out3, align 2
; AVX2:  LV: Found an estimated cost of 12 for VF 8 For instruction: store i16 %v3, ptr %out3, align 2
; AVX2:  LV: Found an estimated cost of 36 for VF 16 For instruction: store i16 %v3, ptr %out3, align 2
; AVX2:  LV: Found an estimated cost of 72 for VF 32 For instruction: store i16 %v3, ptr %out3, align 2
;
; AVX512DQ-LABEL: 'test'
; AVX512DQ:  LV: Found an estimated cost of 1 for VF 1 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512DQ:  LV: Found an estimated cost of 3 for VF 2 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512DQ:  LV: Found an estimated cost of 7 for VF 4 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512DQ:  LV: Found an estimated cost of 11 for VF 8 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512DQ:  LV: Found an estimated cost of 34 for VF 16 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512DQ:  LV: Found an estimated cost of 68 for VF 32 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512DQ:  LV: Found an estimated cost of 576 for VF 64 For instruction: store i16 %v3, ptr %out3, align 2
;
; AVX512BW-LABEL: 'test'
; AVX512BW:  LV: Found an estimated cost of 1 for VF 1 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512BW:  LV: Found an estimated cost of 8 for VF 2 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512BW:  LV: Found an estimated cost of 8 for VF 4 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512BW:  LV: Found an estimated cost of 8 for VF 8 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512BW:  LV: Found an estimated cost of 17 for VF 16 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512BW:  LV: Found an estimated cost of 34 for VF 32 For instruction: store i16 %v3, ptr %out3, align 2
; AVX512BW:  LV: Found an estimated cost of 68 for VF 64 For instruction: store i16 %v3, ptr %out3, align 2
;
entry:
  br label %for.body

for.body:
  %iv = phi i64 [ 0, %entry ], [ %iv.next, %for.body ]

  %iv.0 = add nuw nsw i64 %iv, 0
  %iv.1 = add nuw nsw i64 %iv, 1
  %iv.2 = add nuw nsw i64 %iv, 2
  %iv.3 = add nuw nsw i64 %iv, 3

  %in = getelementptr inbounds [1024 x i8], ptr @A, i64 0, i64 %iv.0
  %v.narrow = load i8, ptr %in

  %v = zext i8 %v.narrow to i16

  %v0 = add i16 %v, 0
  %v1 = add i16 %v, 1
  %v2 = add i16 %v, 2
  %v3 = add i16 %v, 3

  %out0 = getelementptr inbounds [1024 x i16], ptr @B, i64 0, i64 %iv.0
  %out1 = getelementptr inbounds [1024 x i16], ptr @B, i64 0, i64 %iv.1
  %out2 = getelementptr inbounds [1024 x i16], ptr @B, i64 0, i64 %iv.2
  %out3 = getelementptr inbounds [1024 x i16], ptr @B, i64 0, i64 %iv.3

  store i16 %v0, ptr %out0
  store i16 %v1, ptr %out1
  store i16 %v2, ptr %out2
  store i16 %v3, ptr %out3

  %iv.next = add nuw nsw i64 %iv.0, 4
  %cmp = icmp ult i64 %iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:
  ret void
}
