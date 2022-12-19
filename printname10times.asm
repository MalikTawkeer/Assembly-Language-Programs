data segment
    name db 0DH,0AH, "malik tawkeer$"
    
    data ends

code segment 
    
      assume cs:code, ds:data
      
     START:
     mov ax,data
     mov ds,ax
     
     loopName: 
    
     mov dx,10h
     mov ah,09h
     lea dx,name
     int 21h
     
     loop
    
    code ends   

end START