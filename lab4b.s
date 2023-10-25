#Linear Search
.data:
myArray: .word 1,24,56,78,90,100,323,4326,57456,74554
prompt: .asciiz "Linear Search\n"
len: .word 10
found: .asciiz "\n Element found at index\n"
notFound: .asciiz "\nElement not found\n"
check: .word 90

.text
main:
li $v0,4
la $a0,prompt
syscall

li $v0,5
syscall

lw $t0,len
li $t1,0
la $s0,myArray
add $s1,$zero,$v0
lw $s1,check

loop:
bge $t1,$t0,exit
lw $a0,0($s0)
beq $a0,$s1,foundElement

addi $s0,$s0,4
addi $t1,$t1,1

j loop

foundElement:
li $v0,4
la $a0,found
syscall

add $a0,$zero,$t1
li $v0,1
syscall

li $v0,10
syscall

exit:
li $v0,4
la $a0,notFound
syscall

li $v0,10
syscall
