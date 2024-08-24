#------------Selects id 3------------
select data, conteudo, id from denuncias where FK_postagens_id = 3;
select assunto from postagens where id = 3;
select data, mensagem from comentarios where FK_postagens_id = 3;
select FK_usuariocomum_id, FK_denuncias_id from usuariocomumdenuncias where FK_denuncias_id = 2;
 
 #------------Selects id 2------------
select data, conteudo from denuncias where FK_postagens_id = 2;
select assunto from postagens where id = 2;
select data, mensagem from comentarios where FK_postagens_id = 2;
select FK_usuarioprofissional_id, FK_denuncias_id from usuarioprofissionaldenuncias where FK_denuncias_id = 3;

#------------Selects id 1------------
select data, conteudo, id from denuncias where FK_postagens_id = 1;
select assunto from postagens where id = 1;
select data, mensagem from comentarios where FK_postagens_id = 1;
select FK_comentarios_id, FK_usuariocomum_id from comentariosusuariocomum where FK_usuariocomum_id = 3;
