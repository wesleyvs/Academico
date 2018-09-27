programa
{
	funcao inicio()
	{
		inteiro fibonacci[21], valor1, valor2, i

		escreva ("Informe dois valores: ")
		leia (valor1, valor2)

		fibonacci[0] = valor1 + valor2
		fibonacci[1] = fibonacci[0] + valor2
		
		para (i = 2 ; i <= 17 ; i ++) {
			fibonacci[i] = fibonacci[(i-1)] + fibonacci[(i-2)]			
		}
			
		para (i = 0 ; i <=17 ; i++) {
			escreva ((i+3),"º Termo: ", fibonacci[i])
			escreva ("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */