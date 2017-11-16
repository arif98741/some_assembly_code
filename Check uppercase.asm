.STACK 100H
.MODEL SMALL
.DATA
.CODE

MAIN PROC
    
    MOV AH,1        ;input
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'A'      ;compare bl with A
    JL END_IF       ;jump to END_IF level if bl is less than A
    
    CMP BL,'Z'      ;compare bl with Z
    JG END_IF       ;jump to END_IF level if bl is greater than A
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;newline
    MOV DL,0DH
    INT 21H 
    
    MOV AH,2
    MOV DL,BL       ;output
    INT 21H
    
    END_IF:
    
    MAIN ENDP

END MAIN