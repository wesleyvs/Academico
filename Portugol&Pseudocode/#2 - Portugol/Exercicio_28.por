programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real i, h, iniciar
		
		h = 0.0
		
		para (i = 1.0 ; i <= 19.0 ; i = i + 2.0) {
			se (i == 3.0 ou i == 7.0 ou i == 11.0 ou i == 15.0 ou i == 19.0) {
				h = h - 1 / mat.potencia(i,3.0)	
				escreva ("S = ", h, " - \n")
			} senao {
				h = h + 1 / mat.potencia(i,3.0)
				escreva ("S = ", h, " + \n")
			}
		}
		
		escreva ("\n")
		escreva ("S = ", h, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 341; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */