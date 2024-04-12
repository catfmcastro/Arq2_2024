# x=3;
# y=4;
# z=((15*x)+(67*y))*4;

.text
.globl _start

_start:

	# set valores nos registradores
	addi x18, x0, 3 # x=3
    addi x19, x0, 4 # y=4
    addi x5, x0, 15 # 15 temp
    addi x6, x0, 67 # 67 temp
    addi x7, x0, 4 # 4 temp
    
    # cálculo de z
    mul x5, x18, x5 # (15*x)
    mul x6, x19, x6 # (67*y)
    add x5, x5, x6 # (15*x) + (67*y)
    mul x20, x5, x7 # ((15*x) + (67*y)) * 4