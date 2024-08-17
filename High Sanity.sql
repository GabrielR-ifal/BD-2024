create database trabalho;
use trabalho;

create table Postagens(
topico varchar(15),
titulo 	varchar(15),
assunto varchar(45),
id int auto_increment,
primary key(id)
);

create table UsuarioComum(
genero varchar(10),
senha varchar(35),
email varchar(30),
nome varchar(30),
meta varchar(75),
foto_perfil varchar(75),
nickname varchar(15),
disturbio varchar(15),
id int auto_increment,
primary key(id)
);

create table UsuarioProfissional(
genero varchar(10),
senha varchar(35),
email varchar(30),
nome varchar(30),
meta varchar(75),
foto_perfil varchar(75),
nickname varchar(15),
id int auto_increment,
profissao varchar(40),
primary key(id)
);

create table Denuncias(
data date,
conteudo varchar(30),
id int auto_increment,
primary key(id),
FK_postagens_id int,
foreign key (FK_postagens_id) references Postagens(id)
); 

create table Comentarios(
id int auto_increment,
mensagem varchar(30),
data date,
FK_postagens_id int,
foreign key (FK_postagens_id) references Postagens(id),
primary key(id)
);

create table ComentariosUsuarioComum(
FK_comentarios_id int,
FK_usuariocomum_id int,
foreign key(FK_comentarios_id) references Comentarios(id),
foreign key(FK_usuariocomum_id) references UsuarioComum(id),
primary key(FK_comentarios_id, FK_usuariocomum_id)
);

create table ComentariosUsuarioProfissional(
FK_comentarios_id int,
FK_usuarioprofissional_id int,
foreign key(FK_comentarios_id) references Comentarios(id),
foreign key(FK_usuarioprofissional_id) references UsuarioProfissional(id),
primary key(FK_comentarios_id, FK_usuarioprofissional_id)
);

create table UsuarioComumDenuncias(
FK_usuariocomum_id int,
FK_denuncias_id int,
foreign key(FK_usuariocomum_id) references UsuarioComum(id),
foreign key(FK_denuncias_id) references Denuncias(id),
primary key(FK_usuariocomum_id, FK_denuncias_id)
);
