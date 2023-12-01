name "dizideki elemanlari sondan ikili topla ve toplamlari bastan yeni diziye yazdir"

.model small
.stack 32
.data
    
    duz db 0,1,2,3,4,5,6,7,8,9
 toplam db 5 dup(0)
 ;toplam 17,13,9,5,1 cikmali
 ;9+8,7+6,5+4,3+2,1+0

.code
    .STARTUP
    
    mov si,offset duz
    mov di,offset toplam
    
    add si,9
     
    
    mov cx,5
    
    dongu:
    mov al,[si]
    add al,[si-1]
    mov [di],al
    
    inc di
    sub si,2
 
    loop dongu   
    
    .EXIT
end
 
