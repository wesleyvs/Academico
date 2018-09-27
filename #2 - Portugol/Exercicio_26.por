programa
{
	funcao inicio()
	{
		real s, i2, i

		i2 = 0.0
		s = 0.0 //s = 1/1

		para (i = 1.0 ; i <= 10.0 ; i++) {
			i2 = i * i
			se (i == 1 ou i == 3.0 ou i == 5.0 ou i == 7.0 ou i == 9.0) {
				s = s + (i / i2)	
			} senao {
				s = s - (i / i2)
			}
			escreva ("S = ", i, "/", i2, " = ", s, "\n")
		}
		escreva ("Valor de S = ", s)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */