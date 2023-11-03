.data
entrada:     .asciiz "Entre com o valor de N: "
resultado:     .asciiz "A diferença é: "

.text

li $v0, 4
la $a0, entrada
syscall

    
# Ler o valor de N
li $v0, 5
syscall

li $t1, 0   # $t1 armazena a soma dos números 
li $t2, 0   # $t2 armazena a soma dos quadrados


#Calculo da soma dos N primeiros números
li $t3, 1   # Inicializa o contador para 1
soma:
add $t1, $t1, $t3   
addi $t3, $t3, 1     
bne $t3, $t0, soma 

 
 #Calcular a soma dos quadrados dos N primeiros números naturais
li $t3, 1   # Reinicializa o contador para 1
somaquadrado:
mul $t4, $t3, $t3
add $t2, $t2, $t4  
addi $t3, $t3, 1     
bne $t3, $t0, somaquadrado  


#Quadrado da soma
mul $t1, $t1, $t1

#Calcular a diferença
sub $t1, $t1, $t2


#Imprimindo o resultado
li $v0, 4
la $a0, resultado
syscall

li $v0, 1
move $a0, $t1
syscall

li $v0, 10
syscall
   