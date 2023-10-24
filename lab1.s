#MIPS Assembly program to print a string and an integer

.data
msg: .asciiz "Hello World!\n"
var: .word 9

.text
main:

li $v0,4
la $a0,msg
syscall

li $v0,1
la $a0,var
syscall

li $v0,10
syscall
