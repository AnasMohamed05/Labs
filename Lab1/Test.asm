.data 

name : .asciiz "NAME: Anas Mohamed Mohamed Ahmed
ID: 20812022100205
CSE321_Computer_Organization
"
.text 
main:
li $v0 ,4
la $a0 , name
syscall

li $v0 , 10
syscall
