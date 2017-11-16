.STACK 100H
.MODEL SMALL
.DATA
MSG DB 'EVEN $'
MSG1 DB 'ODD $'
.CODE          

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'1'          ;compare bl with 1
    JE ODD_PRINT        ;jump to ODD_PRINT level if bl is equal to 1
    CMP BL,'3'          ;compare bl with 3
    JE ODD_PRINT        ;jump to ODD_PRINT level if bl is equal to 3
        
    CMP BL,'2'          ;compare bl with 2
    JE EVEN_PRINT       ;jump to EVEN_PRINT level if bl is equal to 2
    CMP BL,'4'          ;compare bl with 4
    JE EVEN_PRINT       ;jump to EVEN_PRINT level if bl is equal to 4
    
    JMP END_CASE
        
    EVEN_PRINT:
         
        MOV AH,2
        MOV DL,0AH
        INT 21H         ;newline
        MOV DL,0DH
        INT 21H          
        
        LEA DX,MSG      ;print even
        MOV AH,9
        INT 21H
        JMP END_CASE
 
    ODD_PRINT: 
    
        MOV AH,2
        MOV DL,0AH
        INT 21H         ;newline
        MOV DL,0DH
        INT 21H
        
        LEA DX,MSG1     ;print odd
        MOV AH,9
        INT 21H
        JMP END_CASE
    
    END_CASE: 
    
    MAIN ENDP

END MAIN