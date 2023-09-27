;stack reverse

.model small   
.stack 100h

.data

.code
mov cx,0
mov ah, 1  
int 21h

WHILE:
   cmp al, 0dh
   je END_WHILE
   
   push ax
   inc cx
   int 21h
   
jmp WHILE

END_WHILE: 
   mov ah,2
   mov dl,0Ah
   int 21h
   mov dl,0Dh
   int 21h
   jcxz EXIT 
   
   TOP:
       pop dx
       int 21h
       
   LOOP TOP
   
   EXIT:    
       

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
add bl,0BFh

mov ah,2
mov dl,bl
int 21h


	    	