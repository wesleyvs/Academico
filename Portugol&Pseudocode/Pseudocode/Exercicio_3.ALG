Algoritmo "Inversor"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descri��o   : captura e inverte um numero de 3 digitos
// Autor(a)    : Wesley Vinicius
// Data atual  : 07/09/2018
Var
// Se��o de Declara��es das vari�veis 
   numero, inversaoA, inversaoB, inversaoC : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreva ("Informe um numero com tres digitos: ")
   leia (numero)
   
   inversaoA <- numero mod 10
   inversaoB <- (numero \ 10) mod 10
   inversaoC <- ((numero \ 10) \ 10) mod 10

   
   escreva ("O numero invertido e: ", inversaoA, inversaoB, inversaoC)


Fimalgoritmo