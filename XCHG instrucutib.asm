       ;PROGRAM TO EXCHANGE OPERANDS / DATA 

segment data 
              
              
    n1 dw 12h 
    n2 dw 21h
       
    
    data ends     

segment code  
    
    assume: cs:code , ds:data
    
    START:
    
    mov ax,data
    mov ds,ax
    
    mov ax,n1
    xchg ax,n2
    
    mov ax,4C00h
    int 21h   
    code ends  
ends START