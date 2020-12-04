#File name: add.asm
#author: Gabriel Alirez
#purpose: take 3 numbers to add from the user and add them together
.data
number1: .asciiz "Hello, please enter a your first number " 
number2: .asciiz "\nPlease enter your second number "
number3: .asciiz  "\nPlease enter yout third number "
result: .asciiz "\nyour answer is "

.text
#number 1
addi $v0, $zero, 4
la $a0, number1
syscall
addi $v0, $zero, 5
syscall
move $s0, $v0
#number 2
addi $v0, $zero, 4
la $a0,number2
syscall
addi $v0, $zero, 5
syscall
move $s1, $v0
#number 3
addi $v0, $zero, 4
la $a0, number3
syscall
addi $v0, $zero, 5
syscall
move $s2, $v0

#adding
add $s3,$s0,$s1
add $s4,$s3,$s2
#printing
addi $v0, $zero, 4
la $a0, result
syscall
addi $v0, $zero, 1
move $a0, $s4
syscall

#End the program
addi $v0, $zero, 10
syscall