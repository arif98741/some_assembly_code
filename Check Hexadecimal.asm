.stack 100h
.model small
.data
.code

main proc    
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    cmp bl,30h
    
    jl exit 
    
    
    cmp bl,39h
    
    jle print1:
    
    cmp bl,41h
    jl exit
    
    cmp bl,47h
    jl print2
    
    jmp exit 
    
    print1:    
    
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
    
        mov ah,2
        mov dl,bl
        int 21h
        
        jmp exit
    
    print2: 
    
        sub bl,11h
    
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,2
        mov dl,'1'
        int 21h
        
        mov dl,bl
        int 21h

        
    exit:
    
    main endp

end main