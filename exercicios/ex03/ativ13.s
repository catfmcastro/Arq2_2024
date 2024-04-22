# y = 127x - 65z + 1
# usar valores das labels e armazenar em "y"

.data
x: .word 5
z: .word 7
y: .word 0  # esse valor deverá ser sobrescrito após a execução do programa

.text
.globl _start

_start:
lui t0, 0x10000
lw s0, 0(t0)
lw s1, 4(t0)

