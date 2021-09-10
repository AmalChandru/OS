[org 0x7c00] ;our offset is bootsector code

mov bx, HELLO_MSG
call print

mov bx, GOODBYE_MSG
call print

jmp $

; including subroutines 
%include "print_string.asm"

;data
HELLO_MSG:
db 'Hello, World', 0

GOODBYE_MSG:
db 'Goodbye!', 0

; padding and magic number
times 510-($-$$) db 0
dw 0xaa55
