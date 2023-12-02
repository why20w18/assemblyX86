org 100h

mov ah,0eh ;ekrana karakter yazdirma

;UZUN YOL
;mov al,'b'
;int 10h
;mov al,'u'
;int 10h
;mov al,'g'
;int 10h
mov cx,13

mov si,offset metin

dongu: 

 mov al,[si]
 int 10h
 inc si           
        
loop dongu
        
ret
metin db 'Hello World !'



