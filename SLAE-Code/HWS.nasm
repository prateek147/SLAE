; HelloWorldShellCode.nasm
; Author:Prateek Gianchandani
; Email:prateek.searchingeye@gmail.com

global _start

section .text

_start:
	
	call shellcode
        message: db "Hello World!",0xA


shellcode:
	
	; prints Hello World
	xor eax,eax
	mov al,0x4
	xor ebx,ebx
	mov bl,0x1
	pop ecx
	xor edx,edx
	mov dl, 13
	; or mov edx, mlen
	int 0x80

	;Exit program
	xor eax,eax
	mov al,0x1
	xor ebx,ebx
	mov bl, 0x5
	int 0x80


