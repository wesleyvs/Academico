programa
{
	funcao inicio()
	{
		real acrescimo, desconto, prestacao, valoracrescimo, valortotal, prejuizo
		escreva ("Informe o valor da prestacao em atraso: R$")
   leia (prestacao)
   
   acrescimo = 10 * (prestacao / 100)
   valoracrescimo = acrescimo + prestacao
   desconto = 10 * (valoracrescimo / 100)
   valortotal = valoracrescimo - desconto
   prejuizo = prestacao - valortotal
   
   escreva ("O valor total a pagar e de: R$", valortotal, "\n")
   escreva ("O prejuizo do comerciante e de: R$", prejuizo, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 525; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */