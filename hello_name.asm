# Program File: hello_name.asm
# Author: gabriel alirez
# Program to read the users name, and repeat it back

.text
main:

# ask for name
li $v0, 4
la $a0, prompt
syscall

# save data
li $v0, 8
la $a0, input
lw $a1, inputSize
syscall

# Output the data
li $v0, 4
la $a0, output
syscall

# Output the number
li $v0, 4
la $a0, input
syscall

li $v0,4
la $a0, exclamation
syscall
# Exit the program
li $v0, 10
syscall

.data
input: .space 81
inputSize: .word 80
prompt: .asciiz "Please enter your name "
output: .asciiz "Hello, "
exclamation: .asciiz "!"
