; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=powerpc64le-unknown-linux -mcpu=pwr8 -O0 < %s | \
; RUN:   FileCheck %s -check-prefix=P8
; RUN: llc -mtriple=powerpc64le-unknown-linux -mcpu=pwr9 -O0 < %s | \
; RUN:   FileCheck %s -check-prefix=P9

define i32 @test_choice1(fp128 %a, fp128 %b) #0 {
; P8-LABEL: test_choice1:
; P8:       # %bb.0: # %entry
; P8-NEXT:    mflr 0
; P8-NEXT:    std 0, 16(1)
; P8-NEXT:    stdu 1, -112(1)
; P8-NEXT:    bl __nekf2
; P8-NEXT:    nop
; P8-NEXT:    # kill: def $r3 killed $r3 killed $x3
; P8-NEXT:    cmplwi 3, 0
; P8-NEXT:    li 3, 0
; P8-NEXT:    li 4, 1
; P8-NEXT:    iseleq 3, 3, 4
; P8-NEXT:    cmplwi 3, 0
; P8-NEXT:    bne 0, .LBB0_2
; P8-NEXT:    b .LBB0_1
; P8-NEXT:  .LBB0_1: # %if.true
; P8-NEXT:    bl foo
; P8-NEXT:    nop
; P8-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P8-NEXT:    b .LBB0_3
; P8-NEXT:  .LBB0_2: # %if.false
; P8-NEXT:    bl bar
; P8-NEXT:    nop
; P8-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P8-NEXT:  .LBB0_3: # %final
; P8-NEXT:    lwz 3, 108(1) # 4-byte Folded Reload
; P8-NEXT:    clrldi 3, 3, 32
; P8-NEXT:    addi 1, 1, 112
; P8-NEXT:    ld 0, 16(1)
; P8-NEXT:    mtlr 0
; P8-NEXT:    blr
;
; P9-LABEL: test_choice1:
; P9:       # %bb.0: # %entry
; P9-NEXT:    mflr 0
; P9-NEXT:    std 0, 16(1)
; P9-NEXT:    stdu 1, -112(1)
; P9-NEXT:    xscmpuqp 0, 2, 3
; P9-NEXT:    bne 0, .LBB0_2
; P9-NEXT:    b .LBB0_1
; P9-NEXT:  .LBB0_1: # %if.true
; P9-NEXT:    bl foo
; P9-NEXT:    nop
; P9-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P9-NEXT:    b .LBB0_3
; P9-NEXT:  .LBB0_2: # %if.false
; P9-NEXT:    bl bar
; P9-NEXT:    nop
; P9-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P9-NEXT:  .LBB0_3: # %final
; P9-NEXT:    lwz 3, 108(1) # 4-byte Folded Reload
; P9-NEXT:    clrldi 3, 3, 32
; P9-NEXT:    addi 1, 1, 112
; P9-NEXT:    ld 0, 16(1)
; P9-NEXT:    mtlr 0
; P9-NEXT:    blr
entry:
  %cmp = fcmp oeq fp128 %a, %b
  br i1 %cmp, label %if.true, label %if.false

if.true:
  %res1 = call i32 @foo()
  br label %final

if.false:
  %res2 = call i32 @bar()
  br label %final

final:
  %result = phi i32 [%res1, %if.true], [%res2, %if.false]
  ret i32 %result
}

