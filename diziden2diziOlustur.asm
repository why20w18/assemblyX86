;Diziyi 2 parcaya ayirip 2 ayri dizi olusturma

data segment
   
   sayiDizisi db 20h,25h,31h,46h
   diziBir    db ?,?
   diziIki    db 2 dup(0)  
   
ends

ekstraData segment
   
ends

stack segment
 
  dw 128 dup(0)
       
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov ax, ekstradata
    mov es, ax   
    
    mov si,offset sayiDizisi ;sayi dizisindeki ilk eleman adresi
    mov di,offset diziBir ;diziBir'deki ilk eleman adresi
    
    mov cx,2
       
    dongu:   
    mov al,[si]
    mov [di],al
    inc si  ;sayiDizisi'nin ikinci elemanina gecti
    add di,1;diziBir'in bos olan ikinci kismina gecti
    loop dongu
            
    mov cx,2      
   
    ;lea si,sayiDizisi;sayi dizisi 3.elemana gelecek basa cekmeye gerek yok adresi
    lea di,diziIki    ;diziIki'nin adresini gostersin
    ;CX TEKRAR AYARLANMALI SIFIR OLDU
    mov cx,2
    dongu2:
    mov al,[si]
    mov [di],al
    inc si
    inc di
    loop dongu2
    
    mov ax, 4c00h
    int 21h    
ends

end start 
