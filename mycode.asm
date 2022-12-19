               ;program to add to 16-bit data
code segment  
    assume cs:code
    start:      mov ax,1234h
                mov bx,4321h
                ADD ax,bx  
                mov ax,4C00h
                int 21h
  code ends
     end start
    