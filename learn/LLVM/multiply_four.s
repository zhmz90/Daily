	.text
	.file	"multiply_four.ll"
	.globl	multiply_four
	.align	16, 0x90
	.type	multiply_four,@function
multiply_four:                          # @multiply_four
	.cfi_startproc
# BB#0:
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	retq
.Lfunc_end0:
	.size	multiply_four, .Lfunc_end0-multiply_four
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
