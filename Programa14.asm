.text main
main: 
addi $s3, $zero, 1 # declaraçaõ 
addi $s2, $zero, 30 # declaraçaõ 
addi $s1, $zero, 50 # declaraçaõ 
addi $t0, $zero, 0x1001
sll $t0, $t0, 16 #shift left no t0

lw $s0, 0($t0)# le oq ta na memoria


slt $t2, $s0, $s2 # se for maior que 30 é 0 
beq $t2, $zero, maior #se for maior que 30 entra, se não vai para fim
j fim

maior:
slt $t3, $s0, $s1 #se for menor que 50 é 1
bne $t3, $s3, func # se for menor que 50 ele é 1 e entra
j fim

func: #funcao para adicionar valor na flag
ori $t2, $zero, 0x0001
sw $t2, 4($t0)
fim:
.data 
TEMP: .word 40
FLAG: .word 0
