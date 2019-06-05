Algoritmo "Comerciante"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descrição   : Calcula acrescimo e desconto de uma prestacao e informa o prejuizo do comerciante
// Autor(a)    : Wesley Vinicius
// Data atual  : 07/09/2018
Var
// Seção de Declarações das variáveis 
   acrescimo, desconto, prestacao, valoracrescimo, valortotal, prejuizo : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva ("Informe o valor da prestacao em atraso: R$")
   leia (prestacao)
   
   acrescimo <- 10 * (prestacao / 100)
   valoracrescimo <- acrescimo + prestacao
   desconto <- 10 * (valoracrescimo / 100)
   valortotal <- valoracrescimo - desconto
   prejuizo <- prestacao - valortotal
   
   escreval ("O valor total a pagar e de: R$", valortotal)
   escreval ("O prejuizo do comerciante e de: R$", prejuizo)

Fimalgoritmo