load:
    pusha
    push dx
    mov ah, 0x02
    mov al, dh
    mov cl, 0x02
    mov ch, 0x00
    mov dh, 0x00
    int 0x13    ; BIOS interrupt
    jc error
    pop dx
    cmp al, dh
    jne error
    popa
    ret

 error:
   jmp loop

 loop:
   jmp $