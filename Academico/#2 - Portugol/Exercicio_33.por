programa
{
	funcao inicio()
	{
		inteiro incubadora, masculino, feminino, totaldias, maior
		cadeia sexo
		real porcentagemM, porcentagemF, porcentagem, media, criancas, prematuro, Mincubadora, xincubadora
		
		escreva("Informe o numero de crian�as nascidas: ")
		leia (criancas)

		incubadora = 0
		masculino = 0
		feminino = 0
		totaldias = 0
		maior = 0
		xincubadora = 0.0
		prematuro = 0.0
		porcentagem = 0.0
		porcentagemM = 0.0
		porcentagemF = 0.0
		Mincubadora = 0.0
		sexo = ""

		enquanto (sexo != "X") {
			escreva ("Informe o sexo do rec�m-nascido prematuro ('M' - masculino, 'F' - feminino): ")
			leia (sexo)
			se (sexo == "X") {
				escreva ("\n")
				escreva ("Resultado: \n")
				pare
			}
			escreva ("Quantos dias foi mantido na incubadora: ")
			leia (incubadora)
			escreva ("\n")
			totaldias = totaldias + incubadora
			xincubadora++
			

			se (sexo == "M") {
				masculino++
			}
			se (sexo == "F") {
				feminino++
			}					
			se (incubadora > maior) {
				maior = incubadora
			}	
			prematuro++
		} 
		porcentagem = ((masculino + feminino) / criancas) * 100.00
		porcentagemM = (masculino / prematuro) * 100.00
		porcentagemF = (feminino / prematuro) * 100.00 

		Mincubadora = totaldias / xincubadora
		
		escreva ("Porcentagem de rec�m-nascidos prematuros do total de crian�as: " , porcentagem,"%\n")
		escreva ("Porcentagem de rec�m-nascidos meninos: " , porcentagemM,"%. Porcentagem de rec�m-nascidos meninas: " , porcentagemF,"%. \n")
		escreva ("Media de dias de perman�ncia na incubadora dos rec�m-nascidos: ", Mincubadora, "\n")
		escreva ("O maior numero de dias que um rec�m-nascido prematuro permaneceu na incubadora :", maior)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 90; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {masculino, 5, 22, 9}-{feminino, 5, 33, 8}-{totaldias, 5, 43, 9}-{maior, 5, 54, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */