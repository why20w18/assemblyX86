name "rep movsb"

.model small
.stack 32
.data   

        metin db 'X86Assembly'
 hedefDiziDuz db 11 dup(0)
hedefDiziTers db 11 dup(0)
.code
    
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    ;DUZ YAZDIRMA   
    mov si,offset metin
    mov di,offset hedefDiziDuz   
    mov cx,11
    rep movsb

   .EXIT
end
