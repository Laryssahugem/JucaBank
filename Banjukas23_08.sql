use BanJucas

create procedure psValidacaoLogin
@cpf varchar(11),
@senha varchar(6)
as
select * from cliente
where cpf=@cpf and senha=@senha

exec psValidacaoLogin '11111111111', '123456' 


insert into Cliente values ('Laryssa', '83763521453', '66597632', '29/12/2003 12:45', 'F', '13965487562', '39678542', 'Rua Luiz de Camões', '25', 'Santos', 'São Paulo', 2300.00, 'lary@gmail.com', '123456');