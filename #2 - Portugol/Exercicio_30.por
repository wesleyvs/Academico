programa
{
	funcao inicio()
	{
		inteiro i, dependentes
		real renda, sminimo, desconto, cpf

		sminimo = 954.0
		desconto = 0.0
		
		para (i = 1 ; i <= 3; i++) {
			escreva("Informe o numero do cpf: ")
			leia (cpf)
			escreva ("Informe o numero de dependentes (informe '0' se nao houver): ")
			leia (dependentes)
			escreva ("Informe a renda mensal: ")
			leia (renda)
			escreva ("\n")

			se (dependentes != 0) {
				dependentes = dependentes * 5
				sminimo = (sminimo / 100) * dependentes
				sminimo = 954.00 - sminimo
			}
			se (renda < 2*sminimo) {
				desconto = 0.0
			}
			se (renda > 2*sminimo) {
				desconto = (renda / 100.0) * 5
			}
			se (renda > 3*sminimo) {
				desconto = (renda / 100.0) * 10
			}
			
			se (renda > 5*sminimo) {
				desconto = (renda / 100.0) * 15
			}
			se (renda > 7*sminimo) {
				desconto = (renda / 100.0) * 20
			}
			escreva ("Valor do salario minimo considerando dependentes: ", sminimo, "\n")
			escreva ("Imposto de renda: ", desconto, "\n")
			escreva ("\n")
			sminimo = 954.0
			desconto = 0.0
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 818; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */