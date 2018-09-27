programa
{
	funcao inicio()
	{
		cadeia nota
		inteiro i, otimo, idade, maiorotimo, bom, regular, idaderuim, maiorruim, pessimo, maioridadepessimo
		inteiro pessoas, ruim, dif
		real porcentual, mediaruim

		otimo = 0
		idade = 0
		maiorotimo = 0
		bom = 0
		regular = 0
		idaderuim = 0
		maiorruim = 0
		pessimo = 0
		maioridadepessimo = 0
		pessoas = 0
		ruim = 0
		dif = 0
		
		para (i = 1 ; i <= 100 ; i++) {
			escreva ("Informe sua idade: ")
			leia (idade)
			escreva ("Nota	|    Significado \n")
			escreva ("A	|    Ótimo \n")
			escreva ("B	|    Bom \n")
			escreva ("C	|    Regular \n")			
			escreva ("D	|    Ruim \n")
			escreva ("E	|    Péssimo \n")			
			escreva ("Informe sua opnião em relação ao filme, segundo as notas: ")
			leia (nota)

			se (nota == "A") {
				otimo++
				se (idade > maiorotimo) {maiorotimo = idade}
			}
			se (nota == "B") {bom++}
			se (nota == "C") {regular++}
			se (nota == "D") {
				idaderuim = idaderuim + idade
				ruim++
				se (idade > maiorruim) {maiorruim = idade}
			}
			se (nota == "E") {
				pessimo++
				se (idade > maioridadepessimo) {maioridadepessimo = idade}
			}
			limpa()
			pessoas++
		}
		escreva ("\n")
		escreva ("Quantidade de respostas 'Otimo': ", otimo,".\n")
		porcentual = (bom * 100.0) / pessoas
		escreva ("Porcentagem de respostas 'Bom': ", porcentual, "%. ")
		porcentual = (regular * 100.0) / pessoas
		escreva ("Porcentagem de respostas 'Regular': ", porcentual, "%.\n")
		mediaruim = idaderuim / ruim
		escreva ("Media de idade das pessoas que responderam 'Ruim': ", mediaruim, ".\n")
		porcentual = (pessimo * 100.0) / pessoas
		escreva ("Porcentagem de respostas 'Pessimo': ", porcentual, "%. Maior idade que utilizou essa opcao: ", maioridadepessimo, ". \n") 
		escreva ("Maior idade que respondeu 'Otimo': ", maiorotimo, ". Maior idade que respondeu 'Ruim': ", maiorruim, ".\n")
		se (maiorotimo > maiorruim) {dif = maiorotimo - maiorruim}
		senao {dif = maiorruim - maiorotimo}
		escreva ("Diferença de idade entre a maior idade que respondeu 'Otimo' e a maior idade que respondeu 'Ruim': ", dif, ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1150; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */