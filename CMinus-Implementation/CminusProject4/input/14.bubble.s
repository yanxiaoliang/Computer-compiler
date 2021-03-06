	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.string_const0: .string "Enter a[3:7]"
	.string_const1: .string "After initialization"
	.string_const2: .string "After input"
	.string_const3: .string "After sorting"
	.int_rformat: .string "%d"
	.comm _gp, 96, 4
	.text
	.globl sort
	.type sort,@function
sort:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rbp,%rbx
	subq $4, %rbx
	movq $_gp,%rcx
	addq $84, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
.L2:
	movq %rbp,%rcx
	subq $4, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $88, %rcx
	movl (%rcx), %r9d
	movl %r8d, %eax
	movl %r9d, %ecx
	cmpl  %ecx, %eax
	movl $0, %ecx
	movl $1, %eax
	cmovl %eax, %ecx
	movl %ecx, %r8d
	movl $0, %eax
	cmpl %eax, %r8d
	je .L1
	movq %rbp,%rcx
	subq $16, %rcx
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	movl %r9d, (%rcx)
	movq %rbp,%rcx
	subq $8, %rcx
	movq %rbp,%r8
	subq $4, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rcx)
.L4:
	movq %rbp,%r8
	subq $8, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $88, %r8
	movl (%r8), %r10d
	movl %r9d, %eax
	movl %r10d, %r8d
	cmpl  %r8d, %eax
	movl $0, %r8d
	movl $1, %eax
	cmovl %eax, %r8d
	movl %r8d, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L3
	movq $_gp,%r8
	addq $0, %r8
	movq %rbp,%r9
	subq $8, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $0, %r8
	movq %rbp,%r10
	subq $16, %r10
	movl (%r10), %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %r8
	movl (%r8), %r10d
	movl %r9d, %eax
	movl %r10d, %r8d
	cmpl  %r8d, %eax
	movl $0, %r8d
	movl $1, %eax
	cmovl %eax, %r8d
	movl %r8d, %r9d
	movl $0, %eax
	cmpl %eax, %r9d
	je .L5
	movq %rbp,%r8
	subq $16, %r8
	movq %rbp,%r9
	subq $8, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
.L5:
	movq %rbp,%r8
	subq $8, %r8
	movq %rbp,%r9
	subq $8, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp .L4
.L3:
	movq %rbp,%r8
	subq $12, %r8
	movq $_gp,%r9
	addq $0, %r9
	movq %rbp,%r10
	subq $4, %r10
	movl (%r10), %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $0, %r8
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r8
	movq $_gp,%r9
	addq $0, %r9
	movq %rbp,%r10
	subq $16, %r10
	movl (%r10), %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $0, %r8
	movq %rbp,%r9
	subq $16, %r9
	movl (%r9), %r10d
	imull $4, %r10d
	movslq %r10d, %r10
	addq %r10, %r8
	movq %rbp,%r9
	subq $12, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
	movq %rbp,%r8
	subq $4, %r8
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp .L2
.L1:
	movl $1, %r8d
	movl %r8d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl output
	.type output,@function
output:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp
	movq %rbp,%r8
	subq $4, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
.L7:
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	movl $20, %r9d
	movl %r10d, %eax
	movl %r9d, %r11d
	cmpl  %r11d, %eax
	movl $0, %r11d
	movl $1, %eax
	cmovl %eax, %r11d
	movl %r11d, %r10d
	movl $0, %eax
	cmpl %eax, %r10d
	je .L6
	movq $_gp,%r9
	addq $0, %r9
	movq %rbp,%r10
	subq $4, %r10
	movl (%r10), %r11d
	imull $4, %r11d
	movslq %r11d, %r11
	addq %r11, %r9
	movl (%r9), %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq %rbp,%r9
	subq $4, %r9
	movq %rbp,%r10
	subq $4, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%r9)
	jmp .L7
.L6:
	movq %rbp,%r9
	subq $4, %r9
	movl (%r9), %r10d
	movl %r10d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl input
	.type input,@function
input:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $_gp,%r9
	addq $84, %r9
	movl $3, %r10d
	movl %r10d, (%r9)
	movq $_gp,%r9
	addq $88, %r9
	movl $7, %r10d
	movl %r10d, (%r9)
	movq $_gp,%r9
	addq $92, %r9
	movq $_gp,%r10
	addq $84, %r10
	movl (%r10), %r11d
	movl %r11d, (%r9)
	movl $.string_const0, %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
.L9:
	movq $_gp,%r10
	addq $92, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $88, %r10
	movl (%r10), %r12d
	movl %r11d, %eax
	movl %r12d, %r10d
	cmpl  %r10d, %eax
	movl $0, %r10d
	movl $1, %eax
	cmovle %eax, %r10d
	movl %r10d, %r11d
	movl $0, %eax
	cmpl %eax, %r11d
	je .L8
	movq $_gp,%r10
	addq $0, %r10
	movq $_gp,%r11
	addq $92, %r11
	movl (%r11), %r12d
	imull $4, %r12d
	movslq %r12d, %r12
	addq %r12, %r10
	movl $.int_rformat, %edi
	movl %r10d, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%r10
	addq $92, %r10
	movq $_gp,%r11
	addq $92, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r10)
	jmp .L9
.L8:
	movq $_gp,%r10
	addq $92, %r10
	movl (%r10), %r11d
	movl %r11d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl initialize
	.type initialize,@function
initialize:	nop
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp
	movq %rbp,%r10
	subq $4, %r10
	movl $0, %r11d
	movl %r11d, (%r10)
.L11:
	movq %rbp,%r11
	subq $4, %r11
	movl (%r11), %r12d
	movl $20, %r11d
	movl %r12d, %eax
	movl %r11d, %r13d
	cmpl  %r13d, %eax
	movl $0, %r13d
	movl $1, %eax
	cmovl %eax, %r13d
	movl %r13d, %r12d
	movl $0, %eax
	cmpl %eax, %r12d
	je .L10
	movq $_gp,%r11
	addq $0, %r11
	movq %rbp,%r12
	subq $4, %r12
	movl (%r12), %r13d
	imull $4, %r13d
	movslq %r13d, %r13
	addq %r13, %r11
	movl $0, %r12d
	movl %r12d, (%r11)
	movq %rbp,%r11
	subq $4, %r11
	movq %rbp,%r12
	subq $4, %r12
	movl (%r12), %r13d
	movl $1, %r12d
	addl %r12d, %r13d
	movl %r13d, (%r11)
	jmp .L11
.L10:
	movl $1, %r11d
	movl %r11d, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%r11
	addq $80, %r11
	push %r11
	call initialize
	pop %r11
	movl %eax, (%r11)
	movl $.string_const1, %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%r11
	addq $80, %r11
	push %r11
	call output
	pop %r11
	movl %eax, (%r11)
	movq $_gp,%r11
	addq $80, %r11
	push %r11
	call input
	pop %r11
	movl %eax, (%r11)
	movl $.string_const2, %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%r11
	addq $80, %r11
	push %r11
	call output
	pop %r11
	movl %eax, (%r11)
	movq $_gp,%r11
	addq $84, %r11
	movl $0, %r12d
	movl %r12d, (%r11)
	movq $_gp,%r11
	addq $88, %r11
	movl $20, %r12d
	movl %r12d, (%r11)
	movq $_gp,%r11
	addq $80, %r11
	push %r11
	call sort
	pop %r11
	movl %eax, (%r11)
	movl $.string_const3, %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%r11
	addq $80, %r11
	push %r11
	call output
	pop %r11
	movl %eax, (%r11)
	leave
	ret
