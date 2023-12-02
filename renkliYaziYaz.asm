name "ekranin ortasina mavi arkaplan kirmizi yazi olacak sekilde Assembly X86 yazdirma"

.model small
.stack 32
.data

    metin db 'Assembly X86'
    ;satir hep sabit ama sutun sabit degil
    sutun1 db 14 ;40/2=20 
        ;sayi 12
        ;12/2=6
        ;20-6=14
    
.code
        
        mov ax,@data
        mov ds,ax
        mov es,ax
               
        mov si,offset metin
        
        ;EKRAN AC
        mov ah,0
        mov al,0 ; 40x25
        int 10h
        
        mov cx,12
        
        imlecKaydir macro satir2 sutun2
        
        mov ah,2 ;IMLEC HIZMETI
        mov dh,satir2
        mov dl,sutun2
        mov bh,0
        int 10h  ;BIOS KESMESINI CAGIRDIM    
            
        imlecKaydir endm
        
        dongu:;RENKLI YAZDIRMA ISLEMI BURADA OLACAK
        push cx
        imlecKaydir 12,[sutun1]
        
        ;RENKLI YAZDIRMA HIZMETI
        mov ah,9
        mov bh,0
        mov cx,1
        mov bl,00010100b
        mov al,[si]
        int 10h
        inc si       
        inc sutun1
        
        pop cx
        loop dongu
        
        mov ah,04ch
        int 21h
   
   
end
