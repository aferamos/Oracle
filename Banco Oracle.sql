-- Table: public."Pessoa"

-- DROP TABLE public."Pessoa";


DECLARE Pessoa_exist  PLS_INTEGER;

BEGIN
select count(*) into Pessoa_exist from user_tables where table_name = 'PESSOA';
if Pessoa_exist = 1 then
    execute immediate 'drop table PESSOA';
end if;

END;

create table Pessoa (
cd_pessoa NUMBER(10)    NOT NULL,
nm_pessoa char(60),
nm_email char(60),
cd_sexo char(1),
cd_status char(1),
cd_acesso char(1),
cd_usuario character(5) null,
dt_cadastro timestamp,
dt_alteracao timestamp,
cd_telefone char(10),
cd_celular char(10)
);

ALTER TABLE Pessoa ADD (
  CONSTRAINT pk_pessoa primary key (cd_pessoa)
  );

CREATE SEQUENCE seq_pessoa START WITH 1;

CREATE OR REPLACE TRIGGER pessoa_bir 
BEFORE INSERT ON Pessoa 
FOR EACH ROW

BEGIN
  SELECT seq_pessoa.NEXTVAL
  INTO   :new.cd_pessoa
  FROM   dual;
END;


-- Table: public."PessoaFisica"

-- DROP TABLE public."PessoaFisica";


DECLARE Pessoa_Fisica_exist  PLS_INTEGER;

BEGIN
select count(*) into Pessoa_Fisica_exist from user_tables where table_name = 'Pessoa_Fisica';
if Pessoa_Fisica_exist = 1 then
    execute immediate 'drop table Pessoa_Fisica';
end if;

END;

CREATE TABLE Pessoa_Fisica (
cd_pessoa NUMBER(10)    NOT NULL,
cd_cpf char(11), 
dt_nascimento timestamp,
rg char(9)
);


ALTER TABLE Pessoa_Fisica ADD (
CONSTRAINT pk_pessoa_fisica primary key (cd_cpf),
FOREIGN KEY (cd_pessoa) REFERENCES Pessoa (cd_pessoa)

  );

CREATE SEQUENCE seq_pessoa_fisica START WITH 1;

CREATE OR REPLACE TRIGGER Pessoa_Fisica_bir 
BEFORE INSERT ON Pessoa_Fisica 
FOR EACH ROW

BEGIN
  SELECT seq_pessoa_fisica.NEXTVAL
  INTO   :new.cd_cpf
  FROM   dual;
END;


-- Table: public."PessoaJuridica"

-- DROP TABLE public."PessoaJuridica";
DECLARE Pessoa_Juridica_exist  PLS_INTEGER;

BEGIN
select count(*) into Pessoa_Juridica_exist from user_tables where table_name = 'Pessoa_Juridica';
if Pessoa_Juridica_exist = 1 then
    execute immediate 'drop table Pessoa_Juridica';
end if;

END;

create table Pessoa_Juridica (

cd_pessoa NUMBER(10)    NOT NULL,
cd_cnpj char(11),
razao_social character(60),
insc_estadual character(20) null
);

ALTER TABLE Pessoa_Juridica ADD (
CONSTRAINT pk_pessoa_juridica primary key (cd_cnpj),
FOREIGN KEY (cd_pessoa) REFERENCES Pessoa (cd_pessoa)

  );

CREATE SEQUENCE seq_pessoa_juridica START WITH 1;

CREATE OR REPLACE TRIGGER Pessoa_Juridica_bir 
BEFORE INSERT ON Pessoa_Juridica 
FOR EACH ROW

BEGIN
  SELECT seq_pessoa_juridica.NEXTVAL
  INTO   :new.cd_cnpj
  FROM   dual;
END;



DECLARE Beneficio_exist  PLS_INTEGER;

BEGIN
select count(*) into Beneficio_exist from user_tables where table_name = 'BENEFICIO';
if Beneficio_exist = 1 then
    execute immediate 'drop table Beneficio';
end if;
END;

create table Beneficio(

cd_beneficio NUMBER(10)    NOT NULL,

nm_beneficio char(40),

valor_beneficio numeric(10,2),

tm_beneficio char(4),
 
dt_beneficio timestamp,

cd_status char(1) 

);


ALTER TABLE Beneficio ADD (
CONSTRAINT pk_beneficio primary key (cd_beneficio)

  );

CREATE SEQUENCE seq_beneficio START WITH 1;

CREATE OR REPLACE TRIGGER Beneficio_bir 
BEFORE INSERT ON Beneficio 
FOR EACH ROW

BEGIN
  SELECT seq_beneficio.NEXTVAL
  INTO   :new.cd_beneficio
  FROM   dual;
END;

insert into Beneficio (nm_beneficio, tm_beneficio) values('Corte navalhado + tesoura', '40m');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, cd_status) values('Corte navalhado', 23,'35m','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Corte máquina', 20.12,'35m', 'now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Barba simples', 15.00,'30m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Barba modelada', 20.00,'30m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Pigmento na barba',7,'15m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Contorno(pé)', 10,'10m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Pigmentação apartir', 18, '25m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Bigode', 3,'5m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Sobrancelha',3,'5m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Luzes(reflexo)',3,'50m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Relaxamento(a partir)', 20,'20m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Correção capilar', 7,'15m','now','A');
insert into Beneficio (nm_beneficio, valor_beneficio, tm_beneficio, dt_beneficio, cd_status) values('Pé black', 7,'15m','now','A');
