data segment
    sumMsg db 0Dh,0ah,"SUM = $" 
    A db 21h    
    
    Ba db 30h  
    sum dw ?
    carry db 00h
    
    data ends
code segment 
    assume cs:code,ds:data
    
    START: mov ax,data
           mov ds,ax
           
           mov ax,1234h
           mov bx,4321h
           add ax,bx
           jnc skip
           inc carry
  skip:    mov sum,ax
           
           mov ah,09h
           lea dx,sumMsg
           int 21h      
           lea si,sum     
           
           mov ah, 4CH
           int 21h
           
           code ends
        end START

