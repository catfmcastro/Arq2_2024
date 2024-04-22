# int A[] = {1,3,5,7,9};
# int B[] = {2,4,6,8,10};

# A[0] = B[0] * 1 + A[0];
# A[1] = B[1] * 2 + A[1];
# A[2] = B[2] * 3 + A[2];
# A[3] = B[3] * 4 + A[3];
# A[4] = B[4] * 5 + A[4];

.data
A: .word 1, 3, 5, 7, 9
B: .word 2, 4, 6, 8, 10

.text
.globl _start

_start: 
lui t0, 0x10000
lw s0, 0(t0) # primeiro elemento de A
lw s1, 20(t0) # primeiro elemento de B

li t1, 0 # i (contador de loop)
li t5, 4 # condição de parada

loop: 
mul t2, s1, t1 # multiplica B[i] pelo iterativo
add t2, t2, s0 # soma o resultado com A[i]

addi s0, s0, 4 # prox elemento de A
addi s1, s1, 4 # prox elemento de B
addi t1, t1, 1 # incrementa i

blt t1, t5, loop # while (i < 5)