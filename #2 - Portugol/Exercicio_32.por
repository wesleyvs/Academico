programa
{
	funcao inicio()
	{
		real anacleto, felisberto, centimetro
		inteiro ano

		anacleto = 1.50
		felisberto = 1.10
		centimetro = 0.01
		ano = 0

		enquanto (felisberto < anacleto) {
			anacleto = anacleto + (2 * centimetro)
			felisberto = felisberto + (3 * centimetro)
			ano = ano + 1
		}
		escreva ("Serao necessarios :", ano, " anos para que Felisberto seja maior que Anacleto \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 400; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */