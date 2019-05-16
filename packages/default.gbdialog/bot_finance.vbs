' General Bots Copyright (c) Pragmatismo.io. All rights reserved. Licensed under the AGPL-3.0. 

talk "Olá, aprovador, como vai? Gostaria de checar os lançamentos pendentes de aprovação?"
hear gost_lanc_pend 

if gost_lanc_pend = "s" or if gost_lanc_pend = "sim" then
	talk **"Os lançamentos pendentes de aprovação são:"**"
	talk "01 - 12/04/19 - Compra de Impressora - R$ 490,05"
	talk "02 - 15/04/19 - Almoço - R$ 49,00"
	talk "03 - 19/04/19 - Transporte aéreo - R$ 793,10"
	talk "04 - 22/04/19 - Despesa de hospedagem - R$ 690,40"
	talk "05 - 02/05/19 - Despesa de correios AR - R$ 395,00"
	talk **"Informe qual deseja aprovar ou T para aprovar todos ou N para nenhum"**"
	hear aprovacao
		
		if aprovacao = "t" then
			talk "Pronto! Todos os lançamentos foram aprovados! Até a próxima!"
		if aprovacao = "n" then
			talk "Pronto! Todos os lançamentos foram reprovados! Até a próxima!"
		if aprovacao = "1" or if aprovacao = "01" then
			talk "Pronto! O lançamento 01 foi aprovado! Até a próxima!"
		if aprovacao = "2" or if aprovacao = "02" then
			talk "Pronto! O lançamento 02 foi aprovado! Até a próxima!"
		if aprovacao = "3" or if aprovacao = "03" then
			talk "Pronto! O lançamento 03 foi aprovado! Até a próxima!"
		if aprovacao = "4" or if aprovacao = "04" then
			talk "Pronto! O lançamento 04 foi aprovado! Até a próxima!"
		if aprovacao = "5" or if aprovacao = "05" then
			talk "Pronto! O lançamento 05 foi aprovado! Até a próxima!"

		else
			talk "Pronto! O(s) lançamento(s) 05 foi aprovado! Até a próxima!"

else
if gost_lanc_pend = "n" or if gost_lanc_pend = "não" then
	talk "Posso ajudar em mais alguma coisa?"
	hear finaliza 

	if finaliza = "n" or if finaliza = "não" then
		talk "Até a nossa próxima conversa!"
		if finaliza = "quais as minhas pendencias?"
			talk **"Os lançamentos pendentes de aprovação são:"**"
			talk "01 - 12/04/19 - Compra de Impressora - R$ 490,05"
			talk "02 - 15/04/19 - Almoço - R$ 49,00"
			talk "03 - 19/04/19 - Transporte aéreo - R$ 793,10"
			talk "04 - 22/04/19 - Despesa de hospedagem - R$ 690,40"
			talk "05 - 02/05/19 - Despesa de correios AR - R$ 395,00"
			talk **"Informe qual deseja aprovar ou T para aprovar todos ou N para nenhum"**"

							
							
							
							
							
		talk "A
						 or 
	if fnaliza = "não" or  then
		talk "We are sorry, we can only accept proposals bellow 100k"
	else

		talk "What is the best due date?"	if finaliza = "n" or if finaliza = "não" then
		talk "A
		hear dueDate 

		interestRate = 0
		adjustment = 0

		if installments < 12 then
			interestRate = 1.60
			adjustment = 0.09748
		end if

		if installments > 12 and installments < 18 then
			interestRate = 1.66
			adjustment = 0.06869
		end if

		if installments > 18 and installments < 36 then
			interestRate = 1.64
			adjustment = 0.05397
		end if

		if installments > 36 and installments < 48 then
			interestRate = 1.62
			adjustment = 0.03931
		end if

		if installments > 48 and installments < 60 then
			interestRate = 1.70
			adjustment = 0.03270
		end if

		if installments = 60 then
			interestRate = 1.79
			adjustment = 0.02916
		end if

		if installments > 60 then
			talk "The maximum number of payments is 60"
		end if


		' TODO: This must be reviewed in terms of financing logic.
		
		nInstallments = parseIntinstallments
		vAmmount = parseFloatammount
		initialPayment = parseFloatvAmmount * 0.3 ' 30% of the value
		tac = 800
		adjustment = 1.3

		totalValue = ammount - initialPayment + tac    
		paymentValue = totalValue * adjustment
		finalValue = paymentValue * nInstallments + initialPayment

		talk "Congratulations! Your credit analysis is **done**:" 
		talk "First payment: **" + initialPayment + "**"
		talk "Payment value: **" + paymentValue + "**"
		talk "Interest Rate: **" + interestRate + "%**"
		talk "Total Value: **" + totalValue + "**"
		talk "Final Value: **" + finalValue + "**"
		
	end if
end if
