create database trabalho;
use trabalho;

create table Postagens(
topico varchar(100),
titulo 	varchar(100),
assunto varchar(500),
id int auto_increment,
primary key(id)
);

create table UsuarioComum(
genero varchar(10),
senha varchar(35),
email varchar(50),
nome varchar(100),
foto_perfil varchar(75),
nickname varchar(30),
disturbio varchar(40),
lingua_nativa varchar(25),
documento_medico varchar(25),
id int auto_increment,
primary key(id)
);

create table UsuarioProfissional(
genero varchar(10),
senha varchar(35),
email varchar(50),
nome varchar(100),
foto_perfil varchar(75),
nickname varchar(30),
id int auto_increment,
profissao varchar(80),
lingua_nativa varchar(25),
declaracao_trabalho varchar(17),
primary key(id)
);

create table ChatComumProfissional(
id int,
qt_msg_total varchar(15000),
FK_usuariocomum_id int,
FK_usuarioprofissional_id int,
foreign key (FK_usuariocomum_id) references UsuarioComum(id),
foreign key (FK_usuarioprofissional_id) references UsuarioProfissional(id)
);

create table ChatComumComum(
id int,
qt_msg_total varchar(15000),
FK_usuariocomum_id int,
FK_usuariocomum2_id int,
foreign key (FK_usuariocomum_id) references UsuarioComum(id),
foreign key (FK_usuariocomum2_id) references UsuarioComum(id)
);

create table ChatProfissionalProfissional(
id int,
qt_msg_total varchar(15000),
FK_usuarioprofissional_id int,
FK_usuarioprofissional2_id int,
foreign key (FK_usuarioprofissional_id) references UsuarioProfissional(id),
foreign key (FK_usuarioprofissional2_id) references UsuarioProfissional(id)
);

create table Denuncias(
data date,
conteudo varchar(200),
id int auto_increment,
primary key(id),
FK_postagens_id int,
foreign key (FK_postagens_id) references Postagens(id)
); 

create table Comentarios(
id int auto_increment,
mensagem varchar(300),
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

create table UsuarioProfissionalDenuncias(
FK_usuarioprofissional_id int,
FK_denuncias_id int,
foreign key(FK_usuarioprofissional_id) references UsuarioProfissional(id),
foreign key(FK_denuncias_id) references Denuncias(id),
primary key(FK_usuarioprofissional_id, FK_denuncias_id)
);

create table UsuarioProfissionalPostagens(
FK_usuarioprofissional_id int,
FK_postagens_id int,
foreign key(FK_usuarioprofissional_id) references UsuarioProfissional(id),
foreign key(FK_postagens_id) references Postagens(id),
primary key(FK_usuarioprofissional_id, FK_postagens_id)
);

create table UsuarioComumPostagens(
FK_usuariocomum_id int,
FK_postagens_id int,
foreign key(FK_usuariocomum_id) references UsuarioComum(id),
foreign key(FK_postagens_id) references Postagens(id),
primary key(FK_usuariocomum_id, FK_postagens_id)
);
