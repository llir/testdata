; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-- -mattr=+sse2 | FileCheck %s --check-prefixes=SSE
; RUN: llc < %s -mtriple=x86_64-- -mattr=+avx  | FileCheck %s --check-prefixes=AVX,AVX1
; RUN: llc < %s -mtriple=x86_64-- -mattr=+avx2 | FileCheck %s --check-prefixes=AVX,AVX2
; RUN: llc < %s -mtriple=x86_64-- -mattr=+avx2,+fast-variable-crosslane-shuffle,+fast-variable-perlane-shuffle | FileCheck %s --check-prefixes=AVX,AVX2
; RUN: llc < %s -mtriple=x86_64-- -mattr=+avx2,+fast-variable-perlane-shuffle | FileCheck %s --check-prefixes=AVX,AVX2
; RUN: llc < %s -mtriple=x86_64-- -mattr=+avx512bw,+avx512vl | FileCheck %s --check-prefixes=AVX512

; These patterns are produced by LoopVectorizer for interleaved stores.

define void @store_i32_stride2_vf2(ptr %in.vecptr0, ptr %in.vecptr1, ptr %out.vec) nounwind {
; SSE-LABEL: store_i32_stride2_vf2:
; SSE:       # %bb.0:
; SSE-NEXT:    movsd {{.*#+}} xmm0 = mem[0],zero
; SSE-NEXT:    movsd {{.*#+}} xmm1 = mem[0],zero
; SSE-NEXT:    unpcklps {{.*#+}} xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
; SSE-NEXT:    movaps %xmm1, (%rdx)
; SSE-NEXT:    retq
;
; AVX-LABEL: store_i32_stride2_vf2:
; AVX:       # %bb.0:
; AVX-NEXT:    vmovsd {{.*#+}} xmm0 = mem[0],zero
; AVX-NEXT:    vmovsd {{.*#+}} xmm1 = mem[0],zero
; AVX-NEXT:    vunpcklps {{.*#+}} xmm0 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
; AVX-NEXT:    vmovaps %xmm0, (%rdx)
; AVX-NEXT:    retq
;
; AVX512-LABEL: store_i32_stride2_vf2:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vmovsd {{.*#+}} xmm0 = mem[0],zero
; AVX512-NEXT:    vmovsd {{.*#+}} xmm1 = mem[0],zero
; AVX512-NEXT:    vunpcklps {{.*#+}} xmm0 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
; AVX512-NEXT:    vmovaps %xmm0, (%rdx)
; AVX512-NEXT:    retq
  %in.vec0 = load <2 x i32>, ptr %in.vecptr0, align 32
  %in.vec1 = load <2 x i32>, ptr %in.vecptr1, align 32

  %concat01 = shufflevector <2 x i32> %in.vec0, <2 x i32> %in.vec1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x i32> %concat01, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>

  store <4 x i32> %interleaved.vec, ptr %out.vec, align 32

  ret void
}

define void @store_i32_stride2_vf4(ptr %in.vecptr0, ptr %in.vecptr1, ptr %out.vec) nounwind {
; SSE-LABEL: store_i32_stride2_vf4:
; SSE:       # %bb.0:
; SSE-NEXT:    movaps (%rdi), %xmm0
; SSE-NEXT:    movaps (%rsi), %xmm1
; SSE-NEXT:    movaps %xmm0, %xmm2
; SSE-NEXT:    unpcklps {{.*#+}} xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
; SSE-NEXT:    unpckhps {{.*#+}} xmm0 = xmm0[2],xmm1[2],xmm0[3],xmm1[3]
; SSE-NEXT:    movaps %xmm0, 16(%rdx)
; SSE-NEXT:    movaps %xmm2, (%rdx)
; SSE-NEXT:    retq
;
; AVX1-LABEL: store_i32_stride2_vf4:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vmovaps (%rdi), %xmm0
; AVX1-NEXT:    vmovaps (%rsi), %xmm1
; AVX1-NEXT:    vinsertf128 $1, %xmm1, %ymm0, %ymm2
; AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm1, %ymm0
; AVX1-NEXT:    vpermilps {{.*#+}} ymm0 = ymm0[2,0,3,1,6,4,7,5]
; AVX1-NEXT:    vpermilps {{.*#+}} ymm1 = ymm2[0,2,1,3,4,6,5,7]
; AVX1-NEXT:    vblendps {{.*#+}} ymm0 = ymm1[0],ymm0[1],ymm1[2],ymm0[3,4],ymm1[5],ymm0[6],ymm1[7]
; AVX1-NEXT:    vmovaps %ymm0, (%rdx)
; AVX1-NEXT:    vzeroupper
; AVX1-NEXT:    retq
;
; AVX2-LABEL: store_i32_stride2_vf4:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vmovaps (%rdi), %xmm0
; AVX2-NEXT:    vinsertf128 $1, (%rsi), %ymm0, %ymm0
; AVX2-NEXT:    vmovaps {{.*#+}} ymm1 = [0,4,1,5,2,6,3,7]
; AVX2-NEXT:    vpermps %ymm0, %ymm1, %ymm0
; AVX2-NEXT:    vmovaps %ymm0, (%rdx)
; AVX2-NEXT:    vzeroupper
; AVX2-NEXT:    retq
;
; AVX512-LABEL: store_i32_stride2_vf4:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vmovaps (%rdi), %xmm0
; AVX512-NEXT:    vinsertf128 $1, (%rsi), %ymm0, %ymm0
; AVX512-NEXT:    vmovaps {{.*#+}} ymm1 = [0,4,1,5,2,6,3,7]
; AVX512-NEXT:    vpermps %ymm0, %ymm1, %ymm0
; AVX512-NEXT:    vmovaps %ymm0, (%rdx)
; AVX512-NEXT:    vzeroupper
; AVX512-NEXT:    retq
  %in.vec0 = load <4 x i32>, ptr %in.vecptr0, align 32
  %in.vec1 = load <4 x i32>, ptr %in.vecptr1, align 32

  %concat01 = shufflevector <4 x i32> %in.vec0, <4 x i32> %in.vec1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i32> %concat01, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>

  store <8 x i32> %interleaved.vec, ptr %out.vec, align 32

  ret void
}

define void @store_i32_stride2_vf8(ptr %in.vecptr0, ptr %in.vecptr1, ptr %out.vec) nounwind {
; SSE-LABEL: store_i32_stride2_vf8:
; SSE:       # %bb.0:
; SSE-NEXT:    movaps (%rdi), %xmm0
; SSE-NEXT:    movaps 16(%rdi), %xmm1
; SSE-NEXT:    movaps (%rsi), %xmm2
; SSE-NEXT:    movaps 16(%rsi), %xmm3
; SSE-NEXT:    movaps %xmm0, %xmm4
; SSE-NEXT:    unpckhps {{.*#+}} xmm4 = xmm4[2],xmm2[2],xmm4[3],xmm2[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
; SSE-NEXT:    movaps %xmm1, %xmm2
; SSE-NEXT:    unpckhps {{.*#+}} xmm2 = xmm2[2],xmm3[2],xmm2[3],xmm3[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
; SSE-NEXT:    movaps %xmm1, 32(%rdx)
; SSE-NEXT:    movaps %xmm2, 48(%rdx)
; SSE-NEXT:    movaps %xmm0, (%rdx)
; SSE-NEXT:    movaps %xmm4, 16(%rdx)
; SSE-NEXT:    retq
;
; AVX1-LABEL: store_i32_stride2_vf8:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vmovaps (%rsi), %xmm0
; AVX1-NEXT:    vmovaps 16(%rsi), %xmm1
; AVX1-NEXT:    vmovaps (%rdi), %xmm2
; AVX1-NEXT:    vmovaps 16(%rdi), %xmm3
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm4 = xmm3[2],xmm1[2],xmm3[3],xmm1[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm1 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm4, %ymm1, %ymm1
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm3 = xmm2[2],xmm0[2],xmm2[3],xmm0[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm0 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm3, %ymm0, %ymm0
; AVX1-NEXT:    vmovaps %ymm0, (%rdx)
; AVX1-NEXT:    vmovaps %ymm1, 32(%rdx)
; AVX1-NEXT:    vzeroupper
; AVX1-NEXT:    retq
;
; AVX2-LABEL: store_i32_stride2_vf8:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vmovaps (%rsi), %xmm0
; AVX2-NEXT:    vmovaps 16(%rsi), %xmm1
; AVX2-NEXT:    vmovaps (%rdi), %xmm2
; AVX2-NEXT:    vmovaps 16(%rdi), %xmm3
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm4 = xmm2[2],xmm0[2],xmm2[3],xmm0[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm0 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm2 = xmm3[2],xmm1[2],xmm3[3],xmm1[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm1 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
; AVX2-NEXT:    vmovaps %xmm1, 32(%rdx)
; AVX2-NEXT:    vmovaps %xmm2, 48(%rdx)
; AVX2-NEXT:    vmovaps %xmm0, (%rdx)
; AVX2-NEXT:    vmovaps %xmm4, 16(%rdx)
; AVX2-NEXT:    retq
;
; AVX512-LABEL: store_i32_stride2_vf8:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vmovaps (%rdi), %ymm0
; AVX512-NEXT:    vinsertf64x4 $1, (%rsi), %zmm0, %zmm0
; AVX512-NEXT:    vmovaps {{.*#+}} zmm1 = [0,8,1,9,2,10,3,11,4,12,5,13,6,14,7,15]
; AVX512-NEXT:    vpermps %zmm0, %zmm1, %zmm0
; AVX512-NEXT:    vmovups %zmm0, (%rdx)
; AVX512-NEXT:    vzeroupper
; AVX512-NEXT:    retq
  %in.vec0 = load <8 x i32>, ptr %in.vecptr0, align 32
  %in.vec1 = load <8 x i32>, ptr %in.vecptr1, align 32

  %concat01 = shufflevector <8 x i32> %in.vec0, <8 x i32> %in.vec1, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x i32> %concat01, <16 x i32> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>

  store <16 x i32> %interleaved.vec, ptr %out.vec, align 32

  ret void
}

define void @store_i32_stride2_vf16(ptr %in.vecptr0, ptr %in.vecptr1, ptr %out.vec) nounwind {
; SSE-LABEL: store_i32_stride2_vf16:
; SSE:       # %bb.0:
; SSE-NEXT:    movaps (%rdi), %xmm0
; SSE-NEXT:    movaps 16(%rdi), %xmm1
; SSE-NEXT:    movaps 32(%rdi), %xmm2
; SSE-NEXT:    movaps 48(%rdi), %xmm3
; SSE-NEXT:    movaps (%rsi), %xmm4
; SSE-NEXT:    movaps 16(%rsi), %xmm5
; SSE-NEXT:    movaps 32(%rsi), %xmm6
; SSE-NEXT:    movaps 48(%rsi), %xmm8
; SSE-NEXT:    movaps %xmm0, %xmm7
; SSE-NEXT:    unpckhps {{.*#+}} xmm7 = xmm7[2],xmm4[2],xmm7[3],xmm4[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
; SSE-NEXT:    movaps %xmm1, %xmm4
; SSE-NEXT:    unpckhps {{.*#+}} xmm4 = xmm4[2],xmm5[2],xmm4[3],xmm5[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
; SSE-NEXT:    movaps %xmm2, %xmm5
; SSE-NEXT:    unpckhps {{.*#+}} xmm5 = xmm5[2],xmm6[2],xmm5[3],xmm6[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1]
; SSE-NEXT:    movaps %xmm3, %xmm6
; SSE-NEXT:    unpckhps {{.*#+}} xmm6 = xmm6[2],xmm8[2],xmm6[3],xmm8[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1]
; SSE-NEXT:    movaps %xmm3, 96(%rdx)
; SSE-NEXT:    movaps %xmm6, 112(%rdx)
; SSE-NEXT:    movaps %xmm2, 64(%rdx)
; SSE-NEXT:    movaps %xmm5, 80(%rdx)
; SSE-NEXT:    movaps %xmm1, 32(%rdx)
; SSE-NEXT:    movaps %xmm4, 48(%rdx)
; SSE-NEXT:    movaps %xmm0, (%rdx)
; SSE-NEXT:    movaps %xmm7, 16(%rdx)
; SSE-NEXT:    retq
;
; AVX1-LABEL: store_i32_stride2_vf16:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vmovaps (%rsi), %xmm0
; AVX1-NEXT:    vmovaps 16(%rsi), %xmm8
; AVX1-NEXT:    vmovaps 32(%rsi), %xmm2
; AVX1-NEXT:    vmovaps 48(%rsi), %xmm3
; AVX1-NEXT:    vmovaps (%rdi), %xmm4
; AVX1-NEXT:    vmovaps 16(%rdi), %xmm5
; AVX1-NEXT:    vmovaps 32(%rdi), %xmm6
; AVX1-NEXT:    vmovaps 48(%rdi), %xmm7
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm1 = xmm4[2],xmm0[2],xmm4[3],xmm0[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm0 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm1, %ymm0, %ymm0
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm1 = xmm6[2],xmm2[2],xmm6[3],xmm2[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm2 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm1, %ymm2, %ymm1
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm2 = xmm7[2],xmm3[2],xmm7[3],xmm3[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm3 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm2, %ymm3, %ymm2
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm3 = xmm5[2],xmm8[2],xmm5[3],xmm8[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm4 = xmm5[0],xmm8[0],xmm5[1],xmm8[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm3, %ymm4, %ymm3
; AVX1-NEXT:    vmovaps %ymm3, 32(%rdx)
; AVX1-NEXT:    vmovaps %ymm2, 96(%rdx)
; AVX1-NEXT:    vmovaps %ymm1, 64(%rdx)
; AVX1-NEXT:    vmovaps %ymm0, (%rdx)
; AVX1-NEXT:    vzeroupper
; AVX1-NEXT:    retq
;
; AVX2-LABEL: store_i32_stride2_vf16:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vmovaps (%rsi), %xmm0
; AVX2-NEXT:    vmovaps 16(%rsi), %xmm1
; AVX2-NEXT:    vmovaps 32(%rsi), %xmm2
; AVX2-NEXT:    vmovaps 48(%rsi), %xmm3
; AVX2-NEXT:    vmovaps (%rdi), %xmm4
; AVX2-NEXT:    vmovaps 16(%rdi), %xmm5
; AVX2-NEXT:    vmovaps 32(%rdi), %xmm6
; AVX2-NEXT:    vmovaps 48(%rdi), %xmm7
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm8 = xmm6[2],xmm2[2],xmm6[3],xmm2[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm2 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm6 = xmm7[2],xmm3[2],xmm7[3],xmm3[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm3 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm7 = xmm5[2],xmm1[2],xmm5[3],xmm1[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm1 = xmm5[0],xmm1[0],xmm5[1],xmm1[1]
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm5 = xmm4[2],xmm0[2],xmm4[3],xmm0[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm0 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
; AVX2-NEXT:    vmovaps %xmm0, (%rdx)
; AVX2-NEXT:    vmovaps %xmm5, 16(%rdx)
; AVX2-NEXT:    vmovaps %xmm1, 32(%rdx)
; AVX2-NEXT:    vmovaps %xmm7, 48(%rdx)
; AVX2-NEXT:    vmovaps %xmm3, 96(%rdx)
; AVX2-NEXT:    vmovaps %xmm6, 112(%rdx)
; AVX2-NEXT:    vmovaps %xmm2, 64(%rdx)
; AVX2-NEXT:    vmovaps %xmm8, 80(%rdx)
; AVX2-NEXT:    retq
;
; AVX512-LABEL: store_i32_stride2_vf16:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vmovdqu64 (%rdi), %zmm0
; AVX512-NEXT:    vmovdqu64 (%rsi), %zmm1
; AVX512-NEXT:    vmovdqa64 {{.*#+}} zmm2 = [0,16,1,17,2,18,3,19,4,20,5,21,6,22,7,23]
; AVX512-NEXT:    vpermi2d %zmm1, %zmm0, %zmm2
; AVX512-NEXT:    vmovdqa64 {{.*#+}} zmm3 = [8,24,9,25,10,26,11,27,12,28,13,29,14,30,15,31]
; AVX512-NEXT:    vpermi2d %zmm1, %zmm0, %zmm3
; AVX512-NEXT:    vmovdqu64 %zmm3, 64(%rdx)
; AVX512-NEXT:    vmovdqu64 %zmm2, (%rdx)
; AVX512-NEXT:    vzeroupper
; AVX512-NEXT:    retq
  %in.vec0 = load <16 x i32>, ptr %in.vecptr0, align 32
  %in.vec1 = load <16 x i32>, ptr %in.vecptr1, align 32

  %concat01 = shufflevector <16 x i32> %in.vec0, <16 x i32> %in.vec1, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i32> %concat01, <32 x i32> poison, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>

  store <32 x i32> %interleaved.vec, ptr %out.vec, align 32

  ret void
}

define void @store_i32_stride2_vf32(ptr %in.vecptr0, ptr %in.vecptr1, ptr %out.vec) nounwind {
; SSE-LABEL: store_i32_stride2_vf32:
; SSE:       # %bb.0:
; SSE-NEXT:    movaps 112(%rdi), %xmm4
; SSE-NEXT:    movaps 96(%rdi), %xmm6
; SSE-NEXT:    movaps 80(%rdi), %xmm8
; SSE-NEXT:    movaps 64(%rdi), %xmm9
; SSE-NEXT:    movaps (%rdi), %xmm11
; SSE-NEXT:    movaps 16(%rdi), %xmm14
; SSE-NEXT:    movaps 32(%rdi), %xmm15
; SSE-NEXT:    movaps 48(%rdi), %xmm5
; SSE-NEXT:    movaps 96(%rsi), %xmm0
; SSE-NEXT:    movaps %xmm0, {{[-0-9]+}}(%r{{[sb]}}p) # 16-byte Spill
; SSE-NEXT:    movaps 80(%rsi), %xmm12
; SSE-NEXT:    movaps 64(%rsi), %xmm13
; SSE-NEXT:    movaps (%rsi), %xmm2
; SSE-NEXT:    movaps 16(%rsi), %xmm1
; SSE-NEXT:    movaps 32(%rsi), %xmm0
; SSE-NEXT:    movaps 48(%rsi), %xmm3
; SSE-NEXT:    movaps %xmm11, %xmm7
; SSE-NEXT:    unpckhps {{.*#+}} xmm7 = xmm7[2],xmm2[2],xmm7[3],xmm2[3]
; SSE-NEXT:    movaps %xmm7, {{[-0-9]+}}(%r{{[sb]}}p) # 16-byte Spill
; SSE-NEXT:    unpcklps {{.*#+}} xmm11 = xmm11[0],xmm2[0],xmm11[1],xmm2[1]
; SSE-NEXT:    movaps %xmm14, %xmm10
; SSE-NEXT:    unpckhps {{.*#+}} xmm10 = xmm10[2],xmm1[2],xmm10[3],xmm1[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1]
; SSE-NEXT:    movaps %xmm15, %xmm2
; SSE-NEXT:    unpckhps {{.*#+}} xmm2 = xmm2[2],xmm0[2],xmm2[3],xmm0[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1]
; SSE-NEXT:    movaps %xmm5, %xmm0
; SSE-NEXT:    unpckhps {{.*#+}} xmm0 = xmm0[2],xmm3[2],xmm0[3],xmm3[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
; SSE-NEXT:    movaps %xmm9, %xmm1
; SSE-NEXT:    unpckhps {{.*#+}} xmm1 = xmm1[2],xmm13[2],xmm1[3],xmm13[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm9 = xmm9[0],xmm13[0],xmm9[1],xmm13[1]
; SSE-NEXT:    movaps %xmm8, %xmm13
; SSE-NEXT:    unpckhps {{.*#+}} xmm13 = xmm13[2],xmm12[2],xmm13[3],xmm12[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm8 = xmm8[0],xmm12[0],xmm8[1],xmm12[1]
; SSE-NEXT:    movaps %xmm6, %xmm3
; SSE-NEXT:    movaps {{[-0-9]+}}(%r{{[sb]}}p), %xmm7 # 16-byte Reload
; SSE-NEXT:    unpckhps {{.*#+}} xmm3 = xmm3[2],xmm7[2],xmm3[3],xmm7[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1]
; SSE-NEXT:    movaps 112(%rsi), %xmm12
; SSE-NEXT:    movaps %xmm4, %xmm7
; SSE-NEXT:    unpckhps {{.*#+}} xmm7 = xmm7[2],xmm12[2],xmm7[3],xmm12[3]
; SSE-NEXT:    unpcklps {{.*#+}} xmm4 = xmm4[0],xmm12[0],xmm4[1],xmm12[1]
; SSE-NEXT:    movaps %xmm4, 224(%rdx)
; SSE-NEXT:    movaps %xmm7, 240(%rdx)
; SSE-NEXT:    movaps %xmm6, 192(%rdx)
; SSE-NEXT:    movaps %xmm3, 208(%rdx)
; SSE-NEXT:    movaps %xmm8, 160(%rdx)
; SSE-NEXT:    movaps %xmm13, 176(%rdx)
; SSE-NEXT:    movaps %xmm9, 128(%rdx)
; SSE-NEXT:    movaps %xmm1, 144(%rdx)
; SSE-NEXT:    movaps %xmm5, 96(%rdx)
; SSE-NEXT:    movaps %xmm0, 112(%rdx)
; SSE-NEXT:    movaps %xmm15, 64(%rdx)
; SSE-NEXT:    movaps %xmm2, 80(%rdx)
; SSE-NEXT:    movaps %xmm14, 32(%rdx)
; SSE-NEXT:    movaps %xmm10, 48(%rdx)
; SSE-NEXT:    movaps %xmm11, (%rdx)
; SSE-NEXT:    movaps {{[-0-9]+}}(%r{{[sb]}}p), %xmm0 # 16-byte Reload
; SSE-NEXT:    movaps %xmm0, 16(%rdx)
; SSE-NEXT:    retq
;
; AVX1-LABEL: store_i32_stride2_vf32:
; AVX1:       # %bb.0:
; AVX1-NEXT:    vmovaps 96(%rsi), %xmm0
; AVX1-NEXT:    vmovaps 96(%rdi), %xmm1
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm2 = xmm1[2],xmm0[2],xmm1[3],xmm0[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm0 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm2, %ymm0, %ymm8
; AVX1-NEXT:    vmovaps 64(%rsi), %xmm1
; AVX1-NEXT:    vmovaps 64(%rdi), %xmm2
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm3 = xmm2[2],xmm1[2],xmm2[3],xmm1[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm1 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm3, %ymm1, %ymm9
; AVX1-NEXT:    vmovaps 80(%rsi), %xmm2
; AVX1-NEXT:    vmovaps 80(%rdi), %xmm3
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm4 = xmm3[2],xmm2[2],xmm3[3],xmm2[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm2 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm4, %ymm2, %ymm10
; AVX1-NEXT:    vmovaps (%rsi), %xmm3
; AVX1-NEXT:    vmovaps 16(%rsi), %xmm4
; AVX1-NEXT:    vmovaps 32(%rsi), %xmm11
; AVX1-NEXT:    vmovaps 48(%rsi), %xmm6
; AVX1-NEXT:    vmovaps (%rdi), %xmm7
; AVX1-NEXT:    vmovaps 16(%rdi), %xmm0
; AVX1-NEXT:    vmovaps 32(%rdi), %xmm1
; AVX1-NEXT:    vmovaps 48(%rdi), %xmm2
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm5 = xmm0[2],xmm4[2],xmm0[3],xmm4[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm5, %ymm0, %ymm0
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm4 = xmm7[2],xmm3[2],xmm7[3],xmm3[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm3 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm4, %ymm3, %ymm3
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm4 = xmm2[2],xmm6[2],xmm2[3],xmm6[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm4, %ymm2, %ymm2
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm4 = xmm1[2],xmm11[2],xmm1[3],xmm11[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm4, %ymm1, %ymm1
; AVX1-NEXT:    vmovaps 112(%rsi), %xmm4
; AVX1-NEXT:    vmovaps 112(%rdi), %xmm5
; AVX1-NEXT:    vunpckhps {{.*#+}} xmm6 = xmm5[2],xmm4[2],xmm5[3],xmm4[3]
; AVX1-NEXT:    vunpcklps {{.*#+}} xmm4 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
; AVX1-NEXT:    vinsertf128 $1, %xmm6, %ymm4, %ymm4
; AVX1-NEXT:    vmovaps %ymm4, 224(%rdx)
; AVX1-NEXT:    vmovaps %ymm1, 64(%rdx)
; AVX1-NEXT:    vmovaps %ymm2, 96(%rdx)
; AVX1-NEXT:    vmovaps %ymm3, (%rdx)
; AVX1-NEXT:    vmovaps %ymm0, 32(%rdx)
; AVX1-NEXT:    vmovaps %ymm10, 160(%rdx)
; AVX1-NEXT:    vmovaps %ymm9, 128(%rdx)
; AVX1-NEXT:    vmovaps %ymm8, 192(%rdx)
; AVX1-NEXT:    vzeroupper
; AVX1-NEXT:    retq
;
; AVX2-LABEL: store_i32_stride2_vf32:
; AVX2:       # %bb.0:
; AVX2-NEXT:    vmovaps 64(%rsi), %xmm1
; AVX2-NEXT:    vmovaps 64(%rdi), %xmm2
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm0 = xmm2[2],xmm1[2],xmm2[3],xmm1[3]
; AVX2-NEXT:    vmovaps %xmm0, {{[-0-9]+}}(%r{{[sb]}}p) # 16-byte Spill
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm9 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
; AVX2-NEXT:    vmovaps 80(%rsi), %xmm3
; AVX2-NEXT:    vmovaps 80(%rdi), %xmm4
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm10 = xmm4[2],xmm3[2],xmm4[3],xmm3[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm11 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
; AVX2-NEXT:    vmovaps (%rsi), %xmm4
; AVX2-NEXT:    vmovaps 16(%rsi), %xmm5
; AVX2-NEXT:    vmovaps 32(%rsi), %xmm6
; AVX2-NEXT:    vmovaps 48(%rsi), %xmm7
; AVX2-NEXT:    vmovaps (%rdi), %xmm0
; AVX2-NEXT:    vmovaps 16(%rdi), %xmm1
; AVX2-NEXT:    vmovaps 32(%rdi), %xmm2
; AVX2-NEXT:    vmovaps 48(%rdi), %xmm3
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm12 = xmm1[2],xmm5[2],xmm1[3],xmm5[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm13 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm14 = xmm0[2],xmm4[2],xmm0[3],xmm4[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm15 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm8 = xmm3[2],xmm7[2],xmm3[3],xmm7[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm4 = xmm3[0],xmm7[0],xmm3[1],xmm7[1]
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm7 = xmm2[2],xmm6[2],xmm2[3],xmm6[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm3 = xmm2[0],xmm6[0],xmm2[1],xmm6[1]
; AVX2-NEXT:    vmovaps 112(%rsi), %xmm6
; AVX2-NEXT:    vmovaps 112(%rdi), %xmm1
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm5 = xmm1[2],xmm6[2],xmm1[3],xmm6[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm2 = xmm1[0],xmm6[0],xmm1[1],xmm6[1]
; AVX2-NEXT:    vmovaps 96(%rsi), %xmm6
; AVX2-NEXT:    vmovaps 96(%rdi), %xmm0
; AVX2-NEXT:    vunpckhps {{.*#+}} xmm1 = xmm0[2],xmm6[2],xmm0[3],xmm6[3]
; AVX2-NEXT:    vunpcklps {{.*#+}} xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1]
; AVX2-NEXT:    vmovaps %xmm0, 192(%rdx)
; AVX2-NEXT:    vmovaps %xmm1, 208(%rdx)
; AVX2-NEXT:    vmovaps %xmm2, 224(%rdx)
; AVX2-NEXT:    vmovaps %xmm5, 240(%rdx)
; AVX2-NEXT:    vmovaps %xmm3, 64(%rdx)
; AVX2-NEXT:    vmovaps %xmm7, 80(%rdx)
; AVX2-NEXT:    vmovaps %xmm4, 96(%rdx)
; AVX2-NEXT:    vmovaps %xmm8, 112(%rdx)
; AVX2-NEXT:    vmovaps %xmm15, (%rdx)
; AVX2-NEXT:    vmovaps %xmm14, 16(%rdx)
; AVX2-NEXT:    vmovaps %xmm13, 32(%rdx)
; AVX2-NEXT:    vmovaps %xmm12, 48(%rdx)
; AVX2-NEXT:    vmovaps %xmm11, 160(%rdx)
; AVX2-NEXT:    vmovaps %xmm10, 176(%rdx)
; AVX2-NEXT:    vmovaps %xmm9, 128(%rdx)
; AVX2-NEXT:    vmovaps {{[-0-9]+}}(%r{{[sb]}}p), %xmm0 # 16-byte Reload
; AVX2-NEXT:    vmovaps %xmm0, 144(%rdx)
; AVX2-NEXT:    retq
;
; AVX512-LABEL: store_i32_stride2_vf32:
; AVX512:       # %bb.0:
; AVX512-NEXT:    vmovdqu64 (%rdi), %zmm0
; AVX512-NEXT:    vmovdqu64 64(%rdi), %zmm1
; AVX512-NEXT:    vmovdqu64 (%rsi), %zmm2
; AVX512-NEXT:    vmovdqu64 64(%rsi), %zmm3
; AVX512-NEXT:    vmovdqa64 {{.*#+}} zmm4 = [8,24,9,25,10,26,11,27,12,28,13,29,14,30,15,31]
; AVX512-NEXT:    vmovdqa64 %zmm0, %zmm5
; AVX512-NEXT:    vpermt2d %zmm2, %zmm4, %zmm5
; AVX512-NEXT:    vmovdqa64 {{.*#+}} zmm6 = [0,16,1,17,2,18,3,19,4,20,5,21,6,22,7,23]
; AVX512-NEXT:    vpermt2d %zmm2, %zmm6, %zmm0
; AVX512-NEXT:    vpermi2d %zmm3, %zmm1, %zmm4
; AVX512-NEXT:    vpermt2d %zmm3, %zmm6, %zmm1
; AVX512-NEXT:    vmovdqu64 %zmm1, 128(%rdx)
; AVX512-NEXT:    vmovdqu64 %zmm4, 192(%rdx)
; AVX512-NEXT:    vmovdqu64 %zmm0, (%rdx)
; AVX512-NEXT:    vmovdqu64 %zmm5, 64(%rdx)
; AVX512-NEXT:    vzeroupper
; AVX512-NEXT:    retq
  %in.vec0 = load <32 x i32>, ptr %in.vecptr0, align 32
  %in.vec1 = load <32 x i32>, ptr %in.vecptr1, align 32

  %concat01 = shufflevector <32 x i32> %in.vec0, <32 x i32> %in.vec1, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec = shufflevector <64 x i32> %concat01, <64 x i32> poison, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>

  store <64 x i32> %interleaved.vec, ptr %out.vec, align 32

  ret void
}
