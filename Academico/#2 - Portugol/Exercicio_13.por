programa
{
	funcao inicio()
	{
		inteiro valor1, valor2, div, mmc

		escreva ("Informe dois valores: ")
		leia (valor1, valor2)

		div = 2
		mmc = 1
		
		enquanto (valor1 + valor2 != 2) {
			se ((valor1 % div == 0) ou (valor2 % div == 0)) {
				mmc = mmc * div
				se (valor1 % div == 0) {
					valor1 = valor1 / div
				}
				se (valor2 % div == 0) {
					valor2 = valor2 / div
				}
			}
			senao {
				div = div + 1
			}
		}
		escreva ("MMC = ", mmc)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 148; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */