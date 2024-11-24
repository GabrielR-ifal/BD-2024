#Select do diplay 2 da tela de início
select foto_perfil, nickname from UsuarioComum where id = 1;

#Select do display 2 da tela de início[david]
select foto_perfil, nickname from UsuarioProfissional where id = 4;

#Select da opção deletar ( Menu de configurações )
select foto_perfil, nickname,  email from UsuarioComum where id = 1;

#Select opção deletar ( Menu configurações )[david]
select foto_perfil, nickname, email from UsuarioProfissional where id = 4;

#Select Perfis
select nickname, email, genero, disturbio, nome, lingua_nativa, documento_medico
from UsuarioComum where id = 1;

#Select Perfis[david]
select nickname, email, genero, profissao, nome, lingua_nativa, declaracao_trabalho
from UsuarioProfissional where id = 4;

#Select Mensagens
	#Select do display 2
select foto_perfil, nickname from UsuarioComum where id = 1;
	#Display de perfis amigos
select foto_perfil, nickname from UsuarioComum where id in (2, 3, 5, 10);
	#Display das conversas ( adonai, elijamerson, matheus, givanildo )
select foto_perfil, nickname, ccc.mensagens from UsuarioComum uc
inner join ChatComumComum ccc on ccc.FK_usuariocomum2_id = uc.id
where uc.id in (2, 3, 5, 10);
#Select Posts
	#Select do display 2
select foto_perfil, nickname from UsuarioComum where id = 1;
	#Select postagem do Givanildo
select  uc.foto_perfil, titulo, topico from Postagens p
inner join UsuarioComumPostagens ucp on ucp.FK_postagens_id =  p.id
inner join UsuarioComum uc on uc.id = ucp.FK_usuariocomum_id
where p.id = 1 and uc.id = 10;

	#Select postagem do Matheus
select  uc.foto_perfil, titulo, topico from Postagens p
inner join UsuarioComumPostagens ucp on ucp.FK_postagens_id =  p.id
inner join UsuarioComum uc on uc.id = ucp.FK_usuariocomum_id
where p.id = 2 and uc.id = 2;

	#Select segunda postagem do Givanildo
select  uc.foto_perfil, titulo, topico from Postagens p
inner join UsuarioComumPostagens ucp on ucp.FK_postagens_id =  p.id
inner join UsuarioComum uc on uc.id = ucp.FK_usuariocomum_id
where p.id = 3 and uc.id = 10;

	#Select postagem do Adonai
select  uc.foto_perfil, titulo, topico from Postagens p
inner join UsuarioComumPostagens ucp on ucp.FK_postagens_id =  p.id
inner join UsuarioComum uc on uc.id = ucp.FK_usuariocomum_id
where p.id = 4 and uc.id = 3;

	#Select postagem do Elijamerson
select  uc.foto_perfil, titulo, topico from Postagens p
inner join UsuarioComumPostagens ucp on ucp.FK_postagens_id =  p.id
inner join UsuarioComum uc on uc.id = ucp.FK_usuariocomum_id
where p.id = 5 and uc.id = 5;

#Select Post exemplo
select foto_perfil, nickname, titulo, assunto from UsuarioComum uc
inner join UsuarioComumPostagens ucp on ucp.FK_usuariocomum_id = uc.id
inner join Postagens p on p.id = FK_postagens_id
where uc.id = 5 and p.id = 5;
#-------------------------------------
select foto_perfil, nickname, mensagem, data from UsuarioComum uc
inner join ComentariosUsuarioComum cuc on cuc.FK_usuariocomum_id = uc.id
inner join Comentarios c on c.id = cuc.FK_comentarios_id
where uc.id in (10, 3, 2) and c.id in (1, 2, 3);

	#Select Display 2
select foto_perfil, nickname from UsuarioComum where id = 1;

#Select Lista de usuários
select foto_perfil, nickname, email from UsuarioComum where id between 2 and 9;

#Select Lista de usuários ( opção profissional )
select foto_perfil, nome, email from UsuarioProfissional where id between 1 and 4;

