.model small
.stack 100h
.data
num db 9 dup(0)
result dw 9 dup (0)
.code
main proc
mov ax,@data
mov ds,ax

mov ah, 1
int 21h    ; get input from user
mov num, al    ; store in the array 

int 21h              ;get 2nd number from user
mov num+1, al        ;store in the array at num[1] index

mov al, num          ;mov number into al
add dl, num+1        ;add num[1] in the num which is in dl

sub dl, 48           ; subract from assci so it become number 0 ~ 9

mov ah, 2            ; output
int 21h

mov ah, 4ch
int 21h
main endp
end main