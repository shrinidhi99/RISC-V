#Team :
#1) Vybhav Pai
#   Roll number : 17CO252
#2) Shrinidhi Anil Varna
#   Roll number : 17CO145
	.globl main
	
main:
	li a5,5 		# loading 5 to calculate its factorial
	li s0,1
	li t0,1
	addi a5,a5,1
loop:				# calculating the factorial of 5 using loops
	beq t0,a5,else
	mul s0,s0,t0
	addi t0,t0,1
	j loop

else:				# end of program indication 
