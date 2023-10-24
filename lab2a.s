#Read and print an integer

.data
myint: .word 0
prompt: .asciiz "Enter integer value:\n"
outprompt: .asciiz "\nInteger is:"

.text
main:

li $v0,4
la $v0,myint
syscall

li $v0,5
syscall

sw $v0,myint

li $v0,4
la $a0,outprompt
syscall

li $v0,1
lw $a0,myint
syscall

li $v0,10
syscall
