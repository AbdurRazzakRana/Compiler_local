# MIPS CODE GENERATED BY Compliler Class

.data

.align 2
.text

.globl main

main:			# function definition
	move $a1, $sp		# Activation Record Carve out copy SP
	subi $a1 $a1 28		# Activation Record carve out copy size of function
	sw $ra, ($a1)		# Store Return address 
	sw $sp 4($a1)		# Store the old Stack pointer
	move $sp, $a1		# Make SP the current activation record

	li $a0, 0		# Expression is a constant
	sw $a0 12($sp)		# Assign store RHS temporarily
	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a1 12($sp)		# Assign get RHS temporarily
	sw $a1 ($a0)		# Assign the RHS into the memory of LHS


_L0:		#While Loop START
	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 16($sp)		# LHS of expression stored into temp memory
	li $a0, 3		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 16($sp)		# Getting LHS into a0 from mem
	slt $a0, $a0, $a1		# Expression Less Than
	beq $a0 $0 _L1		# WHILE branch out taking decision
	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 20($sp)		# LHS of expression stored into temp memory
	li $a0, 1		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 20($sp)		# Getting LHS into a0 from mem
	add $a0, $a0, $a1		# Add Expression and keeping value in a0
	sw $a0 24($sp)		# Assign store RHS temporarily
	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a1 24($sp)		# Assign get RHS temporarily
	sw $a1 ($a0)		# Assign the RHS into the memory of LHS


	j _L0		# Jump to loop level again, loop continue
_L1:		#While Loop END
	li $a0, 0		# RETURN has no specified value set to 0
	lw $ra ($sp)		# restore old environment RA
	lw $sp 4($sp)		# Return from function store SP

	li $v0, 10		# Exit from Main, we are done
	syscall		# Exit everything
			# END OF FUNCTION main

