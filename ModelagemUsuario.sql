CREATE TABLE usuario (
  idusuario BIGINT  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(100)  NOT NULL  ,
  sobrenome VARCHAR(255)  NOT NULL  ,
  foto VARCHAR(255)  NULL  ,
  cpf VARCHAR(11)  NULL  ,
  rg VARCHAR(30)  NULL  ,
  genero VARCHAR(20)  NOT NULL  ,
  whatsapp VARCHAR(14)  NULL  ,
  link VARCHAR(255)  NULL  ,
  login VARCHAR(255)  NOT NULL  ,
  senha VARCHAR(255)  NOT NULL  ,
  nivel INTEGER UNSIGNED  NOT NULL  ,
  cadastro TIMESTAMP  NOT NULL  ,
  situacao BOOL  NOT NULL    ,
PRIMARY KEY(idusuario));


CREATE TABLE endereco (
  idendereco BIGINT  NOT NULL   AUTO_INCREMENT,
  usuario_idusuario BIGINT  NOT NULL  ,
  tipo VARCHAR(10)  NULL  ,
  cep VARCHAR(10)  NULL  ,
  rua VARCHAR(100)  NULL  ,
  numero VARCHAR(50)  NULL  ,
  bairro VARCHAR(100)  NULL  ,
  complemento VARCHAR(255)  NULL  ,
  cidade VARCHAR(50)  NULL  ,
  uf CHAR(2)  NULL  ,
  situacao BOOL  NULL    ,
PRIMARY KEY(idendereco)  ,
INDEX endereco_FKIndex1(usuario_idusuario),
  FOREIGN KEY(usuario_idusuario)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE
      ON UPDATE NO ACTION);



