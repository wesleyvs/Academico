Algoritmo "ConsumoCombustivel"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descri��o   : Calcula o consumo e a autonomia de um veiculo
// Autor(a)    : Wesley Vinicius
// Data atual  : 07/09/2018
Var
// Se��o de Declara��es das vari�veis 
   captanque, litrosconsumidos, quilometragem, autonomia, consumo : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva ("Informe a capacidade do tanque: ")
   leia (captanque)
   escreva ("Informe a quantidade de litros consumidos :")
   leia(litrosconsumidos)
   escreva ("Informe a quilometragem percorrida desde o ultimo abastecimento: ")
   leia (quilometragem)
   
   autonomia <- (captanque - litrosconsumidos) / quilometragem
   consumo <- (captanque + litrosconsumidos) - captanque
   
   escreval ("O consumo efetuado e de: ", consumo, " litros")
   escreva ("A autonomia sera de: ", autonomia, "Km/Litros")

Fimalgoritmo