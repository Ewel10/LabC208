.text

#char a = 54;
    li $t1, 54
    
#char b = 45;
    li $t2, 45
    
#printf("%d", a + b);
    add $t3, $t1, $t2
    li $v0, 1
    move $a0, $t3
    syscall
    
#return 0
    li $v0, 10
    syscall