define i32 @test_choice2(fp128 %a, fp128 %b) #0 {
; P8-LABEL: test_choice2:
; P8:       # %bb.0: # %entry
; P8-NEXT:    mflr 0
; P8-NEXT:    std 0, 16(1)
; P8-NEXT:    stdu 1, -112(1)
; P8-NEXT:    bl __lekf2
; P8-NEXT:    nop
; P8-NEXT:    # kill: def $r3 killed $r3 killed $x3
; P8-NEXT:    cmpwi 3, 1
; P8-NEXT:    li 4, 0
; P8-NEXT:    li 3, 1
; P8-NEXT:    isellt 3, 3, 4
; P8-NEXT:    cmplwi 3, 0
; P8-NEXT:    bne 0, .LBB1_2
; P8-NEXT:    b .LBB1_1
; P8-NEXT:  .LBB1_1: # %if.true
; P8-NEXT:    bl foo
; P8-NEXT:    nop
; P8-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P8-NEXT:    b .LBB1_3
; P8-NEXT:  .LBB1_2: # %if.false
; P8-NEXT:    bl bar
; P8-NEXT:    nop
; P8-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P8-NEXT:  .LBB1_3: # %final
; P8-NEXT:    lwz 3, 108(1) # 4-byte Folded Reload
; P8-NEXT:    clrldi 3, 3, 32
; P8-NEXT:    addi 1, 1, 112
; P8-NEXT:    ld 0, 16(1)
; P8-NEXT:    mtlr 0
; P8-NEXT:    blr
;
; P9-LABEL: test_choice2:
; P9:       # %bb.0: # %entry
; P9-NEXT:    mflr 0
; P9-NEXT:    std 0, 16(1)
; P9-NEXT:    stdu 1, -128(1)
; P9-NEXT:    xscmpuqp 7, 2, 3
; P9-NEXT:    mfocrf 3, 1
; P9-NEXT:    rotlwi 3, 3, 28
; P9-NEXT:    stw 3, 124(1)
; P9-NEXT:    mfocrf 3, 1
; P9-NEXT:    lwz 4, 124(1)
; P9-NEXT:    rotlwi 4, 4, 4
; P9-NEXT:    mtocrf 1, 4
; P9-NEXT:    clrlwi 3, 3, 31
; P9-NEXT:    xori 4, 3, 1
; P9-NEXT:    mfocrf 3, 1
; P9-NEXT:    rlwinm 3, 3, 30, 31, 31
; P9-NEXT:    xori 3, 3, 1
; P9-NEXT:    and 3, 3, 4
; P9-NEXT:    cmplwi 3, 0
; P9-NEXT:    bne 0, .LBB1_2
; P9-NEXT:    b .LBB1_1
; P9-NEXT:  .LBB1_1: # %if.true
; P9-NEXT:    bl foo
; P9-NEXT:    nop
; P9-NEXT:    stw 3, 120(1) # 4-byte Folded Spill
; P9-NEXT:    b .LBB1_3
; P9-NEXT:  .LBB1_2: # %if.false
; P9-NEXT:    bl bar
; P9-NEXT:    nop
; P9-NEXT:    stw 3, 120(1) # 4-byte Folded Spill
; P9-NEXT:  .LBB1_3: # %final
; P9-NEXT:    lwz 3, 120(1) # 4-byte Folded Reload
; P9-NEXT:    clrldi 3, 3, 32
; P9-NEXT:    addi 1, 1, 128
; P9-NEXT:    ld 0, 16(1)
; P9-NEXT:    mtlr 0
; P9-NEXT:    blr
entry:
  %cmp = fcmp ugt fp128 %a, %b
  br i1 %cmp, label %if.true, label %if.false

if.true:
  %res1 = call i32 @foo()
  br label %final

if.false:
  %res2 = call i32 @bar()
  br label %final

final:
  %result = phi i32 [%res1, %if.true], [%res2, %if.false]
  ret i32 %result
}

define i32 @test_choice3(fp128 %a, fp128 %b) #0 {
; P8-LABEL: test_choice3:
; P8:       # %bb.0: # %entry
; P8-NEXT:    mflr 0
; P8-NEXT:    std 0, 16(1)
; P8-NEXT:    stdu 1, -112(1)
; P8-NEXT:    bl __ltkf2
; P8-NEXT:    nop
; P8-NEXT:    # kill: def $r3 killed $r3 killed $x3
; P8-NEXT:    not 3, 3
; P8-NEXT:    srwi 3, 3, 31
; P8-NEXT:    cmplwi 3, 0
; P8-NEXT:    bne 0, .LBB2_2
; P8-NEXT:    b .LBB2_1
; P8-NEXT:  .LBB2_1: # %if.true
; P8-NEXT:    bl foo
; P8-NEXT:    nop
; P8-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P8-NEXT:    b .LBB2_3
; P8-NEXT:  .LBB2_2: # %if.false
; P8-NEXT:    bl bar
; P8-NEXT:    nop
; P8-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P8-NEXT:  .LBB2_3: # %final
; P8-NEXT:    lwz 3, 108(1) # 4-byte Folded Reload
; P8-NEXT:    clrldi 3, 3, 32
; P8-NEXT:    addi 1, 1, 112
; P8-NEXT:    ld 0, 16(1)
; P8-NEXT:    mtlr 0
; P8-NEXT:    blr
;
; P9-LABEL: test_choice3:
; P9:       # %bb.0: # %entry
; P9-NEXT:    mflr 0
; P9-NEXT:    std 0, 16(1)
; P9-NEXT:    stdu 1, -112(1)
; P9-NEXT:    xscmpuqp 0, 2, 3
; P9-NEXT:    bge 0, .LBB2_2
; P9-NEXT:    b .LBB2_1
; P9-NEXT:  .LBB2_1: # %if.true
; P9-NEXT:    bl foo
; P9-NEXT:    nop
; P9-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P9-NEXT:    b .LBB2_3
; P9-NEXT:  .LBB2_2: # %if.false
; P9-NEXT:    bl bar
; P9-NEXT:    nop
; P9-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P9-NEXT:  .LBB2_3: # %final
; P9-NEXT:    lwz 3, 108(1) # 4-byte Folded Reload
; P9-NEXT:    clrldi 3, 3, 32
; P9-NEXT:    addi 1, 1, 112
; P9-NEXT:    ld 0, 16(1)
; P9-NEXT:    mtlr 0
; P9-NEXT:    blr
entry:
  %cmp = fcmp olt fp128 %a, %b
  br i1 %cmp, label %if.true, label %if.false

if.true:
  %res1 = call i32 @foo()
  br label %final

if.false:
  %res2 = call i32 @bar()
  br label %final

final:
  %result = phi i32 [%res1, %if.true], [%res2, %if.false]
  ret i32 %result
}

define i32 @test_choice4(fp128 %a, fp128 %b) #0 {
; P8-LABEL: test_choice4:
; P8:       # %bb.0: # %entry
; P8-NEXT:    mflr 0
; P8-NEXT:    std 0, 16(1)
; P8-NEXT:    stdu 1, -112(1)
; P8-NEXT:    bl __eqkf2
; P8-NEXT:    nop
; P8-NEXT:    # kill: def $r3 killed $r3 killed $x3
; P8-NEXT:    cmplwi 3, 0
; P8-NEXT:    beq 0, .LBB3_2
; P8-NEXT:    b .LBB3_1
; P8-NEXT:  .LBB3_1: # %if.true
; P8-NEXT:    bl foo
; P8-NEXT:    nop
; P8-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P8-NEXT:    b .LBB3_3
; P8-NEXT:  .LBB3_2: # %if.false
; P8-NEXT:    bl bar
; P8-NEXT:    nop
; P8-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P8-NEXT:  .LBB3_3: # %final
; P8-NEXT:    lwz 3, 108(1) # 4-byte Folded Reload
; P8-NEXT:    clrldi 3, 3, 32
; P8-NEXT:    addi 1, 1, 112
; P8-NEXT:    ld 0, 16(1)
; P8-NEXT:    mtlr 0
; P8-NEXT:    blr
;
; P9-LABEL: test_choice4:
; P9:       # %bb.0: # %entry
; P9-NEXT:    mflr 0
; P9-NEXT:    std 0, 16(1)
; P9-NEXT:    stdu 1, -112(1)
; P9-NEXT:    xscmpuqp 0, 2, 3
; P9-NEXT:    beq 0, .LBB3_2
; P9-NEXT:    b .LBB3_1
; P9-NEXT:  .LBB3_1: # %if.true
; P9-NEXT:    bl foo
; P9-NEXT:    nop
; P9-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P9-NEXT:    b .LBB3_3
; P9-NEXT:  .LBB3_2: # %if.false
; P9-NEXT:    bl bar
; P9-NEXT:    nop
; P9-NEXT:    stw 3, 108(1) # 4-byte Folded Spill
; P9-NEXT:  .LBB3_3: # %final
; P9-NEXT:    lwz 3, 108(1) # 4-byte Folded Reload
; P9-NEXT:    clrldi 3, 3, 32
; P9-NEXT:    addi 1, 1, 112
; P9-NEXT:    ld 0, 16(1)
; P9-NEXT:    mtlr 0
; P9-NEXT:    blr
entry:
  %cmp = fcmp une fp128 %a, %b
  br i1 %cmp, label %if.true, label %if.false

if.true:
  %res1 = call i32 @foo()
  br label %final

 if.false:
  %res2 = call i32 @bar()
  br label %final

final:
  %result = phi i32 [%res1, %if.true], [%res2, %if.false]
  ret i32 %result
}

attributes #0 = { nounwind }

declare i32 @foo()
declare i32 @bar()
