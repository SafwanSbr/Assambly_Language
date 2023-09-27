.model small
.stack 100h
.data            
 
.code
 
mov bx,0
mov cx,16
 
input:
mov ah,1
int 21h
 
 
and al,0Fh
shl bx,1
or bl,al 
cmp al,13
 
je level1
loop input
 
level1: 
mov dl,10
mov ah,2
int 21h
mov dl,13
int 21h
 
mov cx,16
 
output:  
 
 
shl bx,1
jnc zero
mov dl,49
mov ah,2
int 21h
jmp output_loop
 
zero:
mov dl,48
mov ah,2
int 21h
 
output_loop:    
loop output