CREATE TABLE Cliente (
    idCliente int identity,
    nomeCliente varchar(200) NOT NULL,
    cpf char(11) NOT NULL,
    rg char(8) NOT NULL,
    dataNascimento datetime NOT NULL,
    genero char(1) NOT NULL,
    celular char(11) NOT NULL,
    cep char(8) NOT NULL, 
    logradouro varchar(50) NOT NULL,
    numeroEndereco char(5) NOT NULL,
	complemento varchar(100),
    cidade varchar(50) NOT NULL,
    estado varchar(50) NOT NULL,
    renda decimal(10,2) NOT NULL,
    email varchar(50) NOT NULL,
    senha varchar(6) NOT NULL,
  constraint pk_Cliente primary key (idCliente),
	constraint uk_CPF unique (cpf),
	constraint uk_email unique (email),
	constraint uk_rg unique (rg),
  constraint ck_Genero check (genero in ('F', 'M', 'O'))    
)
GO
CREATE TABLE Conta (
  idConta int identity,
  idCliente integer NOT NULL,
  saldo decimal(10,2) NOT NULL,
  limite decimal(10,2),
  tipoConta varchar(30) NOT NULL,
  aberturaConta datetime NOT NULL,
  statusConta varchar(50) NOT NULL,
  senha varchar(8) NOT NULL,
  encerramentoConta datetime,
  constraint pk_Conta primary key (idConta),
  constraint fk_Cliente foreign key (idCliente) references Cliente (idCliente),
  constraint uk_Senha unique (senha),
  constraint ck_Status_Conta check (statusConta in ('Ativo','Inativo','Bloqueado')) 
)
GO
CREATE TABLE TipoTransacao (
  idTipoTransacao int identity,
  nomeTransacao varchar(50) NOT NULL UNIQUE,
  constraint pk_TipoTransação primary key (idTipoTransacao),
  constraint uk_Nome_Transacao unique (nomeTransacao)
)
GO
CREATE TABLE Transacao (
    idTransacao int identity,
    idConta integer NOT NULL,
    idContaDestino integer NOT NULL,
    idTipoTransacao integer NOT NULL,
    dataHora datetime NOT NULL,
    valor numeric (10,2) NOT NULL,
constraint pk_Transacao primary key (idTransacao),
constraint fk_Conta foreign key (idConta) references Conta (idConta),
constraint fk_Conta_Destino foreign key (idContaDestino) references Conta (idConta),
constraint fk_TipoTransacao foreign key (idTipoTransacao) references TipoTransacao (idTipoTransacao),
)
GO
CREATE TABLE Agendamento (
    idAgendamento int identity,
    idConta integer NOT NULL,
    idContaDestino integer NOT NULL,
    dataAgendamento datetime NOT NULL,
    cancelarAgendamento varchar(8) NOT NULL,
    valor decimal(10,2) NOT NULL,
  constraint pk_Agendamento primary key (idAgendamento),
constraint fk_Conta_Agendamento foreign key (idConta) references Conta (idConta),
constraint fk_Conta_Destino_Agendamento foreign key (idContaDestino) references Conta (idConta),
)
GO
/* lalinha*/
drop table Agendamento
drop table Transacao
drop table TipoTransacao
drop table Conta
drop table Cliente