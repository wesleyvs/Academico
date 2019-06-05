programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro matriz1[4][4], matriz2[4][4], matriz3[4][4], i, j

		para (i = 0 ; i <= 3 ; i++) {
			para (j = 0 ; j <= 3 ; j++) {
				matriz1[i][j] = u.sorteia(1, 50)
			}
		}
		para (i = 0 ; i <= 3 ; i++) {
			para (j = 0 ; j <= 3 ; j++) {
				matriz2[i][j] = u.sorteia(1, 50)
			}
		}

		para (i = 0 ; i <= 3 ; i++) {
			para (j = 0 ; j <= 3 ; j++) {
				matriz3[i][j] = matriz1[i][j] + matriz2[i][j]
				se (matriz3[i][j] < 10) {
					escreva (matriz3[i][j], "   |  ")
				}
				se (matriz3[i][j] >= 10) {
					escreva (matriz3[i][j], "  |  ")
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
 * @POSICAO-CURSOR = 632; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz1, 6, 10, 7}-{matriz2, 6, 25, 7}-{matriz3, 6, 40, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */