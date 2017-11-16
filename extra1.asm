.STACK 100H
.MODEL SMALL
.DATA   
.CODE

MAIN PROC    
   
    MOV AH,1 
    INT 21H      
    MOV BL,AL 
    
    CMP BL, 'Z'  
    JLE PRINT
    ;CMP BL,'A'
    ;JGE PRINT
   
    JMP END_IF
    
 
        
     PRINT:  
      
       
        MOV AH,2
        MOV DL,BL
        INT 21H  
        ;LEA DX,MSG
        ;MOV AH,9
        ;INT 21H 
        
        JMP END_IF 
        
    
        
        
    END_IF: 
    MAIN ENDP

END MAIN
