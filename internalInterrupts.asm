name "internal interrupts ornegi:icsel kesme"

.model small
.stack 32
.data
    .STARTUP
    
    mov al,0h
    mov bl,0h
    div bl
    
    ;ALINAN HATA:
    
    ;divide error - overflow.
    ;to manually process this error,
    ;change address of INT 0 in interrupt vector table. 
    
    .EXIT
end
