.data
    a: .word    # Inicializando a
    b: .space 60 # Array b com espaço para 15 inteiros (4*15 = 60)
    c: .word    # Inicializando a

.text
    # b = $s0
    la $s0, b

    # c = $s1
    lw $s1, c

    # b[15] = $s2
    lw $s2, 60($s0)

    # $s3 = b[15] - c
    sub $s3, $s2, $s1
    
    # a = $s3
    sw $s3, a
