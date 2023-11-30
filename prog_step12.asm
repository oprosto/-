ADDIU $1, $0,  7
ADDIU $2, $0,  6
ADDIU $3, $0,  5
jal Proc
LUI $4, 0x0040
ORI $4, $4, 0x0040
ADDIU $5, $5, 36
jalr $5
j ex
Proc:
	MOVN $5, $31, $1
	ADDIU $6, $0,  3
	ADDIU $7, $0,  2
	jr $ra

	ADDIU $9, $0, 9
	jr $ra
ex:
	ADDIU $8, $0, 1