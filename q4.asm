.model small

.data
    A db 3, 7, 1, 4, 9
    B db 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    C dw 5

.code
.startup
    mov si, offset C
    mov cx, 4
    mov si, 0
lop:
    mov al, A[si]
    mov ah, 0
    mov di, ax
    mov B[di], 0
    inc si
    loop lop
.exit
end
