org 100h

.data
answer dw ?

.code  
 mov cx , 5
 mov ax , 0
 mov bx , 1

summation: 
 add ax , bx  
 add bx , 4

 mov answer , ax
 loop summation  

 end main
 


	