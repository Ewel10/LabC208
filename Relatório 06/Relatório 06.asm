.data

RESULTADO: .word 0x00
f1: .asciiz "Entre com um numero inteiro: "
f2: .asciiz "O quadrado da soma desse número é: "
f3: .asciiz "\nA soma dos quadrados desse número é: "
f4: .asciiz "\nA diferença dos dois é: "

.text

# Mostrando a frase f1:
li $v0, 4
la $a0, f1
syscall
# ----------------- QUADRADO DAS SOMAS ---------------------------------------------------
# Entrando com o número para calculo no $t1 e no $t5:
li $v0, 5
syscall
add $t1, $v0, $0
add $t5, $v0, $0

# Iniciando o valor de $t2 pro loop
li $t2, 0


WHILESOMA: bnez $t1, LOOPSOMA # Enquanto o $t1 não for 0
j EXITSOMA
LOOPSOMA:
	add $t2, $t2, $t1 # Vai somar $t2 com $t1
	subi $t1, $t1, 1 # Vai subtrair 1 do $t1
	j WHILESOMA # Vai voltar pra label WHILE
	
EXITSOMA:
mult $t2, $t2 # Fazendo o quadrado da soma
mflo $t3 # Armazenando em $t3 o quadrado da soma

# Mostrando a f2 e o resultado:
li $v0, 4
la $a0, f2
syscall

li $v0, 1
la $a0, ($t3)
syscall

# -----------------SOMA DOS QUADRADOS-------------------------------------------------

# Iniciando o valor de $t4 pro loop
li $t4, 1

WHILEMULT: beqz $t5, EXITMULT  # Se $t5 for igual a zero, saia do loop
j LOOPMULT
LOOPMULT:
    # Quadrado do $t4
    mul $t6, $t4, $t4
    mflo $t6
    # Soma dos quadrados
    add $t7, $t7, $t6
    # Adicionando 1 ao $t4
    addi $t4, $t4, 1
    # Subtraindo 1 do $t5
    subi $t5, $t5, 1
    j WHILEMULT
EXITMULT:

# Mostrando a f2 e o resultado:
li $v0, 4
la $a0, f3
syscall

li $v0, 1
la $a0, ($t7)
syscall

# -------------------RESULTADO FINAL--------------------------------------------

# Mostrando a f4 e o resultado:
li $v0, 4
la $a0, f4
syscall

sub $t8, $t3, $t7

li $v0, 1
la $a0, ($t8)
syscall

# Finalizando o código
li $v0, 10
syscall