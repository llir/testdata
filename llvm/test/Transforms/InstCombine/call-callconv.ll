; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -passes=instcombine -S | FileCheck %s
; Verify that the non-default calling conv doesn't prevent the libcall simplification

; Layout specifies type of pointer which determines "size_t"
; which is used to identify libcalls such as "size_t strlen(char*)".

target datalayout = "p:32:32"

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1

define arm_aapcscc i32 @_abs(i32 %i) nounwind readnone {
; CHECK-LABEL: @_abs(
; CHECK-NEXT:    [[TMP1:%.*]] = call i32 @llvm.abs.i32(i32 [[I:%.*]], i1 true)
; CHECK-NEXT:    ret i32 [[TMP1]]
;
  %call = tail call arm_aapcscc i32 @abs(i32 %i) nounwind readnone
  ret i32 %call
}

declare arm_aapcscc i32 @abs(i32) nounwind readnone

define arm_aapcscc i32 @_labs(i32 %i) nounwind readnone {
; CHECK-LABEL: @_labs(
; CHECK-NEXT:    [[TMP1:%.*]] = call i32 @llvm.abs.i32(i32 [[I:%.*]], i1 true)
; CHECK-NEXT:    ret i32 [[TMP1]]
;
  %call = tail call arm_aapcscc i32 @labs(i32 %i) nounwind readnone
  ret i32 %call
}

declare arm_aapcscc i32 @labs(i32) nounwind readnone

define arm_aapcscc i32 @_strlen1() {
; CHECK-LABEL: @_strlen1(
; CHECK-NEXT:    ret i32 3
;
  %call = tail call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  ret i32 %call
}

declare arm_aapcscc i32 @strlen(i8*)

define arm_aapcscc zeroext i1 @_strlen2(i8* %str) {
; CHECK-LABEL: @_strlen2(
; CHECK-NEXT:    [[STRLENFIRST:%.*]] = load i8, i8* [[STR:%.*]], align 1
; CHECK-NEXT:    [[CMP:%.*]] = icmp ne i8 [[STRLENFIRST]], 0
; CHECK-NEXT:    ret i1 [[CMP]]
;
  %call = tail call arm_aapcscc i32 @strlen(i8* %str)
  %cmp = icmp ne i32 %call, 0
  ret i1 %cmp
}

