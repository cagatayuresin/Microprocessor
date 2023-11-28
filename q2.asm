.model small

.data
    data1 db 5 dup(1)
    data2 db 5 dup(2)
    adet db 5
.code
.startup
    mov bx, offset data1
    mov si, offset data2
    mov ch, 0
    mov ax, 0
    mov cl, adet
again:
    mov al, [si]
    add [bx], al
    inc bx
    inc si
    loop again
.exit
end
    