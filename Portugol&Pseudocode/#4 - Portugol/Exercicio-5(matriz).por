programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro matriz1[2][3], matriz2[3][2], i, j

		j = 0
		para (i = 0 ; i <= 1 ; i++ ) {
			para (j = 0 ; j <= 2 ; j++) {
				matriz1[i][j] = u.sorteia(1, 20)
			}
		}
		para (i = 0 ; i <= 1 ; i++ ) {
			para (j = 0 ; j <= 2 ; j++) {
				matriz2[j][i] = matriz1[i][j]
			}
		}
		para (i = 0 ; i <= 1 ; i++ ) {
			se (j == 2) {
					pare
			}
			para (j = 0 ; j <= 2 ; j++) {
				escreva ("| ", matriz2[j][i] , " | ", matriz2[j][1-i], " | \n")
				se (j == 2) {
					pare
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz1, 6, 10, 7}-{matriz2, 6, 25, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */