.data
    a: .space 10  # Array a
    b: .word #Inicializando b
    c: .word #Inicializando c

.text
    # a = $s0
    la $s0, a
    
    # b = $s1
    la $s1, b

    # c = $s2
    la $s2, c

    # $s3 = b - c
    sub $s3, $s1, $s2

    # Armazenando o valor no endereço de a[10] => 4*10 = 40
    sw $s3, 40($s0)
