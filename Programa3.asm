.text
.globl main
main:
ori $s0, $zero, 3 #x
ori $s1, $zero, 4 #y

add $t0, $zero, $s0 #3
add $t0, $t0, $s0 #6
add $t0, $t0, $s0 #12
add $t0, $t0, $s0 #24
add $t0, $t0, $s0 #48
sub $t0, $t0, $s0 #t0=45

add $t1, $zero, $s1 #4
add $t1, $t1, $t1 #8
add $t1, $t1, $t1 #16
add $t1, $t1, $t1 #32
add $t1, $t1, $t1 #64
add $t1, $t1, $t1 #128
add $t1, $t1, $t1 #256

add $t2, $s1, $s1 #8
add $t2, $t2, $s1 #12

add $t1, $t1, $t2 #t1=268
add $t1, $t1, $t1 #526
add $t1, $t1, $t1, #1072