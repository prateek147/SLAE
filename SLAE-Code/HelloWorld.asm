; HelloWorld.asm
; Author:Prateek Gianchandani
; Email: prateek.searchingeye@gmail.com

global _start

section .text

_start:
	
	; prints Hello World
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, 12
	; or mov edx, mlen
	int 0x80

	;Exit program
	mov eax, 0x1
	mov ebx, 0x5
	int 0x80


section .data
	
	message: db "Hello World!"
	mlen equ $-message
