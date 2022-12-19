; PROGRAM TO SUM OF N POSITIVE NUMBERS

data segment
    
    N dw 000Ah
    sum dw ?    
    
    data ends

code segment
    assume cs:code, ds:data
    start:
    mov ax,data 
    mov ds,ax
    
   mov cx,N
   mov ax,0
   mov bx,1
   
   next: add ax,bx
   mov sum,ax
   inc bx
   dec cx
   
   jnz next
   
 
   mov ah,09h
   int 21h
    mov ax,4C00h
    int 21h
    
    code ends
    ends start
