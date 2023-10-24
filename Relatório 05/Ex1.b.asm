.data
    a: .word #Inicializando a
    b: .space 980 # Array b com 245 elementos (4 * 245 = 980)
    c: .word #Inicializando c

.text
    # a = $s0
    lw $s0, a
    
    # b = $s1
    la $s1, b

    # c = $s2
    lw $s2, c

    # $s3 = a + c
    add $s3, $s0, $s2

    # Armazenando o valor no endereço de b[245] => 4*245 = 980
    sw $s3, 980($s1)
