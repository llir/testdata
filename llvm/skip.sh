#!/bin/bash

# ref: https://github.com/llir/llvm/issues/111#issuecomment-561880694

# === [ Broken as intended ] ===================================================
#
# These test cases fail because they contain invalid LLVM IR. As such, reporting
# a syntax error is the right thing to do.

# --- [ Invalid syntax ] -------------------------------------------------------

mv "llvm/test/Assembler/invalid-immarg2.ll" "llvm/test/Assembler/invalid-immarg2.ll.x"
mv "llvm/test/Assembler/invalid-immarg3.ll" "llvm/test/Assembler/invalid-immarg3.ll.x"
mv "llvm/test/Verifier/swifterror2.ll" "llvm/test/Verifier/swifterror2.ll.x"
mv "llvm/test/Verifier/swifterror3.ll" "llvm/test/Verifier/swifterror3.ll.x"
mv "llvm/test/CodeGen/AVR/progmem-extended.ll" "llvm/test/CodeGen/AVR/progmem-extended.ll.x"
mv "llvm/test/CodeGen/X86/GC/badrootproto.ll" "llvm/test/CodeGen/X86/GC/badrootproto.ll.x"
mv "llvm/test/CodeGen/X86/GC/badwriteproto.ll" "llvm/test/CodeGen/X86/GC/badwriteproto.ll.x"

# --- [ Require pre-processing ] -----------------------------------------------

mv "llvm/test/CodeGen/Hexagon/intrinsics/atomic_load.ll" "llvm/test/CodeGen/Hexagon/intrinsics/atomic_load.ll.x"
mv "llvm/test/CodeGen/Hexagon/intrinsics/atomic_store.ll" "llvm/test/CodeGen/Hexagon/intrinsics/atomic_store.ll.x"
mv "llvm/test/CodeGen/Hexagon/intrinsics/atomicrmw_addsub_native.ll" "llvm/test/CodeGen/Hexagon/intrinsics/atomicrmw_addsub_native.ll.x"
mv "llvm/test/CodeGen/Hexagon/intrinsics/atomicrmw_bitwise_native.ll" "llvm/test/CodeGen/Hexagon/intrinsics/atomicrmw_bitwise_native.ll.x"
mv "llvm/test/CodeGen/Hexagon/intrinsics/atomicrmw_nand.ll" "llvm/test/CodeGen/Hexagon/intrinsics/atomicrmw_nand.ll.x"
mv "llvm/test/CodeGen/Hexagon/intrinsics/fence.ll" "llvm/test/CodeGen/Hexagon/intrinsics/fence.ll.x"
mv "llvm/test/CodeGen/WinEH/wineh-noret-cleanup.ll" "llvm/test/CodeGen/WinEH/wineh-noret-cleanup.ll.x"
mv "llvm/test/CodeGen/WinEH/wineh-statenumbering-cleanups.ll" "llvm/test/CodeGen/WinEH/wineh-statenumbering-cleanups.ll.x"
mv "llvm/test/DebugInfo/AArch64/line-header.ll" "llvm/test/DebugInfo/AArch64/line-header.ll.x"
mv "llvm/test/Linker/link-flags.ll" "llvm/test/Linker/link-flags.ll.x"

# --- [ Old grammar compatibility test cases ] ---------------------------------
#
# Test cases for compatibility with older versions of LLVM IR. We only support
# the latest version of LLVM IR, as upgrading LLVM IR files to the latest
# grammar is better handled by the official tools of LLVM (e.g. `ll-dis foo.bc`)


mv "test/Bitcode/cmpxchg-upgrade.ll" "test/Bitcode/cmpxchg-upgrade.ll.x"
mv "test/Bitcode/compatibility-3.6.ll" "test/Bitcode/compatibility-3.6.ll.x"
mv "test/Bitcode/compatibility-3.7.ll" "test/Bitcode/compatibility-3.7.ll.x"
mv "test/Bitcode/drop-debug-info.3.5.ll" "test/Bitcode/drop-debug-info.3.5.ll.x"
mv "test/Bitcode/function-local-metadata.3.5.ll" "test/Bitcode/function-local-metadata.3.5.ll.x"
mv "test/Bitcode/highLevelStructure.3.2.ll" "test/Bitcode/highLevelStructure.3.2.ll.x"
mv "test/Bitcode/linkage-types-3.2.ll" "test/Bitcode/linkage-types-3.2.ll.x"
mv "test/Bitcode/memInstructions.3.2.ll" "test/Bitcode/memInstructions.3.2.ll.x"
mv "test/Bitcode/metadata.3.5.ll" "test/Bitcode/metadata.3.5.ll.x"
mv "test/Bitcode/miscInstructions.3.2.ll" "test/Bitcode/miscInstructions.3.2.ll.x"
mv "test/Bitcode/upgrade-loop-metadata.ll" "test/Bitcode/upgrade-loop-metadata.ll.x"
mv "test/Bitcode/upgrade-subprogram.ll" "test/Bitcode/upgrade-subprogram.ll.x"
mv "test/Verifier/2004-05-21-SwitchConstantMismatch.ll" "test/Verifier/2004-05-21-SwitchConstantMismatch.ll.x"

