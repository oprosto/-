ADDIU $1, $0, 44
ADDIU $2, $0, 6 
ADDIU $3, $0, 9 
SLL   $14, $2,  4
SRL   $15, $2,  4 
JR $1
ADDU  $3,  $1,  $2  
SUBU  $4,  $2,  $1   
ANDI  $5,  $2,  27  
ANDI  $6,  $2,  89   
ORI   $7,  $2,  89   
ADDIU $1,  $0,  10  
ADDIU $2,  $1,  3  
ADDIU $3,  $1,  4  
ADDIU $4,  $0, 38  
J  JUMP1
AND   $8,  $2,  $4  
OR    $9,  $5,  $1  
XORI  $10, $2,  89
XORI  $11, $2,  560
XOR   $12, $9,  $2
		
JUMP1:
SLT   $20, $1,  $2   
SLT   $22, $2,  $30  
SLTU  $23, $1,  $18 
SLTI  $24, $0,  1  
SLTI  $25, $0,  -1  
SLTI  $26, $0,  0   
SLT   $21, $2,  $1  
SLTIU $27, $0,  3
MOVZ  $28, $2,  $0  
MOVZ  $18, $2,  $1 
MOVN  $18, $2,  $0 
MOVN  $29, $2,  $1  
