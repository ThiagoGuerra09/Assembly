.text 
.globl main

main:

addi $t0, $zero, 1
sll $t0, $t0, 16
addi $s0, $t0, 0x86A0 #s0=100.000

addi $s1, $zero, 3
sll $s1, $s1, 16
addi $s1, $s1, 0x0D40 #t1=200.000

add $t3, $s0, $s1 #300.000

.data