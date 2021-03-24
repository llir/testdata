target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

declare nonnull i8* @ret_nonnull()

define i8* @test1() {
0:
	%ret = call i8* @ret_nonnull()
	ret i8* %ret
}

define i8* @test2(i8* nonnull %p) {
0:
	ret i8* %p
}

define i8* @scc_binder(i1 %c) {
0:
	br i1 %c, label %rec, label %end

rec:
	%1 = call i8* @test3(i1 %c)
	br label %end

end:
	ret i8* null
}

define i8* @test3(i1 %c) {
0:
	%1 = call i8* @scc_binder(i1 %c)
	%ret = call i8* @ret_nonnull()
	ret i8* %ret
}

define i8* @test4_helper() {
0:
	%ret = call i8* @test4()
	ret i8* %ret
}

define i8* @test4() {
0:
	%ret = call i8* @test4_helper()
	ret i8* %ret
}

define i8* @test5_helper(i1 %c) {
0:
	br i1 %c, label %rec, label %end

rec:
	%ret = call i8* @test5(i1 %c)
	br label %end

end:
	ret i8* null
}

define i8* @test5(i1 %c) {
0:
	%ret = call i8* @test5_helper(i1 %c)
	ret i8* %ret
}

define i8* @test6a() {
entry:
	%ret = call i8* @ret_nonnull()
	br label %loop

loop:
	%phi = phi i8* [ %ret, %entry ], [ %phi, %loop ]
	br i1 undef, label %loop, label %exit

exit:
	ret i8* %phi
}

define i8* @test6b(i1 %c) {
entry:
	%ret = call i8* @ret_nonnull()
	br label %loop

loop:
	%phi = phi i8* [ %ret, %entry ], [ %phi, %loop ]
	br i1 %c, label %loop, label %exit

exit:
	ret i8* %phi
}

define i8* @test7(i8* %a) {
0:
	%b = getelementptr inbounds i8, i8* %a, i64 0
	ret i8* %b
}

define i8* @test8(i8* %a) {
0:
	%b = getelementptr inbounds i8, i8* %a, i64 1
	ret i8* %b
}

define i8* @test9(i8* %a, i64 %n) {
0:
	%b = getelementptr inbounds i8, i8* %a, i64 %n
	ret i8* %b
}

declare void @llvm.assume(i1 %0)

define i8* @test10(i8* %a, i64 %n) {
0:
	%cmp = icmp ne i64 %n, 0
	call void @llvm.assume(i1 %cmp)
	%b = getelementptr inbounds i8, i8* %a, i64 %n
	ret i8* %b
}

define i8* @test11(i8* %0) local_unnamed_addr {
1:
	%2 = icmp eq i8* %0, null
	br i1 %2, label %3, label %5

3:
	%4 = tail call i8* @ret_nonnull()
	br label %5

5:
	%6 = phi i8* [ %4, %3 ], [ %0, %1 ]
	ret i8* %6
}

declare void @test12_helper(i8* %0)

define void @test12(i8* nonnull %a) {
0:
	tail call void @test12_helper(i8* %a)
	ret void
}

declare i8* @unknown()

define void @test13_helper() {
0:
	%nonnullptr = tail call i8* @ret_nonnull()
	%maybenullptr = tail call i8* @unknown()
	tail call void @test13(i8* %nonnullptr, i8* %nonnullptr, i8* %maybenullptr)
	tail call void @test13(i8* %nonnullptr, i8* %maybenullptr, i8* %nonnullptr)
	ret void
}

declare void @use_i8_ptr(i8* nofree %0) readnone nounwind

define internal void @test13(i8* %a, i8* %b, i8* %c) {
0:
	call void @use_i8_ptr(i8* %a)
	call void @use_i8_ptr(i8* %b)
	call void @use_i8_ptr(i8* %c)
	ret void
}

declare nonnull i8* @nonnull()

