#Team :
#1) Vybhav Pai
#   Roll number : 17CO252
#2) Shrinidhi Anil Varna
#   Roll number : 17CO145
	
	.globl	s
	.data
	.align	3
	.type	s, @object
	.size	s, 10
s:
	.string	"cricket"		# storing my favourite string
	.zero	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32

	addi	sp,sp,-32
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lui	a5,%hi(s)
	addi	a0,a5,%lo(s)
	call	puts			# calling printf
	addi 	sp,sp,32

	li	a5,0
	li	a6,6
	la	s0,s
	li	t0,4
loop:					# loop to reverse the string
	beq	a5,t0,break
	addi	a0,a5,0
	sub	a7,a6,a5
	addi	a1,a7,0
	add	a0,s0,a0
	add	a1,s0,a1
	lb	t2,0(a0)
	lb	t3,0(a1)
	sb	t2,0(a1)
	sb	t3,0(a0)
	addi	a5,a5,1
	j	loop



break:
	lui	a5,%hi(s)
	addi	a0,a5,%lo(s)
	call	puts
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra


