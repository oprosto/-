	addiu $a0,$0,2     # set $a0 to 4
	addiu $v0,$a0,-2	  # test addi, set $v0
	addu  $v0,$v0,$a0  # start of counter. Should be 10
loop:	bne  $v0,$a0,done # test, jump to done. 
        addiu $v0,$v0,3   # decrement. Loops twice.
        beq  $0,$0,loop   # emulating an unconditional jump
done:	addu  $0,$0,$0	  # NOP	
	
