.data
Vetor: .word 1, 3, 5, 7, 9, 11, 13, 0, 2, 4, 6, 8, 10, 12
Soma: .word -1
Maior: .word -1

.text
.globl _start

_start:
    la t0, Vetor # end primeiro elem. do vetor
    li t1, 14 # num. de elems. do vetor
    li t2, 0 # soma              # Inicializa soma em t2
    lw t3, 0(t0) # maior valor
    li t4, 0 # índice

loop:
    beq t4, t1, end_loop # se índice == número de elementos, sai do loop

    slli t5, t4, 2 # multiplica índice por 4 (tamanho de um inteiro)
    add t6, t0, t5 # endereço do elemento atual
    lw t7, 0(t6) # carrega elemento atual

    add t2, t2, t7 # calculo de soma

    blt t3, t7, update_max  # se elemento atual > maior valor, atualiza maior valor
    j skip_update

update_max:
    mv t3, t7 # atualiza maior valor com o elemento atual

skip_update:
    addi t4, t4, 1 # incrementa o índice
    j loop

end_loop:
    la t8, Soma # carrega o endereço de Soma
    sw t2, 0(t8) # armazena a soma na memória

    la t9, Maior # Carrega o endereço de Maior
    sw t3, 0(t9) # Armazena o maior valor na memória

end:
    # saída do programa
    li a7, 10 # código para exit
    ecall