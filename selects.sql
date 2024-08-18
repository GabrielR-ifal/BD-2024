#------------Selects da postagem de id 3------------
select data, conteudo, id from denuncias where FK_postagens_id like 3;
select assunto from postagens where id like 3;
select data, mensagem from comentarios where FK_postagens_id like 3;
select FK_usuariocomum_id, FK_denuncias_id from usuariocomumdenuncias where FK_denuncias_id like 2;
 
 #------------Selects da postagem de id 2------------
select data, conteudo from denuncias where FK_postagens_id like 2;
select assunto from postagens where id like 2;
select data, mensagem from comentarios where FK_postagens_id like 2;
select FK_usuarioprofissional_id, FK_denuncias_id from usuarioprofissionaldenuncias where FK_denuncias_id like 3;

#------------Selects da postagem de id 1------------
select data, conteudo, id from denuncias where FK_postagens_id like 1;
select assunto from postagens where id like 1;
select data, mensagem from comentarios where FK_postagens_id like 1;
select FK_comentarios_id, FK_usuariocomum_id from comentariosusuariocomum where FK_usuariocomum_id like 3;
