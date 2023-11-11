.text
main :
# Put 64 in $a2 (Sovietiki)
#Print hello
#li $v0, 4
#la $a0, input
#syscall
# Open DialogString
li $v0, 54
la $a0, input
la $a1, stringSpace
li $a2, 1024
syscall
#Copy
la $a0, stringSpace
li $v0, 50
syscall
# Output the text
#li $v0 , 50
#la $a0 , ($a2)
#syscall
# Exit the program
li $v0 , 10 # Exit the program
syscall
.data
input : .asciiz "Input your message!"
stringSpace : 	.space 1024