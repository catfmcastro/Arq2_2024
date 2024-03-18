# a = c + c

.text
.globl _start

_start:
	# set valores nos registradores
    addi x21, x0, 10 #c
    
	add x18, x21, x21 # (c + c) salvo em a