.model small
.stack 100h
.data
    msg db 10, 13, "Enter a capital letter: $"
    result db 10, 13, "Corresponding small letter: $"

.code
    mov ax, @data
    mov ds, ax

    lea dx, msg
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    mov bl, al

    ; Convert to lowercase
    xor bl, 20h
    

    lea dx, result
    mov ah, 09h
    int 21h

    mov dl, bl
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h
end