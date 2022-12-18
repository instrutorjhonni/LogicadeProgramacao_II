programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util
	
	funcao inicio()
	{
		cadeia agenda[3][7]
		cadeia nome
		inteiro dia, periodo, opcao = 0

		/*escreva(t.preencher_a_esquerda(' ',10,"Cadastros") + t.preencher_a_esquerda('_', 50, "15"))
		escreva("\n")
		escreva(t.preencher_a_esquerda(' ',10,"Listas") +t.preencher_a_esquerda('_', 50, "20"))
		escreva("\n")
		escreva(t.preencher_a_esquerda(' ',10,"Detalhes") + t.preencher_a_esquerda('_', 50, "30"))
		escreva("\n")
		Util.aguarde(10000)*/
		enquanto ( opcao != 2 )
		{
			Util.aguarde(3000)
			limpa()
			escreva("Deseja agendar uma consulta? \n[1] - Sim | [2] - Não\n")
			leia( opcao )
			escolha ( opcao )
			{
				caso 1:
					escreva("Qual dia da semana deseja agendar?\n")
					escreva("[1] - Domingo | [2] - Segunda | [3] - Terça\n" + 
						   "[4] - Quarta  | [5] - Quinta  | [6] - Sexta\n" + 
						   "[7] - Sábado\n")
					leia(dia)	
					se ( (dia < 1) ou (dia > 7) )
						escreva("Opção Inválida")
					senao
					{
						escreva("Informe o período:\n" + 
							   "[1] - Matutino\n" + 
							   "[2] - Vespertino\n" + 
							   "[3] - Noturno\n")
						leia(periodo)
						se ( (periodo < 1) ou (periodo > 3) )
							escreva("Opção inválida")
						senao
						{
							escreva("Nome do paciente: ")
							leia( nome )
							se (agenda[periodo-1][dia-1] == "")
								agenda[periodo-1][dia-1] = nome
							senao
								escreva("Agenda indisponível")
						}
					}
				caso 2:
					pare
				caso contrario:
					escreva("Opção inválida\n")
			}
		}
		//Mostrar a agenda
		escreva(t.preencher_a_esquerda(' ', 15, " "))
		escreva(t.preencher_a_esquerda(' ', 15, "Domingo"))
		escreva(t.preencher_a_esquerda(' ', 15, "Segunda"))
		escreva(t.preencher_a_esquerda(' ', 15, "Terça"))
		escreva(t.preencher_a_esquerda(' ', 15, "Quarta"))
		escreva(t.preencher_a_esquerda(' ', 15, "Quinta"))
		escreva(t.preencher_a_esquerda(' ', 15, "Sexta"))
		escreva(t.preencher_a_esquerda(' ', 15, "Sábado"))
		
		para (inteiro l = 0; l <= 2; l++)
		{
			escreva("\n")
			se ( l == 0 )
				escreva(t.preencher_a_esquerda(' ',15,"Matutino"))
			senao
			{
				se ( l == 1 )
					escreva(t.preencher_a_esquerda(' ',15,"Vespertino"))
				senao
					escreva(t.preencher_a_esquerda(' ',15,"Noturno"))
			}
			para (inteiro c = 0; c <= 6; c++)
			{				
				se (c > 0)
				{
					se (agenda[l][c] == "")
						escreva(t.preencher_a_esquerda(' ', 15, " ") + "|")
					senao
						escreva(t.preencher_a_esquerda(' ', 15, agenda[l][c]) + "|")
				} senao
				{
					se (agenda[l][c] == "")
						escreva("|"+t.preencher_a_esquerda(' ', 15, " ") + "|")
					senao
						escreva("|"+t.preencher_a_esquerda(' ', 15, agenda[l][c]) + "|")
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
 * @POSICAO-CURSOR = 158; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {agenda, 8, 9, 6}-{dia, 10, 10, 3}-{periodo, 10, 15, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */