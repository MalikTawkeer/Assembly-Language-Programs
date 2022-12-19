zaid segment
    letter db 0Dh, 0Ah,"Enter Captital Letter $" 
    
    
    zaid ends

code segment 
    ASSUME cs:code,ds:zaid
   
   START: mov ax,zaid
          mov ds,ax    
          
          mov ah,09h
          lea dx,letter
          int 21h
          

mov ah, 1
int 21h
mov dl, al
add dl,32
mov ah, 2
int 21h 
mov ah,4ch
int 21h
                
                
 code ends            

end START
