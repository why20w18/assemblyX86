name "metni 1 bit saga kaydirarak sifreleyen program"
.model small
.stack 32
.data
   
   metin db 'x86Assemmbly'
   ;x : 01111000b
   ;ror ile kaydirdik bit degerini
   ;< : 00111100b
.code
    .STARTUP
    
    lea si,metin 
    mov cx,12
    
    dongu:
    call sifrele
    loop dongu
         
    dongu2:
    call decrypt
    loop dongu2
    
    jmp sonAtla ;SIFRELEYIP COZUNCE BITIR
    
    ;PROSEDUR     
    sifrele proc
        ror [si],1
        inc si    
        
        ret
    sifrele endp 
    
    ;PROSEDUR2
    decrypt proc
       dec si    ;si son indexin ilerisini gosterir       
       rol [si],1
             
       ret      
    decrypt endp
    
     sonAtla:
     
    .EXIT
end    
