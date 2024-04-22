# 9º número da sequencia de fibonacci

.text
.globl _start

fibonacci:
li t2, 0 # inicializa o primeiro num como 0
li t3, 1 # inicializa o primeiro num como 1
li t5, 2 # inicializa o contador em 2

bge t5, a2, end_fibonacci # se n <= 1, pula para o final


loop_fibonacci:
add t4, t2, t3 # calc prox num
mv t2, t3 # atualiza prox num
mv t3, t4 # atualiza segundo num
addi t5, t5, 1 # incrementa contador
bne t5, a2, loop_fibonacci # loop

end_fibonacci:
mv a0, t2   # salva resultado em a0
jr ra       # retorna

_start:
li a1, 9 # a1 = 9
jal ra, fibonacci # chama fibonacci
mv a0, a1 # resultado em a0
