# switch(temp){
#    case 10:
#        x = 10;
#        break;
#    case 25:
#        x = 25;
#        break;
#    default:
#        x = 0;
# }

.text
.globl _start
_start:

li s0, 25 # temp
li s1, -1 # x

# casos
li t0, 10
li t1, 25

# jump para os casos corretos
beq s0, t0, case10
beq s0, t1, case25
j default

case10:
li s1, 10
j exit

case25:
li s1, 25
j exit

default:

exit: