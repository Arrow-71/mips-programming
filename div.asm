.data
miles: .asciiz "Hello, please enter the distance traveled (in miles)"
mph: .asciiz "\nPlease enter your average speed (in mph)"
hours: .asciiz "\nyour trip was "
hours2: .asciiz" hours long"
min: .asciiz" and "
min2: .asciiz" minutes long"

.text
#number 1
addi $v0, $zero, 4
la $a0, miles
syscall
addi $v0, $zero, 5
syscall
move $s0, $v0
#number 2
addi $v0, $zero, 4
la $a0,mph
syscall
addi $v0, $zero, 5
syscall
move $s1, $v0

#dividing
div $s3,$s0,$s1

#printing
addi $v0, $zero, 4
la $a0, hours
syscall

addi $v0, $zero, 1
move $a0, $s3
syscall

li $v0,4
la $a0,hours2
syscall

li $v0,4
la $a0,min
syscall

li $v0,4
la $a0,min2
syscall

#End the program
addi $v0, $zero, 10
syscall
