programa
{
	funcao inicio()
	{
		inteiro i, j, matriz[15][15]

		para (i = 0 ; i <= 14 ; i++) {
			para (j = 0 ; j <= 14 ; j++) {
				se (i == j ou j == 0) {
					matriz[i][j] = 1
				} senao {
					se (i >= 2 e j > 0) {
						matriz[i][j] = matriz[i-1][j] + matriz[i-1][j-1]
					}
				}
			}
		}
		para (i = 0 ; i <= 14 ; i++) {
			para (j = 0 ; j <= 14 ; j++) {
				se (matriz[i][j] != 0) {
					escreva (matriz[i][j], " ")
				}
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
 * @POSICAO-CURSOR = 390; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 5, 16, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */