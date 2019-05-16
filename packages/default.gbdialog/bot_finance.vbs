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
			talk "Pronto! O(s) lançamento(s)" + aprovacao + "foram aprovado(s)! Até a próxima!"

		end if												
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
		end if
	end if
end if
