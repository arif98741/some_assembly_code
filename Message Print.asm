.STACK 100H
.MODEL SMALL
.DATA
MSG DB 'Name : Daffodil International University $'
MSG1 DB 'Event : University Day $'
MSG2 DB 'Date : 28 January 2017 $'

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG      ;PRINT MSG
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;NEWLINE
    MOV DL,0DH
    INT 21H
    
    LEA DX,MSG1     ;PRINT MSG1
    MOV AH,9
    INT 21H    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;NEWLINE
    MOV DL,0DH
    INT 21H
        
    LEA DX,MSG2     ;PRINT MSG2
    MOV AH,9
    INT 21H
    
    MAIN ENDP

END MAIN