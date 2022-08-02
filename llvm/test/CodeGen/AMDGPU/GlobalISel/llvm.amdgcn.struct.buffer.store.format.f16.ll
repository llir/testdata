; NOTE: Assertions have been autogenerated by utils/update_mir_test_checks.py
; RUN: llc -global-isel -mtriple=amdgcn-mesa-mesa3d -mcpu=fiji -stop-after=instruction-select -verify-machineinstrs -o - %s | FileCheck -check-prefix=UNPACKED %s
; RUN: llc -global-isel -mtriple=amdgcn-mesa-mesa3d -mcpu=gfx810 -stop-after=instruction-select -verify-machineinstrs -o - %s | FileCheck -check-prefix=PACKED %s

define amdgpu_ps void @struct_buffer_store_format_f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset(half %val, <4 x i32> inreg %rsrc, i32 %vindex, i32 %voffset, i32 inreg %soffset) {
  ; UNPACKED-LABEL: name: struct_buffer_store_format_f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset
  ; UNPACKED: bb.1 (%ir-block.0):
  ; UNPACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $sgpr5, $sgpr6, $vgpr0, $vgpr1, $vgpr2
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT:   [[COPY:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; UNPACKED-NEXT:   [[COPY1:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; UNPACKED-NEXT:   [[COPY2:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; UNPACKED-NEXT:   [[COPY3:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; UNPACKED-NEXT:   [[COPY4:%[0-9]+]]:sreg_32 = COPY $sgpr5
  ; UNPACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[COPY1]], %subreg.sub0, [[COPY2]], %subreg.sub1, [[COPY3]], %subreg.sub2, [[COPY4]], %subreg.sub3
  ; UNPACKED-NEXT:   [[COPY5:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; UNPACKED-NEXT:   [[COPY6:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; UNPACKED-NEXT:   [[COPY7:%[0-9]+]]:sreg_32 = COPY $sgpr6
  ; UNPACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY5]], %subreg.sub0, [[COPY6]], %subreg.sub1
  ; UNPACKED-NEXT:   BUFFER_STORE_FORMAT_D16_X_gfx80_BOTHEN_exact [[COPY]], [[REG_SEQUENCE1]], [[REG_SEQUENCE]], [[COPY7]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s16), align 1, addrspace 4)
  ; UNPACKED-NEXT:   S_ENDPGM 0
  ; PACKED-LABEL: name: struct_buffer_store_format_f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset
  ; PACKED: bb.1 (%ir-block.0):
  ; PACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $sgpr5, $sgpr6, $vgpr0, $vgpr1, $vgpr2
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT:   [[COPY:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; PACKED-NEXT:   [[COPY1:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; PACKED-NEXT:   [[COPY2:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; PACKED-NEXT:   [[COPY3:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; PACKED-NEXT:   [[COPY4:%[0-9]+]]:sreg_32 = COPY $sgpr5
  ; PACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[COPY1]], %subreg.sub0, [[COPY2]], %subreg.sub1, [[COPY3]], %subreg.sub2, [[COPY4]], %subreg.sub3
  ; PACKED-NEXT:   [[COPY5:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; PACKED-NEXT:   [[COPY6:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; PACKED-NEXT:   [[COPY7:%[0-9]+]]:sreg_32 = COPY $sgpr6
  ; PACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY5]], %subreg.sub0, [[COPY6]], %subreg.sub1
  ; PACKED-NEXT:   BUFFER_STORE_FORMAT_D16_X_BOTHEN_exact [[COPY]], [[REG_SEQUENCE1]], [[REG_SEQUENCE]], [[COPY7]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s16), align 1, addrspace 4)
  ; PACKED-NEXT:   S_ENDPGM 0
  call void @llvm.amdgcn.struct.buffer.store.format.f16(half %val, <4 x i32> %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
  ret void
}

define amdgpu_ps void @struct_buffer_store_format_v2f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset(<2 x half> %val, <4 x i32> inreg %rsrc, i32 %vindex, i32 %voffset, i32 inreg %soffset) {
  ; UNPACKED-LABEL: name: struct_buffer_store_format_v2f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset
  ; UNPACKED: bb.1 (%ir-block.0):
  ; UNPACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $sgpr5, $sgpr6, $vgpr0, $vgpr1, $vgpr2
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT:   [[COPY:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; UNPACKED-NEXT:   [[COPY1:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; UNPACKED-NEXT:   [[COPY2:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; UNPACKED-NEXT:   [[COPY3:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; UNPACKED-NEXT:   [[COPY4:%[0-9]+]]:sreg_32 = COPY $sgpr5
  ; UNPACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[COPY1]], %subreg.sub0, [[COPY2]], %subreg.sub1, [[COPY3]], %subreg.sub2, [[COPY4]], %subreg.sub3
  ; UNPACKED-NEXT:   [[COPY5:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; UNPACKED-NEXT:   [[COPY6:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; UNPACKED-NEXT:   [[COPY7:%[0-9]+]]:sreg_32 = COPY $sgpr6
  ; UNPACKED-NEXT:   [[S_MOV_B32_:%[0-9]+]]:sreg_32 = S_MOV_B32 16
  ; UNPACKED-NEXT:   [[COPY8:%[0-9]+]]:vgpr_32 = COPY [[S_MOV_B32_]]
  ; UNPACKED-NEXT:   [[V_LSHRREV_B32_e64_:%[0-9]+]]:vgpr_32 = V_LSHRREV_B32_e64 [[COPY8]], [[COPY]], implicit $exec
  ; UNPACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY]], %subreg.sub0, [[V_LSHRREV_B32_e64_]], %subreg.sub1
  ; UNPACKED-NEXT:   [[REG_SEQUENCE2:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY5]], %subreg.sub0, [[COPY6]], %subreg.sub1
  ; UNPACKED-NEXT:   BUFFER_STORE_FORMAT_D16_XY_gfx80_BOTHEN_exact [[REG_SEQUENCE1]], [[REG_SEQUENCE2]], [[REG_SEQUENCE]], [[COPY7]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (<2 x s16>), align 1, addrspace 4)
  ; UNPACKED-NEXT:   S_ENDPGM 0
  ; PACKED-LABEL: name: struct_buffer_store_format_v2f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset
  ; PACKED: bb.1 (%ir-block.0):
  ; PACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $sgpr5, $sgpr6, $vgpr0, $vgpr1, $vgpr2
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT:   [[COPY:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; PACKED-NEXT:   [[COPY1:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; PACKED-NEXT:   [[COPY2:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; PACKED-NEXT:   [[COPY3:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; PACKED-NEXT:   [[COPY4:%[0-9]+]]:sreg_32 = COPY $sgpr5
  ; PACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[COPY1]], %subreg.sub0, [[COPY2]], %subreg.sub1, [[COPY3]], %subreg.sub2, [[COPY4]], %subreg.sub3
  ; PACKED-NEXT:   [[COPY5:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; PACKED-NEXT:   [[COPY6:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; PACKED-NEXT:   [[COPY7:%[0-9]+]]:sreg_32 = COPY $sgpr6
  ; PACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY5]], %subreg.sub0, [[COPY6]], %subreg.sub1
  ; PACKED-NEXT:   BUFFER_STORE_FORMAT_D16_XY_BOTHEN_exact [[COPY]], [[REG_SEQUENCE1]], [[REG_SEQUENCE]], [[COPY7]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (<2 x s16>), align 1, addrspace 4)
  ; PACKED-NEXT:   S_ENDPGM 0
  call void @llvm.amdgcn.struct.buffer.store.format.v2f16(<2 x half> %val, <4 x i32> %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
  ret void
}

; FIXME:
; define amdgpu_ps void @struct_buffer_store_format_v3f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset(<3 x half> %val, <4 x i32> inreg %rsrc, i32 %vindex, i32 %voffset, i32 inreg %soffset) {
;   call void @llvm.amdgcn.struct.buffer.store.format.v3f16(<3 x half> %val, <4 x i32> %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
;   ret void
; }

define amdgpu_ps void @struct_buffer_store_format_v4f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset(<4 x half> %val, <4 x i32> inreg %rsrc, i32 %vindex, i32 %voffset, i32 inreg %soffset) {
  ; UNPACKED-LABEL: name: struct_buffer_store_format_v4f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset
  ; UNPACKED: bb.1 (%ir-block.0):
  ; UNPACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $sgpr5, $sgpr6, $vgpr0, $vgpr1, $vgpr2, $vgpr3
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT:   [[COPY:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; UNPACKED-NEXT:   [[COPY1:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; UNPACKED-NEXT:   [[COPY2:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; UNPACKED-NEXT:   [[COPY3:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; UNPACKED-NEXT:   [[COPY4:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; UNPACKED-NEXT:   [[COPY5:%[0-9]+]]:sreg_32 = COPY $sgpr5
  ; UNPACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[COPY2]], %subreg.sub0, [[COPY3]], %subreg.sub1, [[COPY4]], %subreg.sub2, [[COPY5]], %subreg.sub3
  ; UNPACKED-NEXT:   [[COPY6:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; UNPACKED-NEXT:   [[COPY7:%[0-9]+]]:vgpr_32 = COPY $vgpr3
  ; UNPACKED-NEXT:   [[COPY8:%[0-9]+]]:sreg_32 = COPY $sgpr6
  ; UNPACKED-NEXT:   [[S_MOV_B32_:%[0-9]+]]:sreg_32 = S_MOV_B32 16
  ; UNPACKED-NEXT:   [[COPY9:%[0-9]+]]:vgpr_32 = COPY [[S_MOV_B32_]]
  ; UNPACKED-NEXT:   [[V_LSHRREV_B32_e64_:%[0-9]+]]:vgpr_32 = V_LSHRREV_B32_e64 [[COPY9]], [[COPY]], implicit $exec
  ; UNPACKED-NEXT:   [[COPY10:%[0-9]+]]:vgpr_32 = COPY [[S_MOV_B32_]]
  ; UNPACKED-NEXT:   [[V_LSHRREV_B32_e64_1:%[0-9]+]]:vgpr_32 = V_LSHRREV_B32_e64 [[COPY10]], [[COPY1]], implicit $exec
  ; UNPACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:vreg_128 = REG_SEQUENCE [[COPY]], %subreg.sub0, [[V_LSHRREV_B32_e64_]], %subreg.sub1, [[COPY1]], %subreg.sub2, [[V_LSHRREV_B32_e64_1]], %subreg.sub3
  ; UNPACKED-NEXT:   [[REG_SEQUENCE2:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY6]], %subreg.sub0, [[COPY7]], %subreg.sub1
  ; UNPACKED-NEXT:   BUFFER_STORE_FORMAT_D16_XYZW_gfx80_BOTHEN_exact [[REG_SEQUENCE1]], [[REG_SEQUENCE2]], [[REG_SEQUENCE]], [[COPY8]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (<4 x s16>), align 1, addrspace 4)
  ; UNPACKED-NEXT:   S_ENDPGM 0
  ; PACKED-LABEL: name: struct_buffer_store_format_v4f16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset
  ; PACKED: bb.1 (%ir-block.0):
  ; PACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $sgpr5, $sgpr6, $vgpr0, $vgpr1, $vgpr2, $vgpr3
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT:   [[COPY:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; PACKED-NEXT:   [[COPY1:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; PACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY]], %subreg.sub0, [[COPY1]], %subreg.sub1
  ; PACKED-NEXT:   [[COPY2:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; PACKED-NEXT:   [[COPY3:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; PACKED-NEXT:   [[COPY4:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; PACKED-NEXT:   [[COPY5:%[0-9]+]]:sreg_32 = COPY $sgpr5
  ; PACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[COPY2]], %subreg.sub0, [[COPY3]], %subreg.sub1, [[COPY4]], %subreg.sub2, [[COPY5]], %subreg.sub3
  ; PACKED-NEXT:   [[COPY6:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; PACKED-NEXT:   [[COPY7:%[0-9]+]]:vgpr_32 = COPY $vgpr3
  ; PACKED-NEXT:   [[COPY8:%[0-9]+]]:sreg_32 = COPY $sgpr6
  ; PACKED-NEXT:   [[REG_SEQUENCE2:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY6]], %subreg.sub0, [[COPY7]], %subreg.sub1
  ; PACKED-NEXT:   BUFFER_STORE_FORMAT_D16_XYZW_BOTHEN_exact [[REG_SEQUENCE]], [[REG_SEQUENCE2]], [[REG_SEQUENCE1]], [[COPY8]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (<4 x s16>), align 1, addrspace 4)
  ; PACKED-NEXT:   S_ENDPGM 0
  call void @llvm.amdgcn.struct.buffer.store.format.v4f16(<4 x half> %val, <4 x i32> %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
  ret void
}

define amdgpu_ps void @struct_buffer_store_format_f16__sgpr_val__vgpr_rsrc__sgpr_vindex__sgpr_voffset__vgpr_soffset(half inreg %val, <4 x i32> %rsrc, i32 inreg %vindex, i32 inreg %voffset, i32 %soffset) {
  ; UNPACKED-LABEL: name: struct_buffer_store_format_f16__sgpr_val__vgpr_rsrc__sgpr_vindex__sgpr_voffset__vgpr_soffset
  ; UNPACKED: bb.1 (%ir-block.0):
  ; UNPACKED-NEXT:   successors: %bb.2(0x80000000)
  ; UNPACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $vgpr0, $vgpr1, $vgpr2, $vgpr3, $vgpr4
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT:   [[COPY:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; UNPACKED-NEXT:   [[COPY1:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; UNPACKED-NEXT:   [[COPY2:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; UNPACKED-NEXT:   [[COPY3:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; UNPACKED-NEXT:   [[COPY4:%[0-9]+]]:vgpr_32 = COPY $vgpr3
  ; UNPACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:vreg_128 = REG_SEQUENCE [[COPY1]], %subreg.sub0, [[COPY2]], %subreg.sub1, [[COPY3]], %subreg.sub2, [[COPY4]], %subreg.sub3
  ; UNPACKED-NEXT:   [[COPY5:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; UNPACKED-NEXT:   [[COPY6:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; UNPACKED-NEXT:   [[COPY7:%[0-9]+]]:vgpr_32 = COPY $vgpr4
  ; UNPACKED-NEXT:   [[COPY8:%[0-9]+]]:vgpr_32 = COPY [[COPY]]
  ; UNPACKED-NEXT:   [[COPY9:%[0-9]+]]:vgpr_32 = COPY [[COPY5]]
  ; UNPACKED-NEXT:   [[COPY10:%[0-9]+]]:vgpr_32 = COPY [[COPY6]]
  ; UNPACKED-NEXT:   [[S_MOV_B64_:%[0-9]+]]:sreg_64_xexec = S_MOV_B64 $exec
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT: bb.2:
  ; UNPACKED-NEXT:   successors: %bb.3(0x80000000)
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT:   [[COPY11:%[0-9]+]]:vgpr_32 = COPY [[REG_SEQUENCE]].sub0
  ; UNPACKED-NEXT:   [[COPY12:%[0-9]+]]:vgpr_32 = COPY [[REG_SEQUENCE]].sub1
  ; UNPACKED-NEXT:   [[COPY13:%[0-9]+]]:vgpr_32 = COPY [[REG_SEQUENCE]].sub2
  ; UNPACKED-NEXT:   [[COPY14:%[0-9]+]]:vgpr_32 = COPY [[REG_SEQUENCE]].sub3
  ; UNPACKED-NEXT:   [[V_READFIRSTLANE_B32_:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY11]], implicit $exec
  ; UNPACKED-NEXT:   [[V_READFIRSTLANE_B32_1:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY12]], implicit $exec
  ; UNPACKED-NEXT:   [[V_READFIRSTLANE_B32_2:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY13]], implicit $exec
  ; UNPACKED-NEXT:   [[V_READFIRSTLANE_B32_3:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY14]], implicit $exec
  ; UNPACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[V_READFIRSTLANE_B32_]], %subreg.sub0, [[V_READFIRSTLANE_B32_1]], %subreg.sub1, [[V_READFIRSTLANE_B32_2]], %subreg.sub2, [[V_READFIRSTLANE_B32_3]], %subreg.sub3
  ; UNPACKED-NEXT:   [[COPY15:%[0-9]+]]:vreg_64 = COPY [[REG_SEQUENCE]].sub0_sub1
  ; UNPACKED-NEXT:   [[COPY16:%[0-9]+]]:vreg_64 = COPY [[REG_SEQUENCE]].sub2_sub3
  ; UNPACKED-NEXT:   [[COPY17:%[0-9]+]]:sreg_64 = COPY [[REG_SEQUENCE1]].sub0_sub1
  ; UNPACKED-NEXT:   [[COPY18:%[0-9]+]]:sreg_64 = COPY [[REG_SEQUENCE1]].sub2_sub3
  ; UNPACKED-NEXT:   [[V_CMP_EQ_U64_e64_:%[0-9]+]]:sreg_64_xexec = V_CMP_EQ_U64_e64 [[COPY17]], [[COPY15]], implicit $exec
  ; UNPACKED-NEXT:   [[V_CMP_EQ_U64_e64_1:%[0-9]+]]:sreg_64_xexec = V_CMP_EQ_U64_e64 [[COPY18]], [[COPY16]], implicit $exec
  ; UNPACKED-NEXT:   [[S_AND_B64_:%[0-9]+]]:sreg_64_xexec = S_AND_B64 [[V_CMP_EQ_U64_e64_]], [[V_CMP_EQ_U64_e64_1]], implicit-def dead $scc
  ; UNPACKED-NEXT:   [[V_READFIRSTLANE_B32_4:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY7]], implicit $exec
  ; UNPACKED-NEXT:   [[V_CMP_EQ_U32_e64_:%[0-9]+]]:sreg_64_xexec = V_CMP_EQ_U32_e64 [[V_READFIRSTLANE_B32_4]], [[COPY7]], implicit $exec
  ; UNPACKED-NEXT:   [[S_AND_B64_1:%[0-9]+]]:sreg_64_xexec = S_AND_B64 [[S_AND_B64_]], [[V_CMP_EQ_U32_e64_]], implicit-def dead $scc
  ; UNPACKED-NEXT:   [[S_AND_SAVEEXEC_B64_:%[0-9]+]]:sreg_64_xexec = S_AND_SAVEEXEC_B64 killed [[S_AND_B64_1]], implicit-def $exec, implicit-def $scc, implicit $exec
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT: bb.3:
  ; UNPACKED-NEXT:   successors: %bb.4(0x40000000), %bb.2(0x40000000)
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT:   [[REG_SEQUENCE2:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY9]], %subreg.sub0, [[COPY10]], %subreg.sub1
  ; UNPACKED-NEXT:   BUFFER_STORE_FORMAT_D16_X_gfx80_BOTHEN_exact [[COPY8]], [[REG_SEQUENCE2]], [[REG_SEQUENCE1]], [[V_READFIRSTLANE_B32_4]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s16), align 1, addrspace 4)
  ; UNPACKED-NEXT:   $exec = S_XOR_B64_term $exec, [[S_AND_SAVEEXEC_B64_]], implicit-def $scc
  ; UNPACKED-NEXT:   SI_WATERFALL_LOOP %bb.2, implicit $exec
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT: bb.4:
  ; UNPACKED-NEXT:   successors: %bb.5(0x80000000)
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT:   $exec = S_MOV_B64_term [[S_MOV_B64_]]
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT: bb.5:
  ; UNPACKED-NEXT:   S_ENDPGM 0
  ; PACKED-LABEL: name: struct_buffer_store_format_f16__sgpr_val__vgpr_rsrc__sgpr_vindex__sgpr_voffset__vgpr_soffset
  ; PACKED: bb.1 (%ir-block.0):
  ; PACKED-NEXT:   successors: %bb.2(0x80000000)
  ; PACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $vgpr0, $vgpr1, $vgpr2, $vgpr3, $vgpr4
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT:   [[COPY:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; PACKED-NEXT:   [[COPY1:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; PACKED-NEXT:   [[COPY2:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; PACKED-NEXT:   [[COPY3:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; PACKED-NEXT:   [[COPY4:%[0-9]+]]:vgpr_32 = COPY $vgpr3
  ; PACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:vreg_128 = REG_SEQUENCE [[COPY1]], %subreg.sub0, [[COPY2]], %subreg.sub1, [[COPY3]], %subreg.sub2, [[COPY4]], %subreg.sub3
  ; PACKED-NEXT:   [[COPY5:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; PACKED-NEXT:   [[COPY6:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; PACKED-NEXT:   [[COPY7:%[0-9]+]]:vgpr_32 = COPY $vgpr4
  ; PACKED-NEXT:   [[COPY8:%[0-9]+]]:vgpr_32 = COPY [[COPY]]
  ; PACKED-NEXT:   [[COPY9:%[0-9]+]]:vgpr_32 = COPY [[COPY5]]
  ; PACKED-NEXT:   [[COPY10:%[0-9]+]]:vgpr_32 = COPY [[COPY6]]
  ; PACKED-NEXT:   [[S_MOV_B64_:%[0-9]+]]:sreg_64_xexec = S_MOV_B64 $exec
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT: bb.2:
  ; PACKED-NEXT:   successors: %bb.3(0x80000000)
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT:   [[COPY11:%[0-9]+]]:vgpr_32 = COPY [[REG_SEQUENCE]].sub0
  ; PACKED-NEXT:   [[COPY12:%[0-9]+]]:vgpr_32 = COPY [[REG_SEQUENCE]].sub1
  ; PACKED-NEXT:   [[COPY13:%[0-9]+]]:vgpr_32 = COPY [[REG_SEQUENCE]].sub2
  ; PACKED-NEXT:   [[COPY14:%[0-9]+]]:vgpr_32 = COPY [[REG_SEQUENCE]].sub3
  ; PACKED-NEXT:   [[V_READFIRSTLANE_B32_:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY11]], implicit $exec
  ; PACKED-NEXT:   [[V_READFIRSTLANE_B32_1:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY12]], implicit $exec
  ; PACKED-NEXT:   [[V_READFIRSTLANE_B32_2:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY13]], implicit $exec
  ; PACKED-NEXT:   [[V_READFIRSTLANE_B32_3:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY14]], implicit $exec
  ; PACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[V_READFIRSTLANE_B32_]], %subreg.sub0, [[V_READFIRSTLANE_B32_1]], %subreg.sub1, [[V_READFIRSTLANE_B32_2]], %subreg.sub2, [[V_READFIRSTLANE_B32_3]], %subreg.sub3
  ; PACKED-NEXT:   [[COPY15:%[0-9]+]]:vreg_64 = COPY [[REG_SEQUENCE]].sub0_sub1
  ; PACKED-NEXT:   [[COPY16:%[0-9]+]]:vreg_64 = COPY [[REG_SEQUENCE]].sub2_sub3
  ; PACKED-NEXT:   [[COPY17:%[0-9]+]]:sreg_64 = COPY [[REG_SEQUENCE1]].sub0_sub1
  ; PACKED-NEXT:   [[COPY18:%[0-9]+]]:sreg_64 = COPY [[REG_SEQUENCE1]].sub2_sub3
  ; PACKED-NEXT:   [[V_CMP_EQ_U64_e64_:%[0-9]+]]:sreg_64_xexec = V_CMP_EQ_U64_e64 [[COPY17]], [[COPY15]], implicit $exec
  ; PACKED-NEXT:   [[V_CMP_EQ_U64_e64_1:%[0-9]+]]:sreg_64_xexec = V_CMP_EQ_U64_e64 [[COPY18]], [[COPY16]], implicit $exec
  ; PACKED-NEXT:   [[S_AND_B64_:%[0-9]+]]:sreg_64_xexec = S_AND_B64 [[V_CMP_EQ_U64_e64_]], [[V_CMP_EQ_U64_e64_1]], implicit-def dead $scc
  ; PACKED-NEXT:   [[V_READFIRSTLANE_B32_4:%[0-9]+]]:sreg_32 = V_READFIRSTLANE_B32 [[COPY7]], implicit $exec
  ; PACKED-NEXT:   [[V_CMP_EQ_U32_e64_:%[0-9]+]]:sreg_64_xexec = V_CMP_EQ_U32_e64 [[V_READFIRSTLANE_B32_4]], [[COPY7]], implicit $exec
  ; PACKED-NEXT:   [[S_AND_B64_1:%[0-9]+]]:sreg_64_xexec = S_AND_B64 [[S_AND_B64_]], [[V_CMP_EQ_U32_e64_]], implicit-def dead $scc
  ; PACKED-NEXT:   [[S_AND_SAVEEXEC_B64_:%[0-9]+]]:sreg_64_xexec = S_AND_SAVEEXEC_B64 killed [[S_AND_B64_1]], implicit-def $exec, implicit-def $scc, implicit $exec
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT: bb.3:
  ; PACKED-NEXT:   successors: %bb.4(0x40000000), %bb.2(0x40000000)
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT:   [[REG_SEQUENCE2:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY9]], %subreg.sub0, [[COPY10]], %subreg.sub1
  ; PACKED-NEXT:   BUFFER_STORE_FORMAT_D16_X_BOTHEN_exact [[COPY8]], [[REG_SEQUENCE2]], [[REG_SEQUENCE1]], [[V_READFIRSTLANE_B32_4]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s16), align 1, addrspace 4)
  ; PACKED-NEXT:   $exec = S_XOR_B64_term $exec, [[S_AND_SAVEEXEC_B64_]], implicit-def $scc
  ; PACKED-NEXT:   SI_WATERFALL_LOOP %bb.2, implicit $exec
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT: bb.4:
  ; PACKED-NEXT:   successors: %bb.5(0x80000000)
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT:   $exec = S_MOV_B64_term [[S_MOV_B64_]]
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT: bb.5:
  ; PACKED-NEXT:   S_ENDPGM 0
  call void @llvm.amdgcn.struct.buffer.store.format.f16(half %val, <4 x i32> %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
  ret void
}

define amdgpu_ps void @struct_buffer_store_format_i16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset(i16 %val, <4 x i32> inreg %rsrc, i32 %vindex, i32 %voffset, i32 inreg %soffset) {
  ; UNPACKED-LABEL: name: struct_buffer_store_format_i16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset
  ; UNPACKED: bb.1 (%ir-block.0):
  ; UNPACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $sgpr5, $sgpr6, $vgpr0, $vgpr1, $vgpr2
  ; UNPACKED-NEXT: {{  $}}
  ; UNPACKED-NEXT:   [[COPY:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; UNPACKED-NEXT:   [[COPY1:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; UNPACKED-NEXT:   [[COPY2:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; UNPACKED-NEXT:   [[COPY3:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; UNPACKED-NEXT:   [[COPY4:%[0-9]+]]:sreg_32 = COPY $sgpr5
  ; UNPACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[COPY1]], %subreg.sub0, [[COPY2]], %subreg.sub1, [[COPY3]], %subreg.sub2, [[COPY4]], %subreg.sub3
  ; UNPACKED-NEXT:   [[COPY5:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; UNPACKED-NEXT:   [[COPY6:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; UNPACKED-NEXT:   [[COPY7:%[0-9]+]]:sreg_32 = COPY $sgpr6
  ; UNPACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY5]], %subreg.sub0, [[COPY6]], %subreg.sub1
  ; UNPACKED-NEXT:   BUFFER_STORE_FORMAT_D16_X_gfx80_BOTHEN_exact [[COPY]], [[REG_SEQUENCE1]], [[REG_SEQUENCE]], [[COPY7]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s16), align 1, addrspace 4)
  ; UNPACKED-NEXT:   S_ENDPGM 0
  ; PACKED-LABEL: name: struct_buffer_store_format_i16__vgpr_val__sgpr_rsrc__vgpr_vindex__vgpr_voffset__sgpr_soffset
  ; PACKED: bb.1 (%ir-block.0):
  ; PACKED-NEXT:   liveins: $sgpr2, $sgpr3, $sgpr4, $sgpr5, $sgpr6, $vgpr0, $vgpr1, $vgpr2
  ; PACKED-NEXT: {{  $}}
  ; PACKED-NEXT:   [[COPY:%[0-9]+]]:vgpr_32 = COPY $vgpr0
  ; PACKED-NEXT:   [[COPY1:%[0-9]+]]:sreg_32 = COPY $sgpr2
  ; PACKED-NEXT:   [[COPY2:%[0-9]+]]:sreg_32 = COPY $sgpr3
  ; PACKED-NEXT:   [[COPY3:%[0-9]+]]:sreg_32 = COPY $sgpr4
  ; PACKED-NEXT:   [[COPY4:%[0-9]+]]:sreg_32 = COPY $sgpr5
  ; PACKED-NEXT:   [[REG_SEQUENCE:%[0-9]+]]:sgpr_128 = REG_SEQUENCE [[COPY1]], %subreg.sub0, [[COPY2]], %subreg.sub1, [[COPY3]], %subreg.sub2, [[COPY4]], %subreg.sub3
  ; PACKED-NEXT:   [[COPY5:%[0-9]+]]:vgpr_32 = COPY $vgpr1
  ; PACKED-NEXT:   [[COPY6:%[0-9]+]]:vgpr_32 = COPY $vgpr2
  ; PACKED-NEXT:   [[COPY7:%[0-9]+]]:sreg_32 = COPY $sgpr6
  ; PACKED-NEXT:   [[REG_SEQUENCE1:%[0-9]+]]:vreg_64 = REG_SEQUENCE [[COPY5]], %subreg.sub0, [[COPY6]], %subreg.sub1
  ; PACKED-NEXT:   BUFFER_STORE_FORMAT_D16_X_BOTHEN_exact [[COPY]], [[REG_SEQUENCE1]], [[REG_SEQUENCE]], [[COPY7]], 0, 0, 0, 0, implicit $exec :: (dereferenceable store (s16), align 1, addrspace 4)
  ; PACKED-NEXT:   S_ENDPGM 0
  call void @llvm.amdgcn.struct.buffer.store.format.i16(i16 %val, <4 x i32> %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.f16(half, <4 x i32>, i32, i32, i32, i32 immarg)
declare void @llvm.amdgcn.struct.buffer.store.format.v2f16(<2 x half>, <4 x i32>, i32, i32, i32, i32 immarg)
declare void @llvm.amdgcn.struct.buffer.store.format.v3f16(<3 x half>, <4 x i32>, i32, i32, i32, i32 immarg)
declare void @llvm.amdgcn.struct.buffer.store.format.v4f16(<4 x half>, <4 x i32>, i32, i32, i32, i32 immarg)
declare void @llvm.amdgcn.struct.buffer.store.format.i16(i16, <4 x i32>, i32, i32, i32, i32 immarg)
