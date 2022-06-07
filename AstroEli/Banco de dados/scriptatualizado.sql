create database astrologia;

use astrologia;

-- Relacionamento 1-n, um usuário tem apenas um signo e um signo tem vários usuários 

create table signo(
idsigno int primary key auto_increment,
sol varchar (45));


create table usuario(
idusuario int primary key auto_increment,
nome varchar(50),
dtnasc date,
email varchar (50),
senha varchar (50),
fksigno int,
foreign key (fksigno) references signo (idsigno));

insert into signo values 
(null, 'aries'),
(null, 'touro'),
(null, 'gemeos'),
(null, 'cancer'),
(null, 'leao'),
(null, 'virgem'),
(null, 'libra'),
(null, 'escorpiao'),
(null, 'sagitario'),
(null, 'capricornio'),
(null, 'aquario'),
(null, 'peixes');

select * from signo;

insert into usuario values
(null, 'mariana', '1999-04-13', 'mariana.carmo@sptech.school', 'mari1234', 1),
(null, 'luiz felipe', '1997-05-14', 'luiz.silva@sptech.school', 'lipe1234', 2),
(null, 'matheus', '2000-06-17', 'matheus.nasc@sptech.school', 'ma1234', 3),
(null, 'elissandra', '1994-07-22', 'elissandra.silva@sptech.school', 'elis8832', 4),
(null, 'debora', '1994-08-22', 'debora.cavalcante@sptech.school', 'deh8832', 5),
(null, 'wesley',  '1995-09-03', 'wesley.felix@sptech.school', 'wes1234', 6),
(null, 'vivian', '1983-10-13', 'vivian.silva@sptech.school', 'vivi1234', 7),
(null, 'andrey',  '1994-11-17', 'andrey.silva@sptech.school', 'drey1234', 8),
(null, 'vitoria', '1994-12-22', 'vitoria.silva@sptech.school', 'vit1234', 9),
(null, 'sergio', '1994-12-26', 'sergio.daniel@sptech.school', 'dani1234', 10),
(null, 'vinicius', '1994-02-19', 'vinicius.galdino@sptech.school', 'vini1234', 11),
(null, 'rafael', '1994-03-12', 'rafael.reis@sptech.school', 'rafa1234', 12);

insert into usuario values
(null, 'Rafael', '1983-01-24', 'rafael.oliveira@sptech.school', 'rafa1234', 11);

select * from usuario;

select * from signo join usuario on signo.idsigno = usuario.fksigno;

select sol, count(fksigno) 
from usuario
join signo on signo.idsigno = usuario.fksigno group by sol;
