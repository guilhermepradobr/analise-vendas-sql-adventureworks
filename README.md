# 📊 Análise de Vendas — AdventureWorks2022

Projeto de análise de dados utilizando SQL Server com o banco de dados AdventureWorks2022, 
simulando um ambiente real de uma empresa de manufatura e vendas.

## 🎯 Objetivo

Explorar e analisar os dados de vendas da AdventureWorks para extrair insights sobre 
performance comercial, produtos mais rentáveis, ranking de vendedores e evolução de receita ao longo do tempo.

## 🛠️ Tecnologias Utilizadas

- Microsoft SQL Server 2022
- SQL Server Management Studio (SSMS)
- T-SQL

## 📁 Estrutura do Projeto
## 📌 Análises Realizadas

### 1. Vendas por Ano
Evolução anual de pedidos, receita total e ticket médio entre 2011 e 2014.

### 2. Top 10 Produtos Mais Rentáveis
Ranking dos produtos com maior receita total, utilizando JOIN entre tabelas de pedidos e produtos.

### 3. Ranking de Vendedores
Top 10 vendedores por receita, com território de atuação — utilizando 3 JOINs encadeados.

### 4. Vendas por Território
Performance comercial por região geográfica, identificando os mercados mais lucrativos.

### 5. Evolução Mensal com Receita Acumulada
Análise temporal com CTE e Window Function para calcular receita acumulada mês a mês por ano.

## 💡 Principais Insights

- **Southwest (EUA)** é o território com maior receita total — mais de 27 milhões
- **Mountain-200 Black** é o produto campeão de vendas com mais de 4,4 milhões em receita
- **Jae Pak** é o vendedor com maior receita — quase 9,6 milhões no território do Canadá
- O ano de **2013** teve o maior volume de pedidos (14.182)
- O **ticket médio caiu significativamente em 2014**, sinalizando mudança no perfil de compras

## 📂 Como Reproduzir

1. Instale o SQL Server e o SSMS
2. Restaure o banco [AdventureWorks2022](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks)
3. Execute os scripts na pasta `/queries` na ordem numérica

## 👤 Autor

**Guilherme Prado**  
Analista de Dados em formação | SQL Server | Azure | AZ-900  
[LinkedIn](https://www.linkedin.com/in/guilherme-prado-85530a303)
