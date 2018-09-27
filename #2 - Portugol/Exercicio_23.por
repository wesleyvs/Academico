programa
{
	funcao inicio()
	{
		inteiro valor1, valor2, i, x, primo

		escreva("Informe o primeiro valor: ")
		leia(valor1)
		escreva("Informe o segundo valor: ")
		leia(valor2)
		
		para (i = valor1 ; i < valor2 ; i++){
			primo = 0
			para (x = 1 ; x < valor2 ; x++) {
				se (i % x == 0) {
					primo = primo + 1
				}
			}
			se (primo == 2) {
				escreva ("Valor primo entre ", valor1, " e ", valor2, ": ", i, "\n")
			}
		}			

		se (valor1 > valor2) {
			escreva ("O segundo valor deve ser menor que o primeiro valor!!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 537; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 5, 26, 1}-{x, 5, 29, 1}-{primo, 5, 32, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */