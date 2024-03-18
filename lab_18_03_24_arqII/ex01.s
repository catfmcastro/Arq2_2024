# a = (b + c) - (d - e)

.text
.globl _start

_start:
	# set valores nos registradores
    addi x19, x0, 10 #b
    addi x20, x0, 5 #c
	addi x21, x0, 15 #d
    addi x22, x0, 20 #e
    
    add x5, x19, x20 # (b + c) em temp x5
    add x6, x21, x22 # (d + e) em temp x6
    sub x18, x5, x6 # salva resultado em a (x18)