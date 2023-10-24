.data
    a: .space 20   # Array a com 5 espaços
    b: .word       # Inicializando b
    c: .space 12   # Array c com 3 espaços

.text
    # a = $s0
    la $s0, a

    # c = $s1
    la $s1, c

    # a[5] = $s2
    lw $s2, 20($s0)
    # c[3] = $s3
    lw $s3, 12($s0)

    # $s4 = a[5] + c[3]
    sub $s4, $s2, $s3
    
    # b = $s4
    sw $s3, b
