-- Esta consulta retorna todos os veiculos da tabela
Select * from veiculo

/*Portanto, essa consulta específica busca o valor da coluna ano_id na tabela veiculo para as linhas em que LINHA_ID é igual a 'TIUMA' e NUMERO_ID é igual a '2487'.*/
SELECT ano_id FROM veiculo WHERE LINHA_ID = 'TIUMA' AND NUMERO_ID = '2487';

/*Execute o seguinte comando antes do sua linha de codigo de atualização */
SET SQL_SAFE_UPDATES = 0;

/*Isso reativará o modo seguro de atualizações no seu ambiente MySQL*/
SET SQL_SAFE_UPDATES = 1;

/*essa instrução INSERT INTO cria um novo registro na tabela veiculo, 
fornecendo valores para as colunas NUMERO_ID, LINHA_ID e ANO_ID conforme especificado no comando. 
É importante substituir os valores 'adicione o numero', 'adicione a linha' e 'adicione o ano' por valores reais que correspondam aos dados que você deseja inserir na tabela veiculo.*/
insert into veiculo
(NUMERO_ID, LINHA_ID, ANO_ID)
values
('2487','TIUMA','2014')

INSERT INTO data (data_id, hora_ID, defeito_defeito_ID)
VALUES ('2023-08-20', '2023-08-20 23:40:00', '1');


INSERT INTO defeito (defeito_id, numero_ID, tipo_ID)
VALUES ('1', '2487', 'borracharia');

INSERT INTO defeito_veiculo (defeito_defeito_id, veiculo_veiculo_id)
VALUES ('1', '4');

INSERT INTO local (endereço_id, local_id)
VALUES ('1', 'belmino correia')

INSERT INTO local_has_data (local_endereço_id, data_data_id)
VALUES ('1', '2023-08-20 00:00:00')

INSERT INTO local_has_veiculo (local_endereço_id, veiculo_veiculo_id)
VALUES ('1', '4')

INSERT INTO motorista_has_data (motorista_motorista_id, data_data_id)
VALUES ('10', '2023-08-20 00:00:00')

INSERT INTO motorista_has_veiculo (motorista_motorista_id, veiculo_veiculo_id)
VALUES ('10', '4')

 /*esse comando UPDATE é utilizado para alterar o valor da coluna ANO_ID para '2024' 
 em todas as linhas da tabela veiculo onde LINHA_ID é 'TIUMA' e NUMERO_ID é '2487'. 
 Este comando irá afetar todas as linhas que correspondem a essas condições, atualizando a coluna ANO_ID para '2024'.*/
UPDATE veiculo
SET ANO_ID = '2024'
WHERE LINHA_ID = 'TIUMA' AND NUMERO_ID = '2487' ;


/*aqui realiza um INNER JOIN entre as tabelas defeito_veiculo, defeito, veiculo, e Local_has_Veiculo. 
Esta consulta irá juntar os dados das tabelas com base nas condições especificadas na cláusula INNER JOIN, retornando as colunas selecionadas para cada tabela envolvida na junção.*/
SELECT *
FROM defeito_veiculo dv
INNER JOIN defeito d ON dv.Defeito_DEFEITO_ID = d.DEFEITO_ID
INNER JOIN veiculo v ON dv.Veiculo_VEICULO_ID = v.VEICULO_ID
INNER JOIN Local_has_Veiculo lv ON v.VEICULO_ID = lv.Veiculo_VEICULO_ID;

SELECT *
FROM Data d
INNER JOIN Local_has_Data ld ON d.DATA_ID = ld.Data_DATA_ID
INNER JOIN Local l ON ld.Local_ENDEREÇO_ID = l.ENDEREÇO_ID;

/*SUBQUERIES encontrar todos os veículos que tiveram defeitos do tipo 'borracharia'.*/
SELECT *
FROM Veiculo
WHERE VEICULO_ID IN (
    SELECT Veiculo_VEICULO_ID
    FROM defeito_veiculo
    INNER JOIN Defeito ON defeito_veiculo.Defeito_DEFEITO_ID = Defeito.DEFEITO_ID
    WHERE Defeito.TIPO_ID = 'borracharia'
);









