        
        ;PROGRAM TO CHECK WHETHER THE 16-BIT NUMBERS IS EVEN OR ODD
 
 data segment 
    
    n dw 1234h 
    msg1 db "NUMBER IS EVEN $"
    msg2 db "NUMBER IS ODD $"
    
    data ends
 
 
 code segment 
    
    assume cs:code, ds:data
    start:
    mov ax, data
    mov ds,ax
    
    mov ax,n
    
    AND ax,0001h
    CMP ax,0001h   ; effects Zero Flag   
    
    jz skip  
    
    mov ah, 9
    lea ax,msg1
    int 21h
    
    jmp over
    
skip:
 over: mov ah,9
     lea ax, msg2
     int 21h
     
     
     mov ax, 4C00h
     int 21
     
     
     code ends 
 
 ends start
    
    