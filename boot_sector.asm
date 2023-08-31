[org 0x7c00]
; entry point
KERNEL_OFFSET equ 0x1000
; store boot drive in dl register
mov [BOOT_DRIVE], dl
mov bp, 0x9000
mov sp, bp
call load_kernel
jmp $
%include "disk.asm"
load_kernel:
    mov bx, KERNEL_OFFSET
    mov dh, 2
    mov dl, [BOOT_DRIVE]
    call load
    ret
BOOT_DRIVE db 0
times 510 - ($-$$) db 0
dw 0xaa55