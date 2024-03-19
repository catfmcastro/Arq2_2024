# a = 2;
# b = 3;
# c = 4;
# d = 5;
# x = (a+b)-(c+d);
# y = a-b+x;
# b = x-y;

.text
.globl _start

_start:
# set valores nos registradores
    addi x18, x0, 2
    addi x19, x0, 3
    addi x20, x0, 4
    addi x21, x0, 5
    
    # calculo de x
    add x5, x18, x19
    add x6, x20, x21
    sub x5, x5, x6 # reutiliza tmp x5
    
    # calculo de y
    sub x6, x18, x19 # reutiliza tmp x6
    add x6, x6, x5
    
    # x - y, salvo em b
    sub x19, x5, x6
