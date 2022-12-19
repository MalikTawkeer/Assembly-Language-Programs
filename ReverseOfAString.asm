; Reverse of a string  using stack 
stack segment
    
    stack ends

data segment 
    str db "MALIK $"
    data ends  

code segment   
    assume cs:code, ds:data ss:stack
    start:
    mov ax,data
    mov ds,ax   
    mov ax,stack
    mov ss,ax
    
    mov si,offset str ;si points to start of str
    
    mov cx,5
    
    loop1:
        mov bx,[si]
        push bx
        inc si
        loop loop1 ;loop for pushing all string elements into a stack
       
       ;popping from string lifo manner
       mov cx,5 
    loop2:
    pop ax
    mov dx,ax 
    
    add dx,20
    
    mov ah,2
    int 21h    
    
    loop loop2
    mov ah,4ch
    int 21h
        
        
    
    code ends
ends start