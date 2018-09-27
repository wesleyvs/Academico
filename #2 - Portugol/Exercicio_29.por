programa
{
	funcao inicio()
	{
		cadeia porte
		inteiro funcionarios, funcionarios1, funcionarios2, funcionarios3, funcionarios4, codigo
		inteiro codigo1, codigo2, codigo3, codigo4, menor1, menor2, menor3, menor4, maior1, maior2, maior3, maior4

		codigo = 1
		codigo1 = 0
		codigo2 = 0
		codigo3 = 0 
		codigo4 = 0
		funcionarios1 = 0
		funcionarios2 = 0
		funcionarios3 = 0
		funcionarios4 = 0
		maior1 = 0
		maior2 = 0
		maior3 = 0
		maior4 = 0
		menor1 = 0
		menor2 = 0
		menor3 = 0
		menor4 = 0

		enquanto (codigo != 0) {
			escreva ("Informe o codigo da empresa: ")
			leia (codigo)
			se (codigo == 0) {
				pare
			}
			escreva ("Informe o numero de funcionarios: ")
			leia (funcionarios)
			escreva ("Informe o porte da empresa(grande/media/pequena/microempresa): ")
			leia (porte)
			escreva ("\n")

			se (porte == "grande") {
				funcionarios1 = funcionarios		
				se (funcionarios1 > maior1) {
					maior1 = funcionarios1
					codigo1 = codigo				
				}
			}

			se (porte == "media") {
				funcionarios2 = funcionarios			
				se (funcionarios2 > maior2) {
					maior2 = funcionarios2
					codigo2 = codigo				
				}
			}

			se (porte == "pequena") {
				funcionarios3 = funcionarios			
				se (funcionarios3 > maior3) {
					maior3 = funcionarios3	
					codigo3 = codigo			
				}
			}

			se (porte == "microempresa") {
				funcionarios4 = funcionarios			
				se (funcionarios4 > maior4) {
					maior4 = funcionarios4	
					codigo4 = codigo			
				}
			}
		}
		escreva ("Para grandes empresas, a empresa com o codigo: ", codigo1, ", possui ", funcionarios1, "funcionarios e é a maior do seu porte \n")
		escreva ("Para medias empresas, a empresa com o codigo: ", codigo2, ", possui ", funcionarios2, "funcionarios e é a maior do seu porte \n")
		escreva ("Para pequenas empresas, a empresa com o codigo: ", codigo3, ", possui ", funcionarios3, "funcionarios e é a maior do seu porte \n")
		escreva ("Para microempresas, a empresa com o codigo: ", codigo4, ", possui ", funcionarios4, "funcionarios e é a maior do seu porte \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2051; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */