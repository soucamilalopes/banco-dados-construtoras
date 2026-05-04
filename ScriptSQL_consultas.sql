--CONSULTA PARA CONFERÊNCIA DAS TABELAS
SELECT * FROM TELEFONES;
SELECT * FROM CONSTRUTORAS;
SELECT * FROM OBRAS;
SELECT * FROM EQUIPAMENTOS;
SELECT * FROM CATEGORIAS;
SELECT * FROM TRABALHADORES;
SELECT * FROM ALOCACOES;

--CONSULTA 1: Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente

SELECT * FROM CONSTRUTORAS;
--Cod construtora ALFA = 10

SELECT TAB.nome, TAB.salario,CON.nome as Nome_Construtora
FROM TRABALHADORES TAB JOIN OBRAS OB
ON TAB.cod_obra = OB.cod_obra 
JOIN CONSTRUTORAS CON 
ON CON.cod_construtora = OB.cod_construtora 
WHERE OB.cod_construtora = 10
ORDER BY TAB.nome ASC;

--CONSULTA 2:Calcular e exibir a folha de pagamento de cada obra

SELECT cod_obra, SUM(salario) AS Total_Folha
FROM TRABALHADORES
GROUP BY (cod_obra);

--CONSULTA 3: Selecionar os equipamentos que nunca foram utilizados em nenhuma obra

SELECT nome, cod_equipamento
FROM EQUIPAMENTOS
WHERE cod_equipamento NOT IN
(
    SELECT cod_equipamento 
    FROM ALOCACOES
);

--CONSULTA 4: Selecionar o total de gastos em valores de diárias em uso de equipamentos da obra condomínio Lagos no mês março de 2022

SELECT * FROM OBRAS;
--Condomínio dos Lagos (cod = 115)

SELECT AC.cod_obra, OB.nome AS Obra, SUM(DATEDIFF(DAY, AC.data_inicio, AC.data_termino) * EQ.valor_uso_diario) AS total_gasto_diarias
FROM ALOCACOES AC 
JOIN EQUIPAMENTOS EQ ON AC.cod_equipamento = EQ.cod_equipamento
JOIN OBRAS OB ON AC.cod_obra = OB.cod_obra 
WHERE OB.cod_obra = 115 
  AND YEAR(AC.data_inicio) = '2022'
  AND MONTH(AC.data_inicio) = '03'
GROUP BY AC.cod_obra, OB.nome;


