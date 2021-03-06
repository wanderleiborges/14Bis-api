CREATE USER '14bis'@'localhost' IDENTIFIED BY '12345';
CREATE DATABASE Time14Bis;
GRANT ALL PRIVILEGES ON Time14Bis.* TO '14bis'@'localhost';
FLUSH PRIVILEGES;

USE Time14Bis;


-------------------------------------------------------------------------


CREATE TABLE AREA_ATUACAO(
	ID_AREA int NOT NULL,
	NOME_AREA varchar(50) NOT NULL,
	ID_PERFIL varchar(5) NOT NULL,
 CONSTRAINT PK_AREA_ATUACAO PRIMARY KEY (ID_PERFIL,ID_AREA)
);

CREATE TABLE CICLO(
	ID_CICLO int NOT NULL,
	DESCR_CICLO varchar(200) NOT NULL,
	CICLO_INICIO date NOT NULL,
	CICLO_FIM date NOT NULL,
 CONSTRAINT PK_CICLO PRIMARY KEY (ID_CICLO)
);

CREATE TABLE CONFIG(
	ID_CICLO_ATUAL int NOT NULL,
	QUEM_SOMOS varchar(4000) NULL,
	TERMOS_DE_USO varchar(4000) NULL,
 CONSTRAINT PK_CONFIG PRIMARY KEY (ID_CICLO_ATUAL)
);

CREATE TABLE CONSULTOR(
	ID_CONSULTOR int NOT NULL,
	NOME_CONSULTOR varchar(50) NOT NULL,
	CPF varchar(14) NOT NULL,
	DT_NASCIMENTO date NOT NULL,
	SEXO char(1) NOT NULL,
	CEP char(9) NOT NULL,
	ENDERECO varchar(50) NOT NULL,
	UF char(2) NOT NULL,
	CIDADE varchar(60) NOT NULL,
	FONE_FIXO varchar(15) NULL,
	FONE_CELULAR varchar(15) NULL,
	LINKEDIN varchar(250) NULL,
	SKYPE varchar(250) NULL,
	GOOGLE_PLUS varchar(250) NULL,
	FACEBOOK varchar(250) NULL,
	ESCOLARIDADE varchar(30) NOT NULL,
	ID_AREA_ATUACAO int NOT NULL,
	CURRICULO_RESUMIDO varchar(1000) NULL,
	SN_RECEBER_NOVIDADES char(1) NOT NULL,
	SN_RECEBER_NOTIF_SISTEMA char(1) NOT NULL,
	SN_ATIVO char(1) NOT NULL,
	CAMINHO_FOTO varchar(250) NULL,
	INSTAGRAM varchar(250) NULL,
	MEDIUM varchar(250) NULL,
	TWITTER varchar(250) NULL,
	HABILIDADES varchar(300) NOT NULL,
 CONSTRAINT PK_CONSULTOR PRIMARY KEY (ID_CONSULTOR)
);

CREATE TABLE EMPREENDEDOR(
	ID_EMPREENDEDOR int NOT NULL,
	NOME_EMPREENDEDOR varchar(50) NOT NULL,
	PROGRAMA varchar(1000) NULL,
	CPF varchar(14) NOT NULL,
	DT_NASCIMENTO date NOT NULL,
	SEXO char(1) NOT NULL,
	CEP char(9) NOT NULL,
	ENDERECO varchar(50) NOT NULL,
	UF char(2) NOT NULL,
	CIDADE varchar(60) NOT NULL,
	FONE_FIXO varchar(15) NULL,
	FONE_CELULAR varchar(15) NULL,
	LINKEDIN varchar(250) NULL,
	SKYPE varchar(250) NULL,
	GOOGLE_PLUS varchar(250) NULL,
	FACEBOOK varchar(250) NULL,
	ESCOLARIDADE varchar(30) NOT NULL,
	ID_AREA_ATUACAO int NOT NULL,
	CURRICULO_RESUMIDO varchar(1000) NULL,
	SN_RECEBER_NOVIDADES char(1) NOT NULL,
	SN_RECEBER_NOTIF_SISTEMA char(1) NOT NULL,
	SN_ATIVO char(1) NOT NULL,
	CAMINHO_FOTO varchar(250) NULL,
	INSTAGRAM varchar(250) NULL,
	MEDIUM varchar(250) NULL,
	TWITTER varchar(250) NULL,
	CARGO_FUNCAO varchar(60) NULL,
	ID_POSICAO int NULL,
 CONSTRAINT PK_EMPREENDEDOR PRIMARY KEY (ID_EMPREENDEDOR)
);

CREATE TABLE FATURAMENTO_ANUAL(
	ID_FATURAMENTO_ANUAL int NOT NULL,
	DESCR_FATURAMENTO_ANUAL varchar(50) NOT NULL,
	PERCENTUAL DECIMAL(12,7),
 CONSTRAINT PK_FATURAMENTO_ANUAL PRIMARY KEY (ID_FATURAMENTO_ANUAL)
);

CREATE TABLE INVESTIDOR(
	ID_INVESTIDOR int NOT NULL,
	NOME_INVESTIDOR varchar(50) NOT NULL,
	CPF varchar(14) NOT NULL,
	DT_NASCIMENTO date NOT NULL,
	SEXO char(1) NOT NULL,
	CEP char(9) NOT NULL,
	ENDERECO varchar(50) NOT NULL,
	UF char(2) NOT NULL,
	CIDADE varchar(60) NOT NULL,
	FONE_FIXO varchar(15) NULL,
	FONE_CELULAR varchar(15) NULL,
	LINKEDIN varchar(250) NULL,
	SKYPE varchar(250) NULL,
	GOOGLE_PLUS varchar(250) NULL,
	FACEBOOK varchar(250) NULL,
	ESCOLARIDADE varchar(30) NOT NULL,
	ID_AREA_ATUACAO int NOT NULL,
	CURRICULO_RESUMIDO varchar(1000) NULL,
	SN_RECEBER_NOVIDADES char(1) NOT NULL,
	SN_RECEBER_NOTIF_SISTEMA char(1) NOT NULL,
	SN_ATIVO char(1) NOT NULL,
	CAMINHO_FOTO varchar(250) NULL,
	INSTAGRAM varchar(250) NULL,
	MEDIUM varchar(250) NULL,
	TWITTER varchar(250) NULL,
 CONSTRAINT PK_INVESTIDOR PRIMARY KEY (ID_INVESTIDOR)
);

CREATE TABLE MENTOR(
	ID_MENTOR int NOT NULL,
	NOME_MENTOR varchar(50) NOT NULL,
	CPF varchar(14) NOT NULL,
	DT_NASCIMENTO date NOT NULL,
	SEXO char(1) NOT NULL,
	CEP char(9) NOT NULL,
	ENDERECO varchar(50) NOT NULL,
	UF char(2) NOT NULL,
	CIDADE varchar(60) NOT NULL,
	FONE_FIXO varchar(15) NULL,
	FONE_CELULAR varchar(15) NULL,
	LINKEDIN varchar(250) NULL,
	SKYPE varchar(250) NULL,
	GOOGLE_PLUS varchar(250) NULL,
	FACEBOOK varchar(250) NULL,
	ESCOLARIDADE varchar(30) NOT NULL,
	ID_AREA_ATUACAO int NOT NULL,
	CURRICULO_RESUMIDO varchar(1000) NULL,
	SN_RECEBER_NOVIDADES char(1) NOT NULL,
	SN_RECEBER_NOTIF_SISTEMA char(1) NOT NULL,
	SN_ATIVO char(1) NOT NULL,
	CAMINHO_FOTO varchar(250) NULL,
	INSTAGRAM varchar(250) NULL,
	MEDIUM varchar(250) NULL,
	TWITTER varchar(250) NULL,
	HABILIDADES varchar(300) NOT NULL,
 CONSTRAINT PK_MENTOR PRIMARY KEY (ID_MENTOR)
);

