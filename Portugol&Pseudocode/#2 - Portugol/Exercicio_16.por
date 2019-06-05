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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 299; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */