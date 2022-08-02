; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --function-signature --check-attributes --check-globals
; RUN: opt -attributor -enable-new-pm=0 -attributor-manifest-internal  -attributor-max-iterations-verify -attributor-annotate-decl-cs -attributor-max-iterations=2 -S < %s | FileCheck %s --check-prefixes=CHECK,NOT_CGSCC_NPM,NOT_CGSCC_OPM,NOT_TUNIT_NPM,IS__TUNIT____,IS________OPM,IS__TUNIT_OPM
; RUN: opt -aa-pipeline=basic-aa -passes=attributor -attributor-manifest-internal  -attributor-max-iterations-verify -attributor-annotate-decl-cs -attributor-max-iterations=2 -S < %s | FileCheck %s --check-prefixes=CHECK,NOT_CGSCC_OPM,NOT_CGSCC_NPM,NOT_TUNIT_OPM,IS__TUNIT____,IS________NPM,IS__TUNIT_NPM
; RUN: opt -attributor-cgscc -enable-new-pm=0 -attributor-manifest-internal  -attributor-annotate-decl-cs -S < %s | FileCheck %s --check-prefixes=CHECK,NOT_TUNIT_NPM,NOT_TUNIT_OPM,NOT_CGSCC_NPM,IS__CGSCC____,IS________OPM,IS__CGSCC_OPM
; RUN: opt -aa-pipeline=basic-aa -passes=attributor-cgscc -attributor-manifest-internal  -attributor-annotate-decl-cs -S < %s | FileCheck %s --check-prefixes=CHECK,NOT_TUNIT_NPM,NOT_TUNIT_OPM,NOT_CGSCC_OPM,IS__CGSCC____,IS________NPM,IS__CGSCC_NPM

; FIXME: DOT should be replaced with 3

define i32 @test-ashr(i32 %c) {
; IS________OPM: Function Attrs: nofree norecurse nosync nounwind readnone willreturn
; IS________OPM-LABEL: define {{[^@]+}}@test-ashr
; IS________OPM-SAME: (i32 [[C:%.*]]) #[[ATTR0:[0-9]+]] {
; IS________OPM-NEXT:  chk65:
; IS________OPM-NEXT:    [[CMP:%.*]] = icmp sgt i32 [[C]], 65
; IS________OPM-NEXT:    br i1 [[CMP]], label [[RETURN:%.*]], label [[CHK0:%.*]]
; IS________OPM:       chk0:
; IS________OPM-NEXT:    [[CMP1:%.*]] = icmp slt i32 [[C]], 0
; IS________OPM-NEXT:    br i1 [[CMP]], label [[RETURN]], label [[BB_IF:%.*]]
; IS________OPM:       bb_if:
; IS________OPM-NEXT:    [[ASHR_VAL:%.*]] = ashr exact i32 [[C]], 2
; IS________OPM-NEXT:    [[CMP2:%.*]] = icmp sgt i32 [[ASHR_VAL]], 15
; IS________OPM-NEXT:    br i1 [[CMP2]], label [[BB_THEN:%.*]], label [[RETURN]]
; IS________OPM:       bb_then:
; IS________OPM-NEXT:    [[CMP3:%.*]] = icmp eq i32 [[ASHR_VAL]], 16
; IS________OPM-NEXT:    [[DOT:%.*]] = select i1 [[CMP3]], i32 3, i32 2
; IS________OPM-NEXT:    br label [[RETURN]]
; IS________OPM:       return:
; IS________OPM-NEXT:    [[RETVAL:%.*]] = phi i32 [ 0, [[CHK65:%.*]] ], [ 1, [[CHK0]] ], [ [[DOT]], [[BB_THEN]] ], [ 4, [[BB_IF]] ]
; IS________OPM-NEXT:    ret i32 [[RETVAL]]
;
; IS________NPM: Function Attrs: nofree norecurse nosync nounwind readnone willreturn
; IS________NPM-LABEL: define {{[^@]+}}@test-ashr
; IS________NPM-SAME: (i32 [[C:%.*]]) #[[ATTR0:[0-9]+]] {
; IS________NPM-NEXT:  chk65:
; IS________NPM-NEXT:    [[CMP:%.*]] = icmp sgt i32 [[C]], 65
; IS________NPM-NEXT:    br i1 [[CMP]], label [[RETURN:%.*]], label [[CHK0:%.*]]
; IS________NPM:       chk0:
; IS________NPM-NEXT:    [[CMP1:%.*]] = icmp slt i32 [[C]], 0
; IS________NPM-NEXT:    br i1 [[CMP]], label [[RETURN]], label [[BB_IF:%.*]]
; IS________NPM:       bb_if:
; IS________NPM-NEXT:    [[ASHR_VAL:%.*]] = ashr exact i32 [[C]], 2
; IS________NPM-NEXT:    [[CMP2:%.*]] = icmp sgt i32 [[ASHR_VAL]], 15
; IS________NPM-NEXT:    br i1 [[CMP2]], label [[BB_THEN:%.*]], label [[RETURN]]
; IS________NPM:       bb_then:
; IS________NPM-NEXT:    [[DOT:%.*]] = select i1 true, i32 3, i32 2
; IS________NPM-NEXT:    br label [[RETURN]]
; IS________NPM:       return:
; IS________NPM-NEXT:    [[RETVAL:%.*]] = phi i32 [ 0, [[CHK65:%.*]] ], [ 1, [[CHK0]] ], [ [[DOT]], [[BB_THEN]] ], [ 4, [[BB_IF]] ]
; IS________NPM-NEXT:    ret i32 [[RETVAL]]
;
chk65:
  %cmp = icmp sgt i32 %c, 65
  br i1 %cmp, label %return, label %chk0

chk0:
  %cmp1 = icmp slt i32 %c, 0
  br i1 %cmp, label %return, label %bb_if

bb_if:
  %ashr.val = ashr exact i32 %c, 2
  %cmp2 = icmp sgt i32 %ashr.val, 15
  br i1 %cmp2, label %bb_then, label %return

bb_then:
  %cmp3 = icmp eq i32 %ashr.val, 16
  %. = select i1 %cmp3, i32 3, i32 2
  br label %return

return:
  %retval = phi i32 [0, %chk65], [1, %chk0], [%., %bb_then], [4, %bb_if]
  ret i32 %retval
}
;.
; CHECK: attributes #[[ATTR0:[0-9]+]] = { nofree norecurse nosync nounwind readnone willreturn }
;.
