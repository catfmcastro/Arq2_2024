# exemplo de switch case em assembly

.text
.globl _start

_start:
li s0, 3 # x = 3

# casos
li t0, 0
li, t1, 1
li t2, 2
li t3, 3

# jump para os casos corretos
beq s0, t0, case0
beq s0, t1, case1
beq s0, t2, case2
beq s0, t3, case3

case0:
# code here
j exit

case1:
# code here
j exit

case2:
# code here
j exit

case3:
# code here
j exit

exit: