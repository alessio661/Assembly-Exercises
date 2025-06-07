#Trovare il massimo tra le somme di coppie adiacenti in un vettore
.data
	array: .word 8, -10, 2, 4, 7, 3, 8
	dim: .word 7
.text
.globl main
main:
	la s0, array
	la t0, dim
	lw t0, 0(t0)
	
	li t1, 1			#i = 1
	li t2, -2147483648		#Max sum
	
	lw t3, 0(s0)
	
	ciclo:
	beq t1, t0, exit
		slli t4, t1, 2
		add t5, s0, t4
		lw t5, 0(t5)
		
		add t5, t5, t3
		blt t5, t2, skip
			mv t2, t5
		skip:
			sub t5, t5, t3
			addi t1, t1, 1
			mv t3, t5
			j ciclo
	exit:
	li a0, 10
    	ecall
			
	
	
	
	