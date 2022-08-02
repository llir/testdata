; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -march=amdgcn -mcpu=verde -verify-machineinstrs < %s | FileCheck %s -check-prefixes=GCN,SI
; RUN: llc -march=amdgcn -mcpu=bonaire -verify-machineinstrs < %s | FileCheck %s -check-prefixes=GCN,CI

@local_memory.local_mem = internal unnamed_addr addrspace(3) global [128 x i32] undef, align 4

define amdgpu_kernel void @local_memory(i32 addrspace(1)* %out) #0 {
; GCN-LABEL: local_memory:
; GCN:       ; %bb.0: ; %entry
; GCN-NEXT:    v_lshlrev_b32_e32 v1, 2, v0
; GCN-NEXT:    s_mov_b32 m0, -1
; GCN-NEXT:    ds_write_b32 v1, v0
; GCN-NEXT:    v_add_i32_e32 v0, vcc, 1, v0
; GCN-NEXT:    v_cmp_ne_u32_e32 vcc, 16, v0
; GCN-NEXT:    v_cndmask_b32_e32 v0, 0, v0, vcc
; GCN-NEXT:    v_lshlrev_b32_e32 v0, 2, v0
; GCN-NEXT:    s_load_dwordx2 s[0:1], s[0:1], 0x9
; GCN-NEXT:    s_waitcnt lgkmcnt(0)
; GCN-NEXT:    s_barrier
; GCN-NEXT:    ds_read_b32 v0, v0
; GCN-NEXT:    s_mov_b32 s2, 0
; GCN-NEXT:    s_mov_b32 s3, 0xf000
; GCN-NEXT:    v_mov_b32_e32 v2, 0
; GCN-NEXT:    s_waitcnt lgkmcnt(0)
; GCN-NEXT:    buffer_store_dword v0, v[1:2], s[0:3], 0 addr64
; GCN-NEXT:    s_endpgm
entry:
  %y.i = call i32 @llvm.amdgcn.workitem.id.x() #1
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32] addrspace(3)* @local_memory.local_mem, i32 0, i32 %y.i
  store i32 %y.i, i32 addrspace(3)* %arrayidx, align 4
  %add = add nsw i32 %y.i, 1
  %cmp = icmp eq i32 %add, 16
  %.add = select i1 %cmp, i32 0, i32 %add
  call void @llvm.amdgcn.s.barrier()
  %arrayidx1 = getelementptr inbounds [128 x i32], [128 x i32] addrspace(3)* @local_memory.local_mem, i32 0, i32 %.add
  %tmp = load i32, i32 addrspace(3)* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i32, i32 addrspace(1)* %out, i32 %y.i
  store i32 %tmp, i32 addrspace(1)* %arrayidx2, align 4
  ret void
}

@local_memory_two_objects.local_mem0 = internal unnamed_addr addrspace(3) global [4 x i32] undef, align 4
@local_memory_two_objects.local_mem1 = internal unnamed_addr addrspace(3) global [4 x i32] undef, align 4

; Check that the LDS size emitted correctly
define amdgpu_kernel void @local_memory_two_objects(i32 addrspace(1)* %out) #0 {
; SI-LABEL: local_memory_two_objects:
; SI:       ; %bb.0: ; %entry
; SI-NEXT:    v_lshlrev_b32_e32 v1, 2, v0
; SI-NEXT:    v_lshlrev_b32_e32 v2, 1, v0
; SI-NEXT:    s_mov_b32 m0, -1
; SI-NEXT:    ds_write2_b32 v1, v0, v2 offset1:4
; SI-NEXT:    v_sub_i32_e32 v0, vcc, 12, v1
; SI-NEXT:    v_sub_i32_e32 v2, vcc, 16, v1
; SI-NEXT:    s_load_dwordx2 s[0:1], s[0:1], 0x9
; SI-NEXT:    s_waitcnt lgkmcnt(0)
; SI-NEXT:    s_barrier
; SI-NEXT:    v_add_i32_e32 v2, vcc, 12, v2
; SI-NEXT:    ds_read_b32 v0, v0
; SI-NEXT:    ds_read_b32 v3, v2
; SI-NEXT:    s_mov_b32 s3, 0xf000
; SI-NEXT:    s_mov_b32 s2, 0
; SI-NEXT:    v_mov_b32_e32 v2, 0
; SI-NEXT:    s_waitcnt lgkmcnt(1)
; SI-NEXT:    buffer_store_dword v0, v[1:2], s[0:3], 0 addr64
; SI-NEXT:    s_waitcnt lgkmcnt(0)
; SI-NEXT:    buffer_store_dword v3, v[1:2], s[0:3], 0 addr64 offset:16
; SI-NEXT:    s_endpgm
;
; CI-LABEL: local_memory_two_objects:
; CI:       ; %bb.0: ; %entry
; CI-NEXT:    v_lshlrev_b32_e32 v1, 2, v0
; CI-NEXT:    v_lshlrev_b32_e32 v2, 1, v0
; CI-NEXT:    s_mov_b32 m0, -1
; CI-NEXT:    ds_write2_b32 v1, v0, v2 offset1:4
; CI-NEXT:    v_sub_i32_e32 v0, vcc, 0, v1
; CI-NEXT:    s_load_dwordx2 s[0:1], s[0:1], 0x9
; CI-NEXT:    s_waitcnt lgkmcnt(0)
; CI-NEXT:    s_barrier
; CI-NEXT:    v_sub_i32_e32 v2, vcc, 16, v1
; CI-NEXT:    ds_read_b32 v0, v0 offset:12
; CI-NEXT:    ds_read_b32 v3, v2 offset:12
; CI-NEXT:    s_mov_b32 s3, 0xf000
; CI-NEXT:    s_mov_b32 s2, 0
; CI-NEXT:    v_mov_b32_e32 v2, 0
; CI-NEXT:    s_waitcnt lgkmcnt(1)
; CI-NEXT:    buffer_store_dword v0, v[1:2], s[0:3], 0 addr64
; CI-NEXT:    s_waitcnt lgkmcnt(0)
; CI-NEXT:    buffer_store_dword v3, v[1:2], s[0:3], 0 addr64 offset:16
; CI-NEXT:    s_endpgm
entry:
  %x.i = call i32 @llvm.amdgcn.workitem.id.x()
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32] addrspace(3)* @local_memory_two_objects.local_mem0, i32 0, i32 %x.i
  store i32 %x.i, i32 addrspace(3)* %arrayidx, align 4
  %mul = shl nsw i32 %x.i, 1
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32] addrspace(3)* @local_memory_two_objects.local_mem1, i32 0, i32 %x.i
  store i32 %mul, i32 addrspace(3)* %arrayidx1, align 4
  %sub = sub nsw i32 3, %x.i
  call void @llvm.amdgcn.s.barrier()
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32] addrspace(3)* @local_memory_two_objects.local_mem0, i32 0, i32 %sub
  %tmp = load i32, i32 addrspace(3)* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds i32, i32 addrspace(1)* %out, i32 %x.i
  store i32 %tmp, i32 addrspace(1)* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32] addrspace(3)* @local_memory_two_objects.local_mem1, i32 0, i32 %sub
  %tmp1 = load i32, i32 addrspace(3)* %arrayidx4, align 4
  %add = add nsw i32 %x.i, 4
  %arrayidx5 = getelementptr inbounds i32, i32 addrspace(1)* %out, i32 %add
  store i32 %tmp1, i32 addrspace(1)* %arrayidx5, align 4
  ret void
}

declare i32 @llvm.amdgcn.workitem.id.x() #1
declare void @llvm.amdgcn.s.barrier() #2

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { convergent nounwind }
