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

 /*esse comando UPDATE é utilizado para alterar o valor da coluna ANO_ID para '2024' 
 em todas as linhas da tabela veiculo onde LINHA_ID é 'TIUMA' e NUMERO_ID é '2487'. 
 Este comando irá afetar todas as linhas que correspondem a essas condições, atualizando a coluna ANO_ID para '2024'.*/
UPDATE veiculo
SET ANO_ID = '2024'
WHERE LINHA_ID = 'TIUMA' AND NUMERO_ID = '2487' ;



