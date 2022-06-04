create database astrologia;
use astrologia;


-- Relacionamento 1-n, um usuário tem apenas um signo e um signo tem vários usuários 
create table signo(
idsigno int primary key auto_increment,
sol varchar (45));


create table usuario(
idusuario int primary key auto_increment,
nome varchar(50),
genero varchar (50),
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
(null, 'mariana', 'feminino', '1999-04-13', 'mariana.carmo@sptech.school', 'Elis8832', 1),
(null, 'luiz felipe', 'masculino', '1997-05-14', 'luiz.silva@sptech.school', 'Elis8832', 2),
(null, 'matheus', 'masculino', '2000-06-17', 'matheus.nasc@sptech.school', 'Elis8832', 3),
(null, 'elissandra', 'feminino', '1994-07-22', 'elissandra.silva@sptech.school', 'Elis8832', 4),
(null, 'debora', 'feminino', '1994-08-22', 'debora.cavalcante@sptech.school', 'Elis8832', 5),
(null, 'wesley', 'masculino', '1995-09-03', 'wesley.felix@sptech.school', 'Elis8832', 6),
(null, 'vivian', 'feminino', '1983-10-13', 'vivian.silva@sptech.school', 'Elis8832', 7),
(null, 'andrey', 'masculino', '1994-11-17', 'andrey.silva@sptech.school', 'Elis8832', 8),
(null, 'vitoria', 'feminino', '1994-12-22', 'vitoria.silva@sptech.school', 'Elis8832', 9),
(null, 'sergio', 'masculino', '1994-12-26', 'sergio.daniel@sptech.school', 'Elis8832', 10),
(null, 'vinicius', 'masculino', '1994-02-19', 'vinicius.galdino@sptech.school', 'Elis8832', 11),
(null, 'rafael', 'masculino', '1994-03-12', 'rafael.reis@sptech.school', 'Elis8832', 12);

insert into usuario values
(null, 'Rafael', 'Masculino', '1983-01-24', 'rafael.oliveira@sptech.school', 'Elis8832', 11);

select * from usuario;

select * from signo join usuario on signo.idsigno = usuario.fksigno;

select sol, count(fksigno) 
from usuario
join signo on signo.idsigno = usuario.fksigno group by sol;
