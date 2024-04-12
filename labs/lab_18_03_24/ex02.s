# b = c + 10 - e

.text
.globl _start

_start:
	# set valores nos registradores
    addi x20, x0, 5 #c
    addi x22, x0, 10 #e
    
	addi x5, x20, 10 # c + 10 salvo em temp x5
    sub x19, x5, x22 # x5 - e salvo em b