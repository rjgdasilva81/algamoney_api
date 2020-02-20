CREATE TABLE pessoa (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	logradouro VARCHAR(100),
	numero VARCHAR(10),
	complemento VARCHAR(50),
	bairro VARCHAR(50),
	cep VARCHAR(10),
	cidade VARCHAR(20),
	estado CHAR(2),
	ativo BOOLEAN NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Robson Galvão',true,'Avenida Jaguaré','383','apto 124','Jaguaré','05346-000','São Paulo','SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Juliana Souto',true,'Avenida Jaguaré','383','apto 124','Jaguaré','05346-000','São Paulo','SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Iracema Galvão',true,'Avenida Jaguaré','403','apto 53','Jaguaré','05346-000','São Paulo','SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Erci Queiroz',true,'Avenida Jaguaré','403','apto 53','Jaguaré','05346-000','São Paulo','SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Alexandre Galvão',true,'Avenida Jaguaré','383','apto 124','Jaguaré','05346-000','São Paulo','SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Robson Julio Silva',true,'Avenida Jaguaré','383','apto 124','Jaguaré','05346-000','São Paulo','SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('July Souto de Lima',true,'Avenida Jaguaré','383','apto 124','Jaguaré','05346-000','São Paulo','SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Cema Galvão',true,'Avenida Jaguaré','403','apto 53','Jaguaré','05346-000','São Paulo','SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Nininho Queiroz',true,'Avenida Jaguaré','403','apto 53','Jaguaré','05346-000','São Paulo','SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Alexandre do Val',true,'Avenida Jaguaré','383','apto 124','Jaguaré','05346-000','São Paulo','SP');