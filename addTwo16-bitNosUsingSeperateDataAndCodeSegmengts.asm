    ;ADD TWO 16-BIT NUMBERS USING Seperate Segments

data segment
    
             
            A dw 1234h ;define variable A with 1234h
            B dw 4321h ;define variabele B with 4321h
            sum dw ? 
    data ends   
code segment 
    assume cs:code,ds:data
    start:
    mov ax,data
    mov ds,ax
    
    mov ax,A
    mov bx,B
    add ax,bx
    
    mov sum, ax
    
    mov ax,4C00h
    int 21h
    
    code ends
end start