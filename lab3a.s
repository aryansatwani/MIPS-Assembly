.data
myN: .word 0
prompt: .asciiz "Enter number:\n"
outodd: .asciiz "\n N is odd"
outeven: .asciiz "\n N is even"

.text
main:
li $v0,4
la $a0,prompt
syscall

li $v0,5
syscall

sw $v0,myN

li $t1,2
div $v0,$t1
mfhi $t2
bnez $t2,odd

li $v0,4
la $a0,outeven
syscall

odd:
li $v0,4
la $v0,outodd
syscall

li $v0,10
syscall
