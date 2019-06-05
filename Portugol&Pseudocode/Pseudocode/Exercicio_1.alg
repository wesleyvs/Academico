Algoritmo "MediaPond"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descrição   : Faz a media ponderada de 5 valores
// Autor(a)    : Wesley Vinicius da Silva
// Data atual  : 03/09/2018
Var
// Seção de Declarações das variáveis 
   Mpeso, Mponderada, valor1, valor2, valor3, valor4, valor5 : real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva ("Digite o primeiro valor: ")
   leia (valor1)
   escreva ("Digite o segundo valor: ")
   leia (valor2)
   escreva ("Digite o terceiro valor: ")
   leia (valor3)
   escreva ("Digite o quarto valor: ")
   leia (valor4)
   escreva ("Digite o quinto valor: ")
   leia (valor5)
   valor1 <- valor1*1
   valor2 <- valor2*2
   valor3 <- valor3*3
   valor4 <- valor4*4
   valor5 <- valor5*5
   Mpeso <- 1+2+3+4+5
   Mponderada <- (valor1+valor2+valor3+valor4+valor5)/Mpeso
   escreva ("o valor da media ponderada dos valores informados, sera de: ", Mponderada)
   

Fimalgoritmo