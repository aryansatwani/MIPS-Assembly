#Print Contents of (int) array

.data
myArray: .word 1,24,56,78,90,100,323,4326,5746,74554
prompt: .asciiz "Array:\n"
len: .word 10
next: .asciiz ","

.text
main
li $v0,4
la $a0,prompt
syscall

lw $t0,len
li $t1,0
la $s0,myArray

loop:
bge $t1,$t0,exit
lw $a0,0($s0)
li $v0,1
syscall

addi $s0,s0,4
addi $t0,t0,1

li $v0,4
la $a0,next
syscall

j loop

exit:
li $v0,10
syscall
