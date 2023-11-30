ADDIU $1, $0,  7
ADDIU $2, $0,  6
ADDIU $3, $0,  5
jal Proc
LUI $4, 0x0040
ORI $4, $4, 0x0040
j ex
Proc:
	ADDIU $5, $0,  4
	ADDIU $6, $0,  3
	ADDIU $7, $0,  2
	jr $ra
ex:
	ADDIU $8, $0, 1