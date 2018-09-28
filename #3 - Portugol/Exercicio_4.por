programa
{
	funcao inicio()
	{
		inteiro i, maior, menor
		real nota[11], porcentoacima, porcentoabaixo, media

		maior = 0
		menor = 0
		media = 0.0
		porcentoacima = 0.0
		porcentoabaixo = 0.0
		
		para (i = 1 ; i < 11 ; i++) {
			escreva ("Informe a ", i, "ª nota: ")
			leia(nota[i])
			media = media + nota[i]		
		}
		limpa()
		media = media / 10
		porcentoacima = ((10 * media) / 100) + media
		porcentoabaixo = media - ((10 * media) / 100)
		
		para (i = 1 ; i < 11 ; i++) {
			se (nota[i] > porcentoacima) {
				maior++
			}
			se (nota[i] < porcentoabaixo) {
				menor++
			}
		}
		escreva ("A quantidade de notas 10% acima da média são: ", maior, "!! \n")
		escreva ("A quantidade de notas 10% abaixo da média são: ", menor, "!!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {maior, 5, 13, 5}-{menor, 5, 20, 5}-{porcentoacima, 6, 17, 13}-{porcentoabaixo, 6, 32, 14}-{media, 6, 48, 5}-{nota, 6, 7, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */