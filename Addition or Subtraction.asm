.STACK 100H
.MODEL SMALL
.DATA
MSG DB 'FIRST NUMBER : $'
MSG1 DB 'SECOND NUMBER : $' 
MSG2 DB 'OPTION +/- : $'
MSG3 DB 'OUTPUT : $'
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX,MSG      ;print msg
    MOV AH,9
    INT 21H
    
    MOV AH,1        ;input 1st number
    INT 21H
    
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;newline
    MOV DL,0DH
    INT 21H 
    
    LEA DX,MSG1     ;print msg1
    MOV AH,9
    INT 21H
    
    MOV AH,1        ;input 2nd number
    INT 21H
    
    MOV CL,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;newline
    MOV DL,0DH
    INT 21H 
    
    LEA DX,MSG2     ;print msg2
    MOV AH,9
    INT 21H
    
    MOV AH,1        ;input operation
    INT 21H 
    
    CMP AL,'+'      ;compare al with + sign
    JE ADD          ;jump to ADD level
    CMP AL,'-'      ;compare al with - sign
    JE SUB          ;jump to SUB level
    
    JMP END_IF
    
    ADD:
        ADD BL,CL   ;Addition
        SUB BL,48   ;convert
        JMP PRINT   ;jump to PRINT level
    SUB:
        SUB BL,CL   ;subtraction
        ADD BL,48   ;convert
        JMP PRINT   ;jump to PRINT level
    
    PRINT:
        MOV AH,2
        MOV DL,0AH
        INT 21H     ;newline
        MOV DL,0DH
        INT 21H
    
        LEA DX,MSG3 ;print msg3
        MOV AH,9
        INT 21H
    
        MOV AH,2
        MOV DL,BL   ;output
        INT 21H 
              
    END_IF:
    
    MAIN ENDP

END MAIN