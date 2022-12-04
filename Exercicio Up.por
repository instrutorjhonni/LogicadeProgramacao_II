programa
{
	funcao inicio()
	{
		real A[5], B[5], R[5]
		inteiro opcao
		//Preenchendo valores de A
		para (inteiro cont= 0; cont <= 4; cont++)
		{
			escreva("A[",cont,"]: ")
			leia(A[cont])
		}
		limpa()
		//Preenchendo valores de B
		para (inteiro cont = 0; cont <= 4; cont++)
		{
			escreva("B[",cont,"]: ")
			leia(B[cont])			
		}
		limpa()
		escreva("Operação aritmética desejada: ")
		escreva("\n1- Adição | 2- Subtração | \n3- Multiplicação | 4- Divisão\n")
		leia( opcao )
		escolha ( opcao )
		{
			caso 1 :
				para (inteiro cont = 0; cont <= 4; cont ++)
					R[cont] = A[cont] + B[cont]
				pare
			caso 2 :
				para (inteiro cont = 0; cont <= 4; cont ++)
					R[cont] = A[cont] - B[cont]
				pare
			caso 3 : 
				para (inteiro cont = 0; cont <= 4; cont ++)
					R[cont] = A[cont] * B[cont]
				pare
			caso 4 :
				para (inteiro cont = 0; cont <= 4; cont++ )
				{
					se (B[cont] != 0)
						R[cont] = A[cont] / B[cont]
					senao
						R[cont] = 0.
				}
				pare
			caso contrario :
				escreva("Operação Inválida")
		}
		limpa()
		escreva("\nVetor A")
		para (inteiro cont = 0; cont <= 4; cont++)
			escreva("\n",A[cont])

		escreva("\nVetor B")
		para (inteiro cont = 0; cont <= 4; cont++)
			escreva("\n",B[cont])

		escreva("\nVetor R")
		para (inteiro cont= 0; cont <= 4; cont++){
			//Solução 1
			se ((R[cont] == 0.) e ( opcao == 4))
				escreva("\nDivisão por zero")
			senao
				escreva("\n",R[cont])

			//Solução 2
			se (R[cont] == 0.)
			{
				se ( opcao == 4 )
					escreva("\nDivisão por zero")
				senao
					escreva("\n",R[cont])
			} senao
				escreva("\n",R[cont])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1263; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */