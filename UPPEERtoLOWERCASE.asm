; CONVERT A ALPHABET FROM LOWER CASE TO UPPERCASE

mov ah,1    ; read a character
int 21h                       

sub al,20h  ;convrert to lower to upper case

mov ah,02h

mov dl,al
int 21h