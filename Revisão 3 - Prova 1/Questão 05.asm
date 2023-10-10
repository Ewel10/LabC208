.data
txt1: .asciiz "Entre com o primeiro valor: "
txt2: .asciiz "Entre com o segundo valor: "
txt3: .asciiz "Entre com o terceiro valor: "
txtigual: .asciiz "a soma deu igual a 100"
txtmaior: .asciiz "a soma de maior que 100"
txtmenor: .asciiz "a soma deu menor que 100"

.text
# Primeiro num
li $v0, 4
la $a0, txt1
syscall

li $v0, 5
syscall
add $t0, $v0, $t0

# Segundo num
li $v0, 4
la $a0, txt2
syscall

li $v0, 5
syscall
add $t1, $v0, $t1

# Terceiro num
li $v0, 4
la $a0, txt3
syscall

li $v0, 5
syscall
add $t2, $v0, $t2

# somando os 3 numeros e deixando ele em $t3
add $t3, $t0, $t1
add $t3, $t3, $t2

beq $t3, 100, IGUAL
bgt $t3, 100, MAIOR

li $v0, 4
la $a0, txtmenor
syscall
j exit

IGUAL:
li $v0, 4
la $a0, txtigual
syscall
j exit

MAIOR:
li $v0, 4
la $a0, txtmaior
syscall

exit:
li $v0, 10
syscall