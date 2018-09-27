programa
{
	funcao inicio()
	{
		inteiro ano, mes, dia
		escreva ("Informe uma data (dia/mes/ano) : ")
   		leia (dia, mes, ano)

   		se (mes > 12)
   		{
   	   		escreva ("A data informada nao e valida!!")
		}

   		se (ano % 4 == 0 e ano % 100 > 0 e mes == 2 e dia == 29) 
		{
      		escreva ("A data informada e valida")
		}
   		senao
   		{
      		se (ano % 4 > 0) 
			{
         			se (mes == 1 e dia <= 31) 
				{
            		escreva ("A data informada e valida")
				}
        			senao
        			{
            			se (mes == 3 e dia <= 31) 
            			{            		
               			escreva ("A data informada e valida")
            			}
            			senao
            			{
               			se (mes == 4 e dia <= 30) 
						{
                  				escreva ("A data informada e valida")
						}
						senao
               			{
                  				se (mes == 5 e dia <= 31) 
							{
                     				escreva ("A data informada e valida")
							}
                  				senao
                  				{
                     				se (mes == 6 e dia <= 30) 
                     				{
                        					escreva ("A data informada e valida")
                     				}	
                     				senao
                     				{
                        					se (mes == 7 e dia <= 31) 
									{
                           					escreva ("A data informada e valida")
									}	
                        					senao
                        					{
                           					se (mes == 8 e dia <= 31) 
										{
                              					escreva ("A data informada e valida")
										}
                           					senao
                           					{
                              					se (mes == 9 e dia <= 30)
                                 					{
                                 						escreva ("A data informada e valida")
                                 					}
                              					senao
                              					{
                                 						se (mes == 10 e dia <= 31)
                                    					{	
                                    						escreva ("A data informada e valida")
                                    					}	
                                 						senao
                                 						{
                                    						se (mes == 11 e dia <= 30)
                                       						{
                                       							escreva ("A data informada e valida")
                                 							}	
                                    						senao
                                    						{
                                       							se (mes == 12 e dia <= 31)
                                          						{
                                          							escreva ("A data informada e valida")
                                    							}	
                                       							senao
                                       							{
                                         				 		escreva ("A data informada nao e valida!!")
                                       							}
						 							}
					    							}
                          			 			}
                         					}
                       					}
                     				}
                   				}
                 			}
               		}
             		}
           	}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3415; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */