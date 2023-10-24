.data
mystring: .space 52
prompt: .asciiz "What is you name?"
outprompt: .asciiz "\n My name is:"

.text
main:
li $v0,4
la $a0,prompt
syscall

li $v0,8
la $a0,mystring
li $a1,52
syscall

li $v0,4
la $a0,outprompt
syscall

li $v0,4
la $a0,mystring
syscall

li $v0,10
syscall

