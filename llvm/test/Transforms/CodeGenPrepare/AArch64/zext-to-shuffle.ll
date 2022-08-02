; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -codegenprepare -S %s | FileCheck %s

target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios"

; It's profitable to convert the zext to a shuffle, which in turn will be
; lowered to 4 tbl instructions. The masks are materialized outside the loop.
define void @zext_v16i8_to_v16i32_in_loop(i8* %src, i32* %dst) {
; CHECK-LABEL: @zext_v16i8_to_v16i32_in_loop(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br label [[LOOP:%.*]]
; CHECK:       loop:
; CHECK-NEXT:    [[IV:%.*]] = phi i64 [ 0, [[ENTRY:%.*]] ], [ [[IV_NEXT:%.*]], [[LOOP]] ]
; CHECK-NEXT:    [[SRC_GEP:%.*]] = getelementptr i8, i8* [[SRC:%.*]], i64 [[IV]]
; CHECK-NEXT:    [[SRC_GEP_CAST:%.*]] = bitcast i8* [[SRC_GEP]] to <16 x i8>*
; CHECK-NEXT:    [[LOAD:%.*]] = load <16 x i8>, <16 x i8>* [[SRC_GEP_CAST]], align 16
; CHECK-NEXT:    [[EXT:%.*]] = zext <16 x i8> [[LOAD]] to <16 x i32>
; CHECK-NEXT:    [[DST_GEP:%.*]] = getelementptr i32, i32* [[DST:%.*]], i64 [[IV]]
; CHECK-NEXT:    [[DST_GEP_CAST:%.*]] = bitcast i32* [[DST_GEP]] to <16 x i32>*
; CHECK-NEXT:    store <16 x i32> [[EXT]], <16 x i32>* [[DST_GEP_CAST]], align 64
; CHECK-NEXT:    [[IV_NEXT]] = add nuw i64 [[IV]], 16
; CHECK-NEXT:    [[EC:%.*]] = icmp eq i64 [[IV_NEXT]], 128
; CHECK-NEXT:    br i1 [[EC]], label [[EXIT:%.*]], label [[LOOP]]
; CHECK:       exit:
; CHECK-NEXT:    ret void
;
entry:
  br label %loop

loop:
  %iv = phi i64 [ 0, %entry ], [ %iv.next, %loop ]
  %src.gep = getelementptr i8, i8* %src, i64 %iv
  %src.gep.cast = bitcast i8* %src.gep to <16 x i8>*
  %load = load <16 x i8>, <16 x i8>* %src.gep.cast
  %ext = zext <16 x i8> %load to <16 x i32>
  %dst.gep = getelementptr i32, i32* %dst, i64 %iv
  %dst.gep.cast = bitcast i32* %dst.gep to <16 x i32>*
  store <16 x i32> %ext, <16 x i32>* %dst.gep.cast
  %iv.next = add nuw i64 %iv, 16
  %ec = icmp eq i64 %iv.next, 128
  br i1 %ec, label %exit, label %loop

exit:
  ret void
}

; Not profitable to use shuffle/tbl, as 4 tbls + materializing the masks
; require more instructions than lowering zext directly.
define void @zext_v16i8_to_v16i32_no_loop(i8* %src, i32* %dst) {
; CHECK-LABEL: @zext_v16i8_to_v16i32_no_loop(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[SRC_CAST:%.*]] = bitcast i8* [[SRC:%.*]] to <16 x i8>*
; CHECK-NEXT:    [[LOAD:%.*]] = load <16 x i8>, <16 x i8>* [[SRC_CAST]], align 16
; CHECK-NEXT:    [[EXT:%.*]] = zext <16 x i8> [[LOAD]] to <16 x i32>
; CHECK-NEXT:    [[DST_CAST:%.*]] = bitcast i32* [[DST:%.*]] to <16 x i32>*
; CHECK-NEXT:    store <16 x i32> [[EXT]], <16 x i32>* [[DST_CAST]], align 64
; CHECK-NEXT:    ret void
;
entry:
  %src.cast = bitcast i8* %src to <16 x i8>*
  %load = load <16 x i8>, <16 x i8>* %src.cast
  %ext = zext <16 x i8> %load to <16 x i32>
  %dst.cast = bitcast i32* %dst to <16 x i32>*
  store <16 x i32> %ext, <16 x i32>* %dst.cast
  ret void
}

define void @zext_v16i8_to_v16i16_in_loop(i8* %src, i16* %dst) {
; CHECK-LABEL: @zext_v16i8_to_v16i16_in_loop(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br label [[LOOP:%.*]]
; CHECK:       loop:
; CHECK-NEXT:    [[IV:%.*]] = phi i64 [ 0, [[ENTRY:%.*]] ], [ [[IV_NEXT:%.*]], [[LOOP]] ]
; CHECK-NEXT:    [[SRC_GEP:%.*]] = getelementptr i8, i8* [[SRC:%.*]], i64 [[IV]]
; CHECK-NEXT:    [[SRC_GEP_CAST:%.*]] = bitcast i8* [[SRC_GEP]] to <16 x i8>*
; CHECK-NEXT:    [[LOAD:%.*]] = load <16 x i8>, <16 x i8>* [[SRC_GEP_CAST]], align 16
; CHECK-NEXT:    [[EXT:%.*]] = zext <16 x i8> [[LOAD]] to <16 x i16>
; CHECK-NEXT:    [[DST_GEP:%.*]] = getelementptr i16, i16* [[DST:%.*]], i64 [[IV]]
; CHECK-NEXT:    [[DST_GEP_CAST:%.*]] = bitcast i16* [[DST_GEP]] to <16 x i16>*
; CHECK-NEXT:    store <16 x i16> [[EXT]], <16 x i16>* [[DST_GEP_CAST]], align 32
; CHECK-NEXT:    [[IV_NEXT]] = add nuw i64 [[IV]], 16
; CHECK-NEXT:    [[EC:%.*]] = icmp eq i64 [[IV_NEXT]], 128
; CHECK-NEXT:    br i1 [[EC]], label [[EXIT:%.*]], label [[LOOP]]
; CHECK:       exit:
; CHECK-NEXT:    ret void
;
entry:
  br label %loop

loop:
  %iv = phi i64 [ 0, %entry ], [ %iv.next, %loop ]
  %src.gep = getelementptr i8, i8* %src, i64 %iv
  %src.gep.cast = bitcast i8* %src.gep to <16 x i8>*
  %load = load <16 x i8>, <16 x i8>* %src.gep.cast
  %ext = zext <16 x i8> %load to <16 x i16>
  %dst.gep = getelementptr i16, i16* %dst, i64 %iv
  %dst.gep.cast = bitcast i16* %dst.gep to <16 x i16>*
  store <16 x i16> %ext, <16 x i16>* %dst.gep.cast
  %iv.next = add nuw i64 %iv, 16
  %ec = icmp eq i64 %iv.next, 128
  br i1 %ec, label %exit, label %loop

exit:
  ret void
}

define void @zext_v8i8_to_v8i32_in_loop(i8* %src, i32* %dst) {
; CHECK-LABEL: @zext_v8i8_to_v8i32_in_loop(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br label [[LOOP:%.*]]
; CHECK:       loop:
; CHECK-NEXT:    [[IV:%.*]] = phi i64 [ 0, [[ENTRY:%.*]] ], [ [[IV_NEXT:%.*]], [[LOOP]] ]
; CHECK-NEXT:    [[SRC_GEP:%.*]] = getelementptr i8, i8* [[SRC:%.*]], i64 [[IV]]
; CHECK-NEXT:    [[SRC_GEP_CAST:%.*]] = bitcast i8* [[SRC_GEP]] to <8 x i8>*
; CHECK-NEXT:    [[LOAD:%.*]] = load <8 x i8>, <8 x i8>* [[SRC_GEP_CAST]], align 8
; CHECK-NEXT:    [[EXT:%.*]] = zext <8 x i8> [[LOAD]] to <8 x i32>
; CHECK-NEXT:    [[DST_GEP:%.*]] = getelementptr i32, i32* [[DST:%.*]], i64 [[IV]]
; CHECK-NEXT:    [[DST_GEP_CAST:%.*]] = bitcast i32* [[DST_GEP]] to <8 x i32>*
; CHECK-NEXT:    store <8 x i32> [[EXT]], <8 x i32>* [[DST_GEP_CAST]], align 32
; CHECK-NEXT:    [[IV_NEXT]] = add nuw i64 [[IV]], 16
; CHECK-NEXT:    [[EC:%.*]] = icmp eq i64 [[IV_NEXT]], 128
; CHECK-NEXT:    br i1 [[EC]], label [[EXIT:%.*]], label [[LOOP]]
; CHECK:       exit:
; CHECK-NEXT:    ret void
;
entry:
  br label %loop

loop:
  %iv = phi i64 [ 0, %entry ], [ %iv.next, %loop ]
  %src.gep = getelementptr i8, i8* %src, i64 %iv
  %src.gep.cast = bitcast i8* %src.gep to <8 x i8>*
  %load = load <8 x i8>, <8 x i8>* %src.gep.cast
  %ext = zext <8 x i8> %load to <8 x i32>
  %dst.gep = getelementptr i32, i32* %dst, i64 %iv
  %dst.gep.cast = bitcast i32* %dst.gep to <8 x i32>*
  store <8 x i32> %ext, <8 x i32>* %dst.gep.cast
  %iv.next = add nuw i64 %iv, 16
  %ec = icmp eq i64 %iv.next, 128
  br i1 %ec, label %exit, label %loop

exit:
  ret void
}

define void @zext_v16i8_to_v16i64_in_loop(i8* %src, i64* %dst) {
; CHECK-LABEL: @zext_v16i8_to_v16i64_in_loop(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br label [[LOOP:%.*]]
; CHECK:       loop:
; CHECK-NEXT:    [[IV:%.*]] = phi i64 [ 0, [[ENTRY:%.*]] ], [ [[IV_NEXT:%.*]], [[LOOP]] ]
; CHECK-NEXT:    [[SRC_GEP:%.*]] = getelementptr i8, i8* [[SRC:%.*]], i64 [[IV]]
; CHECK-NEXT:    [[SRC_GEP_CAST:%.*]] = bitcast i8* [[SRC_GEP]] to <16 x i8>*
; CHECK-NEXT:    [[LOAD:%.*]] = load <16 x i8>, <16 x i8>* [[SRC_GEP_CAST]], align 16
; CHECK-NEXT:    [[EXT:%.*]] = zext <16 x i8> [[LOAD]] to <16 x i64>
; CHECK-NEXT:    [[DST_GEP:%.*]] = getelementptr i64, i64* [[DST:%.*]], i64 [[IV]]
; CHECK-NEXT:    [[DST_GEP_CAST:%.*]] = bitcast i64* [[DST_GEP]] to <16 x i64>*
; CHECK-NEXT:    store <16 x i64> [[EXT]], <16 x i64>* [[DST_GEP_CAST]], align 128
; CHECK-NEXT:    [[IV_NEXT]] = add nuw i64 [[IV]], 16
; CHECK-NEXT:    [[EC:%.*]] = icmp eq i64 [[IV_NEXT]], 128
; CHECK-NEXT:    br i1 [[EC]], label [[EXIT:%.*]], label [[LOOP]]
; CHECK:       exit:
; CHECK-NEXT:    ret void
;
entry:
  br label %loop

loop:
  %iv = phi i64 [ 0, %entry ], [ %iv.next, %loop ]
  %src.gep = getelementptr i8, i8* %src, i64 %iv
  %src.gep.cast = bitcast i8* %src.gep to <16 x i8>*
  %load = load <16 x i8>, <16 x i8>* %src.gep.cast
  %ext = zext <16 x i8> %load to <16 x i64>
  %dst.gep = getelementptr i64, i64* %dst, i64 %iv
  %dst.gep.cast = bitcast i64* %dst.gep to <16 x i64>*
  store <16 x i64> %ext, <16 x i64>* %dst.gep.cast
  %iv.next = add nuw i64 %iv, 16
  %ec = icmp eq i64 %iv.next, 128
  br i1 %ec, label %exit, label %loop

exit:
  ret void
}
