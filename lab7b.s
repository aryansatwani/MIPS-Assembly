.data
array: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
element: .word 10
length: .word 20
msgFound: .asciiz "Element found at index: "
msgNotFound: .asciiz "Element not found"

.text
main:
la $a0,array
lw $a1,element
lw $a2,length
jal linear_search
move $t0,$v1
beg $v0,$zero,NotFound
li $v0,4
la $a0,msgFound
syscall

move $a0,$t0
li $v0,1
syscall
j exit

NotFound:
li $v0,4
la $a0,msgNotFound
syscall

exit: 
li $v0,10
syscall

linear_search:
li $t0,0
li $v1,0

loop:
bge $t0,$a2,out
lw $t1, 0($a0)
beq $t1,$a0,out1
addi $a0,$a0,4
addi $t0,$t0,1
j loop

out1:
li $v0,1
syscall

out:
jr $ra
