#Team :
#1) Vybhav Pai
#   Roll number : 17CO252
#2) Shrinidhi Anil Varna
#   Roll number : 17CO145

	.globl main

main:
	addi a5,gp,0			#Loading a 64b constant in the memory location pointed to by the global pointer
	li a6,2				#Loading another 64b constant in the first memory location of the data segment
	sd a6,0(sp)
	add a7,a5,a6			#calculating sum
	addi sp,sp,-792			#saving the sum in the 100 th doubleword of the data segment
	sd a7,0(sp)
