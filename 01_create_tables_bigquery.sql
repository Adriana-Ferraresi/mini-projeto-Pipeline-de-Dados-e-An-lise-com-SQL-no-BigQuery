-- Este script cria a estrutura do schema no Google BigQuery.
-- Tabelas são criadas com `CREATE OR REPLACE TABLE` para permitir a execução repetida do script.
-- Lembre-se de substituir `seu-projeto.seu_dataset` pelo nome do seu projeto e dataset.

-- Tabela de Clientes
-- Armazena informações únicas de cada cliente.
-- No BigQuery, chaves primárias não são impostas, mas ID_Cliente serve como identificador lógico.
CREATE OR REPLACE TABLE `t1engenhariadados.LivrariaDevSaber_T3_1.Clientes` (
    ID_Cliente INT64,
    Nome_Cliente STRING,
    Email_Cliente STRING,
    Estado_Cliente STRING
);

-- Tabela de Produtos
-- Armazena informações únicas de cada produto.
CREATE OR REPLACE TABLE `t1engenhariadados.LivrariaDevSaber_T3_1.Produtos (
    ID_Produto INT64,
    Nome_Produto STRING,
    Categoria_Produto STRING,
    Preco_Produto NUMERIC
);

-- Tabela de Vendas
-- Tabela de fatos que relaciona clientes e produtos, registrando cada transação.
-- As relações com Clientes e Produtos são lógicas, mantidas pelos campos de ID.
CREATE OR REPLACE TABLE `t1engenhariadados.LivrariaDevSaber_T3_1.Vendas` (
    ID_Venda INT64,
    ID_Cliente INT64,
    ID_Produto INT64,
    Data_Venda DATE,
    Quantidade INT64
);
