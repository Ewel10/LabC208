.text
# a = $t1 = 10
li $t1, 10
# b = $t2 = 20
li $t2, 20
#c = $t3 = 30
li $t3, 30

# 3) if (a > b)
#       c = a - b;
#       a = b + c;
#    else
#       b = a - c;
#       c = b + c;

bgt $t1, $t2, MAIOR
sub $t2, $t1, $t3
add $t3, $t2, $t3
j exit
MAIOR:
sub $t3, $t1, $t2
add $t1, $t2, $t3 
exit: