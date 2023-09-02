use BanJucas

create procedure psValidacaoLogin
@cpf char(11),
@senha varchar(6)
as
select * from cliente
where cpf=@cpf and senha=@senha

exec psValidacaoLogin '11111111111', '123456' 


create procedure ps_buscaContasPorIdCorrentista
@idCliente int
as
select * from conta
where idCliente=@idCliente

insert into Cliente values ('Laryssa', '83763521453', '66597632', '12/12/2003 12:45', 'F', '13965487562', '39678542', 'Rua Luiz de Camões', '25','Casa', 'Santos', 'São Paulo', 2300.00, 'lary@gmail.com', '123456');

create procedure pi_Correntista
@nomeCliente varchar(200),
@cpf char(11),
@rg char(8),
@dataNascimento datetime,
@genero char(1),
@celular char(11),
@cep char(8),
@logradouro varchar(50),
@numeroEndereco char(5),
@complemento varchar(100),
@cidade varchar(50),
@estado varchar(50),
@renda decimal(10,2),
@email varchar(50),
@senha varchar(6)
as
insert into Cliente
values (@nomeCliente, @cpf, @rg, @dataNascimento, @genero, @celular, @cep, @logradouro, @numeroEndereco, @complemento, @cidade, @estado, @renda, @email, @senha)

/*criar conta*/
create procedure pi_Conta
@idCliente int,
@saldo decimal(10,2),
@limite decimal(10,2),
@tipoConta varchar(30),
@aberturaConta datetime,
@statusConta varchar(50),
@senha char(8)
as
insert into conta (idCliente,saldo,limite,tipoConta,aberturaConta,statusConta,senha)
values (@idCliente,@saldo,@limite,@tipoConta,@aberturaConta,@statusConta,@senha)
select @@identity as 'ultimoID'

/*criar Procedure Atualizaçã dos Dados do Cliente 01-09*/
Create Procedure pu_AtualizarClientes
@idCliente int,
@nomeCliente varchar(200),
@cpf char(11),
@rg char(8),
@dataNascimento datetime,
@genero char(1),
@celular char(11),
@cep char(8),
@logradouro varchar(50),
@numeroEndereco char(5),
@complemento varchar(100),
@cidade varchar(50),
@estado varchar(50),
@renda decimal(10,2),
@email varchar(50),
@senha varchar(6)
as
update Cliente 
set nomeCliente = @nomeCliente, cpf = @cpf, rg = @rg, dataNascimento = @dataNascimento, genero = @genero, celular = @celular,
cep = @cep, logradouro = @logradouro, numeroEndereco = @numeroEndereco, complemento = @complemento, cidade = @cidade, estado = @estado, renda = @renda, email = @email, senha = @senha where idCliente = @idCliente


exec pu_AtualizarClientes 1,'Donald', '78457692143', '66597632', '05/06/1980 12:45', 'M', '13965487562', '39678542', 'Rua Luiz ', '25', 'casa', 'Santos', 'São Paulo', 2300.00, 'donald@gmail.com', '123456'
select * from cliente
drop procedure pu_AtualizarClientes