CREATE TABLE MODELO_NEGOCIO(
	ID_MODELO_NEGOCIO int NOT NULL,
	DESCR_MODELO_NEGOCIO varchar(50) NOT NULL,
 	PERCENTUAL DECIMAL(12,7),
CONSTRAINT PK_MODELO_NEGOCIO PRIMARY KEY (ID_MODELO_NEGOCIO)
);

CREATE TABLE MOMENTO(
	ID_MOMENTO int NOT NULL,
	DESCR_MOMENTO varchar(50) NOT NULL,
  	PERCENTUAL DECIMAL(12,7),
CONSTRAINT PK_MOMENTO PRIMARY KEY (ID_MOMENTO)
);

CREATE TABLE PARCEIRO(
	ID_PARCEIRO int NOT NULL,
	NOME_PARCEIRO varchar(100) NOT NULL,
	CAMINHO_LOGO varchar(250) NULL,
 CONSTRAINT PK_PARCEIRO PRIMARY KEY (ID_PARCEIRO)
);

CREATE TABLE PERFIL(
	ID_PERFIL varchar(5) NOT NULL,
	NOME_MASC varchar(50) NOT NULL,
	NOME_FEM varchar(50) NOT NULL,
 CONSTRAINT PK_PERFIL PRIMARY KEY (ID_PERFIL)
);

CREATE TABLE POSICAO(
	ID_POSICAO int NOT NULL,
	DESCR_POSICAO varchar(50) NOT NULL,
 CONSTRAINT PK_POSICAO PRIMARY KEY (ID_POSICAO)
);

CREATE TABLE PUBLICO_ALVO(
	ID_PUBLICO_ALVO int NOT NULL,
	DESCR_PUBLICO_ALVO varchar(50) NOT NULL,
 CONSTRAINT PK_PUBLICO_ALVO PRIMARY KEY (ID_PUBLICO_ALVO)
);

CREATE TABLE SEGUIMENTO(
	ID_SEGUIMENTO int NOT NULL,
	DESCR_SEGUIMENTO varchar(50) NOT NULL,
  	PERCENTUAL DECIMAL(12,7),
 CONSTRAINT PK_SEGUIMENTO PRIMARY KEY (ID_SEGUIMENTO)
);

CREATE TABLE STARTUP(
	ID_STARTUP int NOT NULL,
	NOME_FANTASIA varchar(100) NULL,
	RAZAO_SOCIAL varchar(100) NULL,
	DT_FUNDACAO date NULL,
	DESCR_CURTA varchar(300) NULL,
	CAMINHO_FOTO varchar(250) NULL,
	DESCR_LONGA varchar(2000) NULL,
	TAGS varchar(200) NULL,
	ID_MODELO_NEGOCIO int NULL,
	ID_PUBLICO_ALVO int NULL,
	ID_MOMENTO int NULL,
	ID_SEGUIMENTO_PRINC int NULL,
	ID_SEGUIMENTO_SECUN int NULL,
	ID_TAMANHO_TIME int NULL,
	ID_FATURAMENTO_ANUAL int NULL,
	WEBSITE varchar(250) NULL,
	LINKEDIN varchar(250) NULL,
	FACEBOOK varchar(250) NULL,
	APPSTORE varchar(250) NULL,
	GOOGLEPLAY varchar(250) NULL,
	YOUTUBE varchar(250) NULL,
	INSTAGRAM varchar(250) NULL,
	CEP char(9) NULL,
	ENDERECO varchar(50) NULL,
	UF char(2) NULL,
	CIDADE varchar(60) NULL,
 CONSTRAINT PK_STARTUP PRIMARY KEY (ID_STARTUP)
);

CREATE TABLE STARTUP_EMPREENDEDOR(
	ID_STARTUP int NOT NULL,
	ID_EMPREENDEDOR int NOT NULL,
 CONSTRAINT PK_STARTUP_EMPREENDEDOR PRIMARY KEY (ID_STARTUP, ID_EMPREENDEDOR)
);

CREATE TABLE STARTUP_IDADE(
	IDADE DECIMAL(10,5) NOT NULL,
	PERCENTUAL DECIMAL(12,7),
 CONSTRAINT PK_STARTUP_IDAD PRIMARY KEY (IDADE)
);

CREATE TABLE TAMANHO_TIME(
	ID_TAMANHO_TIME int NOT NULL,
	DESCR_TAMANHO_TIME varchar(50) NOT NULL,
	PERCENTUAL DECIMAL(12,7),
 CONSTRAINT PK_TAMANHO_TIME PRIMARY KEY (ID_TAMANHO_TIME)
);

CREATE TABLE UF (
  SIGLA CHAR(2) NOT NULL,
  NOME VARCHAR(30),
  CONSTRAINT PK_UD PRIMARY KEY (SIGLA)
);

CREATE TABLE USUARIO(
	ID_USUARIO int NOT NULL,
	NOME_COMPLETO varchar(50) NULL,
	FONE_LOGIN varchar(15) NULL,
	EMAIL_LOGIN varchar(200) NOT NULL,
	ID_PERFIL varchar(5) NULL,
	SENHA varchar(50) NOT NULL,
	SN_ATIVO char(1) NOT NULL,
 CONSTRAINT PK_USUARIO PRIMARY KEY (ID_USUARIO)
);

-------------------------------------------------------------------------

INSERT INTO PERFIL VALUES ('ADMIN', 'Administrador', 'Administradora');
INSERT INTO PERFIL VALUES ('CONSU', 'Consultor',     'Consultora');
INSERT INTO PERFIL VALUES ('EMPRE', 'Empreendedor',  'Empreendedora');
INSERT INTO PERFIL VALUES ('INVES', 'Investidor',    'Investidora');
INSERT INTO PERFIL VALUES ('MENTO', 'Mentor',        'Mentora');
  
INSERT INTO USUARIO VALUES (1, 'Giovanna Lange', '', 'lange.gioliveira@gmail.com', 'ADMIN', '12345', 'S');
INSERT INTO USUARIO VALUES (2, 'Jossana Paulo', '', 'jossana.paulo@gmail.com', 'ADMIN', '12345', 'S');
INSERT INTO USUARIO VALUES (3, 'Marco Maia', '', 'marm51@gmail.com', 'ADMIN', '12345', 'S');
INSERT INTO USUARIO VALUES (4, 'Matheus do E', '', 'matheusdoe.dev@gmail.com', 'ADMIN', '12345', 'S');
INSERT INTO USUARIO VALUES (5, 'Wanderlei Borges', '', 'wanderleiborges@gmail.com', 'ADMIN', '12345', 'S');

INSERT INTO CICLO VALUES (1, 'Ciclo 2020', '20200101', '20201231');

INSERT INTO CONFIG VALUES (1, 'A 14 Bis é uma Startup que alavanca outras Startups, unindo empreendedores, mentores e investidores', 'Termos de uso');

