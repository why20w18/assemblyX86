name "tek cift programlari ayiran program"

.model small
.stack 32
.data
                                                    
    sayilar db 12,10,3,8,31,14,0,4,1,54
    tek     db 10 dup(0)
    cift    db 10 dup(?)
.code

    .STARTUP
    
    mov si,offset sayilar
    mov di,offset tek
    mov bx,offset cift   
    
    mov cx,10
    ;SON BITI KONTROL EDIYORUM ZERO FLAGI ETKILEYECEK
    dongu:
    test [si],00000001 ;BELLEK ADRESINDEN KONTROL EDERIZ CONST DEGER DEGIL
    jz  cfsayidir;ZF=1
    jnz tksayidir;ZF=0
    
    cfsayidir:
    mov al,[si]
    mov [bx],al
    inc si
    inc bx
    jmp next ;TEK ISLEMLERINE GIRMESIN
    
    
    tksayidir:
    mov al,[si]
    mov [di],al
    inc si
    inc di
    
    
    next:   
    loop dongu   
    
    .EXIT
end
