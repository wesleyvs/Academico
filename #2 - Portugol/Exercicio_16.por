programa
{
	funcao inicio()
	{
		inteiro base, expoente, i, resultado, calc
		escreva("Informe a base: ")
		leia (base)
		escreva("Informe o expoente: ")
		leia (expoente)

		resultado = base

		enquanto (expoente != 1) {
			resultado = resultado * base
			expoente--
		}

		escreva (resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 299; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */