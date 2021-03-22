CREATE TABLE Produto(
codigoTipoProd NUMBER(10),
numeroprod NUMBER(10),
descricaoProd VARCHAR2(50),
CONSTRAINT pk_numeroprod PRIMARY KEY (numeroprod)
);

CREATE TABLE tipoprod(
codigoTipoProd NUMBER(10),
descricaoTipoProd VARCHAR2(50),
CONSTRAINT pk_codigo_tipo_prod PRIMARY KEY (codigoTipoProd)
);

CREATE TABLE venda(
numeroNF NUMBER(10),
dataVenda DATE,
codEmp NUMBER(10),
CONSTRAINT pk_numero_nf PRIMARY KEY (numeroNF)
);

CREATE TABLE empregados (
codemp NUMBER(10),
nomeemp VARCHAR2(50),
coddept NUMBER(5),
salario NUMBER(10,2),
data_admissao DATE,
CONSTRAINT pk_cod_emp PRIMARY KEY (codemp)
);

CREATE TABLE departamentos (
coddept NUMBER(10),
nomeDepartamento VARCHAR2(50),
CONSTRAINT pk_cod_dept PRIMARY KEY (coddept)
);

ALTER TABLE produto 
ADD CONSTRAINT fk_codigo_tipo_prod FOREIGN KEY (codigotipoprod) REFERENCES TipoProd(codigotipoprod);

ALTER TABLE venda
ADD CONSTRAINT  fk_cod_emp FOREIGN KEY (codemp) REFERENCES empregados(codemp);

ALTER TABLE EMPREGADOS RENAME COLUMN
CODDEP TO CODDEP;

ALTER TABLE empregados
ADD CONSTRAINT fk_cod_dep FOREIGN KEY (coddept) REFERENCES departamentos (coddept);

CREATE TABLE itemVenda (
numeroNF NUMBER(10),
numeroprod NUMBER(10),
qtdeItem NUMBER(8),
precoItem NUMBER(10),
CONSTRAINT pk_nf_prod_qtde PRIMARY KEY (numeroNF, numeroprod, qtdeitem),
CONSTRAINT pf_numero_nf FOREIGN KEY (numeroNF) REFERENCES venda (numeroNF),
CONSTRAINT pf_numero_produto FOREIGN KEY(numeroprod) REFERENCES produto(numeroprod)
);

INSERT INTO departamentos
(coddept, nomedepartamento)
VALUES
(1,"Vendas Interna");

INSERT INTO departamentos
(coddept, nomedepartamento)
VALUES
(2,"Televendas");

ALTER TABLE EMPREGADOS RENAME COLUMN
data_admissao TO dataAdmissao;

INSERT INTO empregados
(codemp, nomeemp, coddept, salario, dataAdmissao)
VALUES
(15, 'Rafael De Luca',1, 2500, to_date('15/08/2021','DD/MM/YYYY'));

INSERT INTO empregados
(codemp, nomeemp, coddept, salario, dataAdmissao)
VALUES
(20, 'Cladio Soiza',2, 3500, to_date('18/03/2020','DD/MM/YYYY'));

INSERT INTO venda
(numeronf, datavenda, codEmp)
VALUES 
(1345, to_date('15,02,2021','DD/MM/YYYY'),20);

INSERT INTO venda
(numeronf, datavenda, codEmp)
VALUES 
(1346, to_date('25,12,2020','DD/MM/YYYY'),15);

INSERT INTO tipoprod
(codigotipoprod,descricaotipoprod)
VALUES
(1,'camiseta');

INSERT INTO tipoprod
(codigotipoprod,descricaotipoprod)
VALUES
(2,'calça');

INSERT INTO tipoprod
(codigotipoprod,descricaotipoprod)
VALUES
(3,'chinelo');

INSERT INTO produto
(codigoTipoprod, numeroprod, descricaoprod)
VALUES
(1,1,'camiseta xadrez');

INSERT INTO produto
(codigoTipoprod, numeroprod, descricaoprod)
VALUES
(2,2,'calça caqui');

INSERT INTO produto
(codigoTipoprod, numeroprod, descricaoprod)
VALUES
(3,3,'chinelo havainas');

INSERT INTO itemVenda
(numeroNF,numeroprod,qtdeitem,precoItem)
VALUES
(1345,1,5,40.99);

INSERT INTO itemVenda
(numeroNF,numeroprod,qtdeitem,precoItem)
VALUES
(1345,2,3,88.50);

INSERT INTO itemVenda
(numeroNF,numeroprod,qtdeitem,precoItem)
VALUES
(1347,3,10,15.50);

SELECT DISTINCT * 
FROM ITEmvenda
INNER JOIN produto
ON produto.numeroprod = itemvenda.numeroprod
ORDER BY numeronf











