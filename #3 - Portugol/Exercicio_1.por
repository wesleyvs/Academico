programa
{
	funcao inicio()
	{
		inteiro entrada[31], saida[31], i

		para (i = 1 ; i < 31; i++) {
			escreva ("Informe o ", i, "� valor inteiro: ")
			leia (entrada[i])
			se (entrada[i] % 2 != 0) {
				saida[i] = entrada[i] * 3
			} senao {
				saida[i] = entrada[i] * 2
			}
		} limpa()
		para (i = 1 ; i < 31; i++) {
			escreva(i,"� valor: ", saida[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */