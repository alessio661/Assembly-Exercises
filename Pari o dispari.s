# Controllare se un numero è pari o dispari usando AND logico
# Salvare 1 se dispari e 0 se pari
.data
	numero: .word 6
	risultato: .word 0
.text
.globl main
main:
	la t0, numero
	lw t0, 0(t0)
	
	andi t1, t0, 1
	
	la t2, risultato
	sw t1, 0(t3)
	
	li a0, 10
	ecall
	
	

	
			
	
	
	
	