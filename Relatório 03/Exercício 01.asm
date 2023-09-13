# Exercício 1:
.text
#a) 2 + 5
    li $t1, 2
    li $t2, 5
    add $t3, $t1, $t2

#b) 89 + 20
    li $t4, 89
    li $t5, 20
    add $t6, $t4, $t5

#c) -80 + 1234
    li $s1, -80
    li $s2, 1234
    add $s3, $s2, $s1

#d) 70 - 24
    li $s4, 70
    li $s5, -24
    add $s6, $s5, $s4

#e) 20 - 150
    li $t8, 150
# 20 já está atribuido ao $t5 na questão b
    sub $s7, $t5, $t8