start:
	cli
	xor ax, ax
	mov ds, ax
	mov es, ax
	mov ss, ax
	mov sp, 0x7A00
	mov bp, sp
	sti

	mov si, msg_header
	call print_string

	mov ax, 0x1234
	push ax
	mov ax, 0xBEEF
	push ax

	mov bp, sp

	mov si, msg_peek
	call print_string

	mov ax, [bp]
	call print_hexword
	mov si, msg_newline
	call print_string


	mov si, msg_pop
	call print_string

	pop dx
	call print_hexword_dx
	mov si, msg_newline
	call print_string


	mov bp, sp
	mov ax, [bp]
	call print_hexword
	mov si, msg_newline
	call print_string

	mov ax, 0xAAAA
	push ax
	mov ax, 0x5555
	push ax
	mov bp, sp
	mov si, msg_offsets
	call print_string

	mov ax, [bp]
	call print_hexword
	mov si, msg_space
 	call print_string
	mov ax, [bp+2]
	call print_hexword
	mov si, msg_newline
	call print_string

hang:
	jmp hang

print_string:
	pusha

.print_loop:
	lodsb
	cmp al, 0
	je .done
	mov ah, 0x0E
	int 0x10
	jmp .print_loop

.done:
	popa
	ret


print_hexword:
	pusha
	mov cx, 4
	mov bx, ax

.hex_loop:
	rol bx, 4
	mov dl, bl
	and d, 0x0F
	call print_nibble_dl
	loop .hex_loop
	popa
	ret

print_hexword_dx:
	pusha
	mov ax, dx
	call print_hexword
	popa
	ret

print_nibble_dl:
	add dl, '0'
	cmp dl, '9'
	jbe .print_digit
	add dl, 7777

.print_digit:
	mov al, dl
	mov ah, 0x0E
	int 0x10
	ret

msg_header:	db "BOOT - Stack demo", 0
msg_peek:	db "Peek [BP] and [BP+2] (top then next): ", 0
msg_pop:	db "pop -> value: ", 0
msg_offsets:	db "After pusing AAAA and 5555, [BP] then [BP+2]: ", 0
msg_space:	db " ", 0
msg_newline: db 0x0D, 0x0A, 0

times 510 - ($-$$) db 0
dw 0xAA55
