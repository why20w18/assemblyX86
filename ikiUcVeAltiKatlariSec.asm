name "2 ve 3'un katlarini diziden secen program 6'nin katlarinida ikisine ekleyen program"

.model small
.stack 32
.data

    sayiDizi db 1,8,11,17,9,5,3,16,6,12,51,36,47
    katiki   db 8 dup(0)
    katuc    db 8 dup(0)
    
.code
    .STARTUP
        
        mov si,offset sayiDizi
        mov di,offset katuc
        mov bx,offset katiki
        
        mov cx,14
        dongu:     
        
        mov ax,0h
        mov al,[si] ;diziden sayiyi al aritmetik islem icin ax'e gotur
        mov ch,3
        div ch      ;div ax'e bagli calisir
        
        inc ah      ;div sonunda kalani ah tutar
        dec ah      ;div sonunda bolumu al tutar
        jz ucgit   ;ZF=1 olunca calisir , 3'e bolunmediyse atlamadan devam eder
        ;-------------------
        mov ax,0h
        mov al,[si]       
        ikiKontrol: ;eger sayi 3'un katiysa 2'ninde kati mi diye kontrol ederim
        mov ch,2
        div ch
        
        inc ah
        dec ah
        jz ikigit
        jmp sonatla ;2 ve 3'e bolunmediyse sona gec si arttir cx sifirla 
        
        
        ikigit:
        mov ax,0h
        mov al,[si]
        mov [bx],al
        
        inc bx  
        jmp sonatla
        
        ucgit:     ;3'e bolumu buraya girdiyse sifirdir
        mov ax,0h  ;kalan ve bolum degerlerini sildim
        mov al,[si]
        mov [di],al
        inc di
        jmp ikiKontrol ;ayni zamanda 6 ve 12 gibi 2'ninde kati mi ?
                       
        sonatla:
        inc si
  
        mov ch,0
        
        
        
        loop dongu:
    
    .EXIT
end
    
