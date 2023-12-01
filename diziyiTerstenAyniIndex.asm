name "rep movsw tersten atama"

.model small
.stack 32
.data   

        metin db 'X86Assembly'
hedefDiziTers db 11 dup(0)    ;ATAMALARI YAPMAYA SONDAN BASLAYACAK BU DIZIYE
.code
    
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    std;ATAMAYI AYNI INDEX DEGERINE TERSTEN YAP DF=1
    mov si,offset metin
    add si,10
    mov di,offset hedefDiziTers
    add di,10
    mov cx,11
    rep movsw ;TEK ADIMDA 2 ADET ATADI
       
    
   .EXIT
end
