# x=3;
# y=4;
# z=(15-x)+(67-y)+4;

.text
.globl _start

_start:
	# set valores nos registradores
    addi x18, x0, 3 # x
    addi x19, x0, 4 # y
    addi x5, x0, 15 # 15
    addi x6, x0, 67 # 67
    
    # calculo de z
	sub x28, x5, x18 # (15-x)
    sub x5, x6, x19 # (67-y)
    add x6, x6, x5
    addi x20, x6, 4