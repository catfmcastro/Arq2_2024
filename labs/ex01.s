# a=8; b=2; c=4; d=0;
# e = a | b & c;
# a = 7 * a + b;
# b = (c | a) >> b;
# c = c - 12;
# d = d + (c >> 2);
# d = d + (a | b) + (e & c);
# d = d << 4;

.text

.globl _start

# set valores
addi s0, x0, 8 # a=8
addi s1, x0, 2 # b=2
addi s2, x0, 4 # c=4
addi s3, x0, 0 # d=0

# e = a | b & c; ------------------------------------------
and t0, s1, s2
or s4, s0, t0

# a = 7 * a + b; ------------------------------------------
# a = 4a + 2a + a + b
# a = (a >> 2) + (a >> 1) + a + b

add t0, x0, s0 # salva o valor de a em t0
slli t1, t0, 2 # (a >> 2)
slli t2, t0, 1 # (a >> 1)
add s0, t0, t1 # a = t0 + t1
add s0, s0, t2 # a = a + t3
add s0, s0, s1 # a = a+b


# b = (c | a) >> b; --------------------------------------
or t0, s2, s0 # t0 = (c | a)
slli s1, t0, s1 # t0 >> b

# c = c - 12; --------------------------------------------
addi t0, x0, 12 
sub s2, s2, t0 # (c - 12)

# d = d + (c >> 2); --------------------------------------
slli t0, s2, 2 # t0 = (c >> 2)
add s3, s3, t0 # d + t0

# d = d + (a | b) + (e & c); ----------------------------
or t0, s0, s1 # t0 = (a | b)
and t1, s4, s2 # t1 = (e & c)
add t0, t0, t1
add s3, s3, t0

# d = d << 4; -------------------------------------------
slli s3, s3, 4