#MIPS Assembly Program for Logical Operations

.data
myA: .word 0
myB: .word 0
promptA: .asciiz "Enter A value:\n"
promptB: .asciiz "\n Enter B value:\n"
outRight: .asciiz "\n Shift Right of A(4):\n"
outLeft: .asciiz "\n Shift Left of A(4):\n"
outOr: .asciiz "\n OR Operation\n"
outAnd: .asciiz "\n AND Operation\n"

.text
main:
li $v0,4
la $a0,promptA
syscall

li $v0,5
syscall

add $t1,$zero,$v0

li $v0,4
la $a0,promptB
syscall

li $v0,5
syscall

add $t2,$zero,$v0

sll $t2,$t0,4
li $v0,4
la $a0,outLeft
syscall

li $v0,1
add $a0,$zero,$t2
syscall

srl $t2,$t2,3
li $v0,4
la $a0,outRight
syscall

li $v0,1
add $a0,$zero,$t2
syscall

and $t3,$t2,$t1
li $v0,4
la $a0,outAnd
syscall

li $v0,1
add $a0,$zero,$t3
syscall

or $t3,$t2,$t1
li $v0,4
la $a0,outOr
syscall

li $v0,1
add $a0,$zero,$t3
syscall

li $v0,10
syscall
