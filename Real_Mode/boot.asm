ORG 0xc700 ; Initialized by the BIOS, Then we will Jump To another address in the Memory
BITS 16 ; This will ensure that the assembler will only assemble assembly instructions into 16 bit code (We are in the Real Mode)

start: ; Actuall Code start from here
    mov ah, 0eh ; VIDEO - TELETYPE OUTPUT, (See Ralf Interrupt List: http://www.ctyme.com/intr/rb-0106.htm)
    mov al, 'A'
    mov bx, 0
    int 0x10 ; Calling the BIOS Routine, We just Display A to the Screen

    jmp $ ; Keep Jumping to this line (We dont want to reach the Signature)

; The Boot Signature (In the Last 2 Bytes):
times 510-($ - $$) db 0 ; We need to fill at least 510 bytes of Data 
dw 0xAA55 ; The Reason its Not 0x55AA is Because Intel's Arch are a Little Endian That mean the Byte will get flipped when working with words (AA55 -> 55AA) 