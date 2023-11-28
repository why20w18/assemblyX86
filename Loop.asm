.model small                      
.stack 32
.data
.code
    
    ;.startup
    mov ax,@data
    mov ds,ax
    
    mov cx,10 ;10 defa calissin dongu
    
    mov ax,0000h ;donguye girmeden sifirladim dogru olcum icin
    dongum:
    ;add ax,1
    
    inc ax
    loop dongum           
           
    ;.exit
    mov ax,004ch
    int 21h
         
end
