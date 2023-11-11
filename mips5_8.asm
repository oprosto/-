.text
main :
# Get random number
li $v0 , 42
li $a0 , 50
li $a1, 100
syscall
move $t0, $a0
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
output : .asciiz "\nYou typed the number "