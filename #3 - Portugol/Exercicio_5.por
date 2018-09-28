programa
{
	funcao inicio()
	{
		inteiro i
		cadeia nome[51]
		real custo[51], preco[51], lucromenor, lucromaior

		para (i = 1 ; i < 51 ; i++ ) {
			escreva ("Informe o nome do ", i, "º produto: ")
			leia(nome[i])
			escreva ("Informe o custo do ", i, "º produto: ")
			leia(custo[i])
			escreva ("Informe o preco do ", i, "º produto: ")
			leia(preco[i])
			escreva ("\n")
		}		
		escreva ("Resultados: \n")
		para (i = 1 ; i < 51 ; i++) {
			lucromenor = custo[i] + ((custo[i] * 10) / 100)
			lucromaior = custo[i] + ((custo[i] * 30) / 100)
			se (preco[i] < lucromenor) {
				escreva ("O produto ", nome[i], " possui um lucro menor que 10%!! \n")
			}
			se (preco[i] >= lucromenor e preco[i] <= lucromaior) {
				escreva ("O produto ", nome[i], " possui um lucro entre 10% e 30%!! \n")
			}
			se (preco[i] > lucromaior) {
				escreva ("O produto ", nome[i], " possui um lucro maior que 30%!! \n")				
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 442; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {custo, 7, 7, 5}-{preco, 7, 18, 5}-{lucromenor, 7, 29, 10}-{lucromaior, 7, 41, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */