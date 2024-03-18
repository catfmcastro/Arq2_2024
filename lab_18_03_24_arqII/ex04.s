# c = b + a - e

.text
.globl _start

_start:
	# set valores nos registradores
    addi x18, x0, 15 #a
    addi x19, x0, 10 #b
    addi x22, x0, 20 #e
    
	add x5, x19, x18 # (b + a) salvo em temp x5
    sub x20, x5, x22 # (temp - e) salvo em c