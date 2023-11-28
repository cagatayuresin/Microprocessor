.model small

.data
    dizi_1 dw 4, 8, 12, 0, 3
    dizi_2 dw 8, 10, 11, 0, 7
    adet dw 3
.code
.startup
    mov cx, adet
    mov si, 0
dongu:
    mov ax, dizi_1[si]
    mov bx, dizi_2[si]
    mov dizi_1[si], bx
    mov dizi_2[si], ax
    inc si
    inc si
    loop dongu
.exit
end
