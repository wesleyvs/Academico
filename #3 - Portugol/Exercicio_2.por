programa
{
	funcao inicio()
	{
		inteiro entrada[31], saida[31], i

		para (i = 1 ; i < 31 ; i++) {
			escreva ("Informe o ", i, "º valor: ")
			leia(entrada[i])
		} limpa()
		para (i = 1 ; i < 31; i++) {
			saida[i] = entrada[(31-i)]
			escreva (i , "º Valor: ", saida[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 288; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {saida, 5, 23, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */