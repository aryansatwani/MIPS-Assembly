#Find sum of elements in array
.data:
arrayA: .space 80
len: word 10
enterIn: .asciiz "Enter 10 integers:\n"
sumPrompt: .asciiz "\The Sum is:"

.text:
main:
li $v0,4
la $a0,enterIn
syscall

li $t1,0
lw $t0,len
la $s0,arrayA

input:
bge $t1,$t0,findSum
lw $v0,5
syscall
sw $v0,0($s0)

addi $s0,$s0,4
addi $t1,$t1,1
j input

findSum:
li $t1,0
la $s0,arrayA
li $a1,0 #sum

loop:
bge $t1,$t0,out
lw $t2,0($s0)
add $a1,$a1,$t2

addi $s0,$s0,4
addi $t1,$t1,1
j loop

out:
li $v0,4
la $a0,sumPrompt
syscall

add $a0,$zero,$a1
li $v0,1
syscall

out:
li $v0,10
syscall
