section .bss
	digitSpace resb 100
	digitSpacePos resb 100

section .data
	text db "Hello, World!",10,0

section .text
	global _start

_start:

	mov rax, 0 ; int rax = 100
	_loop: ; loop
	mov rbx, 10 ; int rax = 10
	add rax, 1 ; int rax++
	push rax
	push rbx
	
	call _printRAX ;call function printRax
	pop rbx
	pop rax
	cmp rax, rbx ;Comparison
	jne _loop ; jump loop		

;Close Program
	mov rax, 60
	mov rdi, 0
	syscall


_printRAX:
	mov rcx, digitSpace ;
	mov rbx, 10
	mov [rcx], rbx
	inc rcx
	mov [digitSpacePos], rcx

_printRAXLoop:
	mov rdx, 0
	mov rbx, 10
	div rbx
	push rax
	add rdx, 48

	mov rcx, [digitSpacePos]
	mov [rcx], dl
	inc rcx
	mov [digitSpacePos], rcx
	
	pop rax
	cmp rax, 0
	jne _printRAXLoop

_printRAXLoop2:
	mov rcx, [digitSpacePos]

	mov rax, 1
	mov rdi, 1
	mov rsi, rcx
	mov rdx, 1
	syscall

	mov rcx, [digitSpacePos]
	dec rcx
	mov [digitSpacePos], rcx

	cmp rcx, digitSpace
	jge _printRAXLoop2
	ret
