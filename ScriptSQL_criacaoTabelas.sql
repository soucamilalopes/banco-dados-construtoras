---Tabela Construtoras

CREATE TABLE CONSTRUTORAS
(
    cod_construtora NUMERIC(3) NOT NULL,
    nome VARCHAR(150) NOT NULL,
    nome_fantasia VARCHAR(150),
    ramo_atuacao VARCHAR(12) NOT NULL CHECK (ramo_atuacao IN ('Residencial', 'Comercial')),

    CONSTRAINT PK_CONSTRUTORA PRIMARY KEY(cod_construtora)
);

-----Tabela Telefones

CREATE TABLE TELEFONES
(
    telefone VARCHAR(20) NOT NULL,
    cod_construtora NUMERIC(3) NOT NULL,
        
    CONSTRAINT PK_TELEFONES PRIMARY KEY(telefone)

);

-----Tabela Obras

CREATE TABLE OBRAS
(
    cod_obra NUMERIC(3) NOT NULL,
    nome VARCHAR(150) NOT NULL,
    end_logradouro VARCHAR(150) NOT NULL,
    end_numero VARCHAR(10) NOT NULL,
    end_complemento VARCHAR(150),
    cod_construtora NUMERIC(3) NOT NULL,

    CONSTRAINT PK_OBRAS PRIMARY KEY(cod_obra)
    
);

---Tabela Trabalhadores

CREATE TABLE TRABALHADORES
(
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(150) NOT NULL,
    salario NUMERIC(6,2) NOT NULL,
    cod_obra NUMERIC(3) NOT NULL,

    CONSTRAINT PK_TRABALHADORES PRIMARY KEY(cpf)
    
);

---Tabela Equipamentos

CREATE TABLE EQUIPAMENTOS
(
    cod_equipamento NUMERIC(3) NOT NULL,
    nome VARCHAR(150) NOT NULL,
    valor_uso_diario NUMERIC(6,2) NOT NULL,
    cod_categoria NUMERIC(3) NOT NULL,

    CONSTRAINT PK_EQUIPAMENTOS PRIMARY KEY(cod_equipamento)

);

---Tabela Categorias

CREATE TABLE CATEGORIAS
(
    cod_categoria NUMERIC(3) NOT NULL,
    descricao VARCHAR(200) NOT  NULL,

    CONSTRAINT PK_CATEGORIAS PRIMARY KEY(cod_categoria)

);

---Tabela Aloações

CREATE TABLE ALOCACOES
(
    cod_obra NUMERIC(3) NOT NULL,
    cod_equipamento NUMERIC(3) NOT NULL,
    data_inicio DATE NOT NULL,
    data_termino DATE NOT NULL,

    CONSTRAINT PK_ALOCACOES PRIMARY KEY(data_inicio, cod_equipamento, cod_obra)
    
);

---Relacionamento Telefones e Construtoras

ALTER TABLE TELEFONES ADD
    CONSTRAINT FK_TELEFONES_CONSTRUTORAS
    FOREIGN KEY (cod_construtora)
    REFERENCES CONSTRUTORAS (cod_construtora);

---Relacionamento Obras e Construtoras

ALTER TABLE OBRAS ADD
    CONSTRAINT FK_OBRAS_CONSTRUTORAS
    FOREIGN KEY (cod_construtora)
    REFERENCES CONSTRUTORAS (cod_construtora);

---Relacionamento Trabalhadores e Obras

ALTER TABLE TRABALHADORES ADD
    CONSTRAINT FK_TRABALHADORE_OBRAS
    FOREIGN KEY (cod_obra)
    REFERENCES OBRAS (cod_obra);

---Relacionamento Equipamentos e Categorias

ALTER TABLE EQUIPAMENTOS ADD
    CONSTRAINT FK_EQUIPAMENTOS_CATEGORIAS
    FOREIGN KEY (cod_categoria)
    REFERENCES CATEGORIAS (cod_categoria);

---Relacionamento Obras, Equipamentos e Alocações
ALTER TABLE ALOCACOES ADD 
    CONSTRAINT FK_ALOCACOES_OBRAS
    FOREIGN KEY (cod_obra)
    REFERENCES OBRAS (cod_obra),
    
    CONSTRAINT FK_ALOCACOES_EQUIPAMENTOS
    FOREIGN KEY (cod_equipamento)
    REFERENCES EQUIPAMENTOS (cod_equipamento);