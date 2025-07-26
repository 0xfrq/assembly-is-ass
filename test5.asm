bits 64
global _start


section .data
	a dq 0x7126389127312
	b dq 0xAFAFAFAFAFAFAFAF

section .text
_start:
	mov rax, 0xafaada1a91b12a17
	mov rbx, 0x177031101701
	mov rcx, 0x12124343121232
	add rbx, rcx
	add rbx, rax
	mov eax, 0x7fffffff
	add eax, 1
	mov rcx, 0
	mov rcx, [a]
	mov rcx, [b]
	mov rax, 60
	xor rdi, rdi
	syscall
