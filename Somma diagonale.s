#Somma della diagonale principale di una matrice
.data
	matrice: .word 0:400
	dim: .word 20
.text 
.globl main
main:
	la t0, dim
	lw t0, 0(t0)
	
	addi t1, t0, 1
	slli t1, t1, 2		#offset (dim + 1)*4
	
	la t2, matrice
	li t3, 0		#somma = 0
	li t4, 0		#i = 0
	
	ciclo:
	bge t4, t0, exit
		lw t5, 0(t2)
		add t3, t3, t5
		
		add t2, t2, t1
		addi t4, t4, 1 
		
		j ciclo
	exit:
	mv a0, t2 
	li a7, 1 
	ecall
	
	li a7, 10 
	ecall
		
	
	
	
	
	