programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro matriz[6][6], i, j, X, cont=0

		faca {
			escreva ("Informe um valor inteiro (0 para ajuda): ")
			leia (X)
			escreva ("\n")
			se (X == 0) {
				limpa()
				escreva ("Busca um valor inteiro (1 a 30) dentro de uma matriz 6x6 gerada com elementos aleatórios (1 a 30) \n")
				escreva ("O algoritmo utiliza a biblioteca Util para sortear os numeros aleatoriamente (1 a 30) \n")
				escreva ("\n")
			}
		} enquanto (X == 0)

		para (i = 0 ; i <= 5 ; i++) {
			para (j = 0 ; j <= 5 ; j++) {
				matriz[i][j] = u.sorteia(1, 30)
			}
		}
		para (i = 0 ; i <= 5 ; i++) {
			para (j = 0 ; j <= 5 ; j++) {
				se (matriz[i][j] == X) {
					escreva ("O valor foi encontrado na ", i, "ª linha, ", j, "ª coluna \n")
					cont++
				}				
			}
		}
		se (cont == 0) {
			escreva ("Número inexistente na Matriz \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 224; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 10, 6}-{i, 6, 24, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */