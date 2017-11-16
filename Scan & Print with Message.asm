.STACK 100H
.MODEL SMALL
.DATA
MSG DB 'SCAN :$'
MSG1 DB 'PRINT :$'                             
                
.CODE                                          

MAIN PROC         
    
    MOV AX,@DATA    ;MOVE DATA TO AX REGISTER
    MOV DS,AX       ;MOVE AX TO DATA SAGEMENT

    LEA DX,MSG      ;LEA = LOAD EFFECTIVE ADDRESS, FOR PRINTING MESSAGES
    MOV AH,9
    INT 21H
    
    MOV AH,1        ;INPUT
    INT 21H
    
    MOV BL,AL
 
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;NEWLINE
    MOV DL,0DH
    INT 21H 
    
    LEA DX,MSG1     ;PRINT MESSAGE1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL       ;PRINT OUTPUT
    INT 21H
    
    MAIN ENDP

END MAIN