define internal i32* @f1(i32* %arg) {
bb:
	%tmp = icmp eq i32* %arg, null
	br i1 %tmp, label %bb9, label %bb1

bb1:
	%tmp2 = load i32, i32* %arg, align 4
	%tmp3 = icmp eq i32 %tmp2, 0
	br i1 %tmp3, label %bb6, label %bb4

bb4:
	%tmp5 = getelementptr inbounds i32, i32* %arg, i64 1
	%tmp5b = tail call i32* @f3(i32* %tmp5)
	%tmp5c = getelementptr inbounds i32, i32* %tmp5b, i64 -1
	br label %bb9

bb6:
	%tmp7 = tail call i32* @f2(i32* %arg)
	ret i32* %tmp7

bb9:
	%tmp10 = phi i32* [ %tmp5c, %bb4 ], [ inttoptr (i64 4 to i32*), %bb ]
	ret i32* %tmp10
}

define internal i32* @f2(i32* %arg) {
bb:
	%tmp = tail call i32* @f1(i32* %arg)
	ret i32* %tmp
}

define dso_local noalias i32* @f3(i32* %arg) {
bb:
	%tmp = call i32* @f1(i32* %arg)
	ret i32* %tmp
}

define void @f15(i8* %arg) {
0:
	tail call void @use1(i8* dereferenceable(4) %arg)
	ret void
}

declare void @fun0() #1

declare void @fun1(i8* %0) #1

declare void @fun2(i8* %0, i8* %1) #1

declare void @fun3(i8* %0, i8* %1, i8* %2) #1

define void @f16(i8* %a, i8* %b, i8 %c) {
0:
	%cmp = icmp eq i8 %c, 0
	br i1 %cmp, label %if.then, label %if.else

if.then:
	tail call void @fun2(i8* nonnull %a, i8* nonnull %b)
	ret void

if.else:
	tail call void @fun2(i8* nonnull %a, i8* %b)
	ret void
}

define void @f17(i8* %a, i8 %c) {
0:
	%cmp = icmp eq i8 %c, 0
	br i1 %cmp, label %if.then, label %if.else

if.then:
	tail call void @fun0()
	br label %cont

if.else:
	tail call void @fun0()
	br label %cont

cont:
	tail call void @fun1(i8* nonnull %a)
	ret void
}

define void @f18(i8* %a, i8* %b, i8 %c) {
0:
	%cmp1 = icmp eq i8 %c, 0
	br i1 %cmp1, label %if.then, label %if.else

if.then:
	tail call void @fun0()
	br label %cont

if.else:
	tail call void @fun0()
	br label %cont

cont:
	%cmp2 = icmp eq i8 %c, 1
	br i1 %cmp2, label %cont.then, label %cont.else

cont.then:
	tail call void @fun1(i8* nonnull %b)
	br label %cont2

cont.else:
	tail call void @fun0()
	br label %cont2

cont2:
	tail call void @fun1(i8* nonnull %a)
	ret void
}

define void @f19(i8* %a, i8* %b, i8 %c) {
0:
	br label %loop.header

loop.header:
	%cmp2 = icmp eq i8 %c, 0
	br i1 %cmp2, label %loop.body, label %loop.exit

loop.body:
	tail call void @fun1(i8* nonnull %b)
	tail call void @fun1(i8* nonnull %a)
	br label %loop.header

loop.exit:
	tail call void @fun1(i8* nonnull %b)
	ret void
}

declare void @use1(i8* %x)

declare void @use2(i8* %x, i8* %y)

declare void @use3(i8* %x, i8* %y, i8* %z)

declare void @use1nonnull(i8* nonnull %x)

declare void @use2nonnull(i8* nonnull %x, i8* nonnull %y)

declare void @use3nonnull(i8* nonnull %x, i8* nonnull %y, i8* nonnull %z)

declare i8 @use1safecall(i8* %x) readonly nounwind

define void @parent1(i8* %a, i8* %b, i8* %c) {
0:
	call void @use3(i8* %c, i8* %a, i8* %b)
	call void @use3nonnull(i8* %b, i8* %c, i8* %a)
	ret void
}

define void @parent2(i8* %a, i8* %b, i8* %c) {
0:
	call void @use3nonnull(i8* %b, i8* %c, i8* %a)
	call void @use3(i8* %c, i8* %a, i8* %b)
	ret void
}

