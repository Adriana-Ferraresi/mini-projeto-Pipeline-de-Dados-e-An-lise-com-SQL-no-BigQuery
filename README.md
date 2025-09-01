# Mini Projeto: Pipeline de Dados e Análise com SQL no BigQuery

# Contexto do Projeto: A Missão da Livraria DevSaber
Este projeto é uma simulação de trabalho. A "Livraria DevSaber" é uma livraria ficticia que tem seus dados organizados em planilhas. O responsável pela livraria contratou nossos serviços para estruturar os dados de vendas, que estavam originalmente em um formato de planilha, em Data Warehouse no Google BigQuery afim de conseguir insights estratégicos através de consultas SQL e Views.

Equipe - Engenharia de Dados - Grupo 3_1: 
@Adriana-Ferraresi
@Derla-ine
@FabiBarbos
@ndflor
@Braga3794


Ferramentas utilizadas:
1. Google BigQuery: Para armazenar as tabelas ( Clientes, Produtos, Vendas) e processar as consultas SQL.

2. SQL (Linguagem de Consulta Estruturada): Para criar tabelas (CREATE TABLE), inserir dados (ONSERT INTO) e consultar com SELECT, JOIN e VIEW.

3. Plataforma de nuvem do Google (GCP): O BigQuery faz parte dela, então usamos a própria infraestrutura na nuvem do Google para manipular os dados.


# Objetivos
1. **Definir o Schema**: Criar as tabelas `Clientes`, `Produtos` e `Vendas`.
2. **Ingerir os Dados**: Inserir os dados brutos fornecidos nas tabelas.
3. **Analisar os Dados**: Escrever consultas SQL para responder a perguntas de negócio.
4. **Criar uma View**: Construir uma `VIEW` para simplificar análises futuras.

# Pipeline de dados - Passo a Passo
Criamos scripts SQL através de quatro etapas, abaixo temos os links do código de cada script e as represetações no BigQuery de cada passo.

<https://github.com/ndflor/mini-projeto-Pipeline-de-Dados-e-An-lise-com-SQL-no-BigQuery/blob/main/01_create_tables_bigquery.sql>
<https://github.com/ndflor/mini-projeto-Pipeline-de-Dados-e-An-lise-com-SQL-no-BigQuery/blob/main/02_insert_data_bigquery.sql>
<https://github.com/ndflor/mini-projeto-Pipeline-de-Dados-e-An-lise-com-SQL-no-BigQuery/blob/main/03_analysis_and_view_bigquery.sql>

**Etapa 1 - Definição do esquema:**

_Comentário: Nesta etapa, estruturamos os dados da livraria em um modelo relacional, criando as tabelas Clientes , Produtos e Vendas . Essa normalização garante consistência, evita redundâncias e facilita consultas analíticas. A separação por entidades também permite maior flexibilidade para futuras expansões do banco e integrações com outras fontes de dados._

Clientes
<img width="2876" height="967" alt="image" src="https://github.com/user-attachments/assets/3c085faa-1edf-4934-b757-16e04e384cbf" />

Produtos
<img width="2931" height="969" alt="image" src="https://github.com/user-attachments/assets/4222df74-cbeb-4f4d-bf0b-6b7e82958c70" />

Vendas
<img width="2927" height="1059" alt="image" src="https://github.com/user-attachments/assets/d3f90348-7de2-4ce6-83bc-9117fda57993" />


   
**Etapa 2 - Inserção dos Dados:**

_Comentário: Nesta etapa, realizamos a carga inicial das tabelas Clientes e Produtos antes de popular a tabela de Vendas . Essa abordagem segue boas práticas de banco de dados, pois garante que todas as referências de clientes e produtos existam anteriormente, garantindo consistência nas consultas posteriores. Além disso, aprender que, em cenários de grande volume de dados, o uso de inserções em lote ou ferramentas de utilização massiva é mais eficiente do que depende apenas de INSERT INTO._

Clientes
<img width="2929" height="571" alt="image" src="https://github.com/user-attachments/assets/294733dc-7eb5-4816-a30e-cb1c3c1e072e" />

Produtos
<img width="2927" height="693" alt="image" src="https://github.com/user-attachments/assets/ea4dca5a-96cc-4dc8-8910-b01af48a4805" />

Vendas
<img width="2928" height="850" alt="image" src="https://github.com/user-attachments/assets/36fa2122-d134-48aa-9f46-e2a42754053e" />






**Etapa 3 - Análise de Dados e insights**
_Comentários: Nesta etapa, utilizamos consultas SQL e Views para explorar os dados e gerar informações relevantes para o negócio. Com isso, o dono da livraria pode responder perguntas importantes que estão logo abaixo. Essa análise fornece insights estratégicos que apoiam a tomada de decisão e demonstram o valor de organizar os dados em um banco como o BigQuery._

   -- Pergunta 1: Qual o nome dos clientes que moram no estado de 'SP'?
   <img width="2808" height="1377" alt="image" src="https://github.com/user-attachments/assets/996b91f9-7110-4782-a184-248b9c597898" />


   -- Pergunta 2: Quais produtos pertencem à categoria 'Ficção Científica'?
   ![Imagem do WhatsApp de 2025-08-31 à(s) 16 34 46_a1b97991](https://github.com/user-attachments/assets/1ecdad04-5344-48b9-acf5-121e273eccf0)


   -- Pergunta 3: Listar todas as vendas, mostrando o nome do cliente, o nome do produto e a data da venda. Ordene pela data.
   ![Imagem do WhatsApp de 2025-08-31 à(s) 16 36 33_2d2412d1](https://github.com/user-attachments/assets/5dfd8d96-66db-43f6-894b-bd0c172dea00)


   -- Pergunta 4: Qual o valor total de cada venda? (quantidade * preço)
   ![Imagem do WhatsApp de 2025-08-31 à(s) 16 37 55_f8e643a1](https://github.com/user-attachments/assets/f89c3c02-0d6a-40da-8782-dd18041e8322)


   -- Pergunta 5: Qual o produto mais vendido em termos de quantidade?
   ![Imagem do WhatsApp de 2025-08-31 à(s) 16 39 58_c1de6705](https://github.com/user-attachments/assets/e491e7a8-527b-4295-8623-50a30ad3c025)


**Etapa 4 - Criação da View**
   _Comentários: Nesta etapa, criamos uma View para facilitar a análise dos dados sem a necessidade de reescrever consultas complexas. A View funciona como uma consulta salva, sempre atualizada com os dados mais recentes, permitindo ao dono da livraria acompanhar indicadores de vendas de forma prática, rápida e consistente._
      ![Imagem do WhatsApp de 2025-08-31 à(s) 16 56 17_01165f0e](https://github.com/user-attachments/assets/75d12973-3afc-4a1c-990e-7b91da8fd6ae)



# Conclusão
O mini projeto mostrou como organizar os dados da Livraria DevSaber no BigQuery , transformando uma planilha simples em tabelas estruturadas de Clientes , Produtos e Vendas . Aprendemos boas práticas de modelagem, uso de VIEWs para facilitar consultas e a importância de garantir a integridade nos JOINs. Concluímos que, diferentemente das planilhas, o BigQuery oferece escalabilidade, desempenho e insights estratégicos para apoiar uma tomada de decisão.

# Perguntas do Mini Projeto - Reflexão:
- Por que uma planilha não é ideal para uma empresa que quer analisar suas vendas a fundo?

  Resposta: As planilhas são bem eficientes para um número pequenos de dados, entretanto empresas que possuem um número maior e desejem realizar análises mais complexas devem utilizar outras ferramentas para isso.

  
- Que tipo de perguntas vocês acham que o dono da livraria gostaria de responder com esses dados?

  Resposta: Perguntas relacionadas ao financeiro da livraria e as tendências, como exemplo: Qual o valor total de vendas por cidade e por período? Quais são os produtos mais vendidos e menos vendidos? Tais respostas poderiam auxiliar o dono a criar estratégias de venda.

   
- Com base nos dados brutos, quais outras duas tabelas precisamos criar? Que colunas e tipos de dados elas teriam?

  Resposta: Poderíamos criar a tabela *Clientes* para armazenar os dados de cada cliente. Colunas sugeridas:

  ID_Cliente(STRING ou INT64) → Identificador único.
  Nome(STRING) → Nome do cliente.
  Email(STRING) → Contato (se existir).
  Data_Cadastro(DATA) → Quando o cliente entrou no sistema.

  Além dela, também poderíamos criar a tabela *Produtos* para centralizar as informações de cada produto vendido. Colunas sugeridas:

  ID_Produto(STRING ou INT64) → Identificador único.
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



