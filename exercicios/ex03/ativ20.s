# int i;
# int A[10];
# for (i=0; i<10; i++) {
#   A[i]=A[i]+1;
# }

.data
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11

.text
.globl _start

_start: 
lui t0, 0x10000
lw s0, 0(t0) # primeiro elemento de A
lw s1, 40(t0) # ultimo elemento de A

li t1, 0 # i (contador de loop)
li t5, 10 # condição de parada

loop: 
addi t2, s0, 1 # A[i] = A[i] + 1
sw t2, 0(t0) # salva na memória
addi t0, t0, 4 # incrementa o endereço em 4 bytes
lw s0, 0(t0) # prox elemento de A

addi t1, t1, 1 # incrementa i

blt t1, t5, loop # while (i < 10)