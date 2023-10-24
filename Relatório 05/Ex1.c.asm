.data
    a: .word    #Inicializando a
    b: .word    #Inicializando b
    c: .space 0 # Array c

.text
    # a = $s0
    lw $s0, a
    
    # b = $s1
    lw $s1, b

    # c = $s2
    la $s2, c

    # $s3 = b - a
    sub $s3, $s1, $s0

    # Armazenando o valor no endereço de b[0] => 4*0 = 0
    sw $s3, 0($s2)