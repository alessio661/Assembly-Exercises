.data
	stringa: .asciz "11+0000+1+0010"
.text
.globl main
main:
	la a0, stringa
	li t2, 0			#Numero binario corrente
	li t3, 0			#Somma totale
	
	li s0, 0x2B           		#codice ASCII '+'
	li s1, 0                       #newline
	
	mv s2, a0
	
	ciclo:
	lb t0, 0(s2)			#Carico primo carattere puntato
	beq t0, s0, sum
	beq t0, s1, end
	
	#Se è una cifra binaria...
	addi t0, t0, -48
	slli t2, t2, 1
	or t2, t2, t0
	addi s2, s2, 1
	j ciclo
	
	sum:
	add t3, t3, t2
	mv a0, t2
	li a7, 1
	ecall
	
	li a0, 43             
	li a7, 11
	ecall
	
	mv t2, zero
	addi s2, s2, 1
	j ciclo
	
	end:
	add t3, t3, t2        
	mv a0, t2             
	li a7, 1
	ecall

	li a0, 10             
	li a7, 11
	ecall

	mv a0, t3             
	li a7, 1
	ecall

	li a0, 10             
	li a7, 11
	ecall

	li a7, 10             
	ecall
	
