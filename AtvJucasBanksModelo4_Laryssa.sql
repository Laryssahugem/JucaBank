/*11.Buscar nome, contato, cidade e estado de todos os correntistas com contas bloqueadas, em ordem alfabética.*/

select Cliente.nomeCliente, Cliente.celular, Cliente.cidade, Cliente.estado from Cliente inner join Conta on Cliente.idCliente = Conta.idCliente
where Conta.statusConta ='Bloqueada' order by nomeCliente asc; 

/*12.Buscar quantos correntistas o banco possui por cidade.*/

select cidade, COUNT (nomeCliente) as 'Quantidade por cidade' from Cliente group by cidade

/*13.Buscar todas as movimentações que ocorreram em determinado mês/ano. O mês e o ano ficam a seu critério*/

select * from Transacao where dataHora > '01/04/2023' and dataHora < '30/04/2023'

/*14.Buscar o nome do correntista e a data de criação da conta, exibindo os correntistas mais antigos primeiro. Se você não possui este atributo (dataCriacaoConta), adicione-o.*/

select Cliente.nomeCliente, Conta.aberturaConta from Cliente inner join Conta on Cliente.idCliente = Conta.idCliente order by Conta.aberturaConta 

/*15.Buscar todos os correntistas que possuem "z" no nome.*/

select * from Cliente where nomeCliente like '%z%'

/*16.Buscar o total de contas ativas e bloqueadas no JucasBank.*/

select statusConta, count (statusConta) as 'Total' from Conta group by statusConta

/*17.Buscar o total de contas ativas e bloqueadas no JucasBank, considerando apenas as contas que possuem mais de R$ 5.000,00*/

select statusConta, count (statusConta) as 'Total' from Conta where saldo>5000.00 group by statusConta

/*18.Buscar todas as cidades onde o JucasBank possui correntista, sem que as cidades se repitam, e em ordem alfabética.*/

select DISTINCT cidade from Cliente order by cidade

/*19.Buscar a média de valores em contas de correntistas do estado de são paulo apenas.*/

select avg (Conta.saldo) from Conta inner join Cliente on Cliente.idCliente = Conta.idCliente where Cliente.estado='São Paulo'

/*20.Buscar o maior valor existente em conta no JucasBank.*/

select max (saldo) from Conta 

/*21.Buscar o id da conta e o saldo da conta de todas as contas ativas e que possuam menos de R$1.000,00 mostrando as de menor valor primeiro.*/

select idConta, saldo from Conta where saldo<1000.00 order by saldo desc

/*22.Buscar todos os tipos de operações possíveis em ordem alfabética.*/



/*23.Buscar todas as contas e respectivos saldos do JucasBank, do maior saldo para o menor.*/

select * from Conta order by saldo desc

/*24.Buscar a soma de valores que existem em todas as contas que estão no estado de SP.*/

select sum (Conta.saldo) from Conta inner join Cliente on Cliente.idCliente = Conta.idCliente where Cliente.estado='São Paulo'

/*25.Buscar todos os depósitos que ocorreram na conta do Donald.*/
select * from Cliente
select * from Conta
select * from Transacao
select * from TipoTransacao




/*Desafio:  Buscar o nome do cliente, o número da conta (id) e o saldo existente, mostrando as contas com maior saldo primeiro.*/





