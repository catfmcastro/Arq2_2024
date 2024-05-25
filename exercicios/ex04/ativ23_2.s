# fibonacci

.data
n: .word 6 # 6 primeiros números da sequencia

.text
.globl _start

_start:
lw a0, n # carrega word para a0
li a1, 1 # primeiro valor da sequencia
li a2, 1 # segundo valor da sequencia (resposta final)
li t0, 1 # contador

loop:
beq t0, a0, end # se contador = n, finaliza
addi t1, a2, 0 # salva o valor de a2 em um temp
add a2, a1, a2 # calculo
addi a1, t1, 0 # a1 continua sendo o valor anterior
addi t0, t0, 1 # incrementa contador
j loop

end:
add a2, a1, a2

# saída do programa
li a7, 10 # código para exit
ecall