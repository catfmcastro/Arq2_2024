# salvar x1, x2, x3 e x4 em registradores e somar
# resultado deve ser armazenado em "soma"

# words armazenadas na memória
.data
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17
soma: .word -1

.text
.globl _start
_start:

# carregamento de words para registradores
lui t0, 0x10000 # endereço base
lw s0, 0(t0) # x1
lw s1, 4(t0) # x2
lw s2, 8(t0) # x3
lw s3, 12(t0) # x4

# calculo
add t1, s0, s1
add t1, t1, s2
add t1, t1, s3

# armazenamento do resultado em "soma"
sw t1, 16(t0)