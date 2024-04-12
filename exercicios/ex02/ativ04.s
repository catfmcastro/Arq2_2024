# x=1;
# y=5*x+15;

.text
.globl _start

_start:

	# set valores nos registradores
	addi x18, x0, 1 # x=1
    addi x5, x0, 5 # 5 temp
    
    # cálculo de y
    mul x5, x18, x5
    addi x19, x5, 15
