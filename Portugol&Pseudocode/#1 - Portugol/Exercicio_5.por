programa
{
	funcao inicio()
	{
		inteiro anoatual, mesatual, diaatual, ano, mes, dia, calcano, calcmes, calcdia
		
		escreva ("Informe a data de aniversario (dia/mes/ano): ")
  		leia (dia, mes, ano)
  		escreva ("A data de aniversario informada e: ",dia,"/",mes,"/", ano, "\n")

 		escreva ("Informe a data atual (dia/mes/ano): ")
 		leia (diaatual, mesatual, anoatual)
  		escreva ("A data atual informada e: ",diaatual,"/",mesatual,"/",anoatual, "\n")
   
		se (mesatual > mes) 
		{
       		calcmes = mesatual - mes
		}	
   		senao
   		{
       		calcmes = mes - mesatual
   		}

   		calcano = anoatual - ano

   		se (diaatual + dia > 31 ou dia + diaatual > 31)
   		{
     		calcdia = (diaatual + dia) - 31
   		}
   		senao
   		{
      	calcdia = diaatual + dia
   		}
   		
   		escreva ("Voce possui: ", calcano, " anos,", calcmes, " meses e", calcdia, " dias")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 453; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */