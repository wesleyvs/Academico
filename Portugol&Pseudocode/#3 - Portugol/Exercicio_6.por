programa
{
	funcao inicio()
	{
		inteiro conjunto1[21], conjunto2[21], saida[21], i, j

		para (i = 1 ; i < 21 ; i++) {
			escreva ("Informe o ", i, "º valor para o 1º conjunto: ")
			leia (conjunto1[i])		
		}
		limpa()
		para (i = 1 ; i < 21 ; i++) {
			escreva ("Informe o ", i, "º valor para o 2º conjunto: ")
			leia (conjunto2[i])		
		}
		
		limpa()
		escreva ("Resultado: \n")
		
		para (i = 1 ; i < 21 ; i++) {
			para (j = 1 ; j < 21 ; j++) {
				se (conjunto1[i] == conjunto2[j]) {
				saida[j] = conjunto1[i]
				}	
			}
		}
		
		escreva ("Primeiro conjunto: { ")
		para (i = 1 ; i < 21 ; i++) {
			escreva (conjunto1[i], " ")
		}
		
		escreva ("} \n")
		
		escreva ("Segundo conjunto: { ")
		para (i = 1 ; i < 21 ; i++) {
			escreva (conjunto2[i], " ")
		} 
		escreva ("} \n")

		escreva ("Intersecção dos conjuntos: { ")
		para (j = 1 ; j < 21 ; j++) {
			se (saida[j] == 0) {
				escreva ("")
			} senao {
				escreva (saida[j], " ")				
			}
		}
		escreva ("}")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 955; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {conjunto1, 5, 10, 9}-{conjunto2, 5, 25, 9}-{saida, 5, 40, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */