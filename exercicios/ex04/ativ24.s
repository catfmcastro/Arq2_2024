# Identifica se A é negativo ou não e, caso seja, calcula seu módulo

.data
A: .word -6 # valor A na memória

.text
.globl _start

_start:
lw a0, A # carrega word para a0
sltz a1, a0
bnez a1, negativo # se menor que zero, vai para label negativo
j end

negativo: # calcula o módulo do número
addi t1, zero, -1
mul a2, a0, t1 # salva módulo em a2

end:
# saída do programa
li a7, 10 # código para exit
ecall