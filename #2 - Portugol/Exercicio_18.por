programa
{
	funcao inicio()
	{
		inteiro valor, maior, menor

		maior = 0
		menor = 0
		valor = 0
			
		enquanto (valor != -1) {
			escreva ("Informe um valor: ")
			leia (valor)

			se (valor == -1) {
				pare
			}
			se (valor < maior) {
				menor = valor
			}
			se (valor < menor) {
				menor = valor
			}			
			se (valor > maior) {
				maior = valor				
			}
		}
		
		escreva ("O maior valor do conjunto: ", maior, "\n")
		escreva ("O menor valor do conjunto: ", menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 477; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valor, 5, 10, 5}-{maior, 5, 17, 5}-{menor, 5, 24, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */