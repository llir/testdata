; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=amdgcn-amd-amdhsa -mcpu=gfx906 < %s | FileCheck --check-prefix=MUBUF %s
; RUN: llc -mtriple=amdgcn-amd-amdhsa -mcpu=gfx906 --mattr=+enable-flat-scratch < %s | FileCheck --check-prefix=FLATSCR %s

; Make sure we use the correct frame offset is used with the local
; frame area.
;
; %pin.low is allocated to offset 0.
;
; %local.area is assigned to the local frame offset by the
; LocalStackSlotAllocation pass at offset 4096.
;
; The %load1 access to %gep.large.offset initially used the stack
; pointer register and directly referenced the frame index. After
; LocalStackSlotAllocation, it would no longer refer to a frame index
; so eliminateFrameIndex would not adjust the access to use the
; correct FP offset.

define amdgpu_kernel void @local_stack_offset_uses_sp(i64 addrspace(1)* %out) {
; MUBUF-LABEL: local_stack_offset_uses_sp:
; MUBUF:       ; %bb.0: ; %entry
; MUBUF-NEXT:    s_load_dwordx2 s[4:5], s[4:5], 0x0
; MUBUF-NEXT:    s_add_u32 s0, s0, s9
; MUBUF-NEXT:    v_mov_b32_e32 v1, 0x3000
; MUBUF-NEXT:    s_addc_u32 s1, s1, 0
; MUBUF-NEXT:    v_add_u32_e32 v0, 64, v1
; MUBUF-NEXT:    v_mov_b32_e32 v2, 0
; MUBUF-NEXT:    v_mov_b32_e32 v3, 0x2000
; MUBUF-NEXT:    s_mov_b32 s6, 0
; MUBUF-NEXT:    buffer_store_dword v2, v3, s[0:3], 0 offen
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:  .LBB0_1: ; %loadstoreloop
; MUBUF-NEXT:    ; =>This Inner Loop Header: Depth=1
; MUBUF-NEXT:    v_add_u32_e32 v3, s6, v1
; MUBUF-NEXT:    s_add_i32 s6, s6, 1
; MUBUF-NEXT:    s_cmpk_lt_u32 s6, 0x2120
; MUBUF-NEXT:    buffer_store_byte v2, v3, s[0:3], 0 offen
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    s_cbranch_scc1 .LBB0_1
; MUBUF-NEXT:  ; %bb.2: ; %split
; MUBUF-NEXT:    v_mov_b32_e32 v1, 0x3000
; MUBUF-NEXT:    v_add_u32_e32 v1, 0x20d0, v1
; MUBUF-NEXT:    buffer_load_dword v2, v1, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    buffer_load_dword v3, v1, s[0:3], 0 offen offset:4 glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    buffer_load_dword v4, v0, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    buffer_load_dword v5, v0, s[0:3], 0 offen offset:4 glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_add_co_u32_e32 v0, vcc, v2, v4
; MUBUF-NEXT:    v_addc_co_u32_e32 v1, vcc, v3, v5, vcc
; MUBUF-NEXT:    v_mov_b32_e32 v2, 0
; MUBUF-NEXT:    s_waitcnt lgkmcnt(0)
; MUBUF-NEXT:    global_store_dwordx2 v2, v[0:1], s[4:5]
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    s_endpgm
;
; FLATSCR-LABEL: local_stack_offset_uses_sp:
; FLATSCR:       ; %bb.0: ; %entry
; FLATSCR-NEXT:    s_load_dwordx2 s[0:1], s[0:1], 0x0
; FLATSCR-NEXT:    s_add_u32 flat_scratch_lo, s2, s5
; FLATSCR-NEXT:    s_addc_u32 flat_scratch_hi, s3, 0
; FLATSCR-NEXT:    v_mov_b32_e32 v0, 0
; FLATSCR-NEXT:    s_movk_i32 vcc_hi, 0x2000
; FLATSCR-NEXT:    s_mov_b32 s2, 0
; FLATSCR-NEXT:    scratch_store_dword off, v0, vcc_hi
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:  .LBB0_1: ; %loadstoreloop
; FLATSCR-NEXT:    ; =>This Inner Loop Header: Depth=1
; FLATSCR-NEXT:    s_add_i32 s3, s2, 0x3000
; FLATSCR-NEXT:    s_add_i32 s2, s2, 1
; FLATSCR-NEXT:    s_cmpk_lt_u32 s2, 0x2120
; FLATSCR-NEXT:    scratch_store_byte off, v0, s3
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_cbranch_scc1 .LBB0_1
; FLATSCR-NEXT:  ; %bb.2: ; %split
; FLATSCR-NEXT:    s_movk_i32 s2, 0x2000
; FLATSCR-NEXT:    s_addk_i32 s2, 0x3000
; FLATSCR-NEXT:    scratch_load_dwordx2 v[0:1], off, s2 offset:208 glc
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_movk_i32 s2, 0x3000
; FLATSCR-NEXT:    scratch_load_dwordx2 v[2:3], off, s2 offset:64 glc
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    v_add_co_u32_e32 v0, vcc, v0, v2
; FLATSCR-NEXT:    v_addc_co_u32_e32 v1, vcc, v1, v3, vcc
; FLATSCR-NEXT:    v_mov_b32_e32 v2, 0
; FLATSCR-NEXT:    s_waitcnt lgkmcnt(0)
; FLATSCR-NEXT:    global_store_dwordx2 v2, v[0:1], s[0:1]
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_endpgm
entry:
  %pin.low = alloca i32, align 8192, addrspace(5)
  %local.area = alloca [1060 x i64], align 4096, addrspace(5)
  store volatile i32 0, i32 addrspace(5)* %pin.low
  %local.area.cast = bitcast [1060 x i64] addrspace(5)* %local.area to i8 addrspace(5)*
  call void @llvm.memset.p5i8.i32(i8 addrspace(5)* align 4 %local.area.cast, i8 0, i32 8480, i1 true)
  %gep.large.offset = getelementptr inbounds [1060 x i64], [1060 x i64] addrspace(5)* %local.area, i64 0, i64 1050
  %gep.small.offset = getelementptr inbounds [1060 x i64], [1060 x i64] addrspace(5)* %local.area, i64 0, i64 8
  %load0 = load volatile i64, i64 addrspace(5)* %gep.large.offset
  %load1 = load volatile i64, i64 addrspace(5)* %gep.small.offset
  %add0 = add i64 %load0, %load1
  store volatile i64 %add0, i64 addrspace(1)* %out
  ret void
}

define void @func_local_stack_offset_uses_sp(i64 addrspace(1)* %out) {
; MUBUF-LABEL: func_local_stack_offset_uses_sp:
; MUBUF:       ; %bb.0: ; %entry
; MUBUF-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; MUBUF-NEXT:    s_mov_b32 s5, s33
; MUBUF-NEXT:    s_add_i32 s33, s32, 0x7ffc0
; MUBUF-NEXT:    s_and_b32 s33, s33, 0xfff80000
; MUBUF-NEXT:    v_lshrrev_b32_e64 v3, 6, s33
; MUBUF-NEXT:    v_add_u32_e32 v3, 0x3000, v3
; MUBUF-NEXT:    v_add_u32_e32 v2, 64, v3
; MUBUF-NEXT:    v_mov_b32_e32 v4, 0
; MUBUF-NEXT:    v_mov_b32_e32 v5, 0x2000
; MUBUF-NEXT:    s_mov_b32 s4, 0
; MUBUF-NEXT:    s_add_i32 s32, s32, 0x200000
; MUBUF-NEXT:    buffer_store_dword v4, v5, s[0:3], s33 offen
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:  .LBB1_1: ; %loadstoreloop
; MUBUF-NEXT:    ; =>This Inner Loop Header: Depth=1
; MUBUF-NEXT:    v_add_u32_e32 v5, s4, v3
; MUBUF-NEXT:    s_add_i32 s4, s4, 1
; MUBUF-NEXT:    s_cmpk_lt_u32 s4, 0x2120
; MUBUF-NEXT:    buffer_store_byte v4, v5, s[0:3], 0 offen
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    s_cbranch_scc1 .LBB1_1
; MUBUF-NEXT:  ; %bb.2: ; %split
; MUBUF-NEXT:    v_lshrrev_b32_e64 v3, 6, s33
; MUBUF-NEXT:    v_add_u32_e32 v3, 0x3000, v3
; MUBUF-NEXT:    v_add_u32_e32 v3, 0x20d0, v3
; MUBUF-NEXT:    buffer_load_dword v4, v3, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    buffer_load_dword v5, v3, s[0:3], 0 offen offset:4 glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    buffer_load_dword v6, v2, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    buffer_load_dword v7, v2, s[0:3], 0 offen offset:4 glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    s_add_i32 s32, s32, 0xffe00000
; MUBUF-NEXT:    s_mov_b32 s33, s5
; MUBUF-NEXT:    v_add_co_u32_e32 v2, vcc, v4, v6
; MUBUF-NEXT:    v_addc_co_u32_e32 v3, vcc, v5, v7, vcc
; MUBUF-NEXT:    global_store_dwordx2 v[0:1], v[2:3], off
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    s_setpc_b64 s[30:31]
;
; FLATSCR-LABEL: func_local_stack_offset_uses_sp:
; FLATSCR:       ; %bb.0: ; %entry
; FLATSCR-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; FLATSCR-NEXT:    s_mov_b32 s2, s33
; FLATSCR-NEXT:    s_add_i32 s33, s32, 0x1fff
; FLATSCR-NEXT:    s_and_b32 s33, s33, 0xffffe000
; FLATSCR-NEXT:    s_add_i32 s32, s32, 0x8000
; FLATSCR-NEXT:    v_mov_b32_e32 v2, 0
; FLATSCR-NEXT:    s_add_i32 vcc_hi, s33, 0x2000
; FLATSCR-NEXT:    s_mov_b32 s0, 0
; FLATSCR-NEXT:    scratch_store_dword off, v2, vcc_hi
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:  .LBB1_1: ; %loadstoreloop
; FLATSCR-NEXT:    ; =>This Inner Loop Header: Depth=1
; FLATSCR-NEXT:    s_add_i32 vcc_hi, s33, 0x3000
; FLATSCR-NEXT:    s_add_i32 s1, s0, vcc_hi
; FLATSCR-NEXT:    s_add_i32 s0, s0, 1
; FLATSCR-NEXT:    s_cmpk_lt_u32 s0, 0x2120
; FLATSCR-NEXT:    scratch_store_byte off, v2, s1
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_cbranch_scc1 .LBB1_1
; FLATSCR-NEXT:  ; %bb.2: ; %split
; FLATSCR-NEXT:    s_movk_i32 s0, 0x2000
; FLATSCR-NEXT:    s_add_i32 s1, s33, 0x3000
; FLATSCR-NEXT:    s_add_i32 s0, s0, s1
; FLATSCR-NEXT:    scratch_load_dwordx2 v[2:3], off, s0 offset:208 glc
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_add_i32 s0, s33, 0x3000
; FLATSCR-NEXT:    scratch_load_dwordx2 v[4:5], off, s0 offset:64 glc
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_addk_i32 s32, 0x8000
; FLATSCR-NEXT:    s_mov_b32 s33, s2
; FLATSCR-NEXT:    v_add_co_u32_e32 v2, vcc, v2, v4
; FLATSCR-NEXT:    v_addc_co_u32_e32 v3, vcc, v3, v5, vcc
; FLATSCR-NEXT:    global_store_dwordx2 v[0:1], v[2:3], off
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_setpc_b64 s[30:31]
entry:
  %pin.low = alloca i32, align 8192, addrspace(5)
  %local.area = alloca [1060 x i64], align 4096, addrspace(5)
  store volatile i32 0, i32 addrspace(5)* %pin.low
  %local.area.cast = bitcast [1060 x i64] addrspace(5)* %local.area to i8 addrspace(5)*
  call void @llvm.memset.p5i8.i32(i8 addrspace(5)* align 4 %local.area.cast, i8 0, i32 8480, i1 true)
  %gep.large.offset = getelementptr inbounds [1060 x i64], [1060 x i64] addrspace(5)* %local.area, i64 0, i64 1050
  %gep.small.offset = getelementptr inbounds [1060 x i64], [1060 x i64] addrspace(5)* %local.area, i64 0, i64 8
  %load0 = load volatile i64, i64 addrspace(5)* %gep.large.offset
  %load1 = load volatile i64, i64 addrspace(5)* %gep.small.offset
  %add0 = add i64 %load0, %load1
  store volatile i64 %add0, i64 addrspace(1)* %out
  ret void
}

define amdgpu_kernel void @local_stack_offset_uses_sp_flat(<3 x i64> addrspace(1)* %out) {
; MUBUF-LABEL: local_stack_offset_uses_sp_flat:
; MUBUF:       ; %bb.0: ; %entry
; MUBUF-NEXT:    s_load_dwordx2 s[4:5], s[4:5], 0x0
; MUBUF-NEXT:    s_add_u32 s0, s0, s9
; MUBUF-NEXT:    s_addc_u32 s1, s1, 0
; MUBUF-NEXT:    v_mov_b32_e32 v0, 0x4000
; MUBUF-NEXT:    v_mov_b32_e32 v1, 0
; MUBUF-NEXT:    v_mov_b32_e32 v2, 0x2000
; MUBUF-NEXT:    s_mov_b32 s6, 0
; MUBUF-NEXT:    buffer_store_dword v1, v2, s[0:3], 0 offen
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:  .LBB2_1: ; %loadstoreloop
; MUBUF-NEXT:    ; =>This Inner Loop Header: Depth=1
; MUBUF-NEXT:    v_add_u32_e32 v2, s6, v0
; MUBUF-NEXT:    s_add_i32 s6, s6, 1
; MUBUF-NEXT:    s_cmpk_lt_u32 s6, 0x2120
; MUBUF-NEXT:    buffer_store_byte v1, v2, s[0:3], 0 offen
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    s_cbranch_scc1 .LBB2_1
; MUBUF-NEXT:  ; %bb.2: ; %split
; MUBUF-NEXT:    v_mov_b32_e32 v0, 0x4000
; MUBUF-NEXT:    v_or_b32_e32 v2, 0x12d4, v0
; MUBUF-NEXT:    buffer_load_dword v5, v2, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_or_b32_e32 v2, 0x12d0, v0
; MUBUF-NEXT:    v_or_b32_e32 v1, 0x12c0, v0
; MUBUF-NEXT:    buffer_load_dword v4, v2, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_or_b32_e32 v2, 0x12c4, v0
; MUBUF-NEXT:    buffer_load_dword v6, v2, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    buffer_load_dword v7, v1, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_or_b32_e32 v1, 0x12cc, v0
; MUBUF-NEXT:    v_or_b32_e32 v0, 0x12c8, v0
; MUBUF-NEXT:    v_mov_b32_e32 v13, 0x4000
; MUBUF-NEXT:    buffer_load_dword v1, v1, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_mov_b32_e32 v12, 0
; MUBUF-NEXT:    buffer_load_dword v0, v0, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    buffer_load_dword v8, v13, s[0:3], 0 offen glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_mov_b32_e32 v13, 0x4000
; MUBUF-NEXT:    buffer_load_dword v9, v13, s[0:3], 0 offen offset:4 glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_mov_b32_e32 v13, 0x4000
; MUBUF-NEXT:    buffer_load_dword v2, v13, s[0:3], 0 offen offset:8 glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_mov_b32_e32 v13, 0x4000
; MUBUF-NEXT:    buffer_load_dword v3, v13, s[0:3], 0 offen offset:12 glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_mov_b32_e32 v13, 0x4000
; MUBUF-NEXT:    buffer_load_dword v10, v13, s[0:3], 0 offen offset:16 glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_mov_b32_e32 v13, 0x4000
; MUBUF-NEXT:    buffer_load_dword v11, v13, s[0:3], 0 offen offset:20 glc
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    v_add_co_u32_e32 v2, vcc, v0, v2
; MUBUF-NEXT:    v_addc_co_u32_e32 v3, vcc, v1, v3, vcc
; MUBUF-NEXT:    v_add_co_u32_e32 v0, vcc, v7, v8
; MUBUF-NEXT:    v_addc_co_u32_e32 v1, vcc, v6, v9, vcc
; MUBUF-NEXT:    v_add_co_u32_e32 v4, vcc, v4, v10
; MUBUF-NEXT:    v_addc_co_u32_e32 v5, vcc, v5, v11, vcc
; MUBUF-NEXT:    s_waitcnt lgkmcnt(0)
; MUBUF-NEXT:    global_store_dwordx2 v12, v[4:5], s[4:5] offset:16
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    global_store_dwordx4 v12, v[0:3], s[4:5]
; MUBUF-NEXT:    s_waitcnt vmcnt(0)
; MUBUF-NEXT:    s_endpgm
;
; FLATSCR-LABEL: local_stack_offset_uses_sp_flat:
; FLATSCR:       ; %bb.0: ; %entry
; FLATSCR-NEXT:    s_load_dwordx2 s[0:1], s[0:1], 0x0
; FLATSCR-NEXT:    s_add_u32 flat_scratch_lo, s2, s5
; FLATSCR-NEXT:    s_addc_u32 flat_scratch_hi, s3, 0
; FLATSCR-NEXT:    v_mov_b32_e32 v0, 0
; FLATSCR-NEXT:    s_mov_b32 vcc_hi, 0
; FLATSCR-NEXT:    s_mov_b32 s2, 0
; FLATSCR-NEXT:    scratch_store_dword off, v0, vcc_hi offset:1024
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:  .LBB2_1: ; %loadstoreloop
; FLATSCR-NEXT:    ; =>This Inner Loop Header: Depth=1
; FLATSCR-NEXT:    s_add_i32 s3, s2, 0x2000
; FLATSCR-NEXT:    s_add_i32 s2, s2, 1
; FLATSCR-NEXT:    s_cmpk_lt_u32 s2, 0x2120
; FLATSCR-NEXT:    scratch_store_byte off, v0, s3
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_cbranch_scc1 .LBB2_1
; FLATSCR-NEXT:  ; %bb.2: ; %split
; FLATSCR-NEXT:    s_movk_i32 s2, 0x1000
; FLATSCR-NEXT:    s_addk_i32 s2, 0x2000
; FLATSCR-NEXT:    scratch_load_dwordx2 v[8:9], off, s2 offset:720 glc
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    scratch_load_dwordx4 v[0:3], off, s2 offset:704 glc
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_movk_i32 s2, 0x2000
; FLATSCR-NEXT:    scratch_load_dwordx2 v[10:11], off, s2 offset:16 glc
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_movk_i32 s2, 0x2000
; FLATSCR-NEXT:    scratch_load_dwordx4 v[4:7], off, s2 glc
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    v_mov_b32_e32 v12, 0
; FLATSCR-NEXT:    v_add_co_u32_e32 v2, vcc, v2, v6
; FLATSCR-NEXT:    v_addc_co_u32_e32 v3, vcc, v3, v7, vcc
; FLATSCR-NEXT:    v_add_co_u32_e32 v0, vcc, v0, v4
; FLATSCR-NEXT:    v_addc_co_u32_e32 v1, vcc, v1, v5, vcc
; FLATSCR-NEXT:    v_add_co_u32_e32 v4, vcc, v8, v10
; FLATSCR-NEXT:    v_addc_co_u32_e32 v5, vcc, v9, v11, vcc
; FLATSCR-NEXT:    s_waitcnt lgkmcnt(0)
; FLATSCR-NEXT:    global_store_dwordx2 v12, v[4:5], s[0:1] offset:16
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    global_store_dwordx4 v12, v[0:3], s[0:1]
; FLATSCR-NEXT:    s_waitcnt vmcnt(0)
; FLATSCR-NEXT:    s_endpgm
entry:
  %pin.low = alloca i32, align 1024, addrspace(5)
  %local.area = alloca [160 x <3 x i64>], align 8192, addrspace(5)
  store volatile i32 0, i32 addrspace(5)* %pin.low
  %local.area.cast = bitcast [160 x <3 x i64>] addrspace(5)* %local.area to i8 addrspace(5)*
  call void @llvm.memset.p5i8.i32(i8 addrspace(5)* align 4 %local.area.cast, i8 0, i32 8480, i1 true)
  %gep.large.offset = getelementptr inbounds [160 x <3 x i64>], [160 x <3 x i64>] addrspace(5)* %local.area, i64 0, i64 150
  %gep.small.offset = getelementptr inbounds [160 x <3 x i64>], [160 x <3 x i64>] addrspace(5)* %local.area, i64 0, i64 0
  %load0 = load volatile <3 x i64>, <3 x i64> addrspace(5)* %gep.large.offset
  %load1 = load volatile <3 x i64>, <3 x i64> addrspace(5)* %gep.small.offset
  %add0 = add <3 x i64> %load0, %load1
  store volatile <3 x i64> %add0, <3 x i64> addrspace(1)* %out
  ret void
}

declare void @llvm.memset.p5i8.i32(i8 addrspace(5)* nocapture writeonly, i8, i32, i1 immarg) #0

attributes #0 = { argmemonly nounwind willreturn writeonly }
