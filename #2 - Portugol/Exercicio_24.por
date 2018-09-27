programa
{
	funcao inicio()
	{
		inteiro i, totalmulheres, totalhomens
		real altura, menor, maior, totalaltura, mediaF, porcentual, porcentualM
		cadeia sexo

		altura = 0.0
		menor = 0.0
		maior = 0.0
		totalaltura = 0.0
		totalmulheres = 0
		totalhomens = 0
		mediaF = 0.0
		porcentual = 0.0
		porcentualM = 0.0

		escreva ("Informe a altura e o sexo (masculino ou feminino) de 50 pessoas para o calculo!! \n")
		para (i = 1 ; i <= 50 ; i++ ){
			escreva (i, "ª Pessoa: \n")
			escreva ("Informe a altura: ")
			leia (altura)
			escreva ("Informe o sexo: ")
			leia (sexo)
			escreva ("\n")

			//Maior e menor altura: 
			se (altura < maior) {
				menor = altura
			}
			se (altura < menor) {
				menor = altura
			}			
			se (altura > maior) {
				maior = altura				
			}

			//Media de altura das mulheres: 
			se (sexo == "feminino") {
				totalaltura = totalaltura + altura				
				totalmulheres++
			} senao {
				totalhomens++
			}
		}
		mediaF = totalaltura / totalmulheres	
		porcentual = (totalhomens / 50.0) * 100
		porcentualM = (totalmulheres / 50.0) * 100

		escreva ("A maior altura do grupo e: ", maior, "m . E a menor altura:", menor, "m \n")
		escreva ("Media de altura do sexo feminino: ", mediaF, "m \n")	
		escreva ("Entre os 50 participantes, ", totalhomens, " sao homens e representam ", porcentual, "%. \n")			
		escreva ("Enquanto as mulheres representam ", porcentualM, "%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1027; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {menor, 6, 15, 5}-{maior, 6, 22, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */