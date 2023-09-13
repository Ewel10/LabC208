.text

# x = 5 + 4 ---> tipo R
# A = 5 ---> $t1
# B = 4 ---> $t2
# X = A + B ---> $t3 = $t1 + $t2

# li = Load Immediate
li $t1, 5
li $t2, 4
add $t3, $t1, $t2

# x = 10 + 125 ---> Tipo I
# A = 10 ---> $0
# B = 125
# x = $s1

li $s0, 0x10
addi $s1, $s0, 125

# subtração
sub $t4, $s1, $t1
subi $t0, $t4, 100

 addi $s7, $s1, -10
 
 # multiplicação
 mul $s6, $t6, $t7
 mul $s5, $t6, 3
 
 # divisão
 div $s7, $s5, 2
  