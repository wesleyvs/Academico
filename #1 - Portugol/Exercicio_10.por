programa
{
	funcao inicio()
	{
		inteiro idade, class
		
		escreva ("Informe a idade: ")
   		leia (idade)

   		se (idade < 16) 
		{
      		class = 1
      		se (class == 1) 
      		{
      		escreva ("Pela idade informada, a classe e leitoral e: Nao votante")
      		}
		}
   
   		se (idade >= 18 e idade <= 65)
   		{
      		class = 2
      		se (class == 2) 
      		{
      		escreva ("Pela idade informada, a classe e leitoral e: Eleito Obrigatorio")
      		}
   		}
   
   		se (idade >= 16 e idade < 18 ou idade > 65)
   		{
      		class = 3
      		se (class == 3) 
      		{
      		escreva ("Pela idade informada, a classe e leitoral e: Eleitor Facultativo")
      		}
   		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 686; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */