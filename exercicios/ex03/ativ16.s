# int x = um_valor_inteiro_qualquer;
# int y = um_valor_inteiro_qualquer;
# int m = 0;
# if (a >= 0 && b <= 50)
#    x = 1;

.data

.text
.globl _start
_start:

li s0, 10 # x -> 10
li s1, 20 # x -> 20
li t0, 0 # 0
li t1, 1 # 1

# if (a >= 0 && b <= 50)
bge s0, t0, firstCheck
j checkFalse

firstCheck:
bge t1, s1, checkTrue
j checkFalse

checkTrue:
li s0, 1

checkFalse: