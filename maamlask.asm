data segment
   msg1 db 0Dh,0Ah, "ENTER A NUMBER: $"
   data ends 

code segment
    assume cs:code, ds:data
    
    START:
    mov ah, 09h  
    lea dx,msg1
    int 21h
    
    mov ah,1   ; getting single from screen
    Int 21h 
    
    mov dl, al
    mov ah, 2
    int 21h  
    
    
    mov ah,4ch
    int 21h  
     
    
    
  
code ends
    end START