INSERT INTO AREA_ATUACAO VALUES (1, 'Educação', 'EMPRE');
INSERT INTO AREA_ATUACAO VALUES (2, 'Saúde e Bem-estar', 'EMPRE');
INSERT INTO AREA_ATUACAO VALUES (3, 'Internet', 'EMPRE');
INSERT INTO AREA_ATUACAO VALUES (4, 'E-commerce', 'EMPRE');
INSERT INTO AREA_ATUACAO VALUES (5, 'Agronegócio', 'EMPRE');
INSERT INTO AREA_ATUACAO VALUES (6, 'Comunicação e Mídia', 'EMPRE');
INSERT INTO AREA_ATUACAO VALUES (7, 'Varejo / Atacado', 'EMPRE');
INSERT INTO AREA_ATUACAO VALUES (8, 'TIC e Telecom', 'EMPRE');
INSERT INTO AREA_ATUACAO VALUES (1, 'Administração e negócios', 'MENTO');
INSERT INTO AREA_ATUACAO VALUES (2, 'Artes e design', 'MENTO');
INSERT INTO AREA_ATUACAO VALUES (3, 'Ciências Exatas e informática', 'MENTO');
INSERT INTO AREA_ATUACAO VALUES (4, 'Ciências humanas e sociais', 'MENTO');
INSERT INTO AREA_ATUACAO VALUES (5, 'Comunicação e informação', 'MENTO');
INSERT INTO AREA_ATUACAO VALUES (6, 'Engenharia', 'MENTO');
INSERT INTO AREA_ATUACAO VALUES (7, 'Meio ambiente e Ciências agrárias', 'MENTO');
INSERT INTO AREA_ATUACAO VALUES (8, 'Saúde', 'MENTO');
INSERT INTO AREA_ATUACAO VALUES (1, 'Administração e negócios', 'CONSU');
INSERT INTO AREA_ATUACAO VALUES (2, 'Artes e design', 'CONSU');
INSERT INTO AREA_ATUACAO VALUES (3, 'Ciências Exatas e informática', 'CONSU');
INSERT INTO AREA_ATUACAO VALUES (4, 'Ciências humanas e sociais', 'CONSU');
INSERT INTO AREA_ATUACAO VALUES (5, 'Comunicação e informação', 'CONSU');
INSERT INTO AREA_ATUACAO VALUES (6, 'Engenharia', 'CONSU');
INSERT INTO AREA_ATUACAO VALUES (7, 'Meio ambiente e Ciências agrárias', 'CONSU');
INSERT INTO AREA_ATUACAO VALUES (8, 'Saúde', 'CONSU');
INSERT INTO AREA_ATUACAO VALUES (1, 'Administração e negócios', 'INVES');
INSERT INTO AREA_ATUACAO VALUES (2, 'Artes e design', 'INVES');
INSERT INTO AREA_ATUACAO VALUES (3, 'Ciências Exatas e informática', 'INVES');
INSERT INTO AREA_ATUACAO VALUES (4, 'Ciências humanas e sociais', 'INVES');
INSERT INTO AREA_ATUACAO VALUES (5, 'Comunicação e informação', 'INVES');
INSERT INTO AREA_ATUACAO VALUES (6, 'Engenharia', 'INVES');
INSERT INTO AREA_ATUACAO VALUES (7, 'Meio ambiente e Ciências agrárias', 'INVES');
INSERT INTO AREA_ATUACAO VALUES (8, 'Saúde', 'INVES');

INSERT INTO POSICAO VALUES (1, 'Presidente');
INSERT INTO POSICAO VALUES (2, 'Vice-Presidente');
INSERT INTO POSICAO VALUES (3, 'Diretor(a)/C-Level');
INSERT INTO POSICAO VALUES (4, 'Gerente');
INSERT INTO POSICAO VALUES (5, 'Coordenador(a)');
INSERT INTO POSICAO VALUES (6, 'Supervisor(1)');
INSERT INTO POSICAO VALUES (7, 'Técnico(a)');
INSERT INTO POSICAO VALUES (8, 'Consultor(a)/Especialista');
INSERT INTO POSICAO VALUES (9, 'Analista');
INSERT INTO POSICAO VALUES (10, 'Assitente / Auxiliar');
INSERT INTO POSICAO VALUES (11, 'Estagiário(a)');
INSERT INTO POSICAO VALUES (12, 'Outro(a)');

