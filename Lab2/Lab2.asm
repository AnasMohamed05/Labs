.data 


firstprompt: .asciiz "Enter first number: "
secondprompt: .asciiz "Enter second number: "
thirdprompt: .asciiz "Enter third number: "
fourthprompt: .asciiz "Enter fourth number: "
result: .asciiz "average result is: "



.text 
main:
#1
li $v0, 4
la $a0 , firstprompt
syscall

li $v0, 5
syscall
move $t1,$v0

#2
li $v0, 4
la $a0 , secondprompt
syscall

li $v0, 5
syscall
move $t2,$v0

#3
li $v0, 4
la $a0 , thirdprompt
syscall

li $v0, 5
syscall
move $t3,$v0


#4
li $v0, 4
la $a0 , fourthprompt
syscall


li $v0, 5
syscall
move $t4,$v0


li $v0, 4
la $a0 , result
syscall

add $a0 ,$t1,$t2
move $t5,$a0

add $a0,$t3,$t4
move $t6,$a0

add $a0,$t5,$t6
li $t1, 4
div $a0,$t1
mflo $t2

move $a0,$t2
li $v0,1
syscall

exit:
li $v0,10

syscall
