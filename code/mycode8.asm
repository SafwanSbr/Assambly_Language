.model small
.stack 100h
.data
count db ?
.code
 
mov cl,"0"
mov ah,1
int 21h
 
WHILE_:
    cmp al,0dh
    je END_WHILE
 
    inc cl
 
int 21h
jmp WHILE_
 
END_WHILE:
 
mov count,cl
 
mov ah,2
mov dl,0Ah
int 21h
mov dl,0Dh
int 21h
 
 
mov dl,count
int 21h



