section .data
    hello db "ecx <100",0x0a
    hlen equ $ - hello
    eq db "ecx =100",0x0a
    eqlen equ $ - eq
    bye db "ecx >100", 0x0a
    blen equ $- bye
section .text 
    global _start
_start:
    mov ecx,99
    mov edi,ecx
    jmp compare
compare:
    mov ecx,edi
    cmp ecx,100
    jl less
    je equa
    jg greater
less:
    mov eax,4
    mov ebx,1
    mov ecx,hello
    mov edx,hlen
    int 0x80
    inc edi
    jmp compare
equa:
    mov eax,4
    mov ebx,1
    mov ecx,eq
    mov edx,eqlen
    int 0x80
    inc edi
    jmp compare
greater:
    mov eax,4
    mov ebx,1
    mov ecx,bye
    mov edx,blen
    int 0x80
    mov eax,1
    mov ebx,4
    int 0x80