.STACK 100H
.MODEL SMALL
.DATA
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    
    CMP AL,'0'              ;compare al with 0
    JG G                    ;jump to G level if al is greater than 0
    
    CMP AL,'0'              ;compare al with 0
    JL L                    ;jump to L level if al is less than 0
    
    CMP AL,'0'              ;compare al with 0
    JE E                    ;jump to E level if al is equal to 0
    
    JMP END_CASE
    
    G:
        MOV BL,'+1'
        JMP END_CASE
    L:
        MOV BL,'-1'
        NEG BL
        JMP END_CASE
    E:
        MOV BL,'0'
        JMP END_CASE
        
    END_CASE:
    
    MAIN ENDP

END MAIN