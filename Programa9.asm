.text main
main: 

addi $t0, $zero, 0x1001#t0 = 0x1001
sll $t0, $t0, 16 #anda 4 bits
lw $s0, 0($t0)#le o vetor
lw $s1, 4($t0)#le o vetor
lw $s2, 8($t0)#le o vetor
lw $s3, 12($t0)#le o vetor

 add $t2, $s0, $s1# soma e guarda no s4
 add $t1, $s2, $s3
 add $s4, $t2, $t1
 
 sw $s4, 16($t0) #guarda no vetor o resultado da soma 
.data 
x1: .word 15 
x2: .word 25 
x3: .word 13 
x4: .word 17 
soma: .word -1
