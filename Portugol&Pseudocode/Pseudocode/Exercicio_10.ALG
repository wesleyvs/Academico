Algoritmo "ClasseEleitor"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descri��o   : Calcula a idade a partir da capta��o da data de aniversario
// Autor(a)    : Wesley Vinicius da Silva
// Data atual  : 03/09/2018
Var
   // Se��o de Declara��es das vari�veis
   idade : inteiro
   classe : caractere

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreva ("Informe a idade: ")
   leia (idade)

   se (idade < 16) entao
      classe <- "Nao votante"
      escreva ("Pela idade informada, a classe e leitoral e: ", classe)
   fimse
   
   se (idade >= 18) e (idade <= 65) entao
      classe <- "Eleito obrigatorio"
      escreva ("Pela idade informada, a classe e leitoral e: ", classe)
   fimse
   
   se (idade >= 16) e (idade < 18) ou (idade > 65) entao
      classe <- "Eleitor facultativo"
      escreva ("Pela idade informada, a classe e leitoral e: ", classe)
   fimse

Fimalgoritmo