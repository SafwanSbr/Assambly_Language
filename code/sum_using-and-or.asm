;summation
mov ah,2
mov dl,0Ah
int 21h
mov dl,0Dh
int 21h

mov ah,1
int 21h
mov bl,al

int 21h
mov cl,al

add bl,cl

or bl,10h
and bl,0BFh

mov ah,2
mov dl,bl
int 21h