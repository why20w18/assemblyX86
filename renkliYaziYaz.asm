name "ekranin ortasina mavi arkaplan kirmizi yazi olacak sekilde Assembly X86 yazdirma"

.model small
.stack 32
.data 

    metin db 'Assembly X86'
   sutun1 db 14 
    
.code

    mov ax,@data
    mov ds,ax
    mov es,ax
    mov si,offset metin
    
    ;EKRAN ACMA
    mov ah,0
    mov al,0 ;40x25
    int 10h        
    
    mov cx,6
    
    imlecKonum macro satir,sutun
        
        mov ah,2 ;IMLEC HIZMETI
        mov dh,satir
        mov dl,sutun
        mov bh,0 ;SAYFA NO
        int 10h  ;BIOS KESMESI    
        
    imlecKonum endm           
    
    dongu:   
    imlecKonum 12,[sutun1]
    
    push cx    ;CX DEGERI YUKARDA 6 ASAGIDA TEKRAR YAZDIK 1 DIYE STACKE GONDERIRIM ESKI DEGERI
    mov ah,9   ;RENKLI YAZMA HIZMETI
    mov bh,0   ;SAYFA NO
    mov al,[si];METINDEKI HER KARAKTERIN ADRESI
    mov cx,1   
    mov bl,00010100b ;RENK AYARLADIK MAVI ARKAPLAN KIRMIZI YAZI
    int 10h
    inc si
    inc sutun1
    
    imlecKonum 12,[sutun1]
    mov ah,9   
    mov bh,0   
    mov al,[si]
    mov cx,1   
    mov bl,00010100b
    int 10h                                                    
    inc si
    inc sutun1
    
    pop cx
    loop dongu    
   
    
    
    
    mov ah,04ch
    int 21h
end    
