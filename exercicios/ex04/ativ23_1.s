# fatorial

.data
n: .word 5

.text
.globl _start

_start:
lw a0, n # carrega word para a0
li a1, 1 # resultado armazenado em a1
li t0, 1 # contador

loop:
beq t0, a0, end # se contador = n, finaliza
mul a1, a1, t0 # calculo
addi t0, t0, 1 # incrementa contador
j loop

end:
mul a1, a1, t0

# saída do programa
li a7, 10 # código para exit
ecall