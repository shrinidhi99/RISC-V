#Team :
#1) Vybhav Pai
#   Roll number : 17CO252
#2) Shrinidhi Anil Varna
#   Roll number : 17CO145
	.globl main
	
rec:				# function to calculate the value of 5!
		
	beq s0,s1,finish

	addi s0,s0,-1
	mul s2,s2,s0
	call rec		# recursive call to the function 'rec'



main:
	li a5,5 
	addi s2,a5,0
	li s1,1
	addi s0,a5,0
	call rec
finish:
	addi a5,s2,0		# storing the value of factorial which was saved in s2 into a new register a5
