#Conta occorrenze
#Contare le occorrenze escludendo i caratteri 0, 1, 2, 9 e ?
.data
	stringa: .asciz "?80085"
.text
.globl main
main:
	la a0, stringa
	
	li t0, 0			#Conta pari
	li t1, 0			#Conta dispari
	
	li s0, 0x3F			#Simbolo ?
	li s1, 0			#newline
	li s2, 50
	li s3, 57
	
	mv s4, a0
	
	contaOccorrenze:
	lb t2, 0(s4)
	addi s4, s4, 1
	
	beq t2, s1, end
	ble t2, s2, skip
	beq t2, s3, skip
	beq t2, s0, skip
	
	addi t2, t2, -48
	andi t4, t2, 1			#Pari o dispari
	
	beq t4, zero, pari
		addi t1, t1, 1
		j contaOccorrenze
	
	pari:
	addi t0, t0, 1
	j contaOccorrenze
	
	skip:
	j contaOccorrenze
	
	end:
	#Stampa pari
	li a7, 1
	mv a0, t0
	ecall
	
	li a7, 11
	li a0, 10
	ecall
	
	#Stampa dispari
	li a7, 1
	mv a0, t1
	ecall
	
	li a7, 10
	ecall
	
	
	
	
	