
        ;PROGRAM TO PRINT NAME 10 TIMES USING LOOP
        
data segment 
    
    n db "malik$"    
    data ends       



code segment 
    
ASSUME cs:code, ds:data

START:

mov ax,data
mov ds,ax

mov cx,10




next: cmp cx,0
jz over

mov ah,9
mov ax,OFFSET n
int 21h

dec cx
jmp next

over:
mov ax,4c00h
int 21h

code ends 

ends START