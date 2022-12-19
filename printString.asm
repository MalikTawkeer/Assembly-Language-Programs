       ;program to print strings on screen
 data segment
    msg1 db 0DH,0AH,"MALIK $"
    msg2 db 0DH,0AH ,"TAWKEER UL ISLAM $"
    
    data ends
 code segment 
    assume cs:code , ds:data
    start:
     mov ax, data   ;put base address of data into ax
     mov ds,ax      ; put ax into ds register   
     
     
     ;DISPLAYING MESSAGE msg1
     mov ah,09h     ;DISPLAY A STRING ON SCREEN
     lea dx,msg1    ; LOAD OFFSET  ADDRESS OF msg1 INTO BX REG FROM DATA SEGMENT 
     INT 21H 
     
     ;DISPLAY A STRING ON SCREEN msg2
     lea dx,msg2    ; LOAD OFFSET  ADDRESS OF msg1 INTO BX REG FROM DATA SEGMENT 
     INT 21H
    code ends 
 end start
     
     
    
    