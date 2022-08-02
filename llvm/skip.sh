#!/bin/bash

# ref: https://github.com/llir/llvm/issues/111#issuecomment-561880694

# === [ Broken as intended ] ===================================================
#
# These test cases fail because they contain invalid LLVM IR. As such, reporting
# a syntax error is the right thing to do.

# --- [ Invalid syntax ] -------------------------------------------------------

mv "test/Assembler/invalid-immarg2.ll" "test/Assembler/invalid-immarg2.ll.x"
mv "test/Assembler/invalid-immarg3.ll" "test/Assembler/invalid-immarg3.ll.x"
mv "test/CodeGen/AVR/progmem-extended.ll" "test/CodeGen/AVR/progmem-extended.ll.x"
mv "test/CodeGen/X86/GC/badrootproto.ll" "test/CodeGen/X86/GC/badrootproto.ll.x"
mv "test/CodeGen/X86/GC/badwriteproto.ll" "test/CodeGen/X86/GC/badwriteproto.ll.x"
mv "test/Verifier/swifterror2.ll" "test/Verifier/swifterror2.ll.x"
mv "test/Verifier/swifterror3.ll" "test/Verifier/swifterror3.ll.x"
mv "test/Verifier/dbg-difile-crash.ll" "test/Verifier/dbg-difile-crash.ll.x"
mv "test/Verifier/dbg-invalid-retaintypes.ll" "test/Verifier/dbg-invalid-retaintypes.ll.x"
mv "test/Bitcode/weak-cmpxchg-upgrade.ll" "test/Bitcode/weak-cmpxchg-upgrade.ll.x"
mv "test/CodeGen/WebAssembly/inline-asm-m.ll" "test/CodeGen/WebAssembly/inline-asm-m.ll.x"

# --- [ Require pre-processing ] -----------------------------------------------

mv "test/CodeGen/Hexagon/intrinsics/atomic_load.ll" "test/CodeGen/Hexagon/intrinsics/atomic_load.ll.x"
mv "test/CodeGen/Hexagon/intrinsics/atomic_store.ll" "test/CodeGen/Hexagon/intrinsics/atomic_store.ll.x"
mv "test/CodeGen/Hexagon/intrinsics/atomicrmw_addsub_native.ll" "test/CodeGen/Hexagon/intrinsics/atomicrmw_addsub_native.ll.x"
mv "test/CodeGen/Hexagon/intrinsics/atomicrmw_bitwise_native.ll" "test/CodeGen/Hexagon/intrinsics/atomicrmw_bitwise_native.ll.x"
mv "test/CodeGen/Hexagon/intrinsics/atomicrmw_nand.ll" "test/CodeGen/Hexagon/intrinsics/atomicrmw_nand.ll.x"
mv "test/CodeGen/Hexagon/intrinsics/fence.ll" "test/CodeGen/Hexagon/intrinsics/fence.ll.x"
mv "test/CodeGen/WinEH/wineh-noret-cleanup.ll" "test/CodeGen/WinEH/wineh-noret-cleanup.ll.x"
mv "test/CodeGen/WinEH/wineh-statenumbering-cleanups.ll" "test/CodeGen/WinEH/wineh-statenumbering-cleanups.ll.x"
mv "test/DebugInfo/AArch64/line-header.ll" "test/DebugInfo/AArch64/line-header.ll.x"
mv "test/Linker/link-flags.ll" "test/Linker/link-flags.ll.x"
mv "test/Transforms/GCOVProfiling/function-numbering.ll" "test/Transforms/GCOVProfiling/function-numbering.ll.x"
mv "test/Transforms/GCOVProfiling/global-ctor.ll" "test/Transforms/GCOVProfiling/global-ctor.ll.x"
mv "test/Transforms/GCOVProfiling/linkagename.ll" "test/Transforms/GCOVProfiling/linkagename.ll.x"
mv "test/Transforms/GCOVProfiling/three-element-mdnode.ll" "test/Transforms/GCOVProfiling/three-element-mdnode.ll.x"
mv "test/CodeGen/NVPTX/nvvm-reflect.ll" "test/CodeGen/NVPTX/nvvm-reflect.ll.x"

# --- [ Type error ] -----------------------------------------------------------

mv "test/Assembler/ifunc-asm.ll" "test/Assembler/ifunc-asm.ll.x"

# --- [ Old grammar compatibility test cases ] ---------------------------------
#
# Test cases for compatibility with older versions of LLVM IR. We only support
# the latest version of LLVM IR, as upgrading LLVM IR files to the latest
# grammar is better handled by the official tools of LLVM (e.g. `ll-dis foo.bc`)

mv "test/Bitcode/DIExpression-4.0.ll" "test/Bitcode/DIExpression-4.0.ll.x"
mv "test/Bitcode/DIGlobalVariableExpression.ll" "test/Bitcode/DIGlobalVariableExpression.ll.x"
mv "test/Bitcode/DIGlobalVariableExpression2.ll" "test/Bitcode/DIGlobalVariableExpression2.ll.x"
mv "test/Bitcode/DILocalVariable-explicit-tags.ll" "test/Bitcode/DILocalVariable-explicit-tags.ll.x"
mv "test/Bitcode/DISubprogram-distinct-definitions.ll" "test/Bitcode/DISubprogram-distinct-definitions.ll.x"
mv "test/Bitcode/DISubprogram-v5.ll" "test/Bitcode/DISubprogram-v5.ll.x"
mv "test/Bitcode/cmpxchg-upgrade.ll" "test/Bitcode/cmpxchg-upgrade.ll.x"
mv "test/Bitcode/compatibility-3.6.ll" "test/Bitcode/compatibility-3.6.ll.x"
mv "test/Bitcode/compatibility-3.7.ll" "test/Bitcode/compatibility-3.7.ll.x"
mv "test/Bitcode/diglobalvariable-3.8.ll" "test/Bitcode/diglobalvariable-3.8.ll.x"
mv "test/Bitcode/dityperefs-3.8.ll" "test/Bitcode/dityperefs-3.8.ll.x"
mv "test/Bitcode/drop-debug-info.3.5.ll" "test/Bitcode/drop-debug-info.3.5.ll.x"
mv "test/Bitcode/function-local-metadata.3.5.ll" "test/Bitcode/function-local-metadata.3.5.ll.x"
mv "test/Bitcode/highLevelStructure.3.2.ll" "test/Bitcode/highLevelStructure.3.2.ll.x"
mv "test/Bitcode/linkage-types-3.2.ll" "test/Bitcode/linkage-types-3.2.ll.x"
mv "test/Bitcode/local-linkage-default-visibility.3.4.ll" "test/Bitcode/local-linkage-default-visibility.3.4.ll.x"
mv "test/Bitcode/memInstructions.3.2.ll" "test/Bitcode/memInstructions.3.2.ll.x"
mv "test/Bitcode/metadata.3.5.ll" "test/Bitcode/metadata.3.5.ll.x"
mv "test/Bitcode/miscInstructions.3.2.ll" "test/Bitcode/miscInstructions.3.2.ll.x"
mv "test/Bitcode/upgrade-dbg-checksum.ll" "test/Bitcode/upgrade-dbg-checksum.ll.x"
mv "test/Bitcode/upgrade-loop-metadata.ll" "test/Bitcode/upgrade-loop-metadata.ll.x"
mv "test/Bitcode/upgrade-subprogram.ll" "test/Bitcode/upgrade-subprogram.ll.x"
mv "test/CodeGen/ARM/2009-10-16-Scope.ll" "test/CodeGen/ARM/2009-10-16-Scope.ll.x"
mv "test/CodeGen/X86/2009-02-12-DebugInfoVLA.ll" "test/CodeGen/X86/2009-02-12-DebugInfoVLA.ll.x"
mv "test/CodeGen/X86/2009-10-16-Scope.ll" "test/CodeGen/X86/2009-10-16-Scope.ll.x"
mv "test/CodeGen/X86/2010-02-01-DbgValueCrash.ll" "test/CodeGen/X86/2010-02-01-DbgValueCrash.ll.x"
mv "test/DebugInfo/Generic/inheritance.ll" "test/DebugInfo/Generic/inheritance.ll.x"
mv "test/Linker/debug-info-version-b.ll" "test/Linker/debug-info-version-b.ll.x"
mv "test/Verifier/DILocation-parents.ll" "test/Verifier/DILocation-parents.ll.x"
mv "test/Verifier/dbg.ll" "test/Verifier/dbg.ll.x"

