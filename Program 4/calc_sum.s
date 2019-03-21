#Team :
#1) Vybhav Pai
#   Roll number : 17CO252
#2) Shrinidhi Anil Varna
#   Roll number : 17CO145

	.globl main

main:
	li a5,10			# loading a number into a register		
	addi sp,sp,-80			# reserving a required amount of memory by moving down the stack pointer
	sd a5,0(sp)
	ld a6,0(sp)
	
	addi sp,sp,8			# incrementing the index of the chunk by moving up the stack pointer
	li a5,11			# loading a number into a register
	sd a5,0(sp)			# storing the previously loaded number into the currently pointed location by the stack pointer
	add a6,a6,a5			# adding the stored value to a register which is used for storing sum of the contiguous chunk of memory
	
	addi sp,sp,8
	li a5,12
	sd a5,0(sp)
	add a6,a6,a5

	addi sp,sp,8
	li a5,13
	sd a5,0(sp)
	add a6,a6,a5
	
	addi sp,sp,8
	li a5,14
	sd a5,0(sp)
	add a6,a6,a5
	
	addi sp,sp,8
	li a5,15
	sd a5,0(sp)
	add a6,a6,a5	

	addi sp,sp,8
	li a5,16
	sd a5,0(sp)
	add a6,a6,a5	

	addi sp,sp,8
	li a5,17
	sd a5,0(sp)
	add a6,a6,a5
	
	addi sp,sp,8
	li a5,18
	sd a5,0(sp)
	add a6,a6,a5
	
	addi sp,sp,8
	li a5,19
	sd a5,0(sp)
	add a6,a6,a5
	
	addi t0,a6,0			# storing the sum of the contiguous chunk of memory locations into register x5	

