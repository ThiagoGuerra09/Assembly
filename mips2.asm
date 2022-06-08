.text main
main: 

addi $s0, $zero, 127
addi $s1, $zero, 65

addi $s2, $zero, 0x1001
sll $s2, $s2, 16
lw $s3, 0($s2)
lw $s4, 4($s2)

mult $s0, $s3
mflo $t0

mult $s1, $s4
mflo $t1

sub $t2, $t0, $t1 
addi $t2, $t2, 1

sw $t2, 8($s2)




.data
x: .word 5 
z: .word 7 
y: .word 0 