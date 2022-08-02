; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -S -passes=sroa %s | FileCheck %s

; This should not crash

%class.ar = type { i8 }
%class.anon = type <{ %class.ar, [7 x i8], { i64, i64 } }>

define void @caller() {
; CHECK-LABEL: @caller(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[AGG:%.*]] = alloca [[CLASS_ANON:%.*]], align 8
; CHECK-NEXT:    [[OFF:%.*]] = getelementptr inbounds [[CLASS_ANON]], ptr [[AGG]], i32 0, i32 2
; CHECK-NEXT:    [[DOTFCA_0_GEP:%.*]] = getelementptr inbounds { i64, i64 }, ptr [[OFF]], i32 0, i32 0
; CHECK-NEXT:    store i64 1, ptr [[DOTFCA_0_GEP]], align 8, !tbaa [[TBAA0:![0-9]+]]
; CHECK-NEXT:    [[DOTFCA_1_GEP:%.*]] = getelementptr inbounds { i64, i64 }, ptr [[OFF]], i32 0, i32 1
; CHECK-NEXT:    store i64 2, ptr [[DOTFCA_1_GEP]], align 8, !tbaa [[TBAA0]]
; CHECK-NEXT:    call void @use(ptr [[AGG]])
; CHECK-NEXT:    ret void
;
entry:
  %agg = alloca %class.anon, align 8
  %off = getelementptr inbounds %class.anon, ptr %agg, i32 0, i32 2
  store { i64, i64 } { i64 1, i64 2 }, ptr %off, align 8, !tbaa !7
  call void @use(ptr %agg)
  ret void
}

declare void @use(ptr %this)

!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}

!7 = !{!8, !3, i64 8}
!8 = !{!"_ZTSZN2ax2baEMS_FvvE2an2arE3$_0", !9, i64 0, !3, i64 8}
!9 = !{!"_ZTS2ar"}
