.text main
main: 

addi $s1, $zero, -1 # declaraçaõ 
addi $t0, $zero, 0x1001
sll $t0, $t0, 16 #shift left no t0

lw $s0, 0($t0)# le oq ta na memoria

srl $t1, $s0, 31 #descobre o sinal
beq $t1, $zero, fim #se for 0 entra else vai para o fim
mult $s0, $s1 #transforma o negativo em positivo
mflo $t2
sw $t2, 0($t0)# guarda o valor
j end 
fim: # guarda o valor positivo 
sw $s0, 0($t0)

end: 


.data 
A: .word -7