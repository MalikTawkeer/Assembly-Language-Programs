code segment 
    assume cs:code
    
    start: mov ax,1234h
           mov bx,4321h
           add ax,bx
            
           sub ax, 48h
           mov dx,ax  
           
           mov ah,2h
           int 21h    
                      
           mov ax,04Ch ;terminate program
           
           int 21h  
           
           
           
           code ends
    end start