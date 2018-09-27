programa
{
	funcao inicio()
	{
		real S, i

		S = 0.0

		para (i = 500.0 ; i >= 50.0 ; i = i - 50.0) {
			se (i == 500.00 ou i == 400.00 ou i == 300.00 ou i == 200.00 ou i == 100.00) {
				S = S + (2 / i)
			} senao {
				S = S - (5 / i)
			}
		}
		escreva ("S = ", S, "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 282; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */