.text
.globl _start
_start:

ori x8, x0, 0x01 # Define x8 como 0x00000001 inicialmente
slli x8, x8, 31 # Desloca 31 bits para a esquerda, resultando em 0x80000000
xori x9, x8, -1 # Complementa bits para transformar 0x80000000 em 0x7FFFFFFF
x9, x9, -1 # Complementa novamente para obter 0xFFFFFFFF
and x8, x8, x9 # Zera todos os bits exceto os 31 bits menos significativos