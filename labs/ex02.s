# B[3] = {1, 4, 8}
# a = B[0] + 2
# b = B[1] + a
# B[2] = a + b

.data
B: .word 1, 4, 8 # B = {1, 4, 8}

.text
.globl _start

_start:

la t1, B # end inicial de B

# B[0]
lw t0, 0(t1)
addi s0, t0, 2

# B[1] + a
lw t0, 4(t1)
add s1, t0, s0

# B[2] = a + b
add t0, s0, s1
sw t0, 8(t1)