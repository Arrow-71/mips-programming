# File: utils.asm
# Purpose: To define utilities which will be used in MIPS programs.
# Author: gabriel alirez

# Subprograms Index:
# Exit - Call syscall with a server 10 to exit the program
# NewLine - Print a new line character (\n) to the console
# PrintInt - Print a string with an integer to the console
# PrintString - Print a string to the console
# PromptInt - Prompt the user to enter an integer, and return
# it to the calling program.

.text
PrintNewLine:
li $v0, 4
la $a0, __PNL_newline
syscall
jr $ra
.data
__PNL_newline: .asciiz "\n"

.text
PrintInt:
li $v0, 4
syscall
move $a0, $a1
li $v0, 1
syscall
jr $ra

.text
PromptInt:
# Print the prompt, which is already in $a0
li $v0, 4
syscall
# syscall the value is already in $v0, so there is no
move $a0, $a1
li $v0, 5
syscall
jr $ra

# subprogram: PrintString
# input: $a0 - The address of the string to print.
.text
PrintString:
addi $v0, $zero, 4
syscall
jr $ra

# subprogram: Exit
.text
exit:
li $v0, 10
syscall

#subprogram: accepts integer from user
.text
TakeInt:
li $v0,5
syscall
jr $ra

