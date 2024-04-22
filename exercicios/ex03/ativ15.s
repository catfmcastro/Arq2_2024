# int x = um_valor_inteiro_qualquer;
# int y = um_valor_inteiro_qualquer;
# int m = 0;
# if (x > y)
#    m = x;
# else
#    m = y;

.data

.text
.globl _start
_start:

li s0, 10 # x -> 10
li s1, 20 # x -> 20
li s3, 0 # m -> 0

bgt s0, s1, maior
mv s3, s0
j fim

maior:
mv s3, s1

fim: