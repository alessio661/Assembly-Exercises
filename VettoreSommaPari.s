# Scrivi un programma in RISC-V che prende come input un array di interi e calcola la somma di tutti gli elementi pari.

.globl main
.data
	n: .word 6
	vector: .word 1, 2, 3, 4, 5, 6
	result: .word 0
.text
main:
	la t0, n	# Lunghezza n
	lw t1, 0(t0)
	
	li t2, 0	# Indice i = 0
	li t3, 0	# Somma = 0
	
	la t4, vector
	
	while:
	beq t1, t2, endWhile
		slli t5, t2, 2
		add t5, t4, t5
		lw t6, 0(t5)
		
		andi t5, t6, 1
		bnez t5, skip
			add t3, t3, t6
			addi t2, t2, 1
			j while
		skip:
			addi t2, t2, 1
			j while
	endWhile:
		la t0, result
		sw t3, 0(t0)
		
	