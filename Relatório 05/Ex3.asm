.data
	a: .word 4,5 # a[2] = {4,5}
	j: .word 0 # j = 0
	
.text
	# a = $s0
    la $s0, a
    # j = $s1
    lw $s1, j
    # $s2 = a[0]
    lw $s2,0($s0)
    # $s3 = a[1]
    lw $s3, 4($s0)

	# a[0] < 5?
    blt $s2, 5, else
    # a[0] = j+2
    addi $s2, $s1, 2
    sw $s2, 0($s0)
    j exit
    
    else:
    # a[1] + 10
    addi $s3, $s3, 10
    # j = $s3
    add $s1, $s1, $s3
    sw $s1, 4($s0)
    
    exit:
    