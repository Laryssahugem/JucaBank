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