define void @parent3(i8* %a, i8* %b, i8* %c) {
0:
	call void @use1nonnull(i8* %a)
	call void @use3(i8* %c, i8* %b, i8* %a)
	ret void
}

define void @parent4(i8* %a, i8* %b, i8* %c) {
0:
	call void @use2nonnull(i8* %c, i8* %b)
	call void @use2(i8* %a, i8* %c)
	call void @use1(i8* %b)
	ret void
}

define void @parent5(i8* %a, i1 %a_is_notnull) {
0:
	br i1 %a_is_notnull, label %t, label %f

t:
	call void @use1nonnull(i8* %a)
	ret void

f:
	ret void
}

define i8 @parent6(i8* %a, i8* %b) {
0:
	%c = load volatile i8, i8* %b
	call void @use1nonnull(i8* %a)
	ret i8 %c
}

define i8 @parent7(i8* %a) {
0:
	%ret = call i8 @use1safecall(i8* %a)
	call void @use1nonnull(i8* %a)
	ret i8 %ret
}

declare i32 @esfp(...)

define i1 @parent8(i8* %a, i8* %bogus1, i8* %b) personality i8* bitcast (i32 (...)* @esfp to i8*) {
entry:
	invoke void @use2nonnull(i8* %a, i8* %b)
		to label %cont unwind label %exc

cont:
	%null_check = icmp eq i8* %b, null
	ret i1 %null_check

exc:
	%lp = landingpad { i8*, i32 }
		filter [0 x i8*] zeroinitializer
	unreachable
}

define i32* @gep1(i32* %p) {
0:
	%q = getelementptr inbounds i32, i32* %p, i32 1
	ret i32* %q
}

define i32* @gep1_no_null_opt(i32* %p) #0 {
0:
	%q = getelementptr inbounds i32, i32* %p, i32 1
	ret i32* %q
}

define i32 addrspace(3)* @gep2(i32 addrspace(3)* %p) {
0:
	%q = getelementptr inbounds i32, i32 addrspace(3)* %p, i32 1
	ret i32 addrspace(3)* %q
}

define i32 addrspace(3)* @as(i32 addrspace(3)* dereferenceable(4) %p) {
0:
	ret i32 addrspace(3)* %p
}

define internal i32* @g2() {
0:
	ret i32* inttoptr (i64 4 to i32*)
}

define i32* @g1() {
0:
	%c = call i32* @g2()
	ret i32* %c
}

declare void @use_i32_ptr(i32* %0) readnone nounwind

define internal void @called_by_weak(i32* %a) {
0:
	call void @use_i32_ptr(i32* %a)
	ret void
}

define weak_odr void @weak_caller(i32* nonnull %a) {
0:
	call void @called_by_weak(i32* %a)
	ret void
}

define internal void @control(i32* dereferenceable(4) %a) {
0:
	call void @use_i32_ptr(i32* %a)
	ret void
}

define internal void @naked(i32* dereferenceable(4) %a) naked {
0:
	call void @use_i32_ptr(i32* %a)
	ret void
}

define internal void @optnone(i32* dereferenceable(4) %a) optnone noinline {
0:
	call void @use_i32_ptr(i32* %a)
	ret void
}

define void @make_live(i32* nonnull dereferenceable(8) %a) {
0:
	call void @naked(i32* nonnull dereferenceable(8) align 16 %a)
	call void @control(i32* nonnull dereferenceable(8) align 16 %a)
	call void @optnone(i32* nonnull dereferenceable(8) align 16 %a)
	ret void
}

declare void @h(i32* %0) willreturn nounwind

declare i32 @g(i32* %0) willreturn nounwind

define i32 @nonnull_exec_ctx_1(i32* %a, i32 %b) {
en:
	%tmp3 = icmp eq i32 %b, 0
	br i1 %tmp3, label %ex, label %hd

ex:
	%tmp5 = tail call i32 @g(i32* nonnull %a)
	ret i32 %tmp5

hd:
	%tmp7 = phi i32 [ %tmp8, %hd ], [ 0, %en ]
	tail call void @h(i32* %a)
	%tmp8 = add nuw i32 %tmp7, 1
	%tmp9 = icmp eq i32 %tmp8, %b
	br i1 %tmp9, label %ex, label %hd
}

