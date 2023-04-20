insert into Cliente values ('Donald', '78457692143', '66597632', '29/06/1980 12:45', 'M', '13965487562', '39678542', 'Rua Luiz de Camões', '25', 'Santos', 'São Paulo', 2300.00, 'donald@gmail.com', '123456');
	('Margarida', '89457692143', '77597632', '06/08/1986 10:29', 'F', '11964587562', '93678542', 'Rua Francisco', '180', 'São Vicente', 'São Paulo', 5500.00, 'marga@gmail.com', '123456'),
	('Patinhas', '65457692188', '96845216', '15/06/1956 19:22', 'M', '11965486962', '39696542', 'Rua José', '694', 'Santos', 'São Paulo', 600000.00, 'Patinhas@gmail.com', '123456'),
	('Huguinho', '98021456982', '79542103', '15/02/2000 15:56', 'M', '11965696962', '95741235', 'Rua Matinho', '04', 'Cubatão', 'São Paulo', 700.00, 'huguinho@gmail.com', '123456'),
	('Luizinho', '36547840145', '78469210', '15/02/2000 15:57', 'M', '13965855432', '56987014', 'Rua Prainha', '33', 'Praia Grande', 'São Paulo', 1000.00, 'luizinho@gmail.com', '123456'),
	('Zezinho', '36947852140', '00987564', '15/02/2000 15:58', 'M', '33965873001', '30147950', 'Rua Queijinho', '17', 'São João del Rei', 'Minas Gerais', 1900.00, 'zezinho@gmail.com', '123456'),
	('Mickey', '33947852140', '97987564', '15/02/1990 04:34', 'M', '33965873561', '30147950', 'Rua Disney', '69', 'Rio de Janeiro', 'Rio de Janeiro', 49300.00, 'mickey@gmail.com', '123456'),
	('Minie', '55947852140', '63987564', '15/02/1999 06:00', 'F', '33965873741', '30147950', 'Rua Goiás', '158', 'São Paulo', 'São Paulo', 86500.00, 'minie@gmail.com', '123456')
);

select * from Cliente
select * from Conta


/*2. Inserir de forma explícita uma conta para cada correntista
Dados conforme abaixo, demais dados livres. Atenção para colocar
datas de aberturas anteriores a data de hoje.

      nome:Donald, statusConta:ativa,saldo:1000.00
      nome:Margarida, statusConta:bloqueada,saldo:450.50
      nome:Patinhas, statusConta:ativa,saldo:650000.50
      nome:Huguinho, statusConta:ativa,saldo:500.00
      nome:Luizinho, statusConta:ativa,saldo:3500.00
      nome:Zezinho, statusConta:bloqueada,saldo:700.25
      nome:Mickey, statusConta:ativa,saldo:9500.25
      nome:Minie, statusConta:ativa,saldo:12500.50*/


insert into Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (1, 1000.00, 'Comum', '08/08/2020 09:30', 'Ativa');
insert into Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (2, 450.50, 'Comum', '26/03/2018 09:30', 'Bloqueada');
insert into Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (3, 650000.50, 'Comum', '24/09/2015 00:30', 'Ativa');
insert into Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (4, 500.00, 'Comum', '03/11/2019 11:30', 'Ativa');
insert into Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (5, 3500.00, 'Comum', '23/10/2020 06:39', 'Ativa');
insert into Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (6,700.25, 'Comum', '31/05/2019 16:49', 'Bloqueada');
insert into Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (7, 9500.25, 'Comum', '09/12/2016 11:55', 'Ativa');
insert into Conta (idCliente, saldo, tipoConta, aberturaConta, statusConta) values (8, 12500.50, 'Comum', '14/05/2017 19:55', 'Ativa');


/* 3.Inserir mais duas contas ao Patinhas
Dados conforme abaixo, demais dados livres. Atenção para colocar
datas de aberturas anteriores a data de hoje.

      nome:Patinhas, statusConta:ativa,saldo:1000000.50
      nome:Patinhas, statusConta:ativa,saldo:250000.00*/