INSERT INTO MODELO_NEGOCIO VALUES (1, 'E-Commerce', 1);
INSERT INTO MODELO_NEGOCIO VALUES (2, 'Hardware', 1);
INSERT INTO MODELO_NEGOCIO VALUES (3, 'Marketplace', 1);
INSERT INTO MODELO_NEGOCIO VALUES (4, 'Licenciamento', 1);
INSERT INTO MODELO_NEGOCIO VALUES (5, 'Venda de dados', 1);
INSERT INTO MODELO_NEGOCIO VALUES (6, 'API', 1);
INSERT INTO MODELO_NEGOCIO VALUES (7, 'Outros', 1);
INSERT INTO MODELO_NEGOCIO VALUES (8, 'Consumer', 1);
INSERT INTO MODELO_NEGOCIO VALUES (9, 'SaaS', 1);

INSERT INTO PUBLICO_ALVO VALUES (1, 'B2S');
INSERT INTO PUBLICO_ALVO VALUES (2, 'B2B2C');
INSERT INTO PUBLICO_ALVO VALUES (3, 'B2B');
INSERT INTO PUBLICO_ALVO VALUES (4, 'B2G');
INSERT INTO PUBLICO_ALVO VALUES (5, 'P2P');
INSERT INTO PUBLICO_ALVO VALUES (6, 'B2C');

INSERT INTO MOMENTO VALUES (1, 'Ideação', 0.25);
INSERT INTO MOMENTO VALUES (2, 'Operação', 0.50);
INSERT INTO MOMENTO VALUES (3, 'Tração', 0.75);
INSERT INTO MOMENTO VALUES (4, 'Scaleup', 1.0);
INSERT INTO MOMENTO VALUES (5, 'Fora de operação', 0);

INSERT INTO SEGUIMENTO VALUES (1, 'Segurança e Defesa', 1);
INSERT INTO SEGUIMENTO VALUES (2, 'Recursos Humanos', 1);
INSERT INTO SEGUIMENTO VALUES (3, 'Hardware', 1);
INSERT INTO SEGUIMENTO VALUES (4, 'Logística e Mobilidade Urbana', 1);
INSERT INTO SEGUIMENTO VALUES (5, 'Seguros', 1);
INSERT INTO SEGUIMENTO VALUES (6, 'Energia', 1);
INSERT INTO SEGUIMENTO VALUES (7, 'Cloud Computing', 1);
INSERT INTO SEGUIMENTO VALUES (8, 'Produtos de Consumo', 1);
INSERT INTO SEGUIMENTO VALUES (9, 'Meio Ambiente', 1);
INSERT INTO SEGUIMENTO VALUES (10, 'Automobilismo', 1);
INSERT INTO SEGUIMENTO VALUES (11, 'Mobile', 1);
INSERT INTO SEGUIMENTO VALUES (12, 'Direito', 1);
INSERT INTO SEGUIMENTO VALUES (13, 'Pets', 1);
INSERT INTO SEGUIMENTO VALUES (14, 'Advertising', 1);
INSERT INTO SEGUIMENTO VALUES (15, 'Eventos e Turismo', 1);
INSERT INTO SEGUIMENTO VALUES (16, 'Nanotecnologia', 1);
INSERT INTO SEGUIMENTO VALUES (17, 'Construção Civil', 1);
INSERT INTO SEGUIMENTO VALUES (18, 'Indústria', 1);
INSERT INTO SEGUIMENTO VALUES (19, 'Imobiliário', 1);
INSERT INTO SEGUIMENTO VALUES (20, 'Finanças', 1);
INSERT INTO SEGUIMENTO VALUES (21, 'Educação', 1);
INSERT INTO SEGUIMENTO VALUES (22, 'Infantil', 1);
INSERT INTO SEGUIMENTO VALUES (23, 'Biotecnologia', 1);
INSERT INTO SEGUIMENTO VALUES (24, 'Esportes', 1);
INSERT INTO SEGUIMENTO VALUES (25, 'TIC e Telecom', 1);
INSERT INTO SEGUIMENTO VALUES (26, 'Transportes', 1);
INSERT INTO SEGUIMENTO VALUES (27, 'Agronegócio', 1);
INSERT INTO SEGUIMENTO VALUES (28, 'Vendas e Marketing', 1);
INSERT INTO SEGUIMENTO VALUES (29, 'E-Commerce', 1);
INSERT INTO SEGUIMENTO VALUES (30, 'Desenvolvimento de Software', 1);
INSERT INTO SEGUIMENTO VALUES (31, 'Recrutamento', 1);
INSERT INTO SEGUIMENTO VALUES (32, 'Gestão', 1);
INSERT INTO SEGUIMENTO VALUES (33, 'Big Data', 1);
INSERT INTO SEGUIMENTO VALUES (34, 'Vídeo', 1);
INSERT INTO SEGUIMENTO VALUES (35, 'Casa e Família', 1);
INSERT INTO SEGUIMENTO VALUES (36, 'Games', 1);
INSERT INTO SEGUIMENTO VALUES (37, 'Moda e Beleza', 1);
INSERT INTO SEGUIMENTO VALUES (38, 'CRM', 1);
INSERT INTO SEGUIMENTO VALUES (39, 'Outros', 1);
INSERT INTO SEGUIMENTO VALUES (40, 'Internet', 1);
INSERT INTO SEGUIMENTO VALUES (41, 'Saúde e Bem-estar', 1);
INSERT INTO SEGUIMENTO VALUES (42, 'Varejo / Atacado', 1);
INSERT INTO SEGUIMENTO VALUES (43, 'Serviços Profissionais', 1);
INSERT INTO SEGUIMENTO VALUES (44, 'Comunicação e Mídia', 1);
INSERT INTO SEGUIMENTO VALUES (45, 'Entretenimento', 1);

