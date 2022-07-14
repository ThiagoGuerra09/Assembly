.text
.globl main
main:
addi $s0, $zero, 2
addi $s1, $zero, 3
addi $s2, $zero, 4
addi $s3, $zero, 5
add $t0, $s0, $s1
add $t1, $s2, $s3
sub $t3, $t0, $t1 #t3=x
sub $t4, $s0, $s1
add $t4, $t4, $t3 #t4=y
sub $s1, $t3, $t4

.data