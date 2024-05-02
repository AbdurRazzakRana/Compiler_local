# MIPS CODE GENERATED BY Compliler Class

.data
_L0: .asciiz    "\n" 
_L1: .asciiz    "\n" 
_L2: .asciiz    "\n" 
_L3: .asciiz    "\n" 
_L4: .asciiz    "\n" 
_L5: .asciiz    "\n" 
_L6: .asciiz    "\n" 
_L7: .asciiz    "\n" 
_L8: .asciiz    "\n" 
_L9: .asciiz    "\n" 
_L10: .asciiz    "\n" 

.align 2
.text

.globl main

main:			# function definition
	move $a1, $sp		# Activation Record Carve out copy SP
	subi $a1 $a1 64		# Activation Record carve out copy size of function
	sw $ra, ($a1)		# Store Return address 
	sw $sp 4($a1)		# Store the old Stack pointer
	move $sp, $a1		# Make SP the current activation record

	li $a0, 10		# Expression is a constant
	sw $a0 16($sp)		# Assign store RHS temporarily
	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a1 16($sp)		# Assign get RHS temporarily
	sw $a1 ($a0)		# Assign the RHS into the memory of LHS


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 20($sp)		# LHS of expression stored into temp memory
	li $a0, 1		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 20($sp)		# Getting LHS into a0 from mem
	add $a0, $a0, $a1		# Add Expression and keeping value in a0
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L0		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 24($sp)		# LHS of expression stored into temp memory
	li $a0, 1		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 24($sp)		# Getting LHS into a0 from mem
	sub $a0, $a0, $a1		# Subtraction Expression and keeping value in a0
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L1		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 28($sp)		# LHS of expression stored into temp memory
	li $a0, 5		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 28($sp)		# Getting LHS into a0 from mem
	mult $a0 $a1		# Multiply Expression
	mflo $a0		# Setting low 32 bits into a0 after multiply
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L2		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 32($sp)		# LHS of expression stored into temp memory
	li $a0, 5		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 32($sp)		# Getting LHS into a0 from mem
	div $a0 $a1		# Devide Expression
	mflo $a0		# Setting low 32 bits into a0 after devide
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L3		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 36($sp)		# LHS of expression stored into temp memory
	li $a0, 5		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 36($sp)		# Getting LHS into a0 from mem
	div $a0 $a1		# Mod Expression, devide first
	mfhi $a0		# Among the 64 bits, high 32 keeps the reminder
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L4		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 40($sp)		# LHS of expression stored into temp memory
	li $a0, 1		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 40($sp)		# Getting LHS into a0 from mem
	add $a1, $a1, 1		# Less Than Equal Expr, incrementing RHS by one
	slt $a0, $a0, $a1		# Now check is the LHS is less than RHS
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L5		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 44($sp)		# LHS of expression stored into temp memory
	li $a0, 1		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 44($sp)		# Getting LHS into a0 from mem
	slt $a0, $a0, $a1		# Expression Less Than
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L6		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 48($sp)		# LHS of expression stored into temp memory
	li $a0, 1		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 48($sp)		# Getting LHS into a0 from mem
	slt $a0, $a1, $a0		# Greater Than check is same chekcing LT reverse
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L7		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 52($sp)		# LHS of expression stored into temp memory
	li $a0, 1		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 52($sp)		# Getting LHS into a0 from mem
	add $a1, $a1, 1		# Greater Than Equal Expr, incrementing RHS by one
	slt $a0, $a1, $a0		# Now check is the RHS is less than LHS
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L8		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 56($sp)		# LHS of expression stored into temp memory
	li $a0, 1		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 56($sp)		# Getting LHS into a0 from mem
	slt $t0, $a0, $a1		# To check equal, taking less than of a0<a1
	slt $t1, $a1, $a0		# Now check a1<a0 and store another temp var
	nor $a0, $t0, $t1		# Nor gate will show the proper output
	andi $a0, 1		# And to make sure the answer value is only 1 at 0th index
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L9		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	sw $a0, 60($sp)		# LHS of expression stored into temp memory
	li $a0, 1		# Expression is a constant
	move $a1, $a0		# RHS on a1
	lw $a0, 60($sp)		# Getting LHS into a0 from mem
	slt $t0, $a0, $a1		# To check equal, taking less than of a0<a1
	slt $t1, $a1, $a0		# Now check a1<a0 and store another temp var
	or $a0, $t0, $t1		# Nor gate will show the proper output
	andi $a0, 1		# And to make sure the answer value is only 1 at 0th index
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L10		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	li $a0, 0		# RETURN has no specified value set to 0
	lw $ra ($sp)		# restore old environment RA
	lw $sp 4($sp)		# Return from function store SP

	li $v0, 10		# Exit from Main, we are done
	syscall		# Exit everything
			# END OF FUNCTION main

