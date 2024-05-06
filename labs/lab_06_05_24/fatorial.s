.data 

.text
.globl _start

_start:

li a0, 2 # n == 2
call fatorial # retorno é esperado em a0

# ra1
mv a1, a0
li a0, 1
ecall
nop

fatorial:
addi sp, sp, -8 # reserva 8 bytes na pilha
sw ra, 0(sp)
sw a0, 4(sp)
li t0, 1
ble a0, t0, parada # a0 <= t0? se true, chama "parada"
addi a0, a0, -1 # n -= 1
call fatorial # chama fatorial(n-1)

# ra2
lw t0, 4(sp)
mul a0, a0, t0 # n *= fatorial(n-1)
lw ra, 0(sp)
addi sp, sp, 8
ret

parada:
li a0, 1
lw ra, 0(sp)
ret 