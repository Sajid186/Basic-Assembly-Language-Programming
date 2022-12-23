.MODEL SMALL
.STACK 100H
.DATA  


STR1 DB 10,13,"ENTER YOUR CHARACTERS: $" 
STR2 DB 10,13,"YOU ENTERED:$" 
STR3 DB 10,13,"$"
STR4 DB 10,13,"$"


.CODE 

    MAIN PROC 
        
        MOV AX,@DATA
        MOV DS,AX
        
        
        ;PRINTING STRING1
        MOV AH,9 
        LEA DX,STR1
        INT 21H 
       
        MOV AH,1   ;INPUT1
        INT 21H
        MOV BH,AL
        
        MOV AH,2   ;NEWLINE
        MOV DL,10
        INT 21H
        MOV DL,13
        INT 21H
        
        
        MOV AH,1    ;INPUT2
        INT 21H
        MOV CH,AL   
        
                
        MOV AH,2   ;NEWLINE
        MOV DL,10
        INT 21H
        MOV DL,13
        INT 21H
         
           ;PRINTING STRING2
           MOV AH,9 
           LEA DX,STR2
           INT 21H 

          
        MOV AH,9      ;OUTPUT
        LEA DX,STR3
        INT 21H
                
      
        MOV AH,2 
        MOV DL,BH
        INT 21H  
        
                                         
        MOV AH,2   ;NEWLINE
        MOV DL,10
        INT 21H
        MOV DL,13
        INT 21H
        
        MOV AH,9        ;OUPUT
        LEA DX,STR4
        INT 21H 
        
        MOV AH,2 
        MOV DL,CH
        INT 21H
        
      
        
        MOV AH,4CH ;Exit
        INT 21H
        MAIN ENDP
    
    
 END MAIN
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        