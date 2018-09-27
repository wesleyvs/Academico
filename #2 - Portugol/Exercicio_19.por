programa
{
	funcao inicio()
	{
		real celcius, fahrenheit, i 

		celcius = 0.0
		fahrenheit = 0.0

		escreva ("FAHRENHEIT      |         CENTIGRADOS \n")

		para (i = 50.0 ; i <= 150 ; i++) {
			fahrenheit = i
			celcius = 5.0 / 9.0 * (fahrenheit - 32)
			se (i >= 100) {
			escreva (fahrenheit, "           |         ", celcius, "\n") 
			} senao { 
			escreva (fahrenheit, "            |         ", celcius, "\n") 
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 430; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */