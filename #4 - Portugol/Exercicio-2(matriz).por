programa
{
	funcao inicio()
	{
		inteiro matriz[10][10], i, j

		para (i = 0 ; i <= 9 ; i++) {
			para (j = 0 ; j <= 9 ; j++) {
				se (i == j) {
					matriz[i][j] = 1
				}
				senao {
					matriz[i][j] = 0
				}
				escreva (matriz[i][j], "|")
			}
			escreva ("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 243; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 5, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
