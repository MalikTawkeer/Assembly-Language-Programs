       ; INPUT TWO NUMBERS AND ADD THEM AND PRINT THEM
 zaid segment
    firstNumber db 0DH, 0AH , "ENTER FIRST NUMBER: $"
    secondNumber db 0DH, 0AH , "ENTER SECOND NUMBER: $"
    sum db ?
    zaid ends
 
 code segment
    assume cs:code,ds:zaid
   
   START: mov ax,zaid
          mov ds,ax
          
          mov ah,09h
          lea dx,firstNumber
          int 21h 
          
          mov ah,01
          int 21h
          mov dl,al 
          
          
          mov ah,09h
          lea dx,firstNumber
          int 21h 
          
          mov ah,01
          int 21h
          mov bl,al  
          
          add ah,bl
          mov sum,ah
          
          mov ah,02
          int 21h
          
          
    
                    
                    
    code ends       
 
 end START