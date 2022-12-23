.MODEL SMALL
.STACK 100H
.DATA  

nm DB 10,13,"Name          :Md. Rabbi Islam Sajid$" 
id DB 10,13,"ID            :20-42181-1$"
dpt DB 10,13,"Department    :CSE$"

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,9      ;printing name
        LEA DX,nm
        INT 21H 
       
        
        MOV AH,9   ;printing id
        LEA DX,id
        INT 21H
        
     
        
        MOV AH,9    ;printing department 
        LEA DX,dpt
        INT 21H
        
      
        ;MOV AH,9 
        ;LEA DX,D
        ;INT 21H
      
        
        MOV AH,4CH ;Exit
        INT 21H
        MAIN ENDP
    
   END MAIN
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        