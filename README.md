# Mini Projeto: Pipeline de Dados e Análise com SQL no BigQuery

# Contexto do Projeto: A Missão da Livraria DevSaber
Este projeto é uma simulação de trabalho. A "Livraria DevSaber" é uma livraria ficticia que tem seus dados organizados em planilhas. O responsável pela livraria contratou nossos serviços para estruturar os dados de vendas, que estavam originalmente em um formato de planilha, em Data Warehouse no Google BigQuery afim de conseguir insights estratégicos através de consultas SQL e Views.

Equipe - Engenharia de Dados - Grupo 3_1: 
@Adriana-Ferraresi
@Derlaine
@Fabiana 
@ndflor
@leonardo


Ferramentas utilizadas:
1. Google BigQuery: Para armazenar as tabelas ( Clientes, Produtos, Vendas) e processar as consultas SQL.

2. SQL (Linguagem de Consulta Estruturada): Para criar tabelas (CREATE TABLE), inserir dados (ONSERT INTO) e consultar com SELECT, JOIN e VIEW.

3. Plataforma de nuvem do Google (GCP): O BigQuery faz parte dela, então usamos a própria infraestrutura na nuvem do Google para manipular os dados.


# Objetivo

# Perguntas do Mini Projeto - Reflexão:
- Por que uma planilha não é ideal para uma empresa que quer analisar suas vendas a fundo?

Resposta: As planilhas são bem eficientes para um número pequenos de dados, entretanto empresas que possuem um número maior e desejem realizar análises mais complexas devem utilizar outras ferramentas para isso.

  
- Que tipo de perguntas vocês acham que o dono da livraria gostaria de responder com esses dados?

Resposta: Perguntas relacionadas ao financeiro da livraria e as tendências, como exemplo: Qual o valor total de vendas por cidade e por período? Quais são os produtos mais vendidos e menos vendidos? Tais respostas poderiam auxiliar o dono a criar estratégias de venda.

   
- Com base nos dados brutos, quais outras duas tabelas precisamos criar? Que colunas e tipos de dados elas teriam?

Resposta: Poderíamos criar a tabela *Clientes* para armazenar os dados de cada cliente. Colunas sugeridas:

ID_Cliente(STRING) → Identificador único.
Nome(STRING) → Nome do cliente.
Email(STRING) → Contato (se existir).
Data_Cadastro(DATA) → Quando o cliente entrou no sistema.

Além dela, também poderíamos criar a tabela *Produtos* para centralizar as informações de cada produto vendido. Colunas sugeridas:

ID_Produto(STRING) → Identificador único.
Nome_Produto(STRING) → Nome do produto/livro.
Categoria(STRING) → Ex.: ficção científica, Técnico, programação.
Preco(NUMERICO) → Preço atual do produto.

- Se o BigQuery não tem chaves estrangeiras, como garantimos que um `ID_Cliente` na tabela de vendas realmente existe na tabela de clientes?

Resposta: Embora não existam as restrições de integridade referencial, podemos criar uma garantia de consistência através de uma boa prática e da governança de dados, portanto a responsabilidade é totalmente nossa, na hora de construir pipelines, validações e a consulta com o `JOIN`.


- Por que é uma boa prática inserir os clientes e produtos em suas próprias tabelas antes de inserir os dados de vendas?

Resposta: Inserir primeiro Clientes e Produtos cria uma base normalizada (modelo estrela), que traz menos duplicação, mais consistência, fácil manutenção e melhor desempenho.


- Em um cenário com milhões de vendas por dia, o `INSERT INTO` seria a melhor abordagem?

 Resposta: Não, o 'INSERT INTO' manual só faz sentido se usado para um pequeno volume de dados ou para testes. Se os dados podem esperar alguns minutos ou horas → Batch Load é a melhor prática (mais barato e rápido). Mas se precisar de dados em tempo real → Streaming de Inserts via API é recomendado.

- Qual é a principal vantagem de usar uma `VIEW` em vez de simplesmente salvar o código em um arquivo de texto?

Resposta: A principal vantagem é que a VIEW fica armazenada dentro do banco de dados (no BigQuery, dentro do dataset) e pode ser reutilizada como se fosse uma tabela. Logo ao criar uma VIEW toda a equipe terá acesso rápido, atualizado e controlado à mesma lógica de consulta.


- Se o preço de um produto mudar na tabela `Produtos`, o `Valor_Total` na `VIEW` será atualizado automaticamente na próxima vez que a consultarmos?

Resposta: Sim, o Valor_Total na VIEW será atualizado automaticamente na próxima vez consultada pois a VIEW não armazena os dados prontos, e sim guarda a lógica SQL. Portanto, cada vez que você faz um SELECT, a VIEW no BigQuery executa o SQL “ao vivo” sobre as tabelas originais ( Vendas, Produtos, Clientes).