define i32 @nonnull_exec_ctx_1b(i32* %a, i32 %b) {
en:
	%tmp3 = icmp eq i32 %b, 0
	br i1 %tmp3, label %ex, label %hd

ex:
	%tmp5 = tail call i32 @g(i32* nonnull %a)
	ret i32 %tmp5

hd:
	%tmp7 = phi i32 [ %tmp8, %hd2 ], [ 0, %en ]
	tail call void @h(i32* %a)
	br label %hd2

hd2:
	%tmp8 = add nuw i32 %tmp7, 1
	%tmp9 = icmp eq i32 %tmp8, %b
	br i1 %tmp9, label %ex, label %hd
}

define i32 @nonnull_exec_ctx_2(i32* %a, i32 %b) willreturn nounwind {
en:
	%tmp3 = icmp eq i32 %b, 0
	br i1 %tmp3, label %ex, label %hd

ex:
	%tmp5 = tail call i32 @g(i32* nonnull %a)
	ret i32 %tmp5

hd:
	%tmp7 = phi i32 [ %tmp8, %hd ], [ 0, %en ]
	tail call void @h(i32* %a)
	%tmp8 = add nuw i32 %tmp7, 1
	%tmp9 = icmp eq i32 %tmp8, %b
	br i1 %tmp9, label %ex, label %hd
}

define i32 @nonnull_exec_ctx_2b(i32* %a, i32 %b) willreturn nounwind {
en:
	%tmp3 = icmp eq i32 %b, 0
	br i1 %tmp3, label %ex, label %hd

ex:
	%tmp5 = tail call i32 @g(i32* nonnull %a)
	ret i32 %tmp5

hd:
	%tmp7 = phi i32 [ %tmp8, %hd2 ], [ 0, %en ]
	tail call void @h(i32* %a)
	br label %hd2

hd2:
	%tmp8 = add nuw i32 %tmp7, 1
	%tmp9 = icmp eq i32 %tmp8, %b
	br i1 %tmp9, label %ex, label %hd
}

declare void @sink(i32* %0)

define void @PR43833(i32* %0, i32 %1) {
2:
	%3 = icmp sgt i32 %1, 1
	br i1 %3, label %4, label %7

4:
	%5 = zext i32 %1 to i64
	%6 = getelementptr inbounds i32, i32* %0, i64 %5
	br label %8

7:
	ret void

8:
	%9 = phi i32 [ 1, %4 ], [ %10, %8 ]
	tail call void @sink(i32* %6)
	%10 = add nuw nsw i32 %9, 1
	%11 = icmp eq i32 %10, %1
	br i1 %11, label %7, label %8
}

define void @PR43833_simple(i32* %0, i32 %1) {
2:
	%3 = icmp ne i32 %1, 0
	br i1 %3, label %4, label %7

4:
	%5 = zext i32 %1 to i64
	%6 = getelementptr inbounds i32, i32* %0, i64 %5
	br label %8

7:
	ret void

8:
	%9 = phi i32 [ 1, %4 ], [ %10, %8 ]
	tail call void @sink(i32* %6)
	%10 = add nuw nsw i32 %9, 1
	%11 = icmp eq i32 %10, %1
	br i1 %11, label %7, label %8
}

declare i8* @strrchr(i8* %0, i32 %1) nofree nounwind readonly

define i8* @mybasename(i8* nofree readonly %str) {
0:
	%call = call i8* @strrchr(i8* %str, i32 47)
	%tobool = icmp ne i8* %call, null
	%add.ptr = getelementptr inbounds i8, i8* %call, i64 1
	%cond = select i1 %tobool, i8* %add.ptr, i8* %str
	ret i8* %cond
}

attributes #0 = { "null-pointer-is-valid"="true" }
attributes #1 = { nounwind willreturn }
