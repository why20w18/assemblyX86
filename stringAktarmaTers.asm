name "Stringi karakter karakter farkli diziye ters ve duz atama"

.model small
.stack 32
.data

    metin db 'AssemblyX86'
    normal db 11 dup(0)
    ters   db 11 dup(0)

.code
    .STARTUP
     
     ;STRING DEGERLERIN ADRESINI ATADIM
     mov si,offset metin
     mov di,offset normal
     mov bx,offset ters
     
     add bx,10 ;SON YAZDIRMA ICIN ADRESI ILERI ITTIK
     mov cx,11
     
     dongu:
     mov al,[si]
     mov [di],al
     mov [bx],al
     inc si
     inc di
     dec bx
     loop dongu
     
    .EXIT
end
