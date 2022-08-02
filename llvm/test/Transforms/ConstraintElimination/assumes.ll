; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -passes=constraint-elimination -S %s | FileCheck %s

declare void @llvm.assume(i1)

declare void @may_unwind()

declare void @use(i1)

define i1 @assume_dominates(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_dominates(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    br i1 [[C:%.*]], label [[THEN:%.*]], label [[ELSE:%.*]]
; CHECK:       then:
; CHECK-NEXT:    [[T_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_1]]
; CHECK-NEXT:    ret i1 [[RES_2]]
; CHECK:       else:
; CHECK-NEXT:    [[T_3:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_4:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_3:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2_1:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_2:%.*]] = icmp ule i8 [[ADD_2_1]], [[B]]
; CHECK-NEXT:    [[RES_4:%.*]] = xor i1 [[RES_3]], [[C_2]]
; CHECK-NEXT:    ret i1 [[RES_4]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  call void @llvm.assume(i1 %cmp.1)
  br i1 %c, label %then, label %else

then:
  %t.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %t.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.1 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.1
  ret i1 %res.2

else:
  %t.3 = icmp ule i8 %add.1, %b
  %t.4 = icmp ule i8 %a, %b
  %res.3 = xor i1 %t.3, %t.4
  %add.2.1 = add nsw nuw i8 %a, 2
  %c.2 = icmp ule i8 %add.2.1, %b
  %res.4 = xor i1 %res.3, %c.2
  ret i1 %res.4
}

define i1 @assume_dominates_with_may_unwind_call_before_assume(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_dominates_with_may_unwind_call_before_assume(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    br i1 [[C:%.*]], label [[THEN:%.*]], label [[ELSE:%.*]]
; CHECK:       then:
; CHECK-NEXT:    [[T_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_1]]
; CHECK-NEXT:    ret i1 [[RES_2]]
; CHECK:       else:
; CHECK-NEXT:    [[T_3:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_4:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_3:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2_1:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_2:%.*]] = icmp ule i8 [[ADD_2_1]], [[B]]
; CHECK-NEXT:    [[RES_4:%.*]] = xor i1 [[RES_3]], [[C_2]]
; CHECK-NEXT:    ret i1 [[RES_4]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  call void @may_unwind()
  call void @llvm.assume(i1 %cmp.1)
  br i1 %c, label %then, label %else

then:
  %t.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %t.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.1 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.1
  ret i1 %res.2

else:
  %t.3 = icmp ule i8 %add.1, %b
  %t.4 = icmp ule i8 %a, %b
  %res.3 = xor i1 %t.3, %t.4
  %add.2.1 = add nsw nuw i8 %a, 2
  %c.2 = icmp ule i8 %add.2.1, %b
  %res.4 = xor i1 %res.3, %c.2
  ret i1 %res.4
}

define i1 @assume_dominates_with_may_unwind_call_after_assume(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_dominates_with_may_unwind_call_after_assume(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    br i1 [[C:%.*]], label [[THEN:%.*]], label [[ELSE:%.*]]
; CHECK:       then:
; CHECK-NEXT:    [[T_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_1]]
; CHECK-NEXT:    ret i1 [[RES_2]]
; CHECK:       else:
; CHECK-NEXT:    [[T_3:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_4:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_3:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2_1:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_2:%.*]] = icmp ule i8 [[ADD_2_1]], [[B]]
; CHECK-NEXT:    [[RES_4:%.*]] = xor i1 [[RES_3]], [[C_2]]
; CHECK-NEXT:    ret i1 [[RES_4]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  call void @llvm.assume(i1 %cmp.1)
  call void @may_unwind()
  br i1 %c, label %then, label %else

then:
  %t.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %t.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.1 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.1
  ret i1 %res.2

else:
  %t.3 = icmp ule i8 %add.1, %b
  %t.4 = icmp ule i8 %a, %b
  %res.3 = xor i1 %t.3, %t.4
  %add.2.1 = add nsw nuw i8 %a, 2
  %c.2 = icmp ule i8 %add.2.1, %b
  %res.4 = xor i1 %res.3, %c.2
  ret i1 %res.4
}

; Test case from PR54217.
define i1 @assume_does_not_dominates_successor_with_may_unwind_call_before_assume(i16 %a, i1 %i.0) {
; CHECK-LABEL: @assume_does_not_dominates_successor_with_may_unwind_call_before_assume(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br i1 [[I_0:%.*]], label [[EXIT:%.*]], label [[IF_THEN:%.*]]
; CHECK:       if.then:
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    [[C_1:%.*]] = icmp eq i16 [[A:%.*]], 0
; CHECK-NEXT:    call void @llvm.assume(i1 [[C_1]])
; CHECK-NEXT:    br label [[EXIT]]
; CHECK:       exit:
; CHECK-NEXT:    [[C_2:%.*]] = icmp eq i16 [[A]], 0
; CHECK-NEXT:    ret i1 [[C_2]]
;
entry:
  br i1 %i.0, label %exit, label %if.then

if.then:
  call void @may_unwind()
  %c.1 = icmp eq i16 %a, 0
  call void @llvm.assume(i1 %c.1)
  br label %exit

exit:
  %c.2 = icmp eq i16 %a, 0
  ret i1 %c.2
}

define i1 @assume_dominates_successor_with_may_unwind_call_before_assume_uncond_branch(i16 %a) {
; CHECK-LABEL: @assume_dominates_successor_with_may_unwind_call_before_assume_uncond_branch(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    [[C_1:%.*]] = icmp eq i16 [[A:%.*]], 0
; CHECK-NEXT:    call void @llvm.assume(i1 [[C_1]])
; CHECK-NEXT:    br label [[EXIT:%.*]]
; CHECK:       exit:
; CHECK-NEXT:    [[C_2:%.*]] = icmp eq i16 [[A]], 0
; CHECK-NEXT:    ret i1 true
;
entry:
  call void @may_unwind()
  %c.1 = icmp eq i16 %a, 0
  call void @llvm.assume(i1 %c.1)
  br label %exit

exit:
  %c.2 = icmp eq i16 %a, 0
  ret i1 %c.2
}

define i1 @assume_dominates_successor_with_may_unwind_call_before_assume_uncond_branch_2(i16 %a, i1 %c) {
; CHECK-LABEL: @assume_dominates_successor_with_may_unwind_call_before_assume_uncond_branch_2(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br i1 [[C:%.*]], label [[THEN:%.*]], label [[EXIT:%.*]]
; CHECK:       then:
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    [[C_1:%.*]] = icmp eq i16 [[A:%.*]], 0
; CHECK-NEXT:    call void @llvm.assume(i1 [[C_1]])
; CHECK-NEXT:    br label [[EXIT]]
; CHECK:       exit:
; CHECK-NEXT:    [[C_2:%.*]] = icmp eq i16 [[A]], 0
; CHECK-NEXT:    ret i1 [[C_2]]
;
entry:
  br i1 %c, label %then, label %exit

then:
  call void @may_unwind()
  %c.1 = icmp eq i16 %a, 0
  call void @llvm.assume(i1 %c.1)
  br label %exit

exit:
  %c.2 = icmp eq i16 %a, 0
  ret i1 %c.2
}

define i1 @assume_dominates_successor_with_may_unwind_call_before_assume_uncond_branch_cycle(i16 %a, i1 %c) {
; CHECK-LABEL: @assume_dominates_successor_with_may_unwind_call_before_assume_uncond_branch_cycle(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    br i1 [[C:%.*]], label [[THEN:%.*]], label [[EXIT:%.*]]
; CHECK:       then:
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    [[C_1:%.*]] = icmp eq i16 [[A:%.*]], 0
; CHECK-NEXT:    call void @use(i1 [[C_1]])
; CHECK-NEXT:    call void @llvm.assume(i1 [[C_1]])
; CHECK-NEXT:    br label [[THEN]]
; CHECK:       exit:
; CHECK-NEXT:    [[C_2:%.*]] = icmp eq i16 [[A]], 0
; CHECK-NEXT:    ret i1 [[C_2]]
;
entry:
  br i1 %c, label %then, label %exit

then:
  call void @may_unwind()
  %c.1 = icmp eq i16 %a, 0
  call void @use(i1 %c.1)
  call void @llvm.assume(i1 %c.1)
  br label %then

exit:
  %c.2 = icmp eq i16 %a, 0
  ret i1 %c.2
}

define i1 @assume_single_bb(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_single_bb(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    [[T_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_1]]
; CHECK-NEXT:    ret i1 [[RES_2]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  call void @llvm.assume(i1 %cmp.1)
  %t.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %t.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.1 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.1
  ret i1 %res.2
}

define i1 @assume_same_bb(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_same_bb(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    br i1 [[C:%.*]], label [[THEN:%.*]], label [[ELSE:%.*]]
; CHECK:       then:
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    [[T_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_1]]
; CHECK-NEXT:    ret i1 [[RES_2]]
; CHECK:       else:
; CHECK-NEXT:    [[T_3:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_4:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_3:%.*]] = xor i1 [[T_3]], [[T_4]]
; CHECK-NEXT:    [[ADD_2_1:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_2:%.*]] = icmp ule i8 [[ADD_2_1]], [[B]]
; CHECK-NEXT:    [[RES_4:%.*]] = xor i1 [[RES_3]], [[C_2]]
; CHECK-NEXT:    ret i1 [[RES_4]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  br i1 %c, label %then, label %else

then:
  call void @llvm.assume(i1 %cmp.1)
  %t.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %t.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.1 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.1
  ret i1 %res.2

else:
  %t.3 = icmp ule i8 %add.1, %b
  %t.4 = icmp ule i8 %a, %b
  %res.3 = xor i1 %t.3, %t.4
  %add.2.1 = add nsw nuw i8 %a, 2
  %c.2 = icmp ule i8 %add.2.1, %b
  %res.4 = xor i1 %res.3, %c.2
  ret i1 %res.4
}

define i1 @assume_same_bb2(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_same_bb2(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    [[T_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_1]]
; CHECK-NEXT:    br label [[EXIT:%.*]]
; CHECK:       exit:
; CHECK-NEXT:    ret i1 [[RES_2]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  call void @llvm.assume(i1 %cmp.1)
  %t.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %t.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.1 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.1
  br label %exit

exit:
  ret i1 %res.2
}


; TODO: Keep track of position of assume and may unwinding calls, simplify
; conditions if possible.
define i1 @assume_same_bb_after_may_exiting_call(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_same_bb_after_may_exiting_call(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    [[T_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 [[T_1]], [[T_2]]
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_1]]
; CHECK-NEXT:    br label [[EXIT:%.*]]
; CHECK:       exit:
; CHECK-NEXT:    ret i1 [[RES_2]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  call void @may_unwind()
  call void @llvm.assume(i1 %cmp.1)
  %t.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %t.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.1 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.1
  br label %exit

exit:
  ret i1 %res.2
}

; TODO: Keep track of position of assume and may unwinding calls, simplify
; conditions if possible.
define i1 @assume_same_bb_before_may_exiting_call(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_same_bb_before_may_exiting_call(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    [[T_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_1]]
; CHECK-NEXT:    br label [[EXIT:%.*]]
; CHECK:       exit:
; CHECK-NEXT:    ret i1 [[RES_2]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  call void @llvm.assume(i1 %cmp.1)
  call void @may_unwind()
  %t.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %t.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.1 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.1
  br label %exit

exit:
  ret i1 %res.2
}

define i1 @assume_same_bb_after_condition(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_same_bb_after_condition(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[T_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 true, true
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_1]]
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    br label [[EXIT:%.*]]
; CHECK:       exit:
; CHECK-NEXT:    ret i1 [[RES_2]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %t.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %t.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.1 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.1
  %cmp.1 = icmp ule i8 %add.1, %b
  call void @llvm.assume(i1 %cmp.1)
  br label %exit

exit:
  ret i1 %res.2
}

; The function may exit before the assume if @may_unwind unwinds. Conditions
; before the call cannot be simplified.
define i1 @assume_same_bb_after_condition_may_unwind_between(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_same_bb_after_condition_may_unwind_between(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    call void @use(i1 [[C_1]])
; CHECK-NEXT:    [[C_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    call void @use(i1 [[C_2]])
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 [[C_1]], [[C_2]]
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_3:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    call void @use(i1 [[C_3]])
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_3]]
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    br label [[EXIT:%.*]]
; CHECK:       exit:
; CHECK-NEXT:    ret i1 [[RES_2]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %c.1 = icmp ule i8 %add.1, %b
  call void @use(i1 %c.1)
  %c.2 = icmp ule i8 %a, %b
  call void @use(i1 %c.2)
  %res.1 = xor i1 %c.1, %c.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.3 = icmp ule i8 %add.2, %b
  call void @use(i1 %c.3)
  %res.2 = xor i1 %res.1, %c.3
  %cmp.1 = icmp ule i8 %add.1, %b
  call void @may_unwind()
  call void @llvm.assume(i1 %cmp.1)
  br label %exit

exit:
  ret i1 %res.2
}

; The information of from the assume can be used to simplify %t.2.
; TODO
define i1 @assume_single_bb_conditions_after_assume(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_single_bb_conditions_after_assume(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    call void @use(i1 [[C_1]])
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 [[C_1]], [[T_2]]
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_2:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_2]]
; CHECK-NEXT:    ret i1 [[RES_2]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  %c.1 = icmp ule i8 %add.1, %b
  call void @use(i1 %c.1)

  call void @may_unwind()
  call void @llvm.assume(i1 %cmp.1)
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %c.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.2 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.2
  ret i1 %res.2
}

; The information of from the assume can be used to simplify %t.2.
; TODO
define i1 @assume_single_bb_assume_at_end_after_may_unwind(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @assume_single_bb_assume_at_end_after_may_unwind(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    call void @use(i1 [[C_1]])
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 [[C_1]], [[T_2]]
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_2:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_2]]
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    ret i1 [[RES_2]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  %c.1 = icmp ule i8 %add.1, %b
  call void @use(i1 %c.1)

  call void @may_unwind()
  %t.2 = icmp ule i8 %a, %b
  %res.1 = xor i1 %c.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.2 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.2
  call void @llvm.assume(i1 %cmp.1)
  ret i1 %res.2
}

; The definition of %t.2 is before the @llvm.assume call, but all uses are
; after the call. %t.2 can be simplified.
; TODO
define i1 @all_uses_after_assume(i8 %a, i8 %b, i1 %c) {
; CHECK-LABEL: @all_uses_after_assume(
; CHECK-NEXT:    [[ADD_1:%.*]] = add nuw nsw i8 [[A:%.*]], 1
; CHECK-NEXT:    [[CMP_1:%.*]] = icmp ule i8 [[ADD_1]], [[B:%.*]]
; CHECK-NEXT:    [[C_1:%.*]] = icmp ule i8 [[ADD_1]], [[B]]
; CHECK-NEXT:    [[T_2:%.*]] = icmp ule i8 [[A]], [[B]]
; CHECK-NEXT:    call void @use(i1 [[C_1]])
; CHECK-NEXT:    call void @may_unwind()
; CHECK-NEXT:    call void @llvm.assume(i1 [[CMP_1]])
; CHECK-NEXT:    [[RES_1:%.*]] = xor i1 [[C_1]], [[T_2]]
; CHECK-NEXT:    [[ADD_2:%.*]] = add nuw nsw i8 [[A]], 2
; CHECK-NEXT:    [[C_2:%.*]] = icmp ule i8 [[ADD_2]], [[B]]
; CHECK-NEXT:    [[RES_2:%.*]] = xor i1 [[RES_1]], [[C_2]]
; CHECK-NEXT:    ret i1 [[RES_2]]
;
  %add.1 = add nsw nuw i8 %a, 1
  %cmp.1 = icmp ule i8 %add.1, %b
  %c.1 = icmp ule i8 %add.1, %b
  %t.2 = icmp ule i8 %a, %b
  call void @use(i1 %c.1)

  call void @may_unwind()
  call void @llvm.assume(i1 %cmp.1)
  %res.1 = xor i1 %c.1, %t.2
  %add.2 = add nsw nuw i8 %a, 2
  %c.2 = icmp ule i8 %add.2, %b
  %res.2 = xor i1 %res.1, %c.2
  ret i1 %res.2
}
