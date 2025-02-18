drop database dbcontatos;

create database  dbcontatos;

use dbcontatos;

create table tbFormulario(
    idForm int not null auto_increment,
    email varchar(100) not null,
    telCel char(9) not null,
    mensagem text,
    primary key(idForm)
);
desc tbFormulario;

insert into  tbFormulario(nome,email,telCel,mensagem) values('pedro alma','pedro@gmail.com','98515-2312','problemas no sql');

select * from tbFormulario;

update tbFormulario set nome = 'larissa mendes' , email = 'larissa@gmail.com', telCel = '98285-1256' , mensagem = 'nova mensagem.' where idForm = 1;

select * from tbFormulario;