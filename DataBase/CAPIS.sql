PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE tbPacientes(
idPaciente integer not null primary key autoincrement,
nomePaciente varchar(200) not null,
CPF varchar(14),
registroGeral varchar(50),
contato varachar(50),
endereco varachar(100),
bairro varchar(50),
cidade varchar(50),
estado varachar(2),
CEP varchar(9),
sexo varchar(20), 
dataNascimento date, 
nacionalidade varchar(50), 
naturalidade varchar(50)
);
CREATE TABLE tbAtestadoPaciente(
idAtestadoPaciente integer not null primary key autoincrement,
idPaciente int,
data date not null,
periodo real not null,
CID varchar(20),
tipo varchar(50),
atestado varchar(500) not null,
foreign key (idPaciente) references tbPacientes(idPaciente)
);
CREATE TABLE tbReceituarioDeControleEspecial(
idReceituario integer not null primary key autoincrement,
idPaciente integer not null,
prescricao Text(200) not null,
data date not null,
foreign key (idPaciente) references tbPacientes(idPaciente)
);
CREATE TABLE tbNotificacaoDeReceita(
idNotificacaoDeReceita integer not null primary key autoincrement,
numero integer,
idPaciente integer,
medicamentoOuSubstancia varchar(200),
quantidade integer,
forma varchar(50),
dosePorUnidadePosologica real,
dose varchar(50),
quantidadePosologia real,
posologia varchar(100),
foreign key (idPaciente) references tbPacientes(idPaciente)
);
CREATE TABLE tbAcompanhante(
idAcompanhante integer not null primary key autoincrement,
nomeAcompanhante varchar(200) not null,
RG varchar (100),
cpf integer,
contato varchar(200),
endereco varchar(200),
bairro varchar(100),
cidade varchar(100),
uf varchar(2),
cep integer,
idPaciente int,
foreign key (idPaciente) references tbPacientes(idPaciente)
);
CREATE TABLE tbAtestadoDeAcompanhamento(
idAtestado integer not null primary key autoincrement,
idAcompanhante int,
data date,
periodo real,
cid varchar (50),
Atestado varchar(500),
foreign key (idAcompanhante) references tbAcompanhante(idAcompanhante)
);
DELETE FROM sqlite_sequence;
COMMIT;
