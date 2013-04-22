;Filename: Stack-Demo.asm
;Author: Prateek Gianchandani
;Email: prateek.searchingeye@gmail.com


global _start

section .text
_start:
	mov eax, 0x66778899
	mov ebx, 0x0
	mov ecx, 0x0
		
	push ax
	pop bx

	push eax
	pop ecx

	;memory push and pop

	push word [sample]
	pop ecx

	push dword [sample]
	push edx

	;exit the program gracefully

	mov eax, 1
	mov ebx, 0
	int 0x80

section .data

	sample: db 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0x11, 0x22, 0x33
	
