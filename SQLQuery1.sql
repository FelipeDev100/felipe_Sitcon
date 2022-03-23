--Criando o database--
Create database bancoSitcon
go

--Acessando o database--
use bancoSitcon
go


--criando a tabela paciente--
create table pacientes
 (id int IDENTITY(1,1) NOT NULL Primary Key,
  nome varchar (80) Not Null,
  dataNasc date Not Null,
  CPF varchar(14) Not Null,
  status varchar (6) ,)
 Go
  -- ligando o  IDENTITY_INSERT
  SET IDENTITY_INSERT pacientes Off
  GO 

  -- inserindo dados 
 Insert Into pacientes ( id, Nome ,dataNasc , CPF , status)
Values
      (1,'Augusto Fernandes','2000-08-10',' 111.111.111-11', 'ativo'),
      (2,'Maria Silva Oliveira','1999-03-21', '222.222.222-22', 'ativo'),
      (3,'Alfonse Smikchuz','2002-10-02', '333.333.333-33', 'ativo'),
      (4,'Nagela Perreira','1997-05-16', '210.298.293-09', 'ativo'),
      (5,'Lucas freire silva', '1888-10-02', '147.852.369-02', 'ativo'),
	  (6,'João Paulo Ferreira','1995-06-26', '215.295.294-10', 'inativo'),
	  (7,'Julio Costa Martins','1980-11-23', '555.555.555-05', 'ativo'),
	  (8,'Helena Marques','2000-01-11',' 666.666.666-06', 'ativo'),
	  (9,'Zira Silva','2003-02-14', '777.777.777-07', 'ativo'),
	  (10,'João Bicalho','1993-03-12', '888.888.888-08', 'inativo'),
	  (11,'Paulina Araujo','2002-08-10','999.999.999-09', 'ativo'),
      (12,'Carolina Rosa Silva','2001-12-24', '101-101-101-01', 'ativo');	  
	 Go


 --criado a tabela  profissional--
 create table profissional
 (id int IDENTITY(1,1) NOT NULL Primary Key,
  nome varchar (80) Not Null,
  statusProfi varchar (6) Not Null,) 
  Go

    -- ligando o  IDENTITY_INSERT
  SET IDENTITY_INSERT profissional on
  GO 

    -- inserindo dados 
 Insert Into profissional( id, Nome ,statusProfi)
Values
   (1,'Orlando Nobrega', 'ativo'),
   (2,'Rafaela Tenorio', 'ativo'),
   (3,'João Paulo Nobrega', 'ativo');
   go
     

  --criando a tabela tipoSolicitação--
   create table tipoSolicitacao
  (id int IDENTITY(1,1) NOT NULL Primary Key,
   nome varchar (80) Not Null,
   statuSolic varchar (6) Not Null,)
   Go
    -- ligando o  IDENTITY_INSERT
  SET IDENTITY_INSERT tipoSolicitacao on
  GO 
     -- inserindo dados 
 Insert Into tipoSolicitacao( id, Nome ,statuSolic)
Values
        (1,'Consulta', 'ativo'),
        (2,'Exames Laboratoriais', 'ativo');
	    Go

   --criando a tabela procedimentos--
   create table procedimentos
   (id int IDENTITY(1,1) NOT NULL Primary Key,
    descricao varchar (80) Not Null,
	tipo_id int Not Null,
	status varchar (6)Not Null,)
	Go
  
     -- ligando o  IDENTITY_INSERT
  SET IDENTITY_INSERT procedimentos on
  GO 

  --Inserindo dados--
   Insert Into procedimentos ( id, descricao ,tipo_id, status)
Values
         (1,'Consulta Pediátrica ', 1, 'ativo'),
         (2,'Consulta Clínico Geral', 1, 'ativo'),
         (3,'Hemograma', 2, 'ativo'),
         (4,'Glicemia', 2, 'ativo'),
         (5,'Colesterol', 2, 'ativo'),
         (6,'Triglicerídeos', 2, 'ativo');
	    Go
  


   --criando a tabela profissionalAtende--
   create table profissionalAtende
   (id int IDENTITY(1,1) NOT NULL Primary Key,
   procedimento_id int Not Null,
   profissional_id int not Null,
   status varchar (6) Not Null,)
   Go

     -- ligando o  IDENTITY_INSERT
   SET IDENTITY_INSERT profissionalAtende on
  GO 

     --Inserindo dados--
   Insert Into profissionalAtende(id, procedimento_id, profissional_id, status)
   Values
         (1, 1, 2, 'ativo'),
		 (2, 2, 2, 'ativo'),
		 (3, 2, 3, 'ativo'),
		 (4, 1, 3, 'inativo'),
		 (5, 3, 1, 'ativo'),
		 (6, 4, 1, 'ativo'),
		 (7, 5, 1, 'ativo'),
		 (8, 6, 1, 'ativo');
	    Go

  