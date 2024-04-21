.text
.globl _start
_start:

# set valores nos registradores
addi x5, zero, -1
srli x18, t0, 1 # x = o maior int possível; // 2,147,483,647
addi x6, zero, 1

# shifts
slli x19, x6, 13 # y = 8192 // 2^13
slli x6, x19, 2 # 4y

# subtração
sub x20, x18, x6
