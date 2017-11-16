.STACK 100H
.MODEL SMALL
.DATA   
MSG1 DB 'NUMBER IS GREATER $'
MSG2 DB 'NUMBER IS LESS $'
MSG3 DB 'NUMBER IS EQUAL $'
.CODE

MAIN PROC                   
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1        ;INPUT
    INT 21H
    
    MOV CL,AL     
    MOV BL,'5'      ;PUT 5 IN BL REGISTER
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;NEWLINE
    MOV DL,0DH
    INT 21H
 
    CMP CL,BL       ;COMPARE CL WITH BL  
    JG GREATER      ;JUMP TO GREATER LEVEL IF CL IS GREATER THAN BL(5) 
    ;JMP END_IF
    
    CMP CL,BL       ;COMPARE CL WITH BL
    JL LESS         ;JUMP TO LESS LEVEL IF CL IS LESS THAN BL(5)
    ;JMP END_IF
    
    CMP CL,BL       ;COMPARE CL WITH BL
    JE EQUAL        ;JUMP TO EQUAL LEVEL IF CL IS EQUAL TO BL(5)
    ;JMP END_IF
    
    
  GREATER:  
    LEA DX,MSG1     ;PRINT MSG1
    MOV AH,9
    INT 21H 
    JMP END_IF:
    
  LESS:
    LEA DX,MSG2     ;PRINT MSG2
    MOV AH,9
    INT 21H  
    JMP END_IF:
    
  EQUAL:
    LEA DX,MSG3     ;PRINT MSG3
    MOV AH,9
    INT 21H    
    JMP END_IF:
    
    END_IF:    

    MAIN ENDP  
    
END MAIN   
