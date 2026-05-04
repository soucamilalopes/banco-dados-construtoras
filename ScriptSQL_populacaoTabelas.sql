---TABELA CONSTRUTORAS

INSERT INTO CONSTRUTORAS (cod_construtora, nome, nome_fantasia, ramo_atuacao)
   VALUES (10, 'Construtora Alfa S.A.','Alfa Incorporações', 'Residencial');

---TABELA TELEFONES

INSERT INTO TELEFONES (telefone, cod_construtora)
    VALUES ('(51)3333-3334',10);
INSERT INTO TELEFONES (telefone, cod_construtora)
    VALUES ('(51)3333-3335',10);
INSERT INTO TELEFONES (telefone, cod_construtora)
    VALUES ('(51)3333-3336',10);

--TABELA OBRAS

INSERT INTO OBRAS (cod_obra, nome, end_logradouro, end_numero, end_complemento, cod_construtora)
    VALUES (115, 'Condomínio dos Lagos', 'Travessa dos Lagos', 100, 'Norte', 10);
INSERT INTO OBRAS (cod_obra, nome, end_logradouro, end_numero, end_complemento, cod_construtora)
    VALUES (116, 'Condomínio Araras', 'Avenida Rio Grande', 22, 'Lado A', 10);

--TABELA TRABALHADORES

INSERT INTO TRABALHADORES (cpf, nome, salario, cod_obra)
    VALUES ('10110110134', 'José Chaves', 2200, 115);
INSERT INTO TRABALHADORES (cpf, nome, salario, cod_obra)
    VALUES ('10210210291', 'Pedro Passos', 3502.18, 115);
INSERT INTO TRABALHADORES (cpf, nome, salario, cod_obra)
    VALUES ('10310310318', 'Maria Aparecida', 2800.87, 115);
INSERT INTO TRABALHADORES (cpf, nome, salario, cod_obra)
    VALUES ('10410410452', 'Carlos Dutra', 3100, 116);
INSERT INTO TRABALHADORES (cpf, nome, salario, cod_obra)
    VALUES ('10510510585', 'Mário Pires', 4323.29, 116);

--TABELA CATEGORIAS

INSERT INTO CATEGORIAS (cod_categoria, descricao)
    VALUES (1, 'Concretagem');
INSERT INTO CATEGORIAS (cod_categoria, descricao)
    VALUES (2, 'Acesso e Elevação');
INSERT INTO CATEGORIAS (cod_categoria, descricao)
    VALUES (3, 'Geradores e Compressores');
INSERT INTO CATEGORIAS (cod_categoria, descricao)
    VALUES (4, 'Andaimes');
INSERT INTO CATEGORIAS (cod_categoria, descricao)
    VALUES (5, 'Ferramenta Elétrica');

--TABELA EQUIPAMENTOS

INSERT INTO EQUIPAMENTOS (cod_equipamento, nome, valor_uso_diario, cod_categoria)
    VALUES (301, 'Betoneira', 100, 1);
INSERT INTO EQUIPAMENTOS (cod_equipamento, nome, valor_uso_diario, cod_categoria)
    VALUES (302, 'Cortadora de Piso', 10, 1);
INSERT INTO EQUIPAMENTOS (cod_equipamento, nome, valor_uso_diario, cod_categoria)
    VALUES (303, 'Mangote', 30.50, 1);
INSERT INTO EQUIPAMENTOS (cod_equipamento, nome, valor_uso_diario, cod_categoria)
    VALUES (304, 'Guincho', 250, 2);
INSERT INTO EQUIPAMENTOS (cod_equipamento, nome, valor_uso_diario, cod_categoria)
    VALUES (305, 'Gerador', 451, 3);
INSERT INTO EQUIPAMENTOS (cod_equipamento, nome, valor_uso_diario, cod_categoria)
    VALUES (306, 'Piso Metálico', 150, 4);
INSERT INTO EQUIPAMENTOS (cod_equipamento, nome, valor_uso_diario, cod_categoria)
    VALUES (307, 'Furadeira de bancada', 65, 5);
INSERT INTO EQUIPAMENTOS (cod_equipamento, nome, valor_uso_diario, cod_categoria)
    VALUES (308, 'Parafusadeira', 37, 5);
INSERT INTO EQUIPAMENTOS (cod_equipamento, nome, valor_uso_diario, cod_categoria)
    VALUES (309, 'Plaina', 25, 5);


--TABELA ALOCACOES

INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (115, 301, '2022-03-18','2022-10-24');
INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (115, 304, '2022-04-20', '2022-08-02');
INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (115, 306, '2021-07-06', '2021-07-18');
INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (115, 307, '2022-03-04', '2022-03-20');
INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (115, 309, '2021-08-04', '2021-08-10');
INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (116, 304, '2022-10-22', '2022-10-25');
INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (116, 305, '2022-03-07', '2022-03-10');
INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (116, 306, '2022-09-12', '2022-09-21');
INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (116, 307, '2022-08-16', '2022-08-24');
INSERT INTO ALOCACOES (cod_obra, cod_equipamento, data_inicio, data_termino)
    VALUES (116, 308, '2022-10-23', '2022-10-25');

