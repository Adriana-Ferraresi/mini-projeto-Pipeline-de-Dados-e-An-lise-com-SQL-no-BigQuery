# Mini Projeto: Pipeline de Dados e Análise com SQL no BigQuery

# Contexto do Projeto: A Missão da Livraria DevSaber
Este projeto é uma simulação de trabalho. A "Livraria DevSaber" é uma livraria ficticia que tem seus dados organizados em planilhas. O responsável pela livraria contratou nossos serviços para estruturar os dados de vendas, que estavam originalmente em um formato de planilha, em Data Warehouse no Google BigQuery afim de conseguir insights estratégicos através de consultas SQL e Views.

Equipe - Engenharia de Dados - Grupo 1: 
@Adriana-Ferraresi


Ferramentas utilizadas:


# Objetivo

# Perguntas do Mini Projeto - Reflexão:
- Por que uma planilha não é ideal para uma empresa que quer analisar suas vendas a fundo?

  As planilhas são bem eficientes para um número pequenos de dados, entretanto empresas que possuem um número maior e desejem realizar análises mais complexas devem utilizar outras ferramentas para isso.

  
- Que tipo de perguntas vocês acham que o dono da livraria gostaria de responder com esses dados?

  Perguntas relacionadas ao financeiro, como exemplo: Qual o valor total de vendas por cidade e por período? Quais são os produtos mais vendidos e menos vendidos? Tais respostas poderiam auxiliar o dono a criar estratégias de venda.

   
- Com base nos dados brutos, quais outras duas tabelas precisamos criar? Que colunas e tipos de dados elas teriam?
- Se o BigQuery não tem chaves estrangeiras, como garantimos que um `ID_Cliente` na tabela de vendas realmente existe na tabela de clientes? (Resposta: A responsabilidade é nossa, na hora de construir a consulta com o `JOIN`).
- Por que é uma boa prática inserir os clientes e produtos em suas próprias tabelas antes de inserir os dados de vendas?
- Em um cenário com milhões de vendas por dia, o `INSERT INTO` seria a melhor abordagem?
- Qual é a principal vantagem de usar uma `VIEW` em vez de simplesmente salvar o código em um arquivo de texto?
- Se o preço de um produto mudar na tabela `Produtos`, o `Valor_Total` na `VIEW` será atualizado automaticamente na próxima vez que a consultarmos?

