programa
{
	funcao inicio()
	{
		inteiro numero, inversaoA, inversaoB, inversaoC
		escreva ("Informe um numero com tres digitos: ")
   		leia (numero)
   
  		inversaoA = numero % 10
   		inversaoB = (numero / 10) % 10
   		inversaoC = ((numero / 10) / 10) % 10

   		escreva ("O numero invertido e: ", inversaoA, inversaoB, inversaoC)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 340; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */