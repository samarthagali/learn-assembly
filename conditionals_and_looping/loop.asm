section .data
    lop db "in the loop",0x0a
    llen equ $ - lop
    ext db "exiting loop",0x0a
    exlen equ $- ext
section .text
    global _start
_start:
    mov ebx,1
    mov r9d,0
    jmp lp
lp:
    cmp r9d,10
    jle lesseq
    mov eax,4
    mov ebx,1
    mov ecx,ext
    mov edx,exlen
    int 0x80
    mov eax,1
    mov ebx,0
    int 0x80
lesseq:
    mov eax,4
    mov ebx,1
    mov ecx,lop
    mov edx,llen
    int 0x80
    inc r9d
    jmp lp