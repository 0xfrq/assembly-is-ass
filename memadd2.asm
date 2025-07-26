bits 64
global _start


section .data
	mem dd 10
	memm dq 0xAFAFAFAFAFAFAFAF

section .text
_start:
	mov eax, [mem]
	add eax, 5
	mov rbx, [memm]
	mov ecx, 0x12121212
	mov bx, 0x0000
	shl eax,16
	mov bx, cx
	shl eax, 16
	mov bx, cx
	mov bl, al
	mov rax, 60
	xor rdi, rdi
	syscall
