.STACK 100H
.MODEL SMALL
.DATA
MSG DB 'DAFFODIL INTERNATIONAL UNIVERSITY $'
.CODE

MAIN PROC                                   
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,5            ;set counter register to 5
    
    
    FOR:                ;Staring of FOR level
        LEA AX,MSG
        MOV AH,9
    
        INT 21H
        
        MOV AH,2
        MOV DL,0AH
        INT 21H         ;newline
        MOV DL,0DH
        INT 21H
        
        LOOP FOR        ;loop till CX is true
    
    
    MAIN ENDP

END MAIN