# --- [ Incorrect .ll extension ] ----------------------------------------------

mv "test/MC/ARM/thumb2-narrow-dp.ll" "test/MC/ARM/thumb2-narrow-dp.ll.x"
mv "test/MC/Disassembler/AMDGPU/aperture-regs.ll" "test/MC/Disassembler/AMDGPU/aperture-regs.ll.x"
mv "test/Other/lit-globbing.ll" "test/Other/lit-globbing.ll.x"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

mv "test/Assembler/2003-11-11-ImplicitRename.ll" "test/Assembler/2003-11-11-ImplicitRename.ll.x"
mv "test/Assembler/2004-03-30-UnclosedFunctionCrash.ll" "test/Assembler/2004-03-30-UnclosedFunctionCrash.ll.x"
mv "test/Assembler/2003-11-24-SymbolTableCrash.ll" "test/Assembler/2003-11-24-SymbolTableCrash.ll.x"
mv "test/Assembler/2004-11-28-InvalidTypeCrash.ll" "test/Assembler/2004-11-28-InvalidTypeCrash.ll.x"
mv "test/Assembler/2006-09-28-CrashOnInvalid.ll" "test/Assembler/2006-09-28-CrashOnInvalid.ll.x"
mv "test/Assembler/2007-01-02-Undefined-Arg-Type.ll" "test/Assembler/2007-01-02-Undefined-Arg-Type.ll.x"
mv "test/Assembler/2007-08-06-AliasInvalid.ll" "test/Assembler/2007-08-06-AliasInvalid.ll.x"
mv "test/Assembler/2007-11-26-AttributeOverload.ll" "test/Assembler/2007-11-26-AttributeOverload.ll.x"
mv "test/Assembler/2008-02-18-IntPointerCrash.ll" "test/Assembler/2008-02-18-IntPointerCrash.ll.x"
mv "test/Assembler/alias-redefinition.ll" "test/Assembler/alias-redefinition.ll.x"
mv "test/Assembler/align-inst-load.ll" "test/Assembler/align-inst-load.ll.x"
mv "test/Assembler/align-inst-store.ll" "test/Assembler/align-inst-store.ll.x"
mv "test/Assembler/alloca-addrspace-parse-error-0.ll" "test/Assembler/alloca-addrspace-parse-error-0.ll.x"
mv "test/Assembler/alloca-addrspace-parse-error-1.ll" "test/Assembler/alloca-addrspace-parse-error-1.ll.x"
mv "test/Assembler/alloca-invalid-type.ll" "test/Assembler/alloca-invalid-type.ll.x"
mv "test/Assembler/asm-path-writer.ll" "test/Assembler/asm-path-writer.ll.x"
mv "test/Assembler/call-invalid-1.ll" "test/Assembler/call-invalid-1.ll.x"
mv "test/Assembler/extractvalue-no-idx.ll" "test/Assembler/extractvalue-no-idx.ll.x"
mv "test/Assembler/getelementptr_vec_struct.ll" "test/Assembler/getelementptr_vec_struct.ll.x"
mv "test/Assembler/invalid-attrgrp.ll" "test/Assembler/invalid-attrgrp.ll.x"
mv "test/Assembler/invalid-comdat.ll" "test/Assembler/invalid-comdat.ll.x"
mv "test/Assembler/invalid-comdat2.ll" "test/Assembler/invalid-comdat2.ll.x"
mv "test/Assembler/invalid-dicompileunit-language-bad.ll" "test/Assembler/invalid-dicompileunit-language-bad.ll.x"
mv "test/Assembler/invalid-diexpression-large.ll" "test/Assembler/invalid-diexpression-large.ll.x"
mv "test/Assembler/invalid-diimportedentity-missing-tag.ll" "test/Assembler/invalid-diimportedentity-missing-tag.ll.x"
mv "test/Assembler/invalid-dilocalvariable-arg-negative.ll" "test/Assembler/invalid-dilocalvariable-arg-negative.ll.x"
mv "test/Assembler/invalid-dilocation-field-bad.ll" "test/Assembler/invalid-dilocation-field-bad.ll.x"
mv "test/Assembler/invalid-disubrange-count-large.ll" "test/Assembler/invalid-disubrange-count-large.ll.x"
mv "test/Assembler/invalid-disubrange-count-negative.ll" "test/Assembler/invalid-disubrange-count-negative.ll.x"
mv "test/Assembler/invalid-disubrange-lowerBound-max.ll" "test/Assembler/invalid-disubrange-lowerBound-max.ll.x"
mv "test/Assembler/invalid-disubrange-lowerBound-min.ll" "test/Assembler/invalid-disubrange-lowerBound-min.ll.x"
mv "test/Assembler/invalid-fp80hex.ll" "test/Assembler/invalid-fp80hex.ll.x"
mv "test/Assembler/invalid-fwdref1.ll" "test/Assembler/invalid-fwdref1.ll.x"
mv "test/Assembler/invalid-generic-debug-node-tag-bad.ll" "test/Assembler/invalid-generic-debug-node-tag-bad.ll.x"
mv "test/Assembler/invalid-generic-debug-node-tag-wrong-type.ll" "test/Assembler/invalid-generic-debug-node-tag-wrong-type.ll.x"
mv "test/Assembler/invalid-gep-missing-explicit-type.ll" "test/Assembler/invalid-gep-missing-explicit-type.ll.x"
mv "test/Assembler/invalid-inline-constraint.ll" "test/Assembler/invalid-inline-constraint.ll.x"
mv "test/Assembler/invalid-label.ll" "test/Assembler/invalid-label.ll.x"
mv "test/Assembler/invalid-landingpad.ll" "test/Assembler/invalid-landingpad.ll.x"
mv "test/Assembler/invalid-load-missing-explicit-type.ll" "test/Assembler/invalid-load-missing-explicit-type.ll.x"
mv "test/Assembler/invalid-mdnode-badref.ll" "test/Assembler/invalid-mdnode-badref.ll.x"
mv "test/Assembler/invalid-mdnode-vector.ll" "test/Assembler/invalid-mdnode-vector.ll.x"
mv "test/Assembler/invalid-mdnode-vector2.ll" "test/Assembler/invalid-mdnode-vector2.ll.x"
mv "test/Assembler/invalid-metadata-attachment-has-type.ll" "test/Assembler/invalid-metadata-attachment-has-type.ll.x"
mv "test/Assembler/invalid-metadata-function-local-attachments.ll" "test/Assembler/invalid-metadata-function-local-attachments.ll.x"
mv "test/Assembler/invalid-metadata-function-local-complex-1.ll" "test/Assembler/invalid-metadata-function-local-complex-1.ll.x"
mv "test/Assembler/invalid-metadata-function-local-complex-2.ll" "test/Assembler/invalid-metadata-function-local-complex-2.ll.x"
mv "test/Assembler/invalid-metadata-function-local-complex-3.ll" "test/Assembler/invalid-metadata-function-local-complex-3.ll.x"
mv "test/Assembler/invalid-metadata-has-type.ll" "test/Assembler/invalid-metadata-has-type.ll.x"
mv "test/Assembler/invalid-safestack-param.ll" "test/Assembler/invalid-safestack-param.ll.x"
mv "test/Assembler/invalid-safestack-return.ll" "test/Assembler/invalid-safestack-return.ll.x"
mv "test/Assembler/invalid-specialized-mdnode.ll" "test/Assembler/invalid-specialized-mdnode.ll.x"
mv "test/Assembler/invalid-untyped-metadata.ll" "test/Assembler/invalid-untyped-metadata.ll.x"
mv "test/Assembler/invalid-uselistorder-function-between-blocks.ll" "test/Assembler/invalid-uselistorder-function-between-blocks.ll.x"
mv "test/Assembler/invalid-uselistorder-function-missing-named.ll" "test/Assembler/invalid-uselistorder-function-missing-named.ll.x"
mv "test/Assembler/invalid-uselistorder-function-missing-numbered.ll" "test/Assembler/invalid-uselistorder-function-missing-numbered.ll.x"
mv "test/Assembler/invalid-uselistorder-global-missing.ll" "test/Assembler/invalid-uselistorder-global-missing.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-missing-bb.ll" "test/Assembler/invalid-uselistorder_bb-missing-bb.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-missing-body.ll" "test/Assembler/invalid-uselistorder_bb-missing-body.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-missing-func.ll" "test/Assembler/invalid-uselistorder_bb-missing-func.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-not-bb.ll" "test/Assembler/invalid-uselistorder_bb-not-bb.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-not-func.ll" "test/Assembler/invalid-uselistorder_bb-not-func.ll.x"
mv "test/Assembler/missing-tbaa.ll" "test/Assembler/missing-tbaa.ll.x"
mv "test/Assembler/thinlto-bad-summary1.ll" "test/Assembler/thinlto-bad-summary1.ll.x"
mv "test/Assembler/thinlto-bad-summary2.ll" "test/Assembler/thinlto-bad-summary2.ll.x"
mv "test/Assembler/thinlto-bad-summary3.ll" "test/Assembler/thinlto-bad-summary3.ll.x"
mv "test/Assembler/unnamed-comdat.ll" "test/Assembler/unnamed-comdat.ll.x"
mv "test/Assembler/unsized-recursive-type.ll" "test/Assembler/unsized-recursive-type.ll.x"
