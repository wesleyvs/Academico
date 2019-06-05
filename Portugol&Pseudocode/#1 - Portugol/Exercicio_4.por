programa
{
	funcao inicio()
	{
		real captanque, litrosconsumidos, quilometragem, autonomia, consumo
		escreva ("Informe a capacidade do tanque: ")
   		leia (captanque)
   		escreva ("Informe a quantidade de litros consumidos :")
   		leia(litrosconsumidos)
   		escreva ("Informe a quilometragem percorrida desde o ultimo abastecimento: ")
   		leia (quilometragem)
   
   		autonomia = (captanque - litrosconsumidos) / quilometragem
   		consumo = (captanque + litrosconsumidos) - captanque
   
   		escreva ("O consumo efetuado e de: ", consumo, " litros. ")
   		escreva ("A autonomia sera de: ", autonomia, "Km/Litros")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 560; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */