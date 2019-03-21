#Team :
#1) Vybhav Pai
#   Roll number : 17CO252
#2) Shrinidhi Anil Varna
#   Roll number : 17CO145

	.globl main
	
fun:				# function that operates on a given array and its length given as arguments and finds sum and returns it
	ld t0,0(a6)		# loading the array element stored at that position
	addi a7,t0,0		# adding the loaded element into a register that is calculating the sum and storing it

	ld t0,-8(a6)
	add a7,a7,t0

	ld t0,-16(a6)
	add a7,a7,t0

	ld t0,-24(a6)
	add a7,a7,t0
	
	ld t0,-32(a6)
	add a7,a7,t0

	ld t0,-40(a6)
	add a7,a7,t0

	ld t0,-48(a6)
	add a7,a7,t0

	ld t0,-56(a6)
	add a7,a7,t0

	ld t0,-64(a6)
	add a7,a7,t0
	
	ld t0,-72(a6)
	add a7,a7,t0

	ld t0,-80(a6)
	add a7,a7,t0		# contains the sum of the 10 elements of the array

	j .L1			# jumps to a body where average of the numbers is calculated

main:
	li a5,10		# loading a number into a register
	addi sp,sp,-80		# allocating sufficient memory required to store the elements of the array by moving down the stack pointer
	sd a5,0(sp)		# storing the loaded number into the stack (push)
	
	addi sp,sp,8		# incrementing the stack pointer in order to access the next index of the array
	li a5,11		# laoding another element to be stored in the array
	sd a5,0(sp)		# storing the previously loaded element in the current location pointed by the stack pointer
	
	addi sp,sp,8
	li a5,12
	sd a5,0(sp)
	
	addi sp,sp,8
	li a5,13
	sd a5,0(sp)
	
	addi sp,sp,8
	li a5,14
	sd a5,0(sp)
	
	addi sp,sp,8
	li a5,15
	sd a5,0(sp)
	
	addi sp,sp,8
	li a5,16
	sd a5,0(sp)
	
	addi sp,sp,8
	li a5,17
	sd a5,0(sp)
	
	addi sp,sp,8
	li a5,18
	sd a5,0(sp)
	
	addi sp,sp,8
	li a5,19
	sd a5,0(sp)
	
	addi a6,sp,0		
	li a7,0

	jal ra,fun	

.L1:				# calculating average of the given elements by accepting the sum	

	li t0,10		# the number of elements = 10
	div s0,a7,t0		# calculating the result of the average by using the formula , average = (sum)/number of elements






