.data
    a: .space 84   # Array a com 21 espaços
    b: .word       # Inicializando b
    c: .word       # Inicializando c

.text
    # a = $s0
    la $s0, a

    # b = $s1
    la $s1, b

    # a[21] = $s2
    lw $s2, 84($s0)
    
    # $3 = b - a[21]
    sub $s3, $s1, $s2
    
    # c = $s3
    sw $s3, c
