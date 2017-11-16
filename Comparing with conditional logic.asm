.STACK 100H
.MODEL SMALL
.DATA
.CODE

MAIN PROC
    
    MOV BL,'6'
    
    MOV AH,1    ;SCAN
    INT 21H
    
    MOV CL,AL
    
    CMP BL,CL
    JG GREATER  ;IF GREATER
    
    CMP BL,CL
    JL LESS     ;IF LESS
            
    CMP BL,CL
    JE EQUAL    ;IF EQUAL        
    
    JMP END_CASE
    
    GREATER:    
        MOV AH,2
        MOV DL,'G'  ;GREATER FUNCTION
        INT 21H
        JMP END_CASE
    
    LESS:             
        MOV AH,2
        MOV DL,'L'  ;LESS FUNCTION
        INT 21H  
        JMP END_CASE 
        
    EQUAL:      
        MOV AH,2
        MOV DL,'E'  ;EQUAL FUNCTION
        INT 21H  
        JMP END_CASE 
        
    
    END_CASE:
    
    MAIN ENDP

END MAIN