INSERT INTO TAMANHO_TIME VALUES (1, '1-5', 0.1);
INSERT INTO TAMANHO_TIME VALUES (2, '6-10', 0.2);
INSERT INTO TAMANHO_TIME VALUES (3, '11-20', .3);
INSERT INTO TAMANHO_TIME VALUES (4, '21-50', 0.4);
INSERT INTO TAMANHO_TIME VALUES (5, '51-100', 0.5);
INSERT INTO TAMANHO_TIME VALUES (6, '101-200', 0.6);
INSERT INTO TAMANHO_TIME VALUES (7, '201-500', 0.7);
INSERT INTO TAMANHO_TIME VALUES (8, '501-1000', 0.8);
INSERT INTO TAMANHO_TIME VALUES (9, '1001-5000', 0.9);
INSERT INTO TAMANHO_TIME VALUES (10, '5001+', 1);

INSERT INTO FATURAMENTO_ANUAL VALUES (1, '0', 0);
INSERT INTO FATURAMENTO_ANUAL VALUES (2, '1 a 50 mil', 0.1428571);
INSERT INTO FATURAMENTO_ANUAL VALUES (3, '50 mil a 250 mil', 0.2857142);
INSERT INTO FATURAMENTO_ANUAL VALUES (4, '250 mil a 500 mil', 0.4285713);
INSERT INTO FATURAMENTO_ANUAL VALUES (5, '500 mil a 1 milhão', 0.5714284);
INSERT INTO FATURAMENTO_ANUAL VALUES (6, '1 milhão a 2,5 milhões', 0.7142855);
INSERT INTO FATURAMENTO_ANUAL VALUES (7, '2,5 milhões a 5 milhões', 0.8571426);
INSERT INTO FATURAMENTO_ANUAL VALUES (8, '+5 milhões', 1);

INSERT INTO STARTUP_IDADE VALUES (0, 1.0);
INSERT INTO STARTUP_IDADE VALUES (1, 0.9);
INSERT INTO STARTUP_IDADE VALUES (2, 0.8);
INSERT INTO STARTUP_IDADE VALUES (3, 0.7);
INSERT INTO STARTUP_IDADE VALUES (4, 0.6);
INSERT INTO STARTUP_IDADE VALUES (5, 0.5);
INSERT INTO STARTUP_IDADE VALUES (6, 0.4);
INSERT INTO STARTUP_IDADE VALUES (7, 0.3);
INSERT INTO STARTUP_IDADE VALUES (8, 0.2);
INSERT INTO STARTUP_IDADE VALUES (9, 0.1);

INSERT INTO UF VALUES ('AC', 'Acre');
INSERT INTO UF VALUES ('AL', 'Alagoas');
INSERT INTO UF VALUES ('AP', 'Amapá');
INSERT INTO UF VALUES ('AM', 'Amazonas');
INSERT INTO UF VALUES ('BA', 'Bahia');
INSERT INTO UF VALUES ('CE', 'Ceará');
INSERT INTO UF VALUES ('DF', 'Distrito Federal');
INSERT INTO UF VALUES ('ES', 'Espírito Santo');
INSERT INTO UF VALUES ('GO', 'Goiás');
INSERT INTO UF VALUES ('MA', 'Maranhão');
INSERT INTO UF VALUES ('MT', 'Mato Grosso');
INSERT INTO UF VALUES ('MS', 'Mato Grosso do Sul');
INSERT INTO UF VALUES ('MG', 'Minas Gerais');
INSERT INTO UF VALUES ('PA', 'Pará');
INSERT INTO UF VALUES ('PB', 'Paraíba');
INSERT INTO UF VALUES ('PR', 'Paraná');
INSERT INTO UF VALUES ('PE', 'Pernambuco');
INSERT INTO UF VALUES ('PI', 'Piauí');
INSERT INTO UF VALUES ('RJ', 'Rio de Janeiro');
INSERT INTO UF VALUES ('RN', 'Rio Grande do Norte');
INSERT INTO UF VALUES ('RS', 'Rio Grande do Sul');
INSERT INTO UF VALUES ('RO', 'Rondônia');
INSERT INTO UF VALUES ('RR', 'Roraima');
INSERT INTO UF VALUES ('SC', 'Santa Catarina');
INSERT INTO UF VALUES ('SP', 'São Paulo');
INSERT INTO UF VALUES ('SE', 'Sergipe');
INSERT INTO UF VALUES ('TO', 'Tocantins');

CREATE FUNCTION STARTUP_LEVEL(PID_STARTUP INT) RETURNS DECIMAL(5, 2)
RETURN ROUND((
  SELECT (F.PERCENTUAL * 3 + I.PERCENTUAL * 1 + T.PERCENTUAL * 2 + N.PERCENTUAL * 1 + M.PERCENTUAL * 2 + E.PERCENTUAL * 1) * 0.5
  FROM STARTUP S
  JOIN FATURAMENTO_ANUAL F ON F.ID_FATURAMENTO_ANUAL = S.ID_FATURAMENTO_ANUAL
  JOIN STARTUP_IDADE I ON I.IDADE = FLOOR(DATEDIFF(CURRENT_DATE(), S.DT_FUNDACAO)/365)
  JOIN TAMANHO_TIME T ON T.ID_TAMANHO_TIME = S.ID_TAMANHO_TIME
  JOIN MODELO_NEGOCIO N ON N.ID_MODELO_NEGOCIO = S.ID_MODELO_NEGOCIO
  JOIN MOMENTO M ON M.ID_MOMENTO = S.ID_MOMENTO
  JOIN SEGUIMENTO E ON E.ID_SEGUIMENTO = S.ID_SEGUIMENTO_PRINC
  WHERE S.ID_STARTUP = PID_STARTUP
), 2);

--SELECT STARTUP_LEVEL(1) AS STARTUP_LEVEL;
