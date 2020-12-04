#Title:dec_bin_hex.asm
#Author: Gabriel Alirez
#Purpose:to covert a given decimal number to binary and hex

.data 
int: .asciiz "please enter an integer "
newline: .asciiz "\n"
bstatement: .asciiz "your number in binary is\n"
hstatement: .asciiz "your number in hex is\n"
.text
main:

#prints out int message and accepts integer from user
li $v0,4
la $a0,int
syscall

li $v0,5
syscall

#moves integer into t0
move $t0,$v0

#call all needed subprograms
jal binarystatement
jal printbinary
jal PrintNewLine
jal hexstatement
jal printhex
jal exit

#prints binary staement and the binary conversion
binarystatement:
li $v0,4
la $a0,bstatement
syscall
jr $ra

printbinary:
move $a0,$t0
li $v0,35
syscall
jr $ra

#prints out hex message and the hex conversion
hexstatement:
li $v0,4
la $a0,hstatement
syscall
jr $ra

printhex:
move $a0,$t0
li $v0,34
syscall
jr $ra

.include "util.asm"
