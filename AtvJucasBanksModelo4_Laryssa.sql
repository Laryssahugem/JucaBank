/*11.Buscar nome, contato, cidade e estado de todos os correntistas com contas bloqueadas, em ordem alfabética.*/

select Cliente.nomeCliente, Cliente.celular, Cliente.cidade, Cliente.estado from Cliente inner join Conta on Cliente.idCliente = Conta.idCliente
where Conta.statusConta ='Bloqueada' order by nomeCliente asc; 

/*12.Buscar quantos correntistas o banco possui por cidade.*/

select cidade, COUNT (nomeCliente) as 'Quantidade por cidade' from Cliente group by cidade

/*13.Buscar todas as movimentações que ocorreram em determinado mês/ano. O mês e o ano ficam a seu critério*/

select * from Transacao where dataHora like '00/04/2023 00:00%'


/*15.Buscar todos os correntistas que possuem "z" no nome.*/


/*16.Buscar o total de contas ativas e bloqueadas no JucasBank.*/


/*17.Buscar o total de contas ativas e bloqueadas no JucasBank, considerando apenas as contas que possuem mais de R$ 5.000,00*/


/*18.Buscar todas as cidades onde o JucasBank possui correntista, sem que as cidades se repitam, e em ordem alfabética.*/


/*19.Buscar a média de valores em contas de correntistas do estado de são paulo apenas.*/


/*20.Buscar o maior valor existente em conta no JucasBank.*/


/*21.Buscar o id da conta e o saldo da conta de todas as contas ativas e que possuam menos de R$1.000,00 mostrando as de menor valor primeiro.*/


/*22.Buscar todos os tipos de operações possíveis em ordem alfabética.*/


/*23.Buscar todas as contas e respectivos saldos do JucasBank, do maior saldo para o menor.*/


/*24.Buscar a soma de valores que existem em todas as contas que estão no estado de SP.*/


/*25.Buscar todos os depósitos que ocorreram na conta do Donald.*/


/*Desafio:  Buscar o nome do cliente, o número da conta (id) e o saldo existente, mostrando as contas com maior saldo primeiro.*/




