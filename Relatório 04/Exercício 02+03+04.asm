.text
# 324 -> $t1
li $t1, 324
# 100 -> $t2
li $t2, 100
# 2018 -> $t3
li $t3, 2018
# 1970 -> $t4
li $t4, 1970
# 66 -> $t5
li $t5, 66
# 33 -> $t6
li $t6, 33

# ex 2
# s1 -> 324 AND 100
and $s1, $t1, $t2
# s2 -> 2018 AND 1970
and $s2, $t3, $t4
# s3 -> 66 AND 33
and $s3, $t5, $t6

# ex 3
# s4 -> 324 OR 100
or $s4, $t1, $t2
# s5 -> 2018 OR 1970
or $s5, $t3, $t4
# s6 -> 66 OR 33
or $s6, $t5, $t6

# ex 4
# s7 -> 324 NOR 100
nor $s7, $t1, $t2
# t8 -> 2018 NOR 1970
nor $t8, $t3, $t4
# t9 -> 66 NOR 33
and $t9, $t5, $t6