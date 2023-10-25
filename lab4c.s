#Sum of two arrays

.data
myA: .space 80
myB: .space 80
myC: .space 80
heading: .asciiz "C[i]=A[i]+B[i]\n"
inPrompt: .asciiz "\n Enter elements for A:\n"
inputA: .asciiz "\Enter elements for A:\n"
inputB: .asciiz "\Enter elements fo B:\n"
outArray: .asciiz "\nC["
closer: .asciiz "]"

.text
main:
li $v0,4
la $a0,heading
syscall

li $v0,4
la $a0,inPrompt
syscall

li $v0,5
syscall
add $t0,$zero,$v0

li $t1,0 #index 1
la $s0,myA #Base Address of A
la $s1,myB #Base Address of B
la $s2,myC #Base Address of C

input:
bge $t1,$t0,sum
li $v0,4
la $a0,inputA
syscall

li $v0,5
syscall
sw $v0,0($s0)

li $v0,4
la $a0,inputB
syscall

li $v0,5
syscall
sw $v0,0($s1)

addi $s0,$s0,4
addi $s1,$s1,4
addi $s2,$s2,4
addi $t1,$t1,1

j input

sum:
li $t1,0 
la $s0,myA
la $s1,myB
la $s2,myC

loop:
bge $t1,$t0,out
lw $a0,0($s0)
lw $a1,0($s1)

add $t2,$a0,$a1
sw $t2,0($s2)

li $v0,4
la $a0,outArray
syscall

li $v0,1
add $a0,$zero,$t1
syscall

li $v0,4
la $a0,closer
syscall

li $v0,1
add $a0,$zero,$t2
syscall

addi $s0,$s0,4
addi $s1,$s1,4
addi $s2,$s2,4
addi $t1,$t1,1
j loop

out:
li $v0,10
syscall
