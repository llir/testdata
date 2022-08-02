; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -loop-vectorize -instcombine -simplifycfg -simplifycfg-require-and-preserve-domtree=1 < %s -S -o - | FileCheck %s

target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8.1m.main-arm-none-eabi"

define void @arm_abs_q7(i8* nocapture readonly %pSrc, i8* nocapture %pDst, i32 %blockSize) #0 {
; CHECK-LABEL: @arm_abs_q7(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[PSRC2:%.*]] = ptrtoint i8* [[PSRC:%.*]] to i32
; CHECK-NEXT:    [[PDST1:%.*]] = ptrtoint i8* [[PDST:%.*]] to i32
; CHECK-NEXT:    [[CMP_NOT19:%.*]] = icmp eq i32 [[BLOCKSIZE:%.*]], 0
; CHECK-NEXT:    br i1 [[CMP_NOT19]], label [[WHILE_END:%.*]], label [[WHILE_BODY_PREHEADER:%.*]]
; CHECK:       while.body.preheader:
; CHECK-NEXT:    [[MIN_ITERS_CHECK:%.*]] = icmp ult i32 [[BLOCKSIZE]], 16
; CHECK-NEXT:    [[TMP0:%.*]] = sub i32 [[PDST1]], [[PSRC2]]
; CHECK-NEXT:    [[DIFF_CHECK:%.*]] = icmp ult i32 [[TMP0]], 16
; CHECK-NEXT:    [[OR_COND:%.*]] = select i1 [[MIN_ITERS_CHECK]], i1 true, i1 [[DIFF_CHECK]]
; CHECK-NEXT:    br i1 [[OR_COND]], label [[SCALAR_PH:%.*]], label [[VECTOR_PH:%.*]]
; CHECK:       vector.ph:
; CHECK-NEXT:    [[N_VEC:%.*]] = and i32 [[BLOCKSIZE]], -16
; CHECK-NEXT:    [[IND_END:%.*]] = getelementptr i8, i8* [[PSRC]], i32 [[N_VEC]]
; CHECK-NEXT:    [[IND_END3:%.*]] = and i32 [[BLOCKSIZE]], 15
; CHECK-NEXT:    [[IND_END5:%.*]] = getelementptr i8, i8* [[PDST]], i32 [[N_VEC]]
; CHECK-NEXT:    br label [[VECTOR_BODY:%.*]]
; CHECK:       vector.body:
; CHECK-NEXT:    [[INDEX:%.*]] = phi i32 [ 0, [[VECTOR_PH]] ], [ [[INDEX_NEXT:%.*]], [[VECTOR_BODY]] ]
; CHECK-NEXT:    [[NEXT_GEP:%.*]] = getelementptr i8, i8* [[PSRC]], i32 [[INDEX]]
; CHECK-NEXT:    [[NEXT_GEP6:%.*]] = getelementptr i8, i8* [[PDST]], i32 [[INDEX]]
; CHECK-NEXT:    [[TMP0:%.*]] = bitcast i8* [[NEXT_GEP]] to <16 x i8>*
; CHECK-NEXT:    [[WIDE_LOAD:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]], align 1
; CHECK-NEXT:    [[TMP1:%.*]] = icmp sgt <16 x i8> [[WIDE_LOAD]], zeroinitializer
; CHECK-NEXT:    [[TMP2:%.*]] = icmp eq <16 x i8> [[WIDE_LOAD]], <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
; CHECK-NEXT:    [[TMP3:%.*]] = sub <16 x i8> zeroinitializer, [[WIDE_LOAD]]
; CHECK-NEXT:    [[TMP4:%.*]] = select <16 x i1> [[TMP2]], <16 x i8> <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>, <16 x i8> [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = select <16 x i1> [[TMP1]], <16 x i8> [[WIDE_LOAD]], <16 x i8> [[TMP4]]
; CHECK-NEXT:    [[TMP6:%.*]] = bitcast i8* [[NEXT_GEP6]] to <16 x i8>*
; CHECK-NEXT:    store <16 x i8> [[TMP5]], <16 x i8>* [[TMP6]], align 1
; CHECK-NEXT:    [[INDEX_NEXT]] = add nuw i32 [[INDEX]], 16
; CHECK-NEXT:    [[TMP7:%.*]] = icmp eq i32 [[INDEX_NEXT]], [[N_VEC]]
; CHECK-NEXT:    br i1 [[TMP7]], label [[MIDDLE_BLOCK:%.*]], label [[VECTOR_BODY]], [[LOOP5:!llvm.loop !.*]]
; CHECK:       middle.block:
; CHECK-NEXT:    [[CMP_N:%.*]] = icmp eq i32 [[N_VEC]], [[BLOCKSIZE]]
; CHECK-NEXT:    br i1 [[CMP_N]], label [[WHILE_END]], label [[SCALAR_PH]]
; CHECK:       scalar.ph:
; CHECK-NEXT:    [[BC_RESUME_VAL:%.*]] = phi i8* [ [[IND_END]], [[MIDDLE_BLOCK]] ], [ [[PSRC]], [[WHILE_BODY_PREHEADER]] ]
; CHECK-NEXT:    [[BC_RESUME_VAL2:%.*]] = phi i32 [ [[IND_END3]], [[MIDDLE_BLOCK]] ], [ [[BLOCKSIZE]], [[WHILE_BODY_PREHEADER]] ]
; CHECK-NEXT:    [[BC_RESUME_VAL4:%.*]] = phi i8* [ [[IND_END5]], [[MIDDLE_BLOCK]] ], [ [[PDST]], [[WHILE_BODY_PREHEADER]] ]
; CHECK-NEXT:    br label [[WHILE_BODY:%.*]]
; CHECK:       while.body:
; CHECK-NEXT:    [[PSRC_ADDR_022:%.*]] = phi i8* [ [[INCDEC_PTR:%.*]], [[WHILE_BODY]] ], [ [[BC_RESUME_VAL]], [[SCALAR_PH]] ]
; CHECK-NEXT:    [[BLKCNT_021:%.*]] = phi i32 [ [[DEC:%.*]], [[WHILE_BODY]] ], [ [[BC_RESUME_VAL2]], [[SCALAR_PH]] ]
; CHECK-NEXT:    [[PDST_ADDR_020:%.*]] = phi i8* [ [[INCDEC_PTR13:%.*]], [[WHILE_BODY]] ], [ [[BC_RESUME_VAL4]], [[SCALAR_PH]] ]
; CHECK-NEXT:    [[INCDEC_PTR]] = getelementptr inbounds i8, i8* [[PSRC_ADDR_022]], i32 1
; CHECK-NEXT:    [[TMP8:%.*]] = load i8, i8* [[PSRC_ADDR_022]], align 1
; CHECK-NEXT:    [[CMP1:%.*]] = icmp sgt i8 [[TMP8]], 0
; CHECK-NEXT:    [[CMP5:%.*]] = icmp eq i8 [[TMP8]], -128
; CHECK-NEXT:    [[SUB:%.*]] = sub i8 0, [[TMP8]]
; CHECK-NEXT:    [[COND:%.*]] = select i1 [[CMP5]], i8 127, i8 [[SUB]]
; CHECK-NEXT:    [[COND11:%.*]] = select i1 [[CMP1]], i8 [[TMP8]], i8 [[COND]]
; CHECK-NEXT:    [[INCDEC_PTR13]] = getelementptr inbounds i8, i8* [[PDST_ADDR_020]], i32 1
; CHECK-NEXT:    store i8 [[COND11]], i8* [[PDST_ADDR_020]], align 1
; CHECK-NEXT:    [[DEC]] = add i32 [[BLKCNT_021]], -1
; CHECK-NEXT:    [[CMP_NOT:%.*]] = icmp eq i32 [[DEC]], 0
; CHECK-NEXT:    br i1 [[CMP_NOT]], label [[WHILE_END]], label [[WHILE_BODY]], [[LOOP7:!llvm.loop !.*]]
; CHECK:       while.end:
; CHECK-NEXT:    ret void
;
entry:
  %cmp.not19 = icmp eq i32 %blockSize, 0
  br i1 %cmp.not19, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %pSrc.addr.022 = phi i8* [ %incdec.ptr, %while.body ], [ %pSrc, %while.body.preheader ]
  %blkCnt.021 = phi i32 [ %dec, %while.body ], [ %blockSize, %while.body.preheader ]
  %pDst.addr.020 = phi i8* [ %incdec.ptr13, %while.body ], [ %pDst, %while.body.preheader ]
  %incdec.ptr = getelementptr inbounds i8, i8* %pSrc.addr.022, i32 1
  %0 = load i8, i8* %pSrc.addr.022, align 1
  %cmp1 = icmp sgt i8 %0, 0
  %cmp5 = icmp eq i8 %0, -128
  %sub = sub i8 0, %0
  %cond = select i1 %cmp5, i8 127, i8 %sub
  %cond11 = select i1 %cmp1, i8 %0, i8 %cond
  %incdec.ptr13 = getelementptr inbounds i8, i8* %pDst.addr.020, i32 1
  store i8 %cond11, i8* %pDst.addr.020, align 1
  %dec = add i32 %blkCnt.021, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret void
}

