Algoritmo "ConsumoCombustivel"
// Disciplina  : Algoritmos
// Professor   : Lucas Nadalete
// Descrição   : Calcula o consumo e a autonomia de um veiculo
// Autor(a)    : Wesley Vinicius
// Data atual  : 07/09/2018
Var
// Seção de Declarações das variáveis 
   captanque, litrosconsumidos, quilometragem, autonomia, consumo : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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