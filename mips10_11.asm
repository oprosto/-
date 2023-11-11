#t0 - first input;
#t1 - second input;
.text
main :
# Prompt for the integer to enter
li $v0 , 4
la $a0 , prompt1
syscall
# Read the integer and save it in $t0
li $v0 , 5
syscall
move $t0 , $v0
# Prompt for the integer to enter
li $v0 , 4
la $a0 , prompt2
syscall
# Read the integer and save it in $t1
li $v0 , 5
syscall
move $t1 , $v0
# Divide
div $t0, $t1
mfhi $s0
#if (hi != 0) print "1" (bne $hi, $zero)
bnez $s0, TRUE
#Stack not overflow -------------------------------------------
#Output the text
li $v0, 4
la $a0, output2
syscall
# Exit the program
li $v0 , 10 # Exit the program
syscall
#Stack overflow -------------------------------------------
TRUE: 
# Output the text
li $v0 , 4
la $a0 , output1
syscall
# Exit the program
li $v0 , 10 # Exit the program
syscall
.data
prompt1 : .asciiz " Please enter first number : "
prompt2 : .asciiz " Please enter second PRIME number : "
output1 : .asciiz "\n1 "
output2 : .asciiz "\n0 "