# --- [ Incorrect .ll extension ] ----------------------------------------------

mv "test/MC/ARM/thumb2-narrow-dp.ll" "test/MC/ARM/thumb2-narrow-dp.ll.x"
mv "test/MC/Disassembler/AMDGPU/aperture-regs.ll" "test/MC/Disassembler/AMDGPU/aperture-regs.ll.x"
mv "test/Other/lit-globbing.ll" "test/Other/lit-globbing.ll.x"

# --- [ invalid LLVM IR ] ------------------------------------------------------

# Located by running `sift -x ll -l "RUN: not llvm-as" test/`

mv "test/Assembler/2003-04-15-ConstantInitAssertion.ll" "test/Assembler/2003-04-15-ConstantInitAssertion.ll.x"
mv "test/Assembler/2003-05-21-MalformedShiftCrash.ll" "test/Assembler/2003-05-21-MalformedShiftCrash.ll.x"
mv "test/Assembler/2003-05-21-MalformedStructCrash.ll" "test/Assembler/2003-05-21-MalformedStructCrash.ll.x"
mv "test/Assembler/2003-11-24-SymbolTableCrash.ll" "test/Assembler/2003-11-24-SymbolTableCrash.ll.x"
mv "test/Assembler/2004-03-30-UnclosedFunctionCrash.ll" "test/Assembler/2004-03-30-UnclosedFunctionCrash.ll.x"
mv "test/Assembler/2004-11-28-InvalidTypeCrash.ll" "test/Assembler/2004-11-28-InvalidTypeCrash.ll.x"
mv "test/Assembler/2006-09-28-CrashOnInvalid.ll" "test/Assembler/2006-09-28-CrashOnInvalid.ll.x"
mv "test/Assembler/2007-01-02-Undefined-Arg-Type.ll" "test/Assembler/2007-01-02-Undefined-Arg-Type.ll.x"
mv "test/Assembler/2007-01-16-CrashOnBadCast.ll" "test/Assembler/2007-01-16-CrashOnBadCast.ll.x"
mv "test/Assembler/2007-01-16-CrashOnBadCast2.ll" "test/Assembler/2007-01-16-CrashOnBadCast2.ll.x"
mv "test/Assembler/2007-03-18-InvalidNumberedVar.ll" "test/Assembler/2007-03-18-InvalidNumberedVar.ll.x"
mv "test/Assembler/2007-08-06-AliasInvalid.ll" "test/Assembler/2007-08-06-AliasInvalid.ll.x"
mv "test/Assembler/2007-11-26-AttributeOverload.ll" "test/Assembler/2007-11-26-AttributeOverload.ll.x"
mv "test/Assembler/2008-02-18-IntPointerCrash.ll" "test/Assembler/2008-02-18-IntPointerCrash.ll.x"
mv "test/Assembler/2008-09-02-FunctionNotes2.ll" "test/Assembler/2008-09-02-FunctionNotes2.ll.x"
mv "test/Assembler/alias-redefinition.ll" "test/Assembler/alias-redefinition.ll.x"
mv "test/Assembler/align-inst-alloca.ll" "test/Assembler/align-inst-alloca.ll.x"
mv "test/Assembler/align-inst-load.ll" "test/Assembler/align-inst-load.ll.x"
mv "test/Assembler/align-inst-store.ll" "test/Assembler/align-inst-store.ll.x"
mv "test/Assembler/alloca-addrspace-parse-error-0.ll" "test/Assembler/alloca-addrspace-parse-error-0.ll.x"
mv "test/Assembler/alloca-addrspace-parse-error-1.ll" "test/Assembler/alloca-addrspace-parse-error-1.ll.x"
mv "test/Assembler/alloca-invalid-type-2.ll" "test/Assembler/alloca-invalid-type-2.ll.x"
mv "test/Assembler/alloca-invalid-type.ll" "test/Assembler/alloca-invalid-type.ll.x"
mv "test/Assembler/attribute-builtin.ll" "test/Assembler/attribute-builtin.ll.x"
mv "test/Assembler/autoupgrade-invalid-mem-intrinsics.ll" "test/Assembler/autoupgrade-invalid-mem-intrinsics.ll.x"
mv "test/Assembler/call-invalid-1.ll" "test/Assembler/call-invalid-1.ll.x"
mv "test/Assembler/call-nonzero-program-addrspace-2.ll" "test/Assembler/call-nonzero-program-addrspace-2.ll.x"
mv "test/Assembler/call-nonzero-program-addrspace.ll" "test/Assembler/call-nonzero-program-addrspace.ll.x"
mv "test/Assembler/dllimport-dsolocal-diag.ll" "test/Assembler/dllimport-dsolocal-diag.ll.x"
mv "test/Assembler/extractvalue-invalid-idx.ll" "test/Assembler/extractvalue-invalid-idx.ll.x"
mv "test/Assembler/extractvalue-no-idx.ll" "test/Assembler/extractvalue-no-idx.ll.x"
mv "test/Assembler/getelementptr_invalid_ptr.ll" "test/Assembler/getelementptr_invalid_ptr.ll.x"
mv "test/Assembler/getelementptr_struct.ll" "test/Assembler/getelementptr_struct.ll.x"
mv "test/Assembler/getelementptr_vec_ce2.ll" "test/Assembler/getelementptr_vec_ce2.ll.x"
mv "test/Assembler/getelementptr_vec_idx1.ll" "test/Assembler/getelementptr_vec_idx1.ll.x"
mv "test/Assembler/getelementptr_vec_idx2.ll" "test/Assembler/getelementptr_vec_idx2.ll.x"
mv "test/Assembler/getelementptr_vec_idx3.ll" "test/Assembler/getelementptr_vec_idx3.ll.x"
mv "test/Assembler/getelementptr_vec_idx4.ll" "test/Assembler/getelementptr_vec_idx4.ll.x"
mv "test/Assembler/getelementptr_vec_struct.ll" "test/Assembler/getelementptr_vec_struct.ll.x"
mv "test/Assembler/gv-invalid-type.ll" "test/Assembler/gv-invalid-type.ll.x"
mv "test/Assembler/insertvalue-invalid-idx.ll" "test/Assembler/insertvalue-invalid-idx.ll.x"
mv "test/Assembler/insertvalue-invalid-type.ll" "test/Assembler/insertvalue-invalid-type.ll.x"
mv "test/Assembler/internal-hidden-alias.ll" "test/Assembler/internal-hidden-alias.ll.x"
mv "test/Assembler/internal-hidden-function.ll" "test/Assembler/internal-hidden-function.ll.x"
mv "test/Assembler/internal-hidden-variable.ll" "test/Assembler/internal-hidden-variable.ll.x"
mv "test/Assembler/internal-protected-alias.ll" "test/Assembler/internal-protected-alias.ll.x"
mv "test/Assembler/internal-protected-function.ll" "test/Assembler/internal-protected-function.ll.x"
mv "test/Assembler/internal-protected-variable.ll" "test/Assembler/internal-protected-variable.ll.x"
mv "test/Assembler/invalid-alias-mismatched-explicit-type.ll" "test/Assembler/invalid-alias-mismatched-explicit-type.ll.x"
mv "test/Assembler/invalid-atomicrmw-add-must-be-integer-type.ll" "test/Assembler/invalid-atomicrmw-add-must-be-integer-type.ll.x"
mv "test/Assembler/invalid-atomicrmw-fadd-must-be-fp-type.ll" "test/Assembler/invalid-atomicrmw-fadd-must-be-fp-type.ll.x"
mv "test/Assembler/invalid-atomicrmw-fsub-must-be-fp-type.ll" "test/Assembler/invalid-atomicrmw-fsub-must-be-fp-type.ll.x"
mv "test/Assembler/invalid-attrgrp.ll" "test/Assembler/invalid-attrgrp.ll.x"
mv "test/Assembler/invalid-block-label-num.ll" "test/Assembler/invalid-block-label-num.ll.x"
mv "test/Assembler/invalid-byval-type1.ll" "test/Assembler/invalid-byval-type1.ll.x"
mv "test/Assembler/invalid-byval-type2.ll" "test/Assembler/invalid-byval-type2.ll.x"
mv "test/Assembler/invalid-byval-type3.ll" "test/Assembler/invalid-byval-type3.ll.x"
mv "test/Assembler/invalid-comdat.ll" "test/Assembler/invalid-comdat.ll.x"
mv "test/Assembler/invalid-comdat2.ll" "test/Assembler/invalid-comdat2.ll.x"
mv "test/Assembler/invalid-datalayout-alloca-addrspace.ll" "test/Assembler/invalid-datalayout-alloca-addrspace.ll.x"
mv "test/Assembler/invalid-datalayout-program-addrspace.ll" "test/Assembler/invalid-datalayout-program-addrspace.ll.x"
mv "test/Assembler/invalid-datalayout1.ll" "test/Assembler/invalid-datalayout1.ll.x"
mv "test/Assembler/invalid-datalayout10.ll" "test/Assembler/invalid-datalayout10.ll.x"
mv "test/Assembler/invalid-datalayout11.ll" "test/Assembler/invalid-datalayout11.ll.x"
mv "test/Assembler/invalid-datalayout12.ll" "test/Assembler/invalid-datalayout12.ll.x"
mv "test/Assembler/invalid-datalayout13.ll" "test/Assembler/invalid-datalayout13.ll.x"
mv "test/Assembler/invalid-datalayout14.ll" "test/Assembler/invalid-datalayout14.ll.x"
mv "test/Assembler/invalid-datalayout15.ll" "test/Assembler/invalid-datalayout15.ll.x"
mv "test/Assembler/invalid-datalayout16.ll" "test/Assembler/invalid-datalayout16.ll.x"
mv "test/Assembler/invalid-datalayout17.ll" "test/Assembler/invalid-datalayout17.ll.x"
mv "test/Assembler/invalid-datalayout18.ll" "test/Assembler/invalid-datalayout18.ll.x"
mv "test/Assembler/invalid-datalayout19.ll" "test/Assembler/invalid-datalayout19.ll.x"
mv "test/Assembler/invalid-datalayout2.ll" "test/Assembler/invalid-datalayout2.ll.x"
mv "test/Assembler/invalid-datalayout20.ll" "test/Assembler/invalid-datalayout20.ll.x"
mv "test/Assembler/invalid-datalayout21.ll" "test/Assembler/invalid-datalayout21.ll.x"
mv "test/Assembler/invalid-datalayout22.ll" "test/Assembler/invalid-datalayout22.ll.x"
mv "test/Assembler/invalid-datalayout23.ll" "test/Assembler/invalid-datalayout23.ll.x"
mv "test/Assembler/invalid-datalayout24.ll" "test/Assembler/invalid-datalayout24.ll.x"
mv "test/Assembler/invalid-datalayout3.ll" "test/Assembler/invalid-datalayout3.ll.x"
mv "test/Assembler/invalid-datalayout4.ll" "test/Assembler/invalid-datalayout4.ll.x"
mv "test/Assembler/invalid-datalayout5.ll" "test/Assembler/invalid-datalayout5.ll.x"
mv "test/Assembler/invalid-datalayout6.ll" "test/Assembler/invalid-datalayout6.ll.x"
mv "test/Assembler/invalid-datalayout7.ll" "test/Assembler/invalid-datalayout7.ll.x"
mv "test/Assembler/invalid-datalayout8.ll" "test/Assembler/invalid-datalayout8.ll.x"
mv "test/Assembler/invalid-datalayout9.ll" "test/Assembler/invalid-datalayout9.ll.x"
mv "test/Assembler/invalid-dicompileunit-emissionkind-bad.ll" "test/Assembler/invalid-dicompileunit-emissionkind-bad.ll.x"
mv "test/Assembler/invalid-dicompileunit-language-bad.ll" "test/Assembler/invalid-dicompileunit-language-bad.ll.x"
mv "test/Assembler/invalid-dicompileunit-language-overflow.ll" "test/Assembler/invalid-dicompileunit-language-overflow.ll.x"
mv "test/Assembler/invalid-dicompileunit-missing-language.ll" "test/Assembler/invalid-dicompileunit-missing-language.ll.x"
mv "test/Assembler/invalid-dicompileunit-null-file.ll" "test/Assembler/invalid-dicompileunit-null-file.ll.x"
mv "test/Assembler/invalid-dicompileunit-uniqued.ll" "test/Assembler/invalid-dicompileunit-uniqued.ll.x"
mv "test/Assembler/invalid-dicompositetype-missing-tag.ll" "test/Assembler/invalid-dicompositetype-missing-tag.ll.x"
mv "test/Assembler/invalid-diderivedtype-missing-basetype.ll" "test/Assembler/invalid-diderivedtype-missing-basetype.ll.x"
mv "test/Assembler/invalid-diderivedtype-missing-tag.ll" "test/Assembler/invalid-diderivedtype-missing-tag.ll.x"
mv "test/Assembler/invalid-dienumerator-missing-name.ll" "test/Assembler/invalid-dienumerator-missing-name.ll.x"
mv "test/Assembler/invalid-dienumerator-missing-value.ll" "test/Assembler/invalid-dienumerator-missing-value.ll.x"
mv "test/Assembler/invalid-diexpression-large.ll" "test/Assembler/invalid-diexpression-large.ll.x"
mv "test/Assembler/invalid-diexpression-verify.ll" "test/Assembler/invalid-diexpression-verify.ll.x"
mv "test/Assembler/invalid-difile-missing-directory.ll" "test/Assembler/invalid-difile-missing-directory.ll.x"
mv "test/Assembler/invalid-difile-missing-filename.ll" "test/Assembler/invalid-difile-missing-filename.ll.x"
mv "test/Assembler/invalid-diglobalvariable-empty-name.ll" "test/Assembler/invalid-diglobalvariable-empty-name.ll.x"
mv "test/Assembler/invalid-diimportedentity-missing-scope.ll" "test/Assembler/invalid-diimportedentity-missing-scope.ll.x"
mv "test/Assembler/invalid-diimportedentity-missing-tag.ll" "test/Assembler/invalid-diimportedentity-missing-tag.ll.x"
mv "test/Assembler/invalid-dilexicalblock-missing-scope.ll" "test/Assembler/invalid-dilexicalblock-missing-scope.ll.x"
mv "test/Assembler/invalid-dilexicalblock-null-scope.ll" "test/Assembler/invalid-dilexicalblock-null-scope.ll.x"
mv "test/Assembler/invalid-dilexicalblockfile-missing-discriminator.ll" "test/Assembler/invalid-dilexicalblockfile-missing-discriminator.ll.x"
mv "test/Assembler/invalid-dilexicalblockfile-missing-scope.ll" "test/Assembler/invalid-dilexicalblockfile-missing-scope.ll.x"
mv "test/Assembler/invalid-dilexicalblockfile-null-scope.ll" "test/Assembler/invalid-dilexicalblockfile-null-scope.ll.x"
mv "test/Assembler/invalid-dilocalvariable-arg-large.ll" "test/Assembler/invalid-dilocalvariable-arg-large.ll.x"
mv "test/Assembler/invalid-dilocalvariable-arg-negative.ll" "test/Assembler/invalid-dilocalvariable-arg-negative.ll.x"
mv "test/Assembler/invalid-dilocalvariable-missing-scope.ll" "test/Assembler/invalid-dilocalvariable-missing-scope.ll.x"
mv "test/Assembler/invalid-dilocalvariable-null-scope.ll" "test/Assembler/invalid-dilocalvariable-null-scope.ll.x"
mv "test/Assembler/invalid-dilocation-field-bad.ll" "test/Assembler/invalid-dilocation-field-bad.ll.x"
mv "test/Assembler/invalid-dilocation-field-twice.ll" "test/Assembler/invalid-dilocation-field-twice.ll.x"
mv "test/Assembler/invalid-dilocation-missing-scope-2.ll" "test/Assembler/invalid-dilocation-missing-scope-2.ll.x"
mv "test/Assembler/invalid-dilocation-missing-scope.ll" "test/Assembler/invalid-dilocation-missing-scope.ll.x"
mv "test/Assembler/invalid-dilocation-null-scope.ll" "test/Assembler/invalid-dilocation-null-scope.ll.x"
mv "test/Assembler/invalid-dilocation-overflow-column.ll" "test/Assembler/invalid-dilocation-overflow-column.ll.x"
mv "test/Assembler/invalid-dilocation-overflow-line.ll" "test/Assembler/invalid-dilocation-overflow-line.ll.x"
mv "test/Assembler/invalid-dinamespace-missing-namespace.ll" "test/Assembler/invalid-dinamespace-missing-namespace.ll.x"
mv "test/Assembler/invalid-disubprogram-uniqued-definition.ll" "test/Assembler/invalid-disubprogram-uniqued-definition.ll.x"
mv "test/Assembler/invalid-disubrange-count-large.ll" "test/Assembler/invalid-disubrange-count-large.ll.x"
mv "test/Assembler/invalid-disubrange-count-missing.ll" "test/Assembler/invalid-disubrange-count-missing.ll.x"
mv "test/Assembler/invalid-disubrange-count-negative.ll" "test/Assembler/invalid-disubrange-count-negative.ll.x"
mv "test/Assembler/invalid-disubrange-count-node.ll" "test/Assembler/invalid-disubrange-count-node.ll.x"
mv "test/Assembler/invalid-disubrange-lowerBound-max.ll" "test/Assembler/invalid-disubrange-lowerBound-max.ll.x"
mv "test/Assembler/invalid-disubrange-lowerBound-min.ll" "test/Assembler/invalid-disubrange-lowerBound-min.ll.x"
mv "test/Assembler/invalid-disubroutinetype-missing-types.ll" "test/Assembler/invalid-disubroutinetype-missing-types.ll.x"
mv "test/Assembler/invalid-ditemplatetypeparameter-missing-type.ll" "test/Assembler/invalid-ditemplatetypeparameter-missing-type.ll.x"
mv "test/Assembler/invalid-ditemplatevalueparameter-missing-value.ll" "test/Assembler/invalid-ditemplatevalueparameter-missing-value.ll.x"
mv "test/Assembler/invalid-fp80hex.ll" "test/Assembler/invalid-fp80hex.ll.x"
mv "test/Assembler/invalid-fwdref1.ll" "test/Assembler/invalid-fwdref1.ll.x"
mv "test/Assembler/invalid-fwdref2.ll" "test/Assembler/invalid-fwdref2.ll.x"
mv "test/Assembler/invalid-generic-debug-node-tag-bad.ll" "test/Assembler/invalid-generic-debug-node-tag-bad.ll.x"
mv "test/Assembler/invalid-generic-debug-node-tag-missing.ll" "test/Assembler/invalid-generic-debug-node-tag-missing.ll.x"
mv "test/Assembler/invalid-generic-debug-node-tag-overflow.ll" "test/Assembler/invalid-generic-debug-node-tag-overflow.ll.x"
mv "test/Assembler/invalid-generic-debug-node-tag-wrong-type.ll" "test/Assembler/invalid-generic-debug-node-tag-wrong-type.ll.x"
mv "test/Assembler/invalid-gep-mismatched-explicit-type.ll" "test/Assembler/invalid-gep-mismatched-explicit-type.ll.x"
mv "test/Assembler/invalid-gep-missing-explicit-type.ll" "test/Assembler/invalid-gep-missing-explicit-type.ll.x"
mv "test/Assembler/invalid-hexint.ll" "test/Assembler/invalid-hexint.ll.x"
mv "test/Assembler/invalid-immarg.ll" "test/Assembler/invalid-immarg.ll.x"
mv "test/Assembler/invalid-inline-constraint.ll" "test/Assembler/invalid-inline-constraint.ll.x"
mv "test/Assembler/invalid-inttype.ll" "test/Assembler/invalid-inttype.ll.x"
mv "test/Assembler/invalid-label.ll" "test/Assembler/invalid-label.ll.x"
mv "test/Assembler/invalid-landingpad.ll" "test/Assembler/invalid-landingpad.ll.x"
mv "test/Assembler/invalid-load-mismatched-explicit-type.ll" "test/Assembler/invalid-load-mismatched-explicit-type.ll.x"
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
mv "test/Assembler/invalid-name.ll" "test/Assembler/invalid-name.ll.x"
mv "test/Assembler/invalid-name2.ll" "test/Assembler/invalid-name2.ll.x"
mv "test/Assembler/invalid-safestack-param.ll" "test/Assembler/invalid-safestack-param.ll.x"
mv "test/Assembler/invalid-safestack-return.ll" "test/Assembler/invalid-safestack-return.ll.x"
mv "test/Assembler/invalid-specialized-mdnode.ll" "test/Assembler/invalid-specialized-mdnode.ll.x"
mv "test/Assembler/invalid-untyped-metadata.ll" "test/Assembler/invalid-untyped-metadata.ll.x"
mv "test/Assembler/invalid-uselistorder-function-between-blocks.ll" "test/Assembler/invalid-uselistorder-function-between-blocks.ll.x"
mv "test/Assembler/invalid-uselistorder-function-missing-named.ll" "test/Assembler/invalid-uselistorder-function-missing-named.ll.x"
mv "test/Assembler/invalid-uselistorder-function-missing-numbered.ll" "test/Assembler/invalid-uselistorder-function-missing-numbered.ll.x"
mv "test/Assembler/invalid-uselistorder-global-missing.ll" "test/Assembler/invalid-uselistorder-global-missing.ll.x"
mv "test/Assembler/invalid-uselistorder-indexes-duplicated.ll" "test/Assembler/invalid-uselistorder-indexes-duplicated.ll.x"
mv "test/Assembler/invalid-uselistorder-indexes-empty.ll" "test/Assembler/invalid-uselistorder-indexes-empty.ll.x"
mv "test/Assembler/invalid-uselistorder-indexes-one.ll" "test/Assembler/invalid-uselistorder-indexes-one.ll.x"
mv "test/Assembler/invalid-uselistorder-indexes-ordered.ll" "test/Assembler/invalid-uselistorder-indexes-ordered.ll.x"
mv "test/Assembler/invalid-uselistorder-indexes-range.ll" "test/Assembler/invalid-uselistorder-indexes-range.ll.x"
mv "test/Assembler/invalid-uselistorder-indexes-toofew.ll" "test/Assembler/invalid-uselistorder-indexes-toofew.ll.x"
mv "test/Assembler/invalid-uselistorder-indexes-toomany.ll" "test/Assembler/invalid-uselistorder-indexes-toomany.ll.x"
mv "test/Assembler/invalid-uselistorder-type.ll" "test/Assembler/invalid-uselistorder-type.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-missing-bb.ll" "test/Assembler/invalid-uselistorder_bb-missing-bb.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-missing-body.ll" "test/Assembler/invalid-uselistorder_bb-missing-body.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-missing-func.ll" "test/Assembler/invalid-uselistorder_bb-missing-func.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-not-bb.ll" "test/Assembler/invalid-uselistorder_bb-not-bb.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-not-func.ll" "test/Assembler/invalid-uselistorder_bb-not-func.ll.x"
mv "test/Assembler/invalid-uselistorder_bb-numbered.ll" "test/Assembler/invalid-uselistorder_bb-numbered.ll.x"
mv "test/Assembler/invalid_cast.ll" "test/Assembler/invalid_cast.ll.x"
mv "test/Assembler/invalid_cast2.ll" "test/Assembler/invalid_cast2.ll.x"
mv "test/Assembler/invalid_cast3.ll" "test/Assembler/invalid_cast3.ll.x"
mv "test/Assembler/invalid_cast4.ll" "test/Assembler/invalid_cast4.ll.x"
mv "test/Assembler/invoke-nonzero-program-addrspace.ll" "test/Assembler/invoke-nonzero-program-addrspace.ll.x"
mv "test/Assembler/missing-tbaa.ll" "test/Assembler/missing-tbaa.ll.x"
mv "test/Assembler/musttail-invalid-1.ll" "test/Assembler/musttail-invalid-1.ll.x"
mv "test/Assembler/musttail-invalid-2.ll" "test/Assembler/musttail-invalid-2.ll.x"
mv "test/Assembler/private-hidden-alias.ll" "test/Assembler/private-hidden-alias.ll.x"
mv "test/Assembler/private-hidden-function.ll" "test/Assembler/private-hidden-function.ll.x"
mv "test/Assembler/private-hidden-variable.ll" "test/Assembler/private-hidden-variable.ll.x"
mv "test/Assembler/private-protected-alias.ll" "test/Assembler/private-protected-alias.ll.x"
mv "test/Assembler/private-protected-function.ll" "test/Assembler/private-protected-function.ll.x"
mv "test/Assembler/private-protected-variable.ll" "test/Assembler/private-protected-variable.ll.x"
mv "test/Assembler/unnamed-comdat.ll" "test/Assembler/unnamed-comdat.ll.x"
mv "test/Assembler/unsized-recursive-type.ll" "test/Assembler/unsized-recursive-type.ll.x"
mv "test/Bitcode/function-default-address-spaces.ll" "test/Bitcode/function-default-address-spaces.ll.x"
mv "test/Bitcode/function-nonzero-address-spaces-types.ll" "test/Bitcode/function-nonzero-address-spaces-types.ll.x"
mv "test/Bitcode/function-nonzero-address-spaces.ll" "test/Bitcode/function-nonzero-address-spaces.ll.x"
mv "test/Bitcode/upgrade-linker-options.ll" "test/Bitcode/upgrade-linker-options.ll.x"
mv "test/CodeGen/X86/GC/badreadproto.ll" "test/CodeGen/X86/GC/badreadproto.ll.x"
mv "test/CodeGen/X86/GC/fat.ll" "test/CodeGen/X86/GC/fat.ll.x"
mv "test/CodeGen/X86/GC/outside.ll" "test/CodeGen/X86/GC/outside.ll.x"
mv "test/CodeGen/X86/inconsistent_landingpad.ll" "test/CodeGen/X86/inconsistent_landingpad.ll.x"
mv "test/Feature/globalredefinition3.ll" "test/Feature/globalredefinition3.ll.x"
mv "test/Other/2009-09-14-function-elements.ll" "test/Other/2009-09-14-function-elements.ll.x"
mv "test/Verifier/2002-04-13-RetTypes.ll" "test/Verifier/2002-04-13-RetTypes.ll.x"
mv "test/Verifier/2002-11-05-GetelementptrPointers.ll" "test/Verifier/2002-11-05-GetelementptrPointers.ll.x"
mv "test/Verifier/2004-05-21-SwitchConstantMismatch.ll" "test/Verifier/2004-05-21-SwitchConstantMismatch.ll.x"
mv "test/Verifier/2006-10-15-AddrLabel.ll" "test/Verifier/2006-10-15-AddrLabel.ll.x"
mv "test/Verifier/2006-12-12-IntrinsicDefine.ll" "test/Verifier/2006-12-12-IntrinsicDefine.ll.x"
mv "test/Verifier/2007-12-21-InvokeParamAttrs.ll" "test/Verifier/2007-12-21-InvokeParamAttrs.ll.x"
mv "test/Verifier/2008-01-11-VarargAttrs.ll" "test/Verifier/2008-01-11-VarargAttrs.ll.x"
mv "test/Verifier/2008-03-01-AllocaSized.ll" "test/Verifier/2008-03-01-AllocaSized.ll.x"
mv "test/Verifier/2008-11-15-RetVoid.ll" "test/Verifier/2008-11-15-RetVoid.ll.x"
mv "test/Verifier/2009-05-29-InvokeResult1.ll" "test/Verifier/2009-05-29-InvokeResult1.ll.x"
mv "test/Verifier/2009-05-29-InvokeResult2.ll" "test/Verifier/2009-05-29-InvokeResult2.ll.x"
mv "test/Verifier/2009-05-29-InvokeResult3.ll" "test/Verifier/2009-05-29-InvokeResult3.ll.x"
mv "test/Verifier/2010-08-07-PointerIntrinsic.ll" "test/Verifier/2010-08-07-PointerIntrinsic.ll.x"
mv "test/Verifier/AMDGPU/intrinsic-immarg.ll" "test/Verifier/AMDGPU/intrinsic-immarg.ll.x"
mv "test/Verifier/ARM/intrinsic-immarg.ll" "test/Verifier/ARM/intrinsic-immarg.ll.x"
mv "test/Verifier/AmbiguousPhi.ll" "test/Verifier/AmbiguousPhi.ll.x"
mv "test/Verifier/PhiGrouping.ll" "test/Verifier/PhiGrouping.ll.x"
mv "test/Verifier/SelfReferential.ll" "test/Verifier/SelfReferential.ll.x"
mv "test/Verifier/SystemZ/intrinsic-immarg.ll" "test/Verifier/SystemZ/intrinsic-immarg.ll.x"
mv "test/Verifier/align-md.ll" "test/Verifier/align-md.ll.x"
mv "test/Verifier/alloc-size-failedparse.ll" "test/Verifier/alloc-size-failedparse.ll.x"
mv "test/Verifier/allocsize.ll" "test/Verifier/allocsize.ll.x"
mv "test/Verifier/amdgpu-cc.ll" "test/Verifier/amdgpu-cc.ll.x"
mv "test/Verifier/bitcast-address-space-nested-global-cycle.ll" "test/Verifier/bitcast-address-space-nested-global-cycle.ll.x"
mv "test/Verifier/bitcast-address-space-nested-global.ll" "test/Verifier/bitcast-address-space-nested-global.ll.x"
mv "test/Verifier/bitcast-address-space-through-constant-inttoptr-inside-gep-instruction.ll" "test/Verifier/bitcast-address-space-through-constant-inttoptr-inside-gep-instruction.ll.x"
mv "test/Verifier/bitcast-address-space-through-constant-inttoptr.ll" "test/Verifier/bitcast-address-space-through-constant-inttoptr.ll.x"
mv "test/Verifier/bitcast-address-space-through-gep-2.ll" "test/Verifier/bitcast-address-space-through-gep-2.ll.x"
mv "test/Verifier/bitcast-address-space-through-gep.ll" "test/Verifier/bitcast-address-space-through-gep.ll.x"
mv "test/Verifier/bitcast-address-space-through-inttoptr.ll" "test/Verifier/bitcast-address-space-through-inttoptr.ll.x"
mv "test/Verifier/bitcast-address-spaces.ll" "test/Verifier/bitcast-address-spaces.ll.x"
mv "test/Verifier/bitcast-alias-address-space.ll" "test/Verifier/bitcast-alias-address-space.ll.x"
mv "test/Verifier/bitcast-pointer-vector-neg.ll" "test/Verifier/bitcast-pointer-vector-neg.ll.x"
mv "test/Verifier/bitcast-vector-pointer-as-neg.ll" "test/Verifier/bitcast-vector-pointer-as-neg.ll.x"
mv "test/Verifier/bitcast-vector-pointer-as.ll" "test/Verifier/bitcast-vector-pointer-as.ll.x"
mv "test/Verifier/bitcast-vector-pointer-neg.ll" "test/Verifier/bitcast-vector-pointer-neg.ll.x"
mv "test/Verifier/byval-1.ll" "test/Verifier/byval-1.ll.x"
mv "test/Verifier/comdat-decl1.ll" "test/Verifier/comdat-decl1.ll.x"
mv "test/Verifier/comdat-decl2.ll" "test/Verifier/comdat-decl2.ll.x"
mv "test/Verifier/comdat.ll" "test/Verifier/comdat.ll.x"
mv "test/Verifier/comdat2.ll" "test/Verifier/comdat2.ll.x"
mv "test/Verifier/commandline-meta1.ll" "test/Verifier/commandline-meta1.ll.x"
mv "test/Verifier/commandline-meta2.ll" "test/Verifier/commandline-meta2.ll.x"
mv "test/Verifier/commandline-meta3.ll" "test/Verifier/commandline-meta3.ll.x"
mv "test/Verifier/commandline-meta4.ll" "test/Verifier/commandline-meta4.ll.x"
mv "test/Verifier/cttz-undef-arg.ll" "test/Verifier/cttz-undef-arg.ll.x"
mv "test/Verifier/dbg-orphaned-compileunit.ll" "test/Verifier/dbg-orphaned-compileunit.ll.x"
mv "test/Verifier/dbg-typerefs.ll" "test/Verifier/dbg-typerefs.ll.x"
mv "test/Verifier/dereferenceable-md.ll" "test/Verifier/dereferenceable-md.ll.x"
mv "test/Verifier/dominates.ll" "test/Verifier/dominates.ll.x"
mv "test/Verifier/fpmath.ll" "test/Verifier/fpmath.ll.x"
mv "test/Verifier/frameescape.ll" "test/Verifier/frameescape.ll.x"
mv "test/Verifier/function-metadata-bad.ll" "test/Verifier/function-metadata-bad.ll.x"
mv "test/Verifier/gc_relocate_addrspace.ll" "test/Verifier/gc_relocate_addrspace.ll.x"
mv "test/Verifier/gc_relocate_operand.ll" "test/Verifier/gc_relocate_operand.ll.x"
mv "test/Verifier/gc_relocate_return.ll" "test/Verifier/gc_relocate_return.ll.x"
mv "test/Verifier/gcread-ptrptr.ll" "test/Verifier/gcread-ptrptr.ll.x"
mv "test/Verifier/gcroot.ll" "test/Verifier/gcroot.ll.x"
mv "test/Verifier/gcwrite-ptrptr.ll" "test/Verifier/gcwrite-ptrptr.ll.x"
mv "test/Verifier/global-ctors-2.ll" "test/Verifier/global-ctors-2.ll.x"
mv "test/Verifier/global-ctors.ll" "test/Verifier/global-ctors.ll.x"
mv "test/Verifier/ident-meta1.ll" "test/Verifier/ident-meta1.ll.x"
mv "test/Verifier/ident-meta2.ll" "test/Verifier/ident-meta2.ll.x"
mv "test/Verifier/ident-meta3.ll" "test/Verifier/ident-meta3.ll.x"
mv "test/Verifier/ident-meta4.ll" "test/Verifier/ident-meta4.ll.x"
mv "test/Verifier/immarg-param-attribute-invalid.ll" "test/Verifier/immarg-param-attribute-invalid.ll.x"
mv "test/Verifier/inalloca-vararg.ll" "test/Verifier/inalloca-vararg.ll.x"
mv "test/Verifier/inalloca1.ll" "test/Verifier/inalloca1.ll.x"
mv "test/Verifier/inalloca3.ll" "test/Verifier/inalloca3.ll.x"
mv "test/Verifier/intrinsic-immarg.ll" "test/Verifier/intrinsic-immarg.ll.x"
mv "test/Verifier/invoke.ll" "test/Verifier/invoke.ll.x"
mv "test/Verifier/jumptable.ll" "test/Verifier/jumptable.ll.x"
mv "test/Verifier/llvm.compiler_used-invalid-type.ll" "test/Verifier/llvm.compiler_used-invalid-type.ll.x"
mv "test/Verifier/llvm.used-invalid-init.ll" "test/Verifier/llvm.used-invalid-init.ll.x"
mv "test/Verifier/llvm.used-invalid-init2.ll" "test/Verifier/llvm.used-invalid-init2.ll.x"
mv "test/Verifier/llvm.used-invalid-type.ll" "test/Verifier/llvm.used-invalid-type.ll.x"
mv "test/Verifier/llvm.used-invalid-type2.ll" "test/Verifier/llvm.used-invalid-type2.ll.x"
mv "test/Verifier/masked-load.ll" "test/Verifier/masked-load.ll.x"
mv "test/Verifier/masked-store.ll" "test/Verifier/masked-store.ll.x"
mv "test/Verifier/mdcompositetype-templateparams-tuple.ll" "test/Verifier/mdcompositetype-templateparams-tuple.ll.x"
mv "test/Verifier/mdcompositetype-templateparams.ll" "test/Verifier/mdcompositetype-templateparams.ll.x"
mv "test/Verifier/metadata-function-prof.ll" "test/Verifier/metadata-function-prof.ll.x"
mv "test/Verifier/module-flags-1.ll" "test/Verifier/module-flags-1.ll.x"
mv "test/Verifier/module-flags-2.ll" "test/Verifier/module-flags-2.ll.x"
mv "test/Verifier/module-flags-3.ll" "test/Verifier/module-flags-3.ll.x"
mv "test/Verifier/module-flags-cgprofile.ll" "test/Verifier/module-flags-cgprofile.ll.x"
mv "test/Verifier/musttail-invalid.ll" "test/Verifier/musttail-invalid.ll.x"
mv "test/Verifier/range-1.ll" "test/Verifier/range-1.ll.x"
mv "test/Verifier/recursive-type-1.ll" "test/Verifier/recursive-type-1.ll.x"
mv "test/Verifier/recursive-type-2.ll" "test/Verifier/recursive-type-2.ll.x"
mv "test/Verifier/resume.ll" "test/Verifier/resume.ll.x"
mv "test/Verifier/speculatable-callsite-invalid.ll" "test/Verifier/speculatable-callsite-invalid.ll.x"
mv "test/Verifier/sret.ll" "test/Verifier/sret.ll.x"
mv "test/Verifier/swifterror.ll" "test/Verifier/swifterror.ll.x"
mv "test/Verifier/swiftself.ll" "test/Verifier/swiftself.ll.x"
mv "test/Verifier/tbaa.ll" "test/Verifier/tbaa.ll.x"
mv "test/Verifier/token2.ll" "test/Verifier/token2.ll.x"
mv "test/Verifier/token3.ll" "test/Verifier/token3.ll.x"
mv "test/Verifier/token4.ll" "test/Verifier/token4.ll.x"
mv "test/Verifier/token5.ll" "test/Verifier/token5.ll.x"
mv "test/Verifier/token6.ll" "test/Verifier/token6.ll.x"
mv "test/Verifier/token7.ll" "test/Verifier/token7.ll.x"
mv "test/Verifier/varargs-intrinsic.ll" "test/Verifier/varargs-intrinsic.ll.x"
mv "test/Verifier/variant-part.ll" "test/Verifier/variant-part.ll.x"
mv "test/Verifier/writeonly.ll" "test/Verifier/writeonly.ll.x"

# --- [ invalid LLVM IR ] ------------------------------------------------------

# Located by running `sift -x ll -l "RUN: not opt" test/`

mv "test/Analysis/TypeBasedAliasAnalysis/cyclic.ll" "test/Analysis/TypeBasedAliasAnalysis/cyclic.ll.x"
mv "test/Assembler/getInt.ll" "test/Assembler/getInt.ll.x"
mv "test/Assembler/invalid-vecreduce.ll" "test/Assembler/invalid-vecreduce.ll.x"
mv "test/Assembler/thinlto-bad-summary1.ll" "test/Assembler/thinlto-bad-summary1.ll.x"
mv "test/Assembler/thinlto-bad-summary2.ll" "test/Assembler/thinlto-bad-summary2.ll.x"
mv "test/Assembler/thinlto-bad-summary3.ll" "test/Assembler/thinlto-bad-summary3.ll.x"
mv "test/CodeGen/Generic/opt-codegen-no-target-machine.ll" "test/CodeGen/Generic/opt-codegen-no-target-machine.ll.x"
mv "test/Instrumentation/SanitizerCoverage/stack-depth-variable-declared-by-user.ll" "test/Instrumentation/SanitizerCoverage/stack-depth-variable-declared-by-user.ll.x"
mv "test/Other/invalid-commandline-option.ll" "test/Other/invalid-commandline-option.ll.x"
mv "test/Other/optimization-remarks-inline.ll" "test/Other/optimization-remarks-inline.ll.x"
mv "test/Other/pass-pipeline-parsing.ll" "test/Other/pass-pipeline-parsing.ll.x"
mv "test/Other/scalable-vector-array.ll" "test/Other/scalable-vector-array.ll.x"
mv "test/Transforms/BlockExtractor/invalid-block.ll" "test/Transforms/BlockExtractor/invalid-block.ll.x"
mv "test/Transforms/BlockExtractor/invalid-function.ll" "test/Transforms/BlockExtractor/invalid-function.ll.x"
mv "test/Transforms/GCOVProfiling/version.ll" "test/Transforms/GCOVProfiling/version.ll.x"
mv "test/Transforms/PGOProfile/diag_FE_profile.ll" "test/Transforms/PGOProfile/diag_FE_profile.ll.x"
mv "test/Transforms/PGOProfile/diag_no_profile.ll" "test/Transforms/PGOProfile/diag_no_profile.ll.x"
mv "test/Transforms/SampleProfile/syntax.ll" "test/Transforms/SampleProfile/syntax.ll.x"
mv "test/Verifier/atomics.ll" "test/Verifier/atomics.ll.x"
mv "test/Verifier/cc-flags.ll" "test/Verifier/cc-flags.ll.x"
mv "test/Verifier/deoptimize-intrinsic.ll" "test/Verifier/deoptimize-intrinsic.ll.x"
mv "test/Verifier/diderivedtype-address-space-atomic-type.ll" "test/Verifier/diderivedtype-address-space-atomic-type.ll.x"
mv "test/Verifier/diderivedtype-address-space-const-type.ll" "test/Verifier/diderivedtype-address-space-const-type.ll.x"
mv "test/Verifier/diderivedtype-address-space-friend.ll" "test/Verifier/diderivedtype-address-space-friend.ll.x"
mv "test/Verifier/diderivedtype-address-space-inheritance.ll" "test/Verifier/diderivedtype-address-space-inheritance.ll.x"
mv "test/Verifier/diderivedtype-address-space-member.ll" "test/Verifier/diderivedtype-address-space-member.ll.x"
mv "test/Verifier/diderivedtype-address-space-ptr-to-member-type.ll" "test/Verifier/diderivedtype-address-space-ptr-to-member-type.ll.x"
mv "test/Verifier/diderivedtype-address-space-restrict-type.ll" "test/Verifier/diderivedtype-address-space-restrict-type.ll.x"
mv "test/Verifier/diderivedtype-address-space-typedef.ll" "test/Verifier/diderivedtype-address-space-typedef.ll.x"
mv "test/Verifier/diderivedtype-address-space-volatile-type.ll" "test/Verifier/diderivedtype-address-space-volatile-type.ll.x"
mv "test/Verifier/diexpression-entry-value.ll" "test/Verifier/diexpression-entry-value.ll.x"
mv "test/Verifier/diexpression-swap.ll" "test/Verifier/diexpression-swap.ll.x"
mv "test/Verifier/element-wise-atomic-memory-intrinsics.ll" "test/Verifier/element-wise-atomic-memory-intrinsics.ll.x"
mv "test/Verifier/guard-intrinsic.ll" "test/Verifier/guard-intrinsic.ll.x"
mv "test/Verifier/intrinsic-arg-overloading-struct-ret.ll" "test/Verifier/intrinsic-arg-overloading-struct-ret.ll.x"
mv "test/Verifier/invalid-statepoint.ll" "test/Verifier/invalid-statepoint.ll.x"
mv "test/Verifier/memcpy.ll" "test/Verifier/memcpy.ll.x"
mv "test/Verifier/non-integer-gep-index.ll" "test/Verifier/non-integer-gep-index.ll.x"
mv "test/Verifier/non-integral-pointers.ll" "test/Verifier/non-integral-pointers.ll.x"
mv "test/Verifier/operand-bundles.ll" "test/Verifier/operand-bundles.ll.x"
mv "test/Verifier/scalable-global-vars.ll" "test/Verifier/scalable-global-vars.ll.x"
mv "test/Verifier/scatter_gather.ll" "test/Verifier/scatter_gather.ll.x"
