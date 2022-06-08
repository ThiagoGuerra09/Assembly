.text main 
main: 

addi $t1, $zero, 2 # t1=2
addi $t0, $zero, 0x1001 #criaçaõ do array
sll $t0, $t0, 16

lw $s0, 0($t0)# leitura dos ponteiros 
lw $s1, ($s0)
lw $s2, ($s1)
lw $s3, ($s2)

mult $s3, $t1 #mutiplica por 2
mflo $s4
sw $s4, ($s2)#escreve na memoria o resultado da mult

.data 
x: .word 0x10010004
x2: .word 0x10010008
x3: .word 0x1001000c
x4: .word 42