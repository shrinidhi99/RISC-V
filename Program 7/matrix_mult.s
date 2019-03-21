#Team :
#1) Vybhav Pai
#   Roll number : 17CO252
#2) Shrinidhi Anil Varna
#   Roll number : 17CO145

	.globl	mat
	.type	mat, @function

mat:						# function to calculate the product of two matrices
	li t0,0					#index i
	li t1,0					#index j
	li t2,2
	li t4,0
loop1:						# outer loop
	beq t0,t2,exit_mat			#i<2
	li t1,0					#initialize j to 0	
	j loop2



loop2:						# inner loop j<2
	beq t1,t2,inc_i
		

	mul t3,t0,t2
	add t3,t3,t1
	slli t3,t3,2
	add a2,a6,t3				#c[i][j]

	mul t3,t0,t2
	addi t3,t3,0
	slli t3,t3,2
	add a0,a4,t3				#a[i][0]

	
	mul t3,t4,t2
	add t3,t3,t1
	slli t3,t3,2
	add a1,a5,t3				#b[0][j]

	lw t5,0(a0)
	lw t6,0(a1)
	mul t5,t5,t6				#a[i][0]*b[0][j]
	sw t5,0(a2)				#c[i][j]=a[i][0]*b[0][j]
		
	mul t3,t0,t2
	addi t3,t3,1
	slli t3,t3,2
	add a0,a4,t3				#a[i][1]

	
	addi t3,t2,0
	add t3,t3,t1
	slli t3,t3,2
	add a1,a5,t3				#b[1][j]

	lw t5,0(a0)
	lw t6,0(a1)
	mul t5,t5,t6				#a[i][1]*b[1][j]
	lw t6,0(a2)				
	addw t5,t5,t6				
	sw t5,0(a2)				#c[i][j] = a[i][1]*b[1][j] + a[i][0]*b[0][j]

	addi t1,t1,1				#increment j
	j loop2


inc_i:						# a section where the value of index i is incremented by 1
	addi t0,t0,1
	j loop1



exit_mat:
	j .L1				# go back to main

	.globl	main
	.type	main, @function

main:

	addi s0,sp,0
	addi s1,sp,-48
	addi s2,sp,-96
	li a5,1
	sw a5,-32(s0)
	li a5,2
	sw a5,-28(s0)
	li a5,3
	sw a5,-24(s0)
	li a5,4
	sw a5,-20(s0)
	
	li a5,5
	sw a5,-32(s1)
	li a5,6
	sw a5,-28(s1)
	li a5,7
	sw a5,-24(s1)
	li a5,8
	sw a5,-20(s1)
	
	li a5,0
	sw a5,-32(s2)
	li a5,0
	sw a5,-28(s2)
	li a5,0
	sw a5,-24(s2)
	li a5,0
	sw a5,-20(s2)

	addi a4,s0,-32			#stroing addresses of A,B,C
	addi a5,s1,-32
	addi a6,s2,-32
	mv a0,a4
	mv a1,a5
	mv a2,a6

	call mat			#calling matrix multiplication function

.L1:
	
	lw t3,-32(s2)			#verifying code
	lw t4,-28(s2)
	lw t5,-24(s2)
	lw t6,-20(s2)





	
