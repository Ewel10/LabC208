.data

msg1: .asciiz "Entre com o primeiro valor: "
msg2: .asciiz "Entre com o segundo valor: "
msg3: .asciiz "Entre com o terceiro valor: "
msg4: .asciiz "Soma dos valores: "
msg5: .asciiz "\nMaior que 100"
msg6: .asciiz "\nMenor que 100"
msg7: .asciiz "\nIgual a 100"

.text

# Entrando com o primeiro valor
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
add $t1, $v0, $0

# Entrando com o segundo valor
li $v0, 4
la $a0, msg2
syscall

li $v0, 5
syscall
add $t2, $v0, $0

# Entrando com o terceiro valor
li $v0, 4
la $a0, msg3
syscall

li $v0, 5
syscall
add $t3, $v0, $0

# Fazendo a soma dos 3 valores: 

add $t4, $t1, $t2
add $t4, $t4, $t3

# Printando o valor da soma:
li $v0, 1
la $a0, ($t4)
syscall

# Implementando a lógica de verificação

bgt $t4, 100, MAIOR
blt $t4, 100, MENOR
j IGUAL

MAIOR:
li $v0, 4
la $a0, msg5
syscall
j FIM

MENOR:
li $v0, 4
la $a0, msg6
syscall
j FIM

IGUAL:
li $v0, 4
la $a0, msg7
syscall
j FIM

FIM:
li $v0, 10
syscall