#MIPS Assembly Program to calculate Volume and Surface Area of a Cuboid
.data
volume: .word 0
SurfaceArea: .word 0
promptA: .asciiz "Enter value for Length:\n"
promptB: .asciiz "Enter value for Breadth:\n"
promptC: .asciiz "Enter value for Height:\n"
promptSA: .asciiz "\nSurface Area is:"
promptVol: .asciiz "\n Volume is:"

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

li $v0,4
la $a0,promptC
syscall

li $v0,5
syscall

add $t3,$zero,$v0

#Volumne
mul $t4,$t1,$t2
mul $t4,$t4,$t3

sw $t4,volume

li $v0,4
la $a0,promptVol
syscall

li $v0,1
lw $a0,volume
syscall

#Surface Area
mul $t5,$t1,$t2
add $t4,$zero,$t5

mul $t5,$t2,$t3
add $t4,$t4,$t5

mul $t5,$t1,$t3
add $t4,$t4,$t5

addi $t6,$zero,2
mul $t4,$t4,$t6

sw $t4,SurfaceArea

li $v0,4
la $a0,promptSA
syscall

li $v0,1
lw $a0,SurfaceArea
syscall

li $v0,10
syscall
