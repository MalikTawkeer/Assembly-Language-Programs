    
    
    ;PROGRAM TO FIND MINIMUM AND MAXIMUM OF TWO NUMBERS
    
data segment 
    
    n1 dw 1234h
    n2 dw 4321h
    
    minMsg db " IS NUMBER IS MINIMUM"
    maxMsg db "NUMBER IS MAXIMUM"
    
    data ends
    
    code segment
    assume cs:code, ds:data
    
    start:
    mov ax,data 
    mov ds,ax
    
    mov ax,n1
    cmp ax,n2
    jc skip
    mov ah,9
    lea ax,n1
    lea ax,minMsg
    int 21h
    
    jmp over
    
skip: 
over:	mov ah,9
lea ax,n2
lea ax,maxMsg
int 21h

mov ax,4C00h
int 21h

code ends
ends start
    