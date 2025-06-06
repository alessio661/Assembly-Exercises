# Scrivere un programma che trovi il massimo valore di un array
.data 
	array: .word 9, 4, 13, 22, 44, 2, 8, 12
	N: .word 8
.text
.globl main
main:
	la t0, array          
    	lw t1, 0(t0)          	#Massimo elemento iniziale
    	li t2, 1		#i = 1	            

    	la t3, N         
    	lw t3, 0(t3)          #Lunghezza massima
    	
    	ciclo:
    	beq t2, t3, end
    		slli t4, t2, 2
    		add t5, t0, t4
    		lw t5, 0(t5)
    		
    		blt  t5, t1, skip
    			mv t1, t5
    	skip:
    		addi t2, t2, 1
    		j ciclo
    end:
    	
    		

	
			
	
	
	
	