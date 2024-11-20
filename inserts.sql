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
insert into UsuarioComum(genero, senha, email, nome, foto_perfil, nickname, disturbio, lingua_nativa, documento_medico) 
values('Masculino', 'Matheussenha123','matheus@gmail.com', 'Matheus dos Santos Luna', 'Matheus_foto.jpeg', 'Matheus', 'Ansiedade', 'Português(Brasil)', 'documentomedico.docx');
insert into UsuarioComum(genero, senha, email, nome, foto_perfil, nickname, disturbio, lingua_nativa, documento_medico) 
values('Masculino', 'Adonaisenha123','adonai@gmail.com', 'Adonai Roberto de Oliveira Narciso', 'Adonai_foto.jpeg', 'Adonai', 'Transtorno Afetivo bipolar', 'Português(Brasil)', 'documentomedico.docx');
insert into UsuarioComum(genero, senha, email, nome, foto_perfil, nickname, disturbio, lingua_nativa, documento_medico) 
values('Feminino', 'EmillySsenha123','emillysantos@gmail.com', 'Emilly Santos Do Carmo', 'Emilly_foto.png', 'Emilly S.', 'Depressão', 'Português(Brasil)', 'documentomedico.docx');
insert into UsuarioComum(genero, senha, email, nome, foto_perfil, nickname, disturbio, lingua_nativa, documento_medico) 
values('Masculino', 'Elijamersonsenha123','elijamerson@gmail.com', 'Elijamerson Lourenço dos Santos', 'Elijamerson_foto.jpeg', 'Elijamerson', 'Transtorno Afetivo bipolar', 'Português(Brasil)', 'documentomedico.docx');
insert into UsuarioComum(genero, senha, email, nome, foto_perfil, nickname, disturbio, lingua_nativa, documento_medico) 
values('Masculino', 'Guilhermesenha123','guilherme@gmail.com', 'Guilherme Henrique de Lima', 'Guilherme_foto.jpeg', 'Guilherme', 'Ansiedade', 'Português(Brasil)', 'documentomedico.docx');
insert into UsuarioComum(genero, senha, email, nome, foto_perfil, nickname, disturbio, lingua_nativa, documento_medico) 
values('Masculino', 'Eduardosenha123','eduardo@gmail.com', 'Eduardo Vitor Oliveira', 'Eduardo_foto.png', 'Eduardo', 'Depressão', 'Português(Brasil)', 'documentomedico.docx');
insert into UsuarioComum(genero, senha, email, nome, foto_perfil, nickname, disturbio, lingua_nativa, documento_medico) 
values('Masculino', 'Latrelsenha123','latrel@gmail.com', 'Latrel Alan Crews', 'Latrel_foto.jpeg', 'Latrel', 'Transtorno Afetivo bipolar', 'Inglês(Estados Unidos)', 'documentomedico.docx');
insert into UsuarioComum(genero, senha, email, nome, foto_perfil, nickname, disturbio, lingua_nativa, documento_medico) 
values('Masculino', 'Givaldosenha123','givalds@gmail.com', 'Gilvado Lima Luna', 'Givaldo_foto.jpeg', 'Givaldo', 'Ansiedade', 'Português(Brasil)', 'documentomedico.docx');
insert into UsuarioComum(genero, senha, email, nome, foto_perfil, nickname, disturbio, lingua_nativa, documento_medico) 
values('Masculino', 'Givanildosenha123','givanildo@gmail.com', 'Givanildo Lourenço de Farias', 'sapo.png', 'Givanildo', 'Depressão', 'Português(Brasil)', 'documentomedico.docx');

#------------Inserts Usuário profissional------------
insert into UsuarioProfissional (genero, senha, email, nome, foto_perfil, nickname, profissao, lingua_nativa, declaracao_trabalho) 
values('Feminino', 'Yellow23', 'mariapsicologia@hotmail.com', 'Maria Amélia', 'Maria_Amélia.jpg', 'MariaAméliaServiços', 'Psicóloga', 'Português(Brasil)', 'declaraçãotrabalho.docx');
insert into UsuarioProfissional (genero, senha, email, nome, foto_perfil, nickname, profissao, lingua_nativa, declaracao_trabalho) 
values('Masculino', '2425pedro26', 'almeidaserviçospsiquiatricos@gmail.com', 'Pedro Almeida', 'Pedro_Assoalho.jpg', 'pedroquiatra', 'Psiquiatra', 'Português(Brasil)', 'declaraçãotrabalho.docx');
insert into UsuarioProfissional (genero, senha, email, nome, foto_perfil, nickname, profissao, lingua_nativa, declaracao_trabalho) 
values('Masculino', 'Silvester24', 'carla@gmail.com', 'Henrique Silvestre', 'Henrique_Silvestre.jpeg', 'Paola_ajuda', 'Terapeuta Ocupacional', 'Português(Brasil)', 'declaraçãotrabalho.docx');
insert into UsuarioProfissional (genero, senha, email, nome, foto_perfil, nickname, profissao, lingua_nativa, declaracao_trabalho) 
values('Masculino', 'Davidlima123', 'david.lima@gmail.com', 'David lima de Souza', 'David.jpeg', 'DAVID', 'Terapeuta', 'Português(Brasil)', 'declaraçãotrabalho.docx');

#------------Inserts Chat entre Comum e Profissional------------
insert into ChatComumProfissional(id, qt_msg_total, FK_usuariocomum_id, FK_usuarioprofissional_id)
values(1, '89 itens', 1, 3);
insert into ChatComumProfissional(id, qt_msg_total, FK_usuariocomum_id, FK_usuarioprofissional_id)
values(2, '300 itens', 2, 1);
insert into ChatComumProfissional(id, qt_msg_total, FK_usuariocomum_id, FK_usuarioprofissional_id)
values(3, '1500 itens', 3, 2);

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

##Adicionar inserts de relação ( chat e postagens ) e os 20 usuários da lista de usuários

#------------Inserts relação Chat entre Comum e Comum------------/
insert into ChatComumComum(id, qt_msg_total, FK_usuariocomum_id, FK_usuariocomum2_id)
values(1, '1500 itens', 4, 5);
insert into ChatComumComum(id, qt_msg_total, FK_usuariocomum_id, FK_usuariocomum2_id)
values(1, '1500 itens', 1, 3);
insert into ChatComumComum(id, qt_msg_total, FK_usuariocomum_id, FK_usuariocomum2_id)
values(1, '1500 itens', 2, 6);

#------------Inserts relação Chat entre Profissional e Profissional------------/
insert into ChatComumComum(id, qt_msg_total, FK_usuarioprofissional_id, FK_usuarioprofissional2_id)
values(1, '1500 itens', 2, 3);
insert into ChatComumComum(id, qt_msg_total, FK_usuarioprofissional_id, FK_usuarioprofissional2_id)
values(1, '1500 itens', 1, 4);
insert into ChatComumComum(id, qt_msg_total, FK_usuarioprofissional_id, FK_usuarioprofissional2_id)
values(1, '1500 itens', 3, 1);
insert into UsuarioComumDenuncias (FK_usuariocomum_id, FK_denuncias_id)
values(3, 2);

##Adicionar inserts de relação ( chat e postagens )