define void @arm_abs_q15(i16* nocapture readonly %pSrc, i16* nocapture %pDst, i32 %blockSize) #0 {
; CHECK-LABEL: @arm_abs_q15(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[PSRC2:%.*]] = ptrtoint i16* [[PSRC:%.*]] to i32
; CHECK-NEXT:    [[PDST1:%.*]] = ptrtoint i16* [[PDST:%.*]] to i32
; CHECK-NEXT:    [[CMP_NOT20:%.*]] = icmp eq i32 [[BLOCKSIZE:%.*]], 0
; CHECK-NEXT:    br i1 [[CMP_NOT20]], label [[WHILE_END:%.*]], label [[WHILE_BODY_PREHEADER:%.*]]
; CHECK:       while.body.preheader:
; CHECK-NEXT:    [[MIN_ITERS_CHECK:%.*]] = icmp ult i32 [[BLOCKSIZE]], 8
; CHECK-NEXT:    [[TMP0:%.*]] = sub i32 [[PDST1]], [[PSRC2]]
; CHECK-NEXT:    [[DIFF_CHECK:%.*]] = icmp ult i32 [[TMP0]], 16
; CHECK-NEXT:    [[OR_COND:%.*]] = select i1 [[MIN_ITERS_CHECK]], i1 true, i1 [[DIFF_CHECK]]
; CHECK-NEXT:    br i1 [[OR_COND]], label [[SCALAR_PH:%.*]], label [[VECTOR_PH:%.*]]
; CHECK:       vector.ph:
; CHECK-NEXT:    [[N_VEC:%.*]] = and i32 [[BLOCKSIZE]], -8
; CHECK-NEXT:    [[IND_END:%.*]] = getelementptr i16, i16* [[PSRC]], i32 [[N_VEC]]
; CHECK-NEXT:    [[IND_END7:%.*]] = and i32 [[BLOCKSIZE]], 7
; CHECK-NEXT:    [[IND_END9:%.*]] = getelementptr i16, i16* [[PDST]], i32 [[N_VEC]]
; CHECK-NEXT:    br label [[VECTOR_BODY:%.*]]
; CHECK:       vector.body:
; CHECK-NEXT:    [[INDEX:%.*]] = phi i32 [ 0, [[VECTOR_PH]] ], [ [[INDEX_NEXT:%.*]], [[VECTOR_BODY]] ]
; CHECK-NEXT:    [[NEXT_GEP:%.*]] = getelementptr i16, i16* [[PSRC]], i32 [[INDEX]]
; CHECK-NEXT:    [[NEXT_GEP10:%.*]] = getelementptr i16, i16* [[PDST]], i32 [[INDEX]]
; CHECK-NEXT:    [[TMP0:%.*]] = bitcast i16* [[NEXT_GEP]] to <8 x i16>*
; CHECK-NEXT:    [[WIDE_LOAD:%.*]] = load <8 x i16>, <8 x i16>* [[TMP0]], align 2
; CHECK-NEXT:    [[TMP1:%.*]] = icmp sgt <8 x i16> [[WIDE_LOAD]], zeroinitializer
; CHECK-NEXT:    [[TMP2:%.*]] = icmp eq <8 x i16> [[WIDE_LOAD]], <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
; CHECK-NEXT:    [[TMP3:%.*]] = sub <8 x i16> zeroinitializer, [[WIDE_LOAD]]
; CHECK-NEXT:    [[TMP4:%.*]] = select <8 x i1> [[TMP2]], <8 x i16> <i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767>, <8 x i16> [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = select <8 x i1> [[TMP1]], <8 x i16> [[WIDE_LOAD]], <8 x i16> [[TMP4]]
; CHECK-NEXT:    [[TMP6:%.*]] = bitcast i16* [[NEXT_GEP10]] to <8 x i16>*
; CHECK-NEXT:    store <8 x i16> [[TMP5]], <8 x i16>* [[TMP6]], align 2
; CHECK-NEXT:    [[INDEX_NEXT]] = add nuw i32 [[INDEX]], 8
; CHECK-NEXT:    [[TMP7:%.*]] = icmp eq i32 [[INDEX_NEXT]], [[N_VEC]]
; CHECK-NEXT:    br i1 [[TMP7]], label [[MIDDLE_BLOCK:%.*]], label [[VECTOR_BODY]], [[LOOP13:!llvm.loop !.*]]
; CHECK:       middle.block:
; CHECK-NEXT:    [[CMP_N:%.*]] = icmp eq i32 [[N_VEC]], [[BLOCKSIZE]]
; CHECK-NEXT:    br i1 [[CMP_N]], label [[WHILE_END]], label [[SCALAR_PH]]
; CHECK:       scalar.ph:
; CHECK-NEXT:    [[BC_RESUME_VAL:%.*]] = phi i16* [ [[IND_END]], [[MIDDLE_BLOCK]] ], [ [[PSRC]], [[WHILE_BODY_PREHEADER]] ]
; CHECK-NEXT:    [[BC_RESUME_VAL6:%.*]] = phi i32 [ [[IND_END7]], [[MIDDLE_BLOCK]] ], [ [[BLOCKSIZE]], [[WHILE_BODY_PREHEADER]] ]
; CHECK-NEXT:    [[BC_RESUME_VAL8:%.*]] = phi i16* [ [[IND_END9]], [[MIDDLE_BLOCK]] ], [ [[PDST]], [[WHILE_BODY_PREHEADER]] ]
; CHECK-NEXT:    br label [[WHILE_BODY:%.*]]
; CHECK:       while.body:
; CHECK-NEXT:    [[PSRC_ADDR_023:%.*]] = phi i16* [ [[INCDEC_PTR:%.*]], [[WHILE_BODY]] ], [ [[BC_RESUME_VAL]], [[SCALAR_PH]] ]
; CHECK-NEXT:    [[BLKCNT_022:%.*]] = phi i32 [ [[DEC:%.*]], [[WHILE_BODY]] ], [ [[BC_RESUME_VAL6]], [[SCALAR_PH]] ]
; CHECK-NEXT:    [[PDST_ADDR_021:%.*]] = phi i16* [ [[INCDEC_PTR13:%.*]], [[WHILE_BODY]] ], [ [[BC_RESUME_VAL8]], [[SCALAR_PH]] ]
; CHECK-NEXT:    [[INCDEC_PTR]] = getelementptr inbounds i16, i16* [[PSRC_ADDR_023]], i32 1
; CHECK-NEXT:    [[TMP8:%.*]] = load i16, i16* [[PSRC_ADDR_023]], align 2
; CHECK-NEXT:    [[CMP1:%.*]] = icmp sgt i16 [[TMP8]], 0
; CHECK-NEXT:    [[CMP5:%.*]] = icmp eq i16 [[TMP8]], -32768
; CHECK-NEXT:    [[SUB:%.*]] = sub i16 0, [[TMP8]]
; CHECK-NEXT:    [[COND:%.*]] = select i1 [[CMP5]], i16 32767, i16 [[SUB]]
; CHECK-NEXT:    [[COND11:%.*]] = select i1 [[CMP1]], i16 [[TMP8]], i16 [[COND]]
; CHECK-NEXT:    [[INCDEC_PTR13]] = getelementptr inbounds i16, i16* [[PDST_ADDR_021]], i32 1
; CHECK-NEXT:    store i16 [[COND11]], i16* [[PDST_ADDR_021]], align 2
; CHECK-NEXT:    [[DEC]] = add i32 [[BLKCNT_022]], -1
; CHECK-NEXT:    [[CMP_NOT:%.*]] = icmp eq i32 [[DEC]], 0
; CHECK-NEXT:    br i1 [[CMP_NOT]], label [[WHILE_END]], label [[WHILE_BODY]], [[LOOP14:!llvm.loop !.*]]
; CHECK:       while.end:
; CHECK-NEXT:    ret void
;
entry:
  %cmp.not20 = icmp eq i32 %blockSize, 0
  br i1 %cmp.not20, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %pSrc.addr.023 = phi i16* [ %incdec.ptr, %while.body ], [ %pSrc, %while.body.preheader ]
  %blkCnt.022 = phi i32 [ %dec, %while.body ], [ %blockSize, %while.body.preheader ]
  %pDst.addr.021 = phi i16* [ %incdec.ptr13, %while.body ], [ %pDst, %while.body.preheader ]
  %incdec.ptr = getelementptr inbounds i16, i16* %pSrc.addr.023, i32 1
  %0 = load i16, i16* %pSrc.addr.023, align 2
  %cmp1 = icmp sgt i16 %0, 0
  %cmp5 = icmp eq i16 %0, -32768
  %sub = sub i16 0, %0
  %cond = select i1 %cmp5, i16 32767, i16 %sub
  %cond11 = select i1 %cmp1, i16 %0, i16 %cond
  %incdec.ptr13 = getelementptr inbounds i16, i16* %pDst.addr.021, i32 1
  store i16 %cond11, i16* %pDst.addr.021, align 2
  %dec = add i32 %blkCnt.022, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret void
}

