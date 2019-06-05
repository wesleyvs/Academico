programa
{
	funcao inicio()
	{
		inteiro i
		real i2, h, i3

		h = 0.0
		i3 = 1.0 //representa H = 1/1
		i2 = 1.0

		para(i = 3 ; i <= 99 ; i = i + 2) {
			i2 = (i / 2) + 1
			h = h + (i / i2)
			escreva ("H = ", i, "/", i2, " = ", h, "\n")	
		}

		escreva ("Valor de H: ", h + i3)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 286; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */