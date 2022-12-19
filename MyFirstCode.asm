data segment 
    A db 12
    data ends
code segment
  assume cs:code
  
  start:     
  mov ax,data 
  mov ds,ax
  mov ax , 1234  
  
  mov bl,#11  
  mov cl,#10
  And bl,cl
  
  
  code ends
end start