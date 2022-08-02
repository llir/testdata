; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=i386-apple-macosx10.13.0 -o - %s | FileCheck %s

target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"

@c = external local_unnamed_addr global i32, align 4
@b = external local_unnamed_addr global [1 x i32], align 4
@d = external local_unnamed_addr global i32, align 4

define void @pr32610(i32 %a0, i32 %a1) #0 {
; CHECK-LABEL: pr32610:
; CHECK:       ## %bb.0: ## %entry
; CHECK-NEXT:    pushl %ebp
; CHECK-NEXT:    movl %esp, %ebp
; CHECK-NEXT:    pushl %esi
; CHECK-NEXT:    movl 8(%ebp), %edx
; CHECK-NEXT:    movl L_b$non_lazy_ptr, %eax
; CHECK-NEXT:    xorl %ecx, %ecx
; CHECK-NEXT:    cmpl (%eax), %edx
; CHECK-NEXT:    sete %cl
; CHECK-NEXT:    xorl %esi, %esi
; CHECK-NEXT:    incl %esi
; CHECK-NEXT:    cmpl $0, 12(%ebp)
; CHECK-NEXT:    cmovel %esi, %ecx
; CHECK-NEXT:    cmpl (%eax), %edx
; CHECK-NEXT:    cmovnel %esi, %ecx
; CHECK-NEXT:    movl L_c$non_lazy_ptr, %edx
; CHECK-NEXT:    movl %ecx, (%edx)
; CHECK-NEXT:    movl (%eax), %eax
; CHECK-NEXT:    testl %eax, %eax
; CHECK-NEXT:    movl $2, %ecx
; CHECK-NEXT:    cmovnel %eax, %ecx
; CHECK-NEXT:    movl L_d$non_lazy_ptr, %eax
; CHECK-NEXT:    movl %ecx, (%eax)
; CHECK-NEXT:    popl %esi
; CHECK-NEXT:    popl %ebp
; CHECK-NEXT:    retl
entry:
  %0 = load i32, i32* getelementptr ([1 x i32], [1 x i32]* @b, i32 0, i32 undef), align 4, !tbaa !1
  %cmp = icmp eq i32 %a0, %0
  %conv = zext i1 %cmp to i32
  %tobool1.i = icmp ne i32 %a1, 0
  %or.cond.i = and i1 %cmp, %tobool1.i
  %cond.i = select i1 %or.cond.i, i32 %conv, i32 1
  store i32 %cond.i, i32* @c, align 4, !tbaa !1
  %1 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @b, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %1, 0
  %2 = select i1 %tobool, i32 %1, i32 2
  store i32 %2, i32* @d, align 4, !tbaa !1
  ret void
}

attributes #0 = { norecurse nounwind optsize ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "frame-pointer"="all" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 5.0.0 (trunk 301507) (llvm/trunk 301505)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
