programa
{
	funcao inicio()
	{
		inteiro resto, dividendo, divisor, quociente 
		
		escreva("Informe o divisor: ")
		leia (divisor)
		escreva("Informe o dividendo: ")
		leia (dividendo)

		quociente = 0

		faca{
			dividendo = dividendo - divisor
			quociente ++
		} enquanto(dividendo >= divisor)

		escreva ("Resultado da divis�o: ", quociente)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 164; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */