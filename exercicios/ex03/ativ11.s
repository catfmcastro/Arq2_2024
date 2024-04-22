# words armazenadas na memória
.data
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17

.text
.globl _start
_start:

# carregamento de words para registradores
lui t0, 0x10000 # endereço base
lw s0, 0(t0) # x1
lw s1, 4(t0) # x2
lw s2, 8(t0) # x3
lw s3, 12(t0) # x4