.data
myN: .word 0
myFact: .word 0
prompt: .asciiz "Enter value of N:\n"
outprompt: .asciiz "The factorial is:\n"

.text
main:
li $v0,4
la $a0,prompt
syscall

li $v0,5
syscall

sw $v0,myN

lw $t0,myN
li $t1,1 #fact
li $t2,0 #loop

factLoop:
mul $t2,$t2,$t1
add $t1,1
ble $t1,$t0,factLoop

sw $t2,myFact

li $v0,4
la $a0,outprompt
syscall

li $v0,1
lw $a0,myFact
syscall

li $v0,10
syscall
