#------------Inserts postagens------------
insert into Postagens(topico, titulo, assunto) 
values('Sair de casa', 'Vejo vultos', 'Não consigo sair de casa sem ficar assustado
olho sempre para os lados pensando que algum daqueles homens brancos nojentos do caralho podem estar me perseguindo,
alguém poderia me dar apoio?');
insert into Postagens(topico, titulo, assunto)
values('Dicas de um psiquiatra','Isso é tudo frescura','Nos meus 20 anos trabalhando como psiquiatra nunca vi alguém que realmente estava passando por algo,
todos vocês afirmando que têm algum problema só querem atenção!');
insert into Postagens(topico, titulo, assunto)
values('Saúde','Descobri uma receita TOP','Recentemente comecei a gostar de cozinhar ovos mais do que qualquer coisa, descobri umas receitas de salada de ovos muito boas,
mas não sei nenhuma que envolva ovos mexidos... alguém sabe uma receita fácil e rápido de ovos mexidos?');

#------------Inserts Usuário comum------------
insert into UsuarioComum(genero, senha, email, nome, meta, foto_perfil, nickname, disturbio) 
values('Masculino', 'Afonso3','afonsotreis@hotmail.com', 'Afonso Rodrigues', 'Perder meu medo de interagir', 'Afonso_foto.jpeg', 'NadaNormalNúmero3', 'Ansiedade');
insert into UsuarioComum(genero, senha, email, nome, meta, foto_perfil, nickname, disturbio) 
values('Masculino', 'Robert1inho2122','afonsotreis@hotmail.com', 'Roberto Soares', 'Buscar ajuda profissional', 'Roberto_foto.jpeg', 'AdoroGatos111', 'Transtorno Afetivo bipolar');
insert into UsuarioComum(genero, senha, email, nome, meta, foto_perfil, nickname, disturbio) 
values('Feminino', 'Gabri3la24','Gabrielareina@gmail.com', 'Gabriela da Silva', 'Ter mais contato com a parte de fora do meu quarto', 'Gabriela_foto.png', 'Gabyzinha32', 'Depressão');

#------------Inserts Usuário profissional------------
insert into UsuarioProfissional (genero, senha, email, nome, meta, foto_perfil, nickname, profissao) 
values('Feminino', 'Yellow23', 'mariapsicologia@hotmail.com', 'Maria Amélia', 'Ajudar na superação de crises emocionais/mentais', 'Maria_Amélia.jpg', 'MariaAméliaServiços', 'Psicóloga');
insert into UsuarioProfissional (genero, senha, email, nome, meta, foto_perfil, nickname, profissao) 
values('Masculino', '2425pedro26', 'almeidaserviçospsiquiatricos@gmail.com', 'Pedro Almeida', 'Oferecer suporte psiquiátrico aos usuários', 'Pedro_Assoalho.jpg', 'pedroquiatra', 'Psiquiatra');
insert into UsuarioProfissional (genero, senha, email, nome, meta, foto_perfil, nickname, profissao) 
values('Masculino', 'Silvester24', 'carla@gmail.com', 'Henrique Silvestre', 'Auxiliar no desenvolvimento dos usuários emocional', 'Henrique_Silvestre.jpeg', 'Paola_ajuda', 'Terapeuta Ocupacional');

#------------Inserts Chat------------
insert into Chat(qt_msg_total, FK_usuariocomum_id, FK_usuarioprofissional_id)
values('89 itens', 1, 3);
insert into Chat(qt_msg_total, FK_usuariocomum_id, FK_usuarioprofissional_id)
values('300 itens', 2, 1);
insert into Chat(qt_msg_total, FK_usuariocomum_id, FK_usuarioprofissional_id)
values('1500 itens', 3, 2);

#------------Inserts Denúncias------------
insert into Denuncias (data, conteudo, FK_postagens_id) 
values('2024-12-09', 'O post contém ofensas', 1);
insert into Denuncias (data, conteudo, FK_postagens_id) 
values('2024-09-27', 'Post inadequado', 3);
insert into Denuncias (data, conteudo, FK_postagens_id) 
values('2024-04-11', 'Profissional Falso', 2);

#------------Inserts Comentários------------
insert into Comentarios (mensagem, data, FK_postagens_id) 
values('Sou psiquiatra e trabalho na HOLISTE, posso afirmar que seu nome não está registrado no sistema, irei denunciar seu post por estar se passando por um profissional!', '2024-12-25', 2);
insert into Comentarios (mensagem, data, FK_postagens_id) 
values('É sério que tu veio aqui, tirou do teu tempo pra postar sobre culinária em um site de suporte pra pessoas com distúrbios?? vou denunciar teu post é agora', '2024-09-11', 3);
insert into Comentarios (mensagem, data, FK_postagens_id) 
values('Bixo não se preocupa com o que os outros pensam não, pega um fone de ouvido, uma garrafa cheia de água e vai lá!, mas sinto lhe informar que irei denunciar seu post 
por ser ofensivo!', '2024-09-26', 1);

#------------Inserts relação ComentarioUsuarioComum------------
insert into ComentariosUsuarioComum (FK_comentarios_id, FK_usuariocomum_id) 
values(2, 3);

#------------Inserts relação ComentarioUsuarioProfissional------------
insert into ComentariosUsuarioProfissional (FK_comentarios_id, FK_usuarioprofissional_id)
values(1, 2);

#------------Inserts relação UsuarioProfissionalDenuncias------------
insert into UsuarioProfissionalDenuncias (FK_usuarioprofissional_id, FK_denuncias_id)
values(2, 3);

##------------Inserts relação UsuarioComumDenuncias------------
insert into UsuarioComumDenuncias (FK_usuariocomum_id, FK_denuncias_id)
values(3, 2);
