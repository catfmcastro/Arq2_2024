# x=1;
# y=5-x+15;

.text
.globl _start

_start:
	# set valores nos registradores
    addi x18, x0, 1 # x
    addi x5, x0, 5 # 5
    
    # calculo de y
    sub x6, x5, x18
    addi x19, x18, 15