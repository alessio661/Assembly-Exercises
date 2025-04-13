# Procedura per il calcolo del massimo comune divisore di due numeri interi positivi a e b. (Algoritmo di euclide)

.globl main
.text
main:
	li a0, 20
	li a1, 30
	jal ra, mcd
	
	mcd:
	beq a0, a1, endWhile
		bgt a0, a1, condizione
		sub a1, a1, a0
		j mcd
		condizione:
		sub a0, a0, a1
		j mcd
	endWhile:
	ret
	
	
