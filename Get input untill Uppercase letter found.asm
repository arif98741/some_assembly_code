.stack 100h
.model small
.data
.code

main proc
    
    mov ah,1
    
    
    repeat:
        int 21h
        
        cmp al,'A'
        jl repeat
        cmp al,'Z'
        jg repeat
        
    
    main endp

end main