; multi-segment exe kullanimi.

data segment
   
   deneme db 20h,25h,31h
   
ends

ekstraData segment
   
   deneme2 db 11h,13h,17h  
 

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
    
    mov cx,4
    mov di,0
    dongu:
    lea bx,es:deneme2
    mov al,es:bx[di]
    ;mov al,es:deneme2[di] ; kullanilabilirdi
    inc di
    
    loop dongu
  
    
    mov ax, 4c00h
    int 21h    
ends

end start 
