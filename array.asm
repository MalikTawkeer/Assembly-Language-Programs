

            ;PROGRAM TO MULTIPLY SCALAR VALUE TO AN ARRY
data segment     
    
    scalar db 20h
    values db 20h,21h,22h
    m_values dw ?        
              
    data ends 

code segment 
    assume cs:code,ds:data
    
    START: 
    mov ax,data
    mov ds,ax
    mov dx,3
    lea si,values
    lea bx,scalar
    
next:mov al,BYTE PTR[si]
    mul bx
    mov m_values,ax
    mov ax,4c00h
    INT 21h
    
    code ends 