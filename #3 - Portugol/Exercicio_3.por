programa
{
	funcao inicio()
	{
		inteiro entrada[52], sequencia, i, menorsequencia, maiorsequencia
		sequencia = 0
		menorsequencia = 0
		maiorsequencia = 0

		para (i = 1 ; i < 51 ; i++) {
			escreva ("Informe o ", i, "º valor inteiro: ")
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
			escreva ("A maior sequência consecutiva de números na ordem crescente possui: ", maiorsequencia, " números!! \n")
		} senao {
			sequencia = sequencia - 1
			escreva ("A maior sequência consecutiva de números na ordem crescente possui: ", sequencia, " números!! \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 350; 
 * @PONTOS-DE-PARADA = 8;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */