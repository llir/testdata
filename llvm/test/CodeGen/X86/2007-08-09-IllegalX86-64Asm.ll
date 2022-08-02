; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-apple-darwin | FileCheck %s

	%struct.FILE = type { ptr, i32, i32, i16, i16, %struct.__sbuf, i32, ptr, ptr, ptr, ptr, ptr, %struct.__sbuf, ptr, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, [4 x i8], i64 }
	%struct.PyBoolScalarObject = type { i64, ptr, i8 }
	%struct.PyBufferProcs = type { ptr, ptr, ptr, ptr }
	%struct.PyGetSetDef = type { ptr, ptr, ptr, ptr, ptr }
	%struct.PyMappingMethods = type { ptr, ptr, ptr }
	%struct.PyMemberDef = type opaque
	%struct.PyMethodDef = type { ptr, ptr, i32, ptr }
	%struct.PyNumberMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
	%struct.PyObject = type { i64, ptr }
	%struct.PySequenceMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
	%struct.PyTupleObject = type { i64, ptr, i64, [1 x ptr] }
	%struct.__sFILEX = type opaque
	%struct.__sbuf = type { ptr, i32 }
	%struct._typeobject = type { i64, ptr, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
@PyArray_API = external global ptr		; <ptr> [#uses=4]
@PyUFunc_API = external global ptr		; <ptr> [#uses=4]
@.str5 = external constant [14 x i8]		; <ptr> [#uses=1]

define ptr @ubyte_divmod(ptr %a, ptr %b) {
; CHECK-LABEL: ubyte_divmod:
; CHECK:       ## %bb.0: ## %entry
; CHECK-NEXT:    pushq %rbp
; CHECK-NEXT:    .cfi_def_cfa_offset 16
; CHECK-NEXT:    pushq %r15
; CHECK-NEXT:    .cfi_def_cfa_offset 24
; CHECK-NEXT:    pushq %r14
; CHECK-NEXT:    .cfi_def_cfa_offset 32
; CHECK-NEXT:    pushq %rbx
; CHECK-NEXT:    .cfi_def_cfa_offset 40
; CHECK-NEXT:    subq $40, %rsp
; CHECK-NEXT:    .cfi_def_cfa_offset 80
; CHECK-NEXT:    .cfi_offset %rbx, -40
; CHECK-NEXT:    .cfi_offset %r14, -32
; CHECK-NEXT:    .cfi_offset %r15, -24
; CHECK-NEXT:    .cfi_offset %rbp, -16
; CHECK-NEXT:    movq %rsi, %r14
; CHECK-NEXT:    movq %rdi, %rbx
; CHECK-NEXT:    leaq {{[0-9]+}}(%rsp), %rsi
; CHECK-NEXT:    callq __ubyte_convert_to_ctype
; CHECK-NEXT:    testl %eax, %eax
; CHECK-NEXT:    js LBB0_4
; CHECK-NEXT:  ## %bb.1: ## %cond_next.i
; CHECK-NEXT:    leaq {{[0-9]+}}(%rsp), %rsi
; CHECK-NEXT:    movq %r14, %rdi
; CHECK-NEXT:    callq __ubyte_convert_to_ctype
; CHECK-NEXT:    movl %eax, %ecx
; CHECK-NEXT:    sarl $31, %ecx
; CHECK-NEXT:    andl %eax, %ecx
; CHECK-NEXT:    cmpl $-2, %ecx
; CHECK-NEXT:    je LBB0_8
; CHECK-NEXT:  ## %bb.2: ## %cond_next.i
; CHECK-NEXT:    cmpl $-1, %ecx
; CHECK-NEXT:    jne LBB0_6
; CHECK-NEXT:  LBB0_3: ## %bb4
; CHECK-NEXT:    movq _PyArray_API@GOTPCREL(%rip), %rax
; CHECK-NEXT:    movq (%rax), %rax
; CHECK-NEXT:    movq 16(%rax), %rax
; CHECK-NEXT:    jmp LBB0_10
; CHECK-NEXT:  LBB0_4: ## %_ubyte_convert2_to_ctypes.exit
; CHECK-NEXT:    cmpl $-2, %eax
; CHECK-NEXT:    je LBB0_8
; CHECK-NEXT:  ## %bb.5: ## %_ubyte_convert2_to_ctypes.exit
; CHECK-NEXT:    cmpl $-1, %eax
; CHECK-NEXT:    je LBB0_3
; CHECK-NEXT:  LBB0_6: ## %bb35
; CHECK-NEXT:    movq _PyUFunc_API@GOTPCREL(%rip), %rbp
; CHECK-NEXT:    movq (%rbp), %rax
; CHECK-NEXT:    callq *216(%rax)
; CHECK-NEXT:    movzbl {{[0-9]+}}(%rsp), %edx
; CHECK-NEXT:    testb %dl, %dl
; CHECK-NEXT:    je LBB0_11
; CHECK-NEXT:  ## %bb.7: ## %cond_false.i
; CHECK-NEXT:    movzbl {{[0-9]+}}(%rsp), %ebx
; CHECK-NEXT:    movzbl %bl, %ecx
; CHECK-NEXT:    movl %ecx, %eax
; CHECK-NEXT:    divb %dl
; CHECK-NEXT:    movl %eax, %r14d
; CHECK-NEXT:    testb %cl, %cl
; CHECK-NEXT:    jne LBB0_12
; CHECK-NEXT:    jmp LBB0_14
; CHECK-NEXT:  LBB0_8: ## %bb17
; CHECK-NEXT:    callq _PyErr_Occurred
; CHECK-NEXT:    testq %rax, %rax
; CHECK-NEXT:    jne LBB0_27
; CHECK-NEXT:  ## %bb.9: ## %cond_next
; CHECK-NEXT:    movq _PyArray_API@GOTPCREL(%rip), %rax
; CHECK-NEXT:    movq (%rax), %rax
; CHECK-NEXT:    movq 80(%rax), %rax
; CHECK-NEXT:  LBB0_10: ## %bb4
; CHECK-NEXT:    movq 96(%rax), %rax
; CHECK-NEXT:    movq %rbx, %rdi
; CHECK-NEXT:    movq %r14, %rsi
; CHECK-NEXT:    callq *40(%rax)
; CHECK-NEXT:    jmp LBB0_28
; CHECK-NEXT:  LBB0_11: ## %cond_true.i
; CHECK-NEXT:    movl $4, %edi
; CHECK-NEXT:    callq _feraiseexcept
; CHECK-NEXT:    movzbl {{[0-9]+}}(%rsp), %edx
; CHECK-NEXT:    movzbl {{[0-9]+}}(%rsp), %ebx
; CHECK-NEXT:    xorl %r14d, %r14d
; CHECK-NEXT:    testb %bl, %bl
; CHECK-NEXT:    je LBB0_14
; CHECK-NEXT:  LBB0_12: ## %cond_false.i
; CHECK-NEXT:    testb %dl, %dl
; CHECK-NEXT:    je LBB0_14
; CHECK-NEXT:  ## %bb.13: ## %cond_next17.i
; CHECK-NEXT:    movzbl %bl, %eax
; CHECK-NEXT:    divb %dl
; CHECK-NEXT:    movzbl %ah, %eax
; CHECK-NEXT:    movl %eax, %r15d
; CHECK-NEXT:    jmp LBB0_18
; CHECK-NEXT:  LBB0_14: ## %cond_true.i200
; CHECK-NEXT:    testb %dl, %dl
; CHECK-NEXT:    jne LBB0_17
; CHECK-NEXT:  ## %bb.16: ## %cond_true14.i
; CHECK-NEXT:    movl $4, %edi
; CHECK-NEXT:    callq _feraiseexcept
; CHECK-NEXT:  LBB0_17: ## %ubyte_ctype_remainder.exit
; CHECK-NEXT:    xorl %r15d, %r15d
; CHECK-NEXT:  LBB0_18: ## %ubyte_ctype_remainder.exit
; CHECK-NEXT:    movq (%rbp), %rax
; CHECK-NEXT:    callq *224(%rax)
; CHECK-NEXT:    testl %eax, %eax
; CHECK-NEXT:    je LBB0_21
; CHECK-NEXT:  ## %bb.19: ## %cond_true61
; CHECK-NEXT:    movl %eax, %ebx
; CHECK-NEXT:    movq (%rbp), %rax
; CHECK-NEXT:    movq _.str5@GOTPCREL(%rip), %rdi
; CHECK-NEXT:    leaq {{[0-9]+}}(%rsp), %rsi
; CHECK-NEXT:    leaq {{[0-9]+}}(%rsp), %rdx
; CHECK-NEXT:    leaq {{[0-9]+}}(%rsp), %rcx
; CHECK-NEXT:    callq *200(%rax)
; CHECK-NEXT:    testl %eax, %eax
; CHECK-NEXT:    js LBB0_27
; CHECK-NEXT:  ## %bb.20: ## %cond_next73
; CHECK-NEXT:    movl $1, {{[0-9]+}}(%rsp)
; CHECK-NEXT:    movq (%rbp), %rax
; CHECK-NEXT:    movq {{[0-9]+}}(%rsp), %rsi
; CHECK-NEXT:    movl {{[0-9]+}}(%rsp), %edi
; CHECK-NEXT:    leaq {{[0-9]+}}(%rsp), %rcx
; CHECK-NEXT:    movl %ebx, %edx
; CHECK-NEXT:    callq *232(%rax)
; CHECK-NEXT:    testl %eax, %eax
; CHECK-NEXT:    jne LBB0_27
; CHECK-NEXT:  LBB0_21: ## %cond_next89
; CHECK-NEXT:    movl $2, %edi
; CHECK-NEXT:    callq _PyTuple_New
; CHECK-NEXT:    testq %rax, %rax
; CHECK-NEXT:    je LBB0_27
; CHECK-NEXT:  ## %bb.22: ## %cond_next97
; CHECK-NEXT:    movq %rax, %rbx
; CHECK-NEXT:    movq _PyArray_API@GOTPCREL(%rip), %rbp
; CHECK-NEXT:    movq (%rbp), %rax
; CHECK-NEXT:    movq 200(%rax), %rdi
; CHECK-NEXT:    xorl %esi, %esi
; CHECK-NEXT:    callq *304(%rdi)
; CHECK-NEXT:    testq %rax, %rax
; CHECK-NEXT:    je LBB0_25
; CHECK-NEXT:  ## %bb.23: ## %cond_next135
; CHECK-NEXT:    movb %r14b, 16(%rax)
; CHECK-NEXT:    movq %rax, 24(%rbx)
; CHECK-NEXT:    movq (%rbp), %rax
; CHECK-NEXT:    movq 200(%rax), %rdi
; CHECK-NEXT:    xorl %esi, %esi
; CHECK-NEXT:    callq *304(%rdi)
; CHECK-NEXT:    testq %rax, %rax
; CHECK-NEXT:    je LBB0_25
; CHECK-NEXT:  ## %bb.24: ## %cond_next182
; CHECK-NEXT:    movb %r15b, 16(%rax)
; CHECK-NEXT:    movq %rax, 32(%rbx)
; CHECK-NEXT:    movq %rbx, %rax
; CHECK-NEXT:    jmp LBB0_28
; CHECK-NEXT:  LBB0_25: ## %cond_true113
; CHECK-NEXT:    decq (%rbx)
; CHECK-NEXT:    jne LBB0_27
; CHECK-NEXT:  ## %bb.26: ## %cond_true126
; CHECK-NEXT:    movq 8(%rbx), %rax
; CHECK-NEXT:    movq %rbx, %rdi
; CHECK-NEXT:    callq *48(%rax)
; CHECK-NEXT:  LBB0_27: ## %UnifiedReturnBlock
; CHECK-NEXT:    xorl %eax, %eax
; CHECK-NEXT:  LBB0_28: ## %UnifiedReturnBlock
; CHECK-NEXT:    addq $40, %rsp
; CHECK-NEXT:    popq %rbx
; CHECK-NEXT:    popq %r14
; CHECK-NEXT:    popq %r15
; CHECK-NEXT:    popq %rbp
; CHECK-NEXT:    retq
entry:
	%arg1 = alloca i8, align 1		; <ptr> [#uses=3]
	%arg2 = alloca i8, align 1		; <ptr> [#uses=3]
	%first = alloca i32, align 4		; <ptr> [#uses=2]
	%bufsize = alloca i32, align 4		; <ptr> [#uses=1]
	%errmask = alloca i32, align 4		; <ptr> [#uses=2]
	%errobj = alloca ptr, align 8		; <ptr> [#uses=2]
	%tmp3.i = call fastcc i32 @_ubyte_convert_to_ctype( ptr %a, ptr %arg1 )		; <i32> [#uses=2]
	%tmp5.i = icmp slt i32 %tmp3.i, 0		; <i1> [#uses=1]
	br i1 %tmp5.i, label %_ubyte_convert2_to_ctypes.exit, label %cond_next.i

cond_next.i:		; preds = %entry
	%tmp11.i = call fastcc i32 @_ubyte_convert_to_ctype( ptr %b, ptr %arg2 )		; <i32> [#uses=2]
	%tmp13.i = icmp slt i32 %tmp11.i, 0		; <i1> [#uses=1]
	%retval.i = select i1 %tmp13.i, i32 %tmp11.i, i32 0		; <i32> [#uses=1]
	switch i32 %retval.i, label %bb35 [
		 i32 -2, label %bb17
		 i32 -1, label %bb4
	]

_ubyte_convert2_to_ctypes.exit:		; preds = %entry
	switch i32 %tmp3.i, label %bb35 [
		 i32 -2, label %bb17
		 i32 -1, label %bb4
	]

bb4:		; preds = %_ubyte_convert2_to_ctypes.exit, %cond_next.i
	%tmp5 = load ptr, ptr @PyArray_API, align 8		; <ptr> [#uses=1]
	%tmp6 = getelementptr ptr, ptr %tmp5, i64 2		; <ptr> [#uses=1]
	%tmp7 = load ptr, ptr %tmp6		; <ptr> [#uses=1]
	%tmp9 = getelementptr %struct._typeobject, ptr %tmp7, i32 0, i32 12		; <ptr> [#uses=1]
	%tmp10 = load ptr, ptr %tmp9		; <ptr> [#uses=1]
	%tmp11 = getelementptr %struct.PyNumberMethods, ptr %tmp10, i32 0, i32 5		; <ptr> [#uses=1]
	%tmp12 = load ptr, ptr %tmp11		; <ptr> [#uses=1]
	%tmp15 = call ptr %tmp12( ptr %a, ptr %b )		; <ptr> [#uses=1]
	ret ptr %tmp15

bb17:		; preds = %_ubyte_convert2_to_ctypes.exit, %cond_next.i
	%tmp18 = call ptr @PyErr_Occurred( )		; <ptr> [#uses=1]
	%tmp19 = icmp eq ptr %tmp18, null		; <i1> [#uses=1]
	br i1 %tmp19, label %cond_next, label %UnifiedReturnBlock

cond_next:		; preds = %bb17
	%tmp22 = load ptr, ptr @PyArray_API, align 8		; <ptr> [#uses=1]
	%tmp23 = getelementptr ptr, ptr %tmp22, i64 10		; <ptr> [#uses=1]
	%tmp24 = load ptr, ptr %tmp23		; <ptr> [#uses=1]
	%tmp26 = getelementptr %struct._typeobject, ptr %tmp24, i32 0, i32 12		; <ptr> [#uses=1]
	%tmp27 = load ptr, ptr %tmp26		; <ptr> [#uses=1]
	%tmp28 = getelementptr %struct.PyNumberMethods, ptr %tmp27, i32 0, i32 5		; <ptr> [#uses=1]
	%tmp29 = load ptr, ptr %tmp28		; <ptr> [#uses=1]
	%tmp32 = call ptr %tmp29( ptr %a, ptr %b )		; <ptr> [#uses=1]
	ret ptr %tmp32

bb35:		; preds = %_ubyte_convert2_to_ctypes.exit, %cond_next.i
	%tmp36 = load ptr, ptr @PyUFunc_API, align 8		; <ptr> [#uses=1]
	%tmp37 = getelementptr ptr, ptr %tmp36, i64 27		; <ptr> [#uses=1]
	%tmp38 = load ptr, ptr %tmp37		; <ptr> [#uses=1]
	call void %tmp38( )
	%tmp40 = load i8, ptr %arg2, align 1		; <i8> [#uses=4]
	%tmp1.i = icmp eq i8 %tmp40, 0		; <i1> [#uses=2]
	br i1 %tmp1.i, label %cond_true.i, label %cond_false.i

cond_true.i:		; preds = %bb35
	%tmp3.i196 = call i32 @feraiseexcept( i32 4 )		; <i32> [#uses=0]
	%tmp46207 = load i8, ptr %arg2, align 1		; <i8> [#uses=3]
	%tmp48208 = load i8, ptr %arg1, align 1		; <i8> [#uses=2]
	%tmp1.i197210 = icmp eq i8 %tmp48208, 0		; <i1> [#uses=1]
	%tmp4.i212 = icmp eq i8 %tmp46207, 0		; <i1> [#uses=1]
	%tmp7.i198213 = or i1 %tmp1.i197210, %tmp4.i212		; <i1> [#uses=1]
	br i1 %tmp7.i198213, label %cond_true.i200, label %cond_next17.i

cond_false.i:		; preds = %bb35
	%tmp42 = load i8, ptr %arg1, align 1		; <i8> [#uses=3]
	%tmp7.i = udiv i8 %tmp42, %tmp40		; <i8> [#uses=2]
	%tmp1.i197 = icmp eq i8 %tmp42, 0		; <i1> [#uses=1]
	%tmp7.i198 = or i1 %tmp1.i197, %tmp1.i		; <i1> [#uses=1]
	br i1 %tmp7.i198, label %cond_true.i200, label %cond_next17.i

cond_true.i200:		; preds = %cond_false.i, %cond_true.i
	%out.0 = phi i8 [ 0, %cond_true.i ], [ %tmp7.i, %cond_false.i ]		; <i8> [#uses=2]
	%tmp46202.0 = phi i8 [ %tmp46207, %cond_true.i ], [ %tmp40, %cond_false.i ]		; <i8> [#uses=1]
	%tmp11.i199 = icmp eq i8 %tmp46202.0, 0		; <i1> [#uses=1]
	br i1 %tmp11.i199, label %cond_true14.i, label %ubyte_ctype_remainder.exit

cond_true14.i:		; preds = %cond_true.i200
	%tmp15.i = call i32 @feraiseexcept( i32 4 )		; <i32> [#uses=0]
	br label %ubyte_ctype_remainder.exit

cond_next17.i:		; preds = %cond_false.i, %cond_true.i
	%out.1 = phi i8 [ 0, %cond_true.i ], [ %tmp7.i, %cond_false.i ]		; <i8> [#uses=1]
	%tmp46202.1 = phi i8 [ %tmp46207, %cond_true.i ], [ %tmp40, %cond_false.i ]		; <i8> [#uses=1]
	%tmp48205.1 = phi i8 [ %tmp48208, %cond_true.i ], [ %tmp42, %cond_false.i ]		; <i8> [#uses=1]
	%tmp20.i = urem i8 %tmp48205.1, %tmp46202.1		; <i8> [#uses=1]
	br label %ubyte_ctype_remainder.exit

ubyte_ctype_remainder.exit:		; preds = %cond_next17.i, %cond_true14.i, %cond_true.i200
	%out2.0 = phi i8 [ %tmp20.i, %cond_next17.i ], [ 0, %cond_true14.i ], [ 0, %cond_true.i200 ]		; <i8> [#uses=1]
	%out.2 = phi i8 [ %out.1, %cond_next17.i ], [ %out.0, %cond_true14.i ], [ %out.0, %cond_true.i200 ]		; <i8> [#uses=1]
	%tmp52 = load ptr, ptr @PyUFunc_API, align 8		; <ptr> [#uses=1]
	%tmp53 = getelementptr ptr, ptr %tmp52, i64 28		; <ptr> [#uses=1]
	%tmp54 = load ptr, ptr %tmp53		; <ptr> [#uses=1]
	%tmp56 = call i32 %tmp54( )		; <i32> [#uses=2]
	%tmp58 = icmp eq i32 %tmp56, 0		; <i1> [#uses=1]
	br i1 %tmp58, label %cond_next89, label %cond_true61

cond_true61:		; preds = %ubyte_ctype_remainder.exit
	%tmp62 = load ptr, ptr @PyUFunc_API, align 8		; <ptr> [#uses=1]
	%tmp63 = getelementptr ptr, ptr %tmp62, i64 25		; <ptr> [#uses=1]
	%tmp64 = load ptr, ptr %tmp63		; <ptr> [#uses=1]
	%tmp67 = call i32 %tmp64( ptr @.str5, ptr %bufsize, ptr %errmask, ptr %errobj )		; <i32> [#uses=1]
	%tmp68 = icmp slt i32 %tmp67, 0		; <i1> [#uses=1]
	br i1 %tmp68, label %UnifiedReturnBlock, label %cond_next73

cond_next73:		; preds = %cond_true61
	store i32 1, ptr %first, align 4
	%tmp74 = load ptr, ptr @PyUFunc_API, align 8		; <ptr> [#uses=1]
	%tmp75 = getelementptr ptr, ptr %tmp74, i64 29		; <ptr> [#uses=1]
	%tmp76 = load ptr, ptr %tmp75		; <ptr> [#uses=1]
	%tmp79 = load ptr, ptr %errobj, align 8		; <ptr> [#uses=1]
	%tmp80 = load i32, ptr %errmask, align 4		; <i32> [#uses=1]
	%tmp82 = call i32 %tmp76( i32 %tmp80, ptr %tmp79, i32 %tmp56, ptr %first )		; <i32> [#uses=1]
	%tmp83 = icmp eq i32 %tmp82, 0		; <i1> [#uses=1]
	br i1 %tmp83, label %cond_next89, label %UnifiedReturnBlock

cond_next89:		; preds = %cond_next73, %ubyte_ctype_remainder.exit
	%tmp90 = call ptr @PyTuple_New( i64 2 )		; <ptr> [#uses=9]
	%tmp92 = icmp eq ptr %tmp90, null		; <i1> [#uses=1]
	br i1 %tmp92, label %UnifiedReturnBlock, label %cond_next97

cond_next97:		; preds = %cond_next89
	%tmp98 = load ptr, ptr @PyArray_API, align 8		; <ptr> [#uses=1]
	%tmp99 = getelementptr ptr, ptr %tmp98, i64 25		; <ptr> [#uses=1]
	%tmp100 = load ptr, ptr %tmp99		; <ptr> [#uses=1]
	%tmp102 = getelementptr %struct._typeobject, ptr %tmp100, i32 0, i32 38		; <ptr> [#uses=1]
	%tmp103 = load ptr, ptr %tmp102		; <ptr> [#uses=1]
	%tmp108 = call ptr %tmp103( ptr %tmp100, i64 0 )		; <ptr> [#uses=3]
	%tmp110 = icmp eq ptr %tmp108, null		; <i1> [#uses=1]
	br i1 %tmp110, label %cond_true113, label %cond_next135

cond_true113:		; preds = %cond_next97
	%tmp115 = getelementptr %struct.PyObject, ptr %tmp90, i32 0, i32 0		; <ptr> [#uses=2]
	%tmp116 = load i64, ptr %tmp115		; <i64> [#uses=1]
	%tmp117 = add i64 %tmp116, -1		; <i64> [#uses=2]
	store i64 %tmp117, ptr %tmp115
	%tmp123 = icmp eq i64 %tmp117, 0		; <i1> [#uses=1]
	br i1 %tmp123, label %cond_true126, label %UnifiedReturnBlock

cond_true126:		; preds = %cond_true113
	%tmp128 = getelementptr %struct.PyObject, ptr %tmp90, i32 0, i32 1		; <ptr> [#uses=1]
	%tmp129 = load ptr, ptr %tmp128		; <ptr> [#uses=1]
	%tmp130 = getelementptr %struct._typeobject, ptr %tmp129, i32 0, i32 6		; <ptr> [#uses=1]
	%tmp131 = load ptr, ptr %tmp130		; <ptr> [#uses=1]
	call void %tmp131( ptr %tmp90 )
	ret ptr null

cond_next135:		; preds = %cond_next97
	%tmp139 = getelementptr %struct.PyBoolScalarObject, ptr %tmp108, i32 0, i32 2		; <ptr> [#uses=1]
	store i8 %out.2, ptr %tmp139
	%tmp143 = getelementptr %struct.PyTupleObject, ptr %tmp90, i32 0, i32 3, i64 0		; <ptr> [#uses=1]
	store ptr %tmp108, ptr %tmp143
	%tmp145 = load ptr, ptr @PyArray_API, align 8		; <ptr> [#uses=1]
	%tmp146 = getelementptr ptr, ptr %tmp145, i64 25		; <ptr> [#uses=1]
	%tmp147 = load ptr, ptr %tmp146		; <ptr> [#uses=1]
	%tmp149 = getelementptr %struct._typeobject, ptr %tmp147, i32 0, i32 38		; <ptr> [#uses=1]
	%tmp150 = load ptr, ptr %tmp149		; <ptr> [#uses=1]
	%tmp155 = call ptr %tmp150( ptr %tmp147, i64 0 )		; <ptr> [#uses=3]
	%tmp157 = icmp eq ptr %tmp155, null		; <i1> [#uses=1]
	br i1 %tmp157, label %cond_true160, label %cond_next182

cond_true160:		; preds = %cond_next135
	%tmp162 = getelementptr %struct.PyObject, ptr %tmp90, i32 0, i32 0		; <ptr> [#uses=2]
	%tmp163 = load i64, ptr %tmp162		; <i64> [#uses=1]
	%tmp164 = add i64 %tmp163, -1		; <i64> [#uses=2]
	store i64 %tmp164, ptr %tmp162
	%tmp170 = icmp eq i64 %tmp164, 0		; <i1> [#uses=1]
	br i1 %tmp170, label %cond_true173, label %UnifiedReturnBlock

cond_true173:		; preds = %cond_true160
	%tmp175 = getelementptr %struct.PyObject, ptr %tmp90, i32 0, i32 1		; <ptr> [#uses=1]
	%tmp176 = load ptr, ptr %tmp175		; <ptr> [#uses=1]
	%tmp177 = getelementptr %struct._typeobject, ptr %tmp176, i32 0, i32 6		; <ptr> [#uses=1]
	%tmp178 = load ptr, ptr %tmp177		; <ptr> [#uses=1]
	call void %tmp178( ptr %tmp90 )
	ret ptr null

cond_next182:		; preds = %cond_next135
	%tmp186 = getelementptr %struct.PyBoolScalarObject, ptr %tmp155, i32 0, i32 2		; <ptr> [#uses=1]
	store i8 %out2.0, ptr %tmp186
	%tmp190 = getelementptr %struct.PyTupleObject, ptr %tmp90, i32 0, i32 3, i64 1		; <ptr> [#uses=1]
	store ptr %tmp155, ptr %tmp190
	ret ptr %tmp90

UnifiedReturnBlock:		; preds = %cond_true160, %cond_true113, %cond_next89, %cond_next73, %cond_true61, %bb17
	ret ptr null
}

declare i32 @feraiseexcept(i32)

declare fastcc i32 @_ubyte_convert_to_ctype(ptr, ptr)

declare ptr @PyErr_Occurred()

declare ptr @PyTuple_New(i64)
