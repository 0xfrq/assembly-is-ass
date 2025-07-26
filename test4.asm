bits 32
global _start

section .text
_start:
	mov eax, 10
	mov ebx, 25
	add eax, ebx
	mov eax, 0
	mov eax, 0xffffffff
	add eax, 1
	mov al, 0xff
	mov bl, 0x02
	mov eax, 1
	xor ebx, eax
	int 0x80
