programa
{
	funcao inicio()
	{
		cadeia sexo, olhos, cabelos
		inteiro idade, idadeM, homens, mulheres, idadeF, maior
		real porcentualM, porcentualF, verdeloiro

		idade = 0
		homens = 0
		idadeM = 0
		mulheres = 0
		idadeF = 0
		maior = 0
		porcentualM = 0.0
		porcentualF = 0.0
		verdeloiro = 0.0

		enquanto (idade != -1) {
			escreva ("Informe a idade: ")
			leia (idade)
			se (idade == -1) {
				escreva ("\n")
				escreva ("RESULTADOS: \n")
				pare
			}
			escreva ("Informe o sexo ('M' - masculino, 'F' - feminino): ")
			leia (sexo)
			escreva ("Informe a cor dos olhos ('A' - azuis, 'V' - verdes, 'C' - castanhos: ")
			leia (olhos)
			escreva ("Informe a cor dos cabelos ('L' - loiros, 'C' - castanhos, 'P' - pretos: ")
			leia (cabelos)
			escreva ("\n")

			se (sexo == "M") {
				homens = homens + 1
				se (idade >= 18 e idade <= 35) {
					idadeM = idadeM + 1	
				}
			}
			se (sexo == "F") {
				mulheres = mulheres + 1
				se (idade >= 18 e idade <= 35) {
					idadeF = idadeF + 1	
					se (olhos == "V" e cabelos == "L") {
						verdeloiro = verdeloiro + 1.0
					}
				}
			}
						
			se (idade > maior) {
				maior = idade //MAIOR IDADE DOS HABITANTES
			}
		}
		se (homens > 0) {
			porcentualM = (homens / idadeM) * 100.0
		}
		se (mulheres > 0) {
			porcentualF = (verdeloiro / idadeF) * 100.0
		}

		escreva ("A maior idade entre os habitantes: ", maior, "\n")
		escreva ("Individuos masculinos, cuja idade esta entre 18 e 35: ", porcentualM, "\n")
		escreva ("Total de individuos femininos, cuja idade esta entre 18 e 35 e tenham olhos verdes e cabelos loiros: ", porcentualF, "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1321; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mulheres, 6, 33, 8}-{idadeF, 6, 43, 6}-{porcentualF, 7, 20, 11}-{verdeloiro, 7, 33, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */