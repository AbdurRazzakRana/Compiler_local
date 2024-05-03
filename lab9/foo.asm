# MIPS CODE GENERATED BY Compliler Class

.data
_L0: .asciiz    "\n" 
_L1: .asciiz    "\n" 
_L2: .asciiz    "\n" 
_L3: .asciiz    "\n" 

.align 2
.text

.globl main

f:			# function definition
	move $a1, $sp		# Activation Record Carve out copy SP
	subi $a1 $a1 12		# Activation Record carve out copy size of function
	sw $ra, ($a1)		# Store Return address 
	sw $sp 4($a1)		# Store the old Stack pointer
	move $sp, $a1		# Make SP the current activation record

			# Return Statement explicitely mentioned
	li $a0, -1		# For Unary Operation, load -1 first
	sw $a0, 8($sp)		# Store -1 to the appropriate offset memory
	li $a0, 10		# Expression is a constant
	move $a1, $a0		# Move Right factor value into a1
	lw $a0, 8($sp)		# Getting previously stored -1 into a0
	mult $a0 $a1		# Multiply Expression
	mflo $a0		# Setting low 32 bits into a0 after multiply
	lw $ra ($sp)		# Load the old environment RA
	lw $sp 4($sp)		# Return from function stack pointer

	jr $ra		# Jump to the caller address
	li $a0, 0		# RETURN has no specified value set to 0
	lw $ra ($sp)		# restore old environment RA
	lw $sp 4($sp)		# Return from function store SP

	jr $ra		# Jump to the caller address
			# END OF FUNCTION f

main:			# function definition
	move $a1, $sp		# Activation Record Carve out copy SP
	subi $a1 $a1 28		# Activation Record carve out copy size of function
	sw $ra, ($a1)		# Store Return address 
	sw $sp 4($a1)		# Store the old Stack pointer
	move $sp, $a1		# Make SP the current activation record

	li $a0, 21		# Expression is a constant
	sw $a0 12($sp)		# Assign store RHS temporarily
	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a1 12($sp)		# Assign get RHS temporarily
	sw $a1 ($a0)		# Assign the RHS into the memory of LHS


	li $a0, -1		# For Unary Operation, load -1 first
	sw $a0, 16($sp)		# Store -1 to the appropriate offset memory
	move $a0 $sp		# VAR local make a copy of stackpointer
	addi $a0 $a0 8		# VAR local stack pointer plus offset
	lw $a0, ($a0)		# Expression is a VAR
	move $a1, $a0		# Move Right factor value into a1
	lw $a0, 16($sp)		# Getting previously stored -1 into a0
	mult $a0 $a1		# Multiply Expression
	mflo $a0		# Setting low 32 bits into a0 after multiply
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L0		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	li $a0, -1		# For Unary Operation, load -1 first
	sw $a0, 20($sp)		# Store -1 to the appropriate offset memory
	li $a0, 5		# Expression is a constant
	move $a1, $a0		# Move Right factor value into a1
	lw $a0, 20($sp)		# Getting previously stored -1 into a0
	mult $a0 $a1		# Multiply Expression
	mflo $a0		# Setting low 32 bits into a0 after multiply
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L1		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	jal f		# Function Call

	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L2		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	li $a0, -1		# For Unary Operation, load -1 first
	sw $a0, 24($sp)		# Store -1 to the appropriate offset memory
	jal f		# Function Call

	move $a1, $a0		# Move Right factor value into a1
	lw $a0, 24($sp)		# Getting previously stored -1 into a0
	mult $a0 $a1		# Multiply Expression
	mflo $a0		# Setting low 32 bits into a0 after multiply
	li $v0, 1		# About to print a Number
	syscall		# Call write number


	la $a0, _L3		# The string address
	li $v0, 4		# About to print a string
	syscall		# Call write string


	li $a0, 0		# RETURN has no specified value set to 0
	lw $ra ($sp)		# restore old environment RA
	lw $sp 4($sp)		# Return from function store SP

	li $v0, 10		# Exit from Main, we are done
	syscall		# Exit everything
			# END OF FUNCTION main

