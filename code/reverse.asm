.model small
.stack 100h

.data

.code
mov al,11011100b 
XOR bl,bl
mov cx,8  

REVERSE: 
    SHL al,1
    RCR bl,1
    LOOP REVERSE 
    
        