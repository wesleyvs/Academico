programa
{
	funcao inicio()
	{
		inteiro entrada[52], sequencia, i, menorsequencia, maiorsequencia
		sequencia = 0
		menorsequencia = 0
		maiorsequencia = 0

		para (i = 1 ; i < 51 ; i++) {
			escreva ("Informe o ", i, "� valor inteiro: ")
			leia(entrada[i])
		}
		
		entrada[51] = entrada[50] + 1
		
		para (i = 0 ; i < 51 ; i++) {
			se (entrada[50] == entrada[i]) {
				se (entrada[i] == entrada[i] - 1) {
					sequencia++ 
				}
			}
			se (entrada[i+1] == entrada[i] + 1) {
				sequencia++
			} senao {
				se (sequencia < maiorsequencia) {
					menorsequencia = sequencia
					sequencia = 0
				} senao { 
					maiorsequencia = sequencia
					sequencia = 0	
				}			
			}
		}
		se (maiorsequencia > sequencia) {
			escreva ("A maior sequ�ncia consecutiva de n�meros na ordem crescente possui: ", maiorsequencia, " n�meros!! \n")
		} senao {
			sequencia = sequencia - 1
			escreva ("A maior sequ�ncia consecutiva de n�meros na ordem crescente possui: ", sequencia, " n�meros!! \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 350; 
 * @PONTOS-DE-PARADA = 8;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */