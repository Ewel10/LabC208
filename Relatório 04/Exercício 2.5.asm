.text
# 5)
# int i = 10;
li $t1, 10
# int cont = 0;
li $t2, 0
# while(i > 0) {
#	cont += 5;
#	i -= 2;
# }

WHILE: bnez $t1, LOOP
j EXIT
LOOP:
	addi $t2, $t2, 5
	subi $t1, $t1, 2
	j WHILE
	
EXIT: