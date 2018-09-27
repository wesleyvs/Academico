Algoritmo "ApresentMes"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descrição   : Apresenta o nome do mes de acordo com o numero de entrada
// Autor(a)    : Wesley Vinicius
// Data atual  : 03/09/2018
Var
   // Seção de Declarações das variáveis
   mes : inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva ("Informe um valor que representa um mes (de 1 a 12): ")
   leia (mes)
   se (mes >= 1) e (mes <=12) entao
      se (mes = 1) entao
         escreva ("O mes informado e janeiro!!")
      fimse
      se (mes = 2) entao
         escreva ("O mes informado e fevereiro!!")
      fimse
      se (mes = 3) entao
         escreva ("O mes informado e marco!!")
      fimse
      se (mes = 4) entao
         escreva ("O mes informado e abril!!")
      fimse
      se (mes = 5) entao
         escreva ("O mes informado e maio!!")
      fimse
      se (mes = 6) entao
         escreva ("O mes informado e junho!!")
      fimse
      se (mes = 7) entao
         escreva ("O mes informado e julho!!")
      fimse
      se (mes = 8) entao
         escreva ("O mes informado e agosto!!")
      fimse
      se (mes = 9) entao
         escreva ("O mes informado e setembro!!")
      fimse
      se (mes = 10) entao
         escreva ("O mes informado e outubro!!")
      fimse
      se (mes = 11) entao
         escreva ("O mes informado e novembro!!")
      fimse
      se (mes = 12) entao
         escreva ("O mes informado e dezembro!!")
      fimse
   senao
      escreva ("O valor informado não corresponde a um mes valido!!")
   fimse

Fimalgoritmo