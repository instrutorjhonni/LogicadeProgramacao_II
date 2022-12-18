programa
{
	inclua biblioteca Texto --> t
	//Variável que está disponível em todo o programa
	cadeia contas[5][3] = {
						  	{"1234567","1234567","0"},
						  	{"7654321","7654321","0"},
						  	{"1593578","1593575","0"},
						  	{"6548792","2589635","0"},
						  	{"1479635","2584652","0"}
						  }
						  
	funcao logico validaLogin(cadeia pLogin, cadeia pSenha)
	{
		logico Existe
		Existe = falso
		para (inteiro l = 0; l <= 4; l++)
		{
			//Estou validando a senha para a conta selecionada
			para (inteiro c = 0; c <= 2; c++)
			{
				se ( contas[l][0] == pLogin )
				{
					se ( contas[l][1] == pSenha )
					{
						Existe = verdadeiro
						pare
					}
					senao
						Existe = falso
				}
			}
		}
		retorne Existe
	}
	
	funcao logico validaDados(cadeia pValor)
	{
		retorne t.numero_caracteres(pValor) == 7
	}
	
	funcao inicio()
	{		
		cadeia conta, senha
		
		escreva("Informe a conta")
		leia(conta)
		se ( validaDados(conta) ){
			escreva("Informe a senha: ")
			leia(senha)
			se ( validaDados(senha) )
			{
				se (validaLogin(conta,senha))
				{
					//O menu terá que ficar repetindo até o usuário informar sair
					//Chamar uma rotina para exibir o menu
					//A cada item do menu, deve chamar uma rotina [sacar, depositar, transferir, etc... ]
				}
				senao
					escreva("Conta inexistente")
			}
			senao
				escreva("Formato da Senha inválido")
		}
		senao
			escreva("Formato da Conta inválido")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1229; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */