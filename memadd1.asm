bits 32
global _start


section .data
	mem dd 10

_start:
	mov eax, [mem]
	add eax, 5
	mov eax, 1
	xor ebx, eax
	int 0x80
