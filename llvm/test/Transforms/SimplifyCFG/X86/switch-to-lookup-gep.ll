; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --scrub-attributes
; RUN: opt -simplifycfg --switch-to-lookup -S < %s | FileCheck %s
target triple = "x86_64-unknown-linux-gnu"

@alloc0 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"A1" }>, align 1
@alloc1 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"B2" }>, align 1
@alloc2 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"C3" }>, align 1

define { i8*, i64 } @switch_to_lookup_gep(i8 %0) unnamed_addr {
; CHECK-LABEL: @switch_to_lookup_gep(
; CHECK-NEXT:  start:
; CHECK-NEXT:    [[SWITCH_GEP:%.*]] = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table.switch_to_lookup_gep, i32 0, i8 [[TMP0:%.*]]
; CHECK-NEXT:    [[SWITCH_LOAD:%.*]] = load i8*, i8** [[SWITCH_GEP]], align 8
; CHECK-NEXT:    [[TMP1:%.*]] = insertvalue { i8*, i64 } undef, i8* [[SWITCH_LOAD]], 0
; CHECK-NEXT:    [[TMP2:%.*]] = insertvalue { i8*, i64 } [[TMP1]], i64 1, 1
; CHECK-NEXT:    ret { i8*, i64 } [[TMP2]]
;
start:
  switch i8 %0, label %default [
  i8 0, label %bb0
  i8 1, label %bb1
  i8 2, label %bb2
  ]

bb0:
  br label %end

bb1:
  br label %end

bb2:
  br label %end

default:
  unreachable

end:
  %.sroa.0.0 = phi i8* [ getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc0, i32 0, i32 0, i32 1), %bb0 ], [ getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc1, i32 0, i32 0, i32 1), %bb1 ], [ getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc2, i32 0, i32 0, i32 1), %bb2 ]
  %1 = insertvalue { i8*, i64 } undef, i8* %.sroa.0.0, 0
  %2 = insertvalue { i8*, i64 } %1, i64 1, 1
  ret { i8*, i64 } %2
}

define { i8*, i64 } @switch_to_lookup_gep_oob(i8 %0) unnamed_addr {
; CHECK-LABEL: @switch_to_lookup_gep_oob(
; CHECK-NEXT:  start:
; CHECK-NEXT:    switch i8 [[TMP0:%.*]], label [[DEFAULT:%.*]] [
; CHECK-NEXT:    i8 0, label [[END:%.*]]
; CHECK-NEXT:    i8 1, label [[BB1:%.*]]
; CHECK-NEXT:    i8 2, label [[BB2:%.*]]
; CHECK-NEXT:    ]
; CHECK:       bb1:
; CHECK-NEXT:    br label [[END]]
; CHECK:       bb2:
; CHECK-NEXT:    br label [[END]]
; CHECK:       default:
; CHECK-NEXT:    unreachable
; CHECK:       end:
; CHECK-NEXT:    [[DOTSROA_0_0:%.*]] = phi i8* [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc1, i32 0, i32 0, i32 4), [[BB1]] ], [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc2, i32 0, i32 0, i32 4), [[BB2]] ], [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc0, i32 0, i32 0, i32 4), [[START:%.*]] ]
; CHECK-NEXT:    [[TMP1:%.*]] = insertvalue { i8*, i64 } undef, i8* [[DOTSROA_0_0]], 0
; CHECK-NEXT:    [[TMP2:%.*]] = insertvalue { i8*, i64 } [[TMP1]], i64 1, 1
; CHECK-NEXT:    ret { i8*, i64 } [[TMP2]]
;
start:
  switch i8 %0, label %default [
  i8 0, label %bb0
  i8 1, label %bb1
  i8 2, label %bb2
  ]

bb0:
  br label %end

bb1:
  br label %end

bb2:
  br label %end

default:
  unreachable

end:
  %.sroa.0.0 = phi i8* [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc0, i32 0, i32 0, i32 4), %bb0 ], [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc1, i32 0, i32 0, i32 4), %bb1 ], [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc2, i32 0, i32 0, i32 4), %bb2 ]
  %1 = insertvalue { i8*, i64 } undef, i8* %.sroa.0.0, 0
  %2 = insertvalue { i8*, i64 } %1, i64 1, 1
  ret { i8*, i64 } %2
}

define { i8*, i64 } @switch_to_lookup_gep_ptrtoint(i8 %0) unnamed_addr {
; CHECK-LABEL: @switch_to_lookup_gep_ptrtoint(
; CHECK-NEXT:  start:
; CHECK-NEXT:    switch i8 [[TMP0:%.*]], label [[DEFAULT:%.*]] [
; CHECK-NEXT:    i8 0, label [[END:%.*]]
; CHECK-NEXT:    i8 1, label [[BB1:%.*]]
; CHECK-NEXT:    i8 2, label [[BB2:%.*]]
; CHECK-NEXT:    ]
; CHECK:       bb1:
; CHECK-NEXT:    br label [[END]]
; CHECK:       bb2:
; CHECK-NEXT:    br label [[END]]
; CHECK:       default:
; CHECK-NEXT:    unreachable
; CHECK:       end:
; CHECK-NEXT:    [[DOTSROA_0_0:%.*]] = phi i8* [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc1, i32 0, i32 0, i64 ptrtoint (<{ [2 x i8] }>* @alloc0 to i64)), [[BB1]] ], [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc2, i32 0, i32 0, i64 ptrtoint (<{ [2 x i8] }>* @alloc0 to i64)), [[BB2]] ], [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc0, i32 0, i32 0, i64 ptrtoint (<{ [2 x i8] }>* @alloc0 to i64)), [[START:%.*]] ]
; CHECK-NEXT:    [[TMP1:%.*]] = insertvalue { i8*, i64 } undef, i8* [[DOTSROA_0_0]], 0
; CHECK-NEXT:    [[TMP2:%.*]] = insertvalue { i8*, i64 } [[TMP1]], i64 1, 1
; CHECK-NEXT:    ret { i8*, i64 } [[TMP2]]
;
start:
  switch i8 %0, label %default [
  i8 0, label %bb0
  i8 1, label %bb1
  i8 2, label %bb2
  ]

bb0:
  br label %end

bb1:
  br label %end

bb2:
  br label %end

default:
  unreachable

end:
  %.sroa.0.0 = phi i8* [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc0, i32 0, i32 0, i64 ptrtoint (<{ [2 x i8] }>* @alloc0 to i64)), %bb0 ], [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc1, i32 0, i32 0, i64 ptrtoint (<{ [2 x i8] }>* @alloc0 to i64)), %bb1 ], [ getelementptr (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc2, i32 0, i32 0, i64 ptrtoint (<{ [2 x i8] }>* @alloc0 to i64)), %bb2 ]
  %1 = insertvalue { i8*, i64 } undef, i8* %.sroa.0.0, 0
  %2 = insertvalue { i8*, i64 } %1, i64 1, 1
  ret { i8*, i64 } %2
}
