#------------Inserts de postagens------------
insert into postagens(topico, titulo, assunto) 
values('Sair de casa', 'Vejo vultos', 'Não consigo sair de casa sem ficar assustado
olho sempre para os lados pensando que alguém pode estar me perseguindo,
alguém poderia me dar apoio?');
insert into postagens(topico, titulo, assunto)
values('Socializar','Hoje riram de mim','Estava indo para a padaria comprar pão sozinho pela primeira vez, até que dois colegas de escola
chegaram para tirar chacota de mim, estou extremamente desanimado para ir buscar pão de novo');
insert into postagens(topico, titulo, assunto)
values('Saúde','Me sinto mais pesado..','Recentemente minha vó morreu, por conta disso passei por muito estresse e tristeza durante meus dias de luto,
algum de vocês sabe uma forma de me exercitar sem ter de interagir com outras pessoas?');

#------------Inserts de Usuários comuns------------
insert into UsuarioComum(genero, senha, email, nome, meta, foto_perfil, nickname, disturbio) 
values('Masculino', 'Afonso3','afonsotreis@hotmail.com', 'Afonso Rodrigues', 'Perder meu medo de interagir', 'Afonso_foto.jpeg', 'NadaNormalNúmero3', 'Ansiedade');
insert into UsuarioComum(genero, senha, email, nome, meta, foto_perfil, nickname, disturbio) 
values('Masculino', 'Robert1inho2122','afonsotreis@hotmail.com', 'Roberto Soares', 'Buscar ajuda profissional', 'Roberto_foto.jpeg', 'AdoroGatos111', 'Transtorno Afetivo bipolar');
insert into UsuarioComum(genero, senha, email, nome, meta, foto_perfil, nickname, disturbio) 
values('Feminino', 'Gabri3la24','Gabrielareina@gmail.com', 'Gabriela da Silva', 'Ter mais contato com a parte de fora do meu quarto', 'Gabriela_foto.png', 'Gabyzinha32', 'Depressão');

#------------Inserts de Usuários profissionais------------
insert into UsuarioProfissional (genero, senha, email, nome, meta, foto_perfil, nickname, profissao) 
values('Feminino', 'Yellow23', 'mariapsicologia@hotmail.com', 'Maria Amélia', 'Ajudar na superação de crises emocionais/mentais', 'Maria_Amélia.jpg', 'MariaAméliaServiços', 'Psicóloga');
insert into UsuarioProfissional (genero, senha, email, nome, meta, foto_perfil, nickname, profissao) 
values('Masculino', '2425pedro26', 'almeidaserviçospsiquiatricos@gmail.com', 'Pedro Almeida', 'Oferecer suporte psiquiátrico aos usuários', 'Pedro_Assoalho.jpg', 'pedroquiatra', 'Psiquiatra');
insert into UsuarioProfissional (genero, senha, email, nome, meta, foto_perfil, nickname, profissao) 
values('Masculino', 'Silvester24', 'carla@gmail.com', 'Henrique Silvestre', 'Auxiliar no desenvolvimento dos usuários emocional', 'Henrique_Silvestre.jpeg', 'Paola_ajuda', 'Terapeuta Ocupacional');

#------------Inserts de Denúncias------------
insert into Denuncias (data, conteudo, FK_postagens_id) 
values('2024-12-09', 'O post contém ofensas', 1);
insert into Denuncias (data, conteudo, FK_postagens_id) 
values('2024-09-27', 'Post inadequado', 3);
insert into Denuncias (data, conteudo, FK_postagens_id) 
values('2024-04-11', 'Profissional Falso', 2);

#------------Inserts de Comentários------------
insert into Comentarios (mensagem, data, FK_postagens_id) 
values('Olá meu nome é pedro, sou psiquiatra e posso afirmar que isso deve ser coisa da sua cabeça, com o tempo você vai perceber que não tem ninguém lhe observando', '2024-12-25', 2);
insert into Comentarios (mensagem, data, FK_postagens_id) 
values('Mano, quando chegar na escola ja vai direto na coordenação denunciar véi, isso é seríssimo!!', '2024-09-11', 1);
insert into Comentarios (mensagem, data, FK_postagens_id) 
values('Bixo não se preocupa com o que os outros pensam não, pega um fone de ouvido, uma garrafa cheia de água e vai lá!', '2024-06-26', 3);

#------------Inserts de ComentarioUsuarioComum------------
insert into ComentariosUsuarioComum (FK_comentarios_id, FK_usuariocomum_id) 
values(3, 3);

#------------Inserts de ComentarioUsuarioProfissional------------
insert into ComentariosUsuarioProfissional (FK_comentarios_id, FK_usuarioprofissional_id)
values(2, 2);

#------------Inserts de UsuarioProfissionalDenuncias------------
insert into UsuarioProfissionalDenuncias (FK_usuarioprofissional_id, FK_denuncias_id)
values(2,3);

##------------Inserts de UsuarioComumDenuncias------------
insert into UsuarioComumDenuncias (FK_usuariocomum_id, FK_denuncias_id)
values(1,1);
