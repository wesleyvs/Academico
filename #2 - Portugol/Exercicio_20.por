programa
{
	funcao inicio()
	{
		inteiro graos, total, i

		graos = 1
		total = 0

		escreva ("Distribuido entre o tabuleiro de forma diagonal: ", graos, " em 1 quadro \n")
		
		para (i = 2 ; i < 9 ; i++) {
			graos = graos * 2
			escreva ("Distribuido entre o tabuleiro de forma diagonal: ", graos, " em ", i, " quadros \n")
			total = total + (graos * i)
		} // correto
		
		para (i = 7 ; i >= 1 ; i--) {
			graos = graos * 2
			se (i == 1) {
				escreva ("Distribuido entre o tabuleiro de forma diagonal: ", graos, " em ", i, " quadro \n")
			} senao {
			escreva ("Distribuido entre o tabuleiro de forma diagonal: ", graos, " em ", i, " quadros \n")
			}
			total = total + (graos * i)
		}
		escreva ("O monge recebera a soma de todos os graos sobre o tabuleiro. Total de graos recebidos: ",total, " graos")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 816; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */