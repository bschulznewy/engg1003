	.file	"longdouble.c"
	.text
	.globl	__addtf3
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -20(%rbp)
	jmp	.L2
.L3:
	movdqa	.LC0(%rip), %xmm1
	movdqa	-16(%rbp), %xmm0
	call	__addtf3@PLT
	movaps	%xmm0, -16(%rbp)
	addl	$1, -20(%rbp)
.L2:
	cvtsi2sd	-20(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.L3
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC0:
	.long	0
	.long	0
	.long	0
	.long	1073676288
	.align 8
.LC1:
	.long	0
	.long	1100470148
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
