section .data
        text db "Enter a number: ",10,0

section .text
global _start

_start:

;Enter in a number function
call _enter

;Print Number func
call _printNum

;insert into arry
call _intoArray

;Print Array when done
call _printArray

;;Close the program 
mov rax, 60
mov rdi, 0
syscall

_enter:

ret

_printNum:

ret

_intoArray:

ret

_printArray:

ret
