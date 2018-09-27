programa
{
	funcao inicio()
	{
		inteiro valor1, valor2, div

		escreva ("Informe dois valores: ")
		leia (valor1, valor2)

		div = valor1 % valor2

		enquanto (div != 0){
			valor1 = valor2
			valor2 = div
			div = valor1 % valor2
		}
		escreva ("MDC = ", valor2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 269; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */