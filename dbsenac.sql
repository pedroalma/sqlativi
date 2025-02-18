drop database dbsenac;

create database dbsenac;

use dbsenac;

create table tbacesso(
    idace int not null auto_increment,
    email varchar(100) not null,
    senha varchar(100) not null,
    primary key (idace)
);
create table tbdocumento(
    iddoc int not null auto_increment,
    tipoDoc char(10) not null,
    numDoc char(14) not null unique,
    orgao varchar(14) not null,
    esta char(2) not null,
    primary key (iddoc)
);
create table tbendeco(
    idend int not null auto_increment,
    cep char(9) not null,
    rua varchar(50) not null,
    numero varchar(10) not null,
    comple varchar(60),
    bairro varchar(20) not null,
    esta char(2) not null,
    cida varchar(50) not null,
    primary key (idend)
);
create table tbcontato(
    idcon int not null auto_increment,
    telefoneResi char(9),
    telefoneCome char(9),
    celular char(9),
    primary key (idcon)
);
create table tbdadosPessoais(
    iddados int not null auto_increment,
    idace int not null,
    iddoc int not null,
    idend int not null,
    idcon int not null,
    nomeCom varchar(100) not null,
    nomeSoc varchar(100),
    cpf char(14) not null unique,
    dataNasc date,  
    nomeMae varchar (100),
    sexo char(1) default 'F' check(sexo IN ('F','M')),
    primary key (iddados),
    foreign key (idace) references tbacesso(idace),
    foreign key (iddoc) references tbdocumento(iddoc),
    foreign key (idend) references tbendeco(idend),
    foreign key (idcon) references tbcontato(idcon)
);
desc tbacesso;
desc tbdadosPessoais;
desc tbdocumento;
desc tbendeco;
desc tbcontato;