#Conversione da minuscolo a maiuscolo stringa ASCII
.data 
	str: .asciz "ciao mondo"
.text
globl main
main:
	la t0, str
	
	loop:
		lb t1, 0(t0)
		beq t1 zero end
			li t2, 0x61
			li t3, 0x7A
			
			blt t1, t2, skip
			bgt t1, t3, skip
			
			addi t1, t1, -32
			sb t1, 0(t0)
	skip:
		addi t0, t0, 1
		j loop		
end:
	li a0, 4
	la a1, str
	ecall
	
	li a0, 10
	ecall
		
	