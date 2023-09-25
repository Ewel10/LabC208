.text
# a = $t1 = 10
li $t1, 10
# b = $t2 = 20
li $t2, 20
#c = $t3 = 30
li $t3, 30

# 2) if (a != b)
#       c = a + b;
#       a = b - c;
#    else
#       b = a + c;
#       c = b - c;

bne $t1, $t2, DIFERENTE
add $t2, $t1, $t3
sub $t3, $t2, $t3
j exit
DIFERENTE:
add $t3, $t1, $t2
sub $t1, $t2, $t3 
exit: