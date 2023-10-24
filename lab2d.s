.data
msg: .asciiz "Number you want sum till:\n"
outprompt: .asciiz "\n Sum is:"
myN: .word 0
mySum: .word 0

.text:
main:
li $v0,4
la $a0,msg
syscall

li $v0,5
syscall

sw $v0,myN

lw $t0,myN
li $t1,1
li $t2,0

sumLoop:
add $t2,$t2,$t1
add $t1,1
ble $t1,$t0,sumLoop

sw $t2,mySum

li $v0,4
la $a0,outprompt
syscall

li %v0,1
lw $a0,mySum
syscall

li $v0,10
syscall
