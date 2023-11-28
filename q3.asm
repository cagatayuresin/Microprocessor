.model small

.data
    dizi_1 dw 12h, 01h, 03h, 15h, 02h
    dizi_2 dw 21h, 1Ah, 03h, 04h, 10h
    array dw 5 dup(0)
    adet db 10

.code
.startup
    mov di, 0
    mov si, 8
    mov cl, adet

dongu:
    mov ax, dizi_1[di]
    mov bx, dizi_2[si]
    add ax, bx
    mov array[si], ax
    add di, 2
    sub si, 2
    loop dongu

.exit
end
    

