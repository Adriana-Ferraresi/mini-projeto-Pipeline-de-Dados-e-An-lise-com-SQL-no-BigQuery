-- Este script popula as tabelas criadas no BigQuery.
-- A cláusula VALUES é usada para inserir múltiplas linhas de uma vez.

-- Inserção de dados na tabela Clientes (sem duplicatas)
INSERT INTO `t1engenhariadados.LivrariaDevSaber_T3_1.Clientes` (ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES
    (1, 'Ana Silva', 'ana.s@email.com', 'SP'),
    (2, 'Bruno Costa', 'b.costa@email.com', 'RJ'),
    (3, 'Carla Dias', 'carla.d@email.com', 'SP'),
    (4, 'Daniel Souza', 'daniel.s@email.com', 'MG');

-- Inserção de dados na tabela Produtos (sem duplicatas)
INSERT INTO `t1engenhariadados.LivrariaDevSaber_T3_1.Produtos` (ID_Produto, Nome_Produto, Categoria_Produto, Preco_Produto)
VALUES
    (101, 'Fundamentos de SQL', 'Dados', 60.00),
    (102, 'Duna', 'Ficção Científica', 80.50),
    (103, 'Python para Dados', 'Programação', 75.00),
    (104, 'O Guia do Mochileiro', 'Ficção Científica', 42.00);

-- Inserção de dados na tabela Vendas
INSERT INTO `t1engenhariadados.LivrariaDevSaber_T3_1.Vendas` (ID_Venda, ID_Cliente, ID_Produto, Data_Venda, Quantidade)
VALUES
    (1, 1, 101, '2024-01-15', 1),
    (2, 2, 102, '2024-01-18', 1),
    (3, 3, 103, '2024-02-02', 2),
    (4, 1, 102, '2024-02-10', 1),
    (5, 4, 101, '2024-02-20', 1),
    (6, 2, 104, '2024-03-05', 1);
