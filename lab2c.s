#MIPS Assembly Program to read two integers and add them
.data
myint1: .word 0
myint2: .word 0
mysum: .word 0
prompt: .asciiz "Enter a number\n"
outprompt: .asciiz "\nThe sum is:"

.text
main:

li $v0,4
la $a0,prompt
syscall

li $v0,5
syscall

sw $v0,myint1

li $v0,4
la $a0,prompt
syscall

li $v0,5
syscall

sw $v0,myint2

lw $t0,myint1
lw $t1,myint2
add $t2,$t1,$t0
sw $t2,mysum

li $v0,4
la $a0,outprompt
syscall

li $v0,1
lw $a0,mysum
syscall

li $v0,10
syscall