define void @arm_abs_q31(i32* nocapture readonly %pSrc, i32* nocapture %pDst, i32 %blockSize) #0 {
; CHECK-LABEL: @arm_abs_q31(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[PSRC2:%.*]] = ptrtoint i32* [[PSRC:%.*]] to i32
; CHECK-NEXT:    [[PDST1:%.*]] = ptrtoint i32* [[PDST:%.*]] to i32
; CHECK-NEXT:    [[CMP_NOT14:%.*]] = icmp eq i32 [[BLOCKSIZE:%.*]], 0
; CHECK-NEXT:    br i1 [[CMP_NOT14]], label [[WHILE_END:%.*]], label [[WHILE_BODY_PREHEADER:%.*]]
; CHECK:       while.body.preheader:
; CHECK-NEXT:    [[MIN_ITERS_CHECK:%.*]] = icmp ult i32 [[BLOCKSIZE]], 4
; CHECK-NEXT:    [[TMP0:%.*]] = sub i32 [[PDST1]], [[PSRC2]]
; CHECK-NEXT:    [[DIFF_CHECK:%.*]] = icmp ult i32 [[TMP0]], 16
; CHECK-NEXT:    [[OR_COND:%.*]] = select i1 [[MIN_ITERS_CHECK]], i1 true, i1 [[DIFF_CHECK]]
; CHECK-NEXT:    br i1 [[OR_COND]], label [[SCALAR_PH:%.*]], label [[VECTOR_PH:%.*]]
; CHECK:       vector.ph:
; CHECK-NEXT:    [[N_VEC:%.*]] = and i32 [[BLOCKSIZE]], -4
; CHECK-NEXT:    [[IND_END:%.*]] = getelementptr i32, i32* [[PSRC]], i32 [[N_VEC]]
; CHECK-NEXT:    [[IND_END7:%.*]] = and i32 [[BLOCKSIZE]], 3
; CHECK-NEXT:    [[IND_END9:%.*]] = getelementptr i32, i32* [[PDST]], i32 [[N_VEC]]
; CHECK-NEXT:    br label [[VECTOR_BODY:%.*]]
; CHECK:       vector.body:
; CHECK-NEXT:    [[INDEX:%.*]] = phi i32 [ 0, [[VECTOR_PH]] ], [ [[INDEX_NEXT:%.*]], [[VECTOR_BODY]] ]
; CHECK-NEXT:    [[NEXT_GEP:%.*]] = getelementptr i32, i32* [[PSRC]], i32 [[INDEX]]
; CHECK-NEXT:    [[NEXT_GEP10:%.*]] = getelementptr i32, i32* [[PDST]], i32 [[INDEX]]
; CHECK-NEXT:    [[TMP0:%.*]] = bitcast i32* [[NEXT_GEP]] to <4 x i32>*
; CHECK-NEXT:    [[WIDE_LOAD:%.*]] = load <4 x i32>, <4 x i32>* [[TMP0]], align 4
; CHECK-NEXT:    [[TMP1:%.*]] = icmp sgt <4 x i32> [[WIDE_LOAD]], zeroinitializer
; CHECK-NEXT:    [[TMP2:%.*]] = icmp eq <4 x i32> [[WIDE_LOAD]], <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>
; CHECK-NEXT:    [[TMP3:%.*]] = sub nsw <4 x i32> zeroinitializer, [[WIDE_LOAD]]
; CHECK-NEXT:    [[TMP4:%.*]] = select <4 x i1> [[TMP2]], <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> [[TMP3]]
; CHECK-NEXT:    [[TMP5:%.*]] = select <4 x i1> [[TMP1]], <4 x i32> [[WIDE_LOAD]], <4 x i32> [[TMP4]]
; CHECK-NEXT:    [[TMP6:%.*]] = bitcast i32* [[NEXT_GEP10]] to <4 x i32>*
; CHECK-NEXT:    store <4 x i32> [[TMP5]], <4 x i32>* [[TMP6]], align 4
; CHECK-NEXT:    [[INDEX_NEXT]] = add nuw i32 [[INDEX]], 4
; CHECK-NEXT:    [[TMP7:%.*]] = icmp eq i32 [[INDEX_NEXT]], [[N_VEC]]
; CHECK-NEXT:    br i1 [[TMP7]], label [[MIDDLE_BLOCK:%.*]], label [[VECTOR_BODY]], [[LOOP20:!llvm.loop !.*]]
; CHECK:       middle.block:
; CHECK-NEXT:    [[CMP_N:%.*]] = icmp eq i32 [[N_VEC]], [[BLOCKSIZE]]
; CHECK-NEXT:    br i1 [[CMP_N]], label [[WHILE_END]], label [[SCALAR_PH]]
; CHECK:       scalar.ph:
; CHECK-NEXT:    [[BC_RESUME_VAL:%.*]] = phi i32* [ [[IND_END]], [[MIDDLE_BLOCK]] ], [ [[PSRC]], [[WHILE_BODY_PREHEADER]] ]
; CHECK-NEXT:    [[BC_RESUME_VAL6:%.*]] = phi i32 [ [[IND_END7]], [[MIDDLE_BLOCK]] ], [ [[BLOCKSIZE]], [[WHILE_BODY_PREHEADER]] ]
; CHECK-NEXT:    [[BC_RESUME_VAL8:%.*]] = phi i32* [ [[IND_END9]], [[MIDDLE_BLOCK]] ], [ [[PDST]], [[WHILE_BODY_PREHEADER]] ]
; CHECK-NEXT:    br label [[WHILE_BODY:%.*]]
; CHECK:       while.body:
; CHECK-NEXT:    [[PSRC_ADDR_017:%.*]] = phi i32* [ [[INCDEC_PTR:%.*]], [[WHILE_BODY]] ], [ [[BC_RESUME_VAL]], [[SCALAR_PH]] ]
; CHECK-NEXT:    [[BLKCNT_016:%.*]] = phi i32 [ [[DEC:%.*]], [[WHILE_BODY]] ], [ [[BC_RESUME_VAL6]], [[SCALAR_PH]] ]
; CHECK-NEXT:    [[PDST_ADDR_015:%.*]] = phi i32* [ [[INCDEC_PTR7:%.*]], [[WHILE_BODY]] ], [ [[BC_RESUME_VAL8]], [[SCALAR_PH]] ]
; CHECK-NEXT:    [[INCDEC_PTR]] = getelementptr inbounds i32, i32* [[PSRC_ADDR_017]], i32 1
; CHECK-NEXT:    [[TMP8:%.*]] = load i32, i32* [[PSRC_ADDR_017]], align 4
; CHECK-NEXT:    [[CMP1:%.*]] = icmp sgt i32 [[TMP8]], 0
; CHECK-NEXT:    [[CMP2:%.*]] = icmp eq i32 [[TMP8]], -2147483648
; CHECK-NEXT:    [[SUB:%.*]] = sub nsw i32 0, [[TMP8]]
; CHECK-NEXT:    [[COND:%.*]] = select i1 [[CMP2]], i32 2147483647, i32 [[SUB]]
; CHECK-NEXT:    [[COND6:%.*]] = select i1 [[CMP1]], i32 [[TMP8]], i32 [[COND]]
; CHECK-NEXT:    [[INCDEC_PTR7]] = getelementptr inbounds i32, i32* [[PDST_ADDR_015]], i32 1
; CHECK-NEXT:    store i32 [[COND6]], i32* [[PDST_ADDR_015]], align 4
; CHECK-NEXT:    [[DEC]] = add i32 [[BLKCNT_016]], -1
; CHECK-NEXT:    [[CMP_NOT:%.*]] = icmp eq i32 [[DEC]], 0
; CHECK-NEXT:    br i1 [[CMP_NOT]], label [[WHILE_END]], label [[WHILE_BODY]], [[LOOP21:!llvm.loop !.*]]
; CHECK:       while.end:
; CHECK-NEXT:    ret void
;
entry:
  %cmp.not14 = icmp eq i32 %blockSize, 0
  br i1 %cmp.not14, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %pSrc.addr.017 = phi i32* [ %incdec.ptr, %while.body ], [ %pSrc, %while.body.preheader ]
  %blkCnt.016 = phi i32 [ %dec, %while.body ], [ %blockSize, %while.body.preheader ]
  %pDst.addr.015 = phi i32* [ %incdec.ptr7, %while.body ], [ %pDst, %while.body.preheader ]
  %incdec.ptr = getelementptr inbounds i32, i32* %pSrc.addr.017, i32 1
  %0 = load i32, i32* %pSrc.addr.017, align 4
  %cmp1 = icmp sgt i32 %0, 0
  %cmp2 = icmp eq i32 %0, -2147483648
  %sub = sub nsw i32 0, %0
  %cond = select i1 %cmp2, i32 2147483647, i32 %sub
  %cond6 = select i1 %cmp1, i32 %0, i32 %cond
  %incdec.ptr7 = getelementptr inbounds i32, i32* %pDst.addr.015, i32 1
  store i32 %cond6, i32* %pDst.addr.015, align 4
  %dec = add i32 %blkCnt.016, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret void
}

attributes #0 = { "target-features"="+mve" }
