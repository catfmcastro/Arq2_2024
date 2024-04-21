.text
.globl _start
_start:

# set valores nos registradores
addi x5, zero, 1

# shifts para salvar os valores
slli x6, t0, 20 # x = 1048576; / 2^20
slli x7, t0, 12 # y = 4096; / 2^12

# soma propriamente dita
add x18, x5, x6 # z=x+y;
