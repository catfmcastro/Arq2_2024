# while(i == 8){
#   x = i++;
# }

.text
.globl _start

_start: 
li s0, -1 # x
lw s1, 0 # i

li t0, 8 # condição de parada

loop: 
mv s0, s1
addi s1, s1, 1

beq s1, t0, loop # while (i == 5)