programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro matriz[4][4], i, j=0
		
		para (i = 0 ; i <= 3 ; i++) {
			para (j = 0 ; j <= 3 ; j++) {
				matriz[i][j] = u.sorteia(0, 100)
			}
		}
		para (i = 0 ; i <= 3 ; i++) {
				escreva (i+1, "º elemento da ", i+1, "ª diagonal: ", matriz[i][i], "\n")
		}

		para (i = 0 ; i <= 3 ; i++) {
			para (j = 0 ; j <= 3 ; j++) {
				se (i != j) {
					escreva ("Elemento da matriz (sem a diagonal principal): ", matriz[i][j], "\n")
				}
			}
		}
		para (i = 0 ; i <= 3 ; i++) {
			escreva (i+1, "º elemento da ", i+1,"ª diagonal secundária: ", matriz[i][3-i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 631; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 10, 6}-{i, 6, 24, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */