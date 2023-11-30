name "dolu diziden bos diziye eleman tasima"
org 100h

    lea si,sayi1 ;sayi1 adresi
    lea di,sayi2
    ;mov sayi2[di],[si] ;registerlar arasi aktarim olmaz
          
    mov cx,4          
    dongu:          
    mov al,[si]
    xchg al,[di]
    inc si
    inc di
    
    loop dongu
    

ret
sayi1 db 10h,19h,52h,9h
sayi2 db 4 dup(?)
