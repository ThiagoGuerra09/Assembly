.text 
.globl main

 main: 
 
 addi $s0, $zero, 3 #x=3
 addi $s1, $zero, 4 #y=4
 sll $t0, $s0, 4 #t0=48
 sub $t0, $t0, 3 #t0=45
 sll $t1, $s1,6 #t1=256
 sll $t2, $s0, 2 # 12
 add $t1, $t1, $t2 #t1=268
 add $t1, $t1, $t0 #t1=313
 sll $t1, $t1,2 #t1=1256
 
 .data