.text
main :
# Prompt for the integer to enter
li $v0 , 4
la $a0 , prompt
syscall
# Read the integer and save it in $t0
li $v0 , 5
syscall
move $t0 , $v0
# Multiply by two
sll $t1 $t0 3
sll $t2 $t0 1
add $t0 $t1 $t2
# Output the text
li $v0 , 4
la $a0 , output
syscall
# Output the number
li $v0 , 1
move $a0 , $t0
syscall
# Exit the program
li $v0 , 10 # Exit the program
syscall
.data
prompt : .asciiz " Please enter a number : "
output : .asciiz "\nYou typed the number "