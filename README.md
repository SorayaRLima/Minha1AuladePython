# Meu Primeiro Projeto Paython

# 🛒 Projeto de Vendas com PostgreSQL + Python

## 🚀 Execução do Projeto

1. **Conexão com o PostgreSQL** via `psycopg2`.
2. **Criação da tabela** `vendas_final` com a estrutura acima.
3. **Leitura do DataFrame** com `pandas`.
4. **Inserção dos dados linha a linha** no banco.
5. **Consultas SQL** para extração de insights:

## 🔎 Consultas de Negócio

✅ **Total de vendas por categoria**:

SELECT categoria, SUM(venda_final) AS total_vendido
FROM vendas_final
GROUP BY categoria
ORDER BY total_vendido DESC;

✅ Top 3 vendedores que mais venderam:

SELECT nome_vendedor, SUM(venda_final) AS total_vendido
FROM vendas_final
GROUP BY nome_vendedor
ORDER BY total_vendido DESC
LIMIT 3;

✅ Média de valor final de venda:

SELECT AVG(venda_final) FROM vendas_final;


📊 Insights Obtidos
-As categorias que mais geram receita;
-Os vendedores com melhor desempenho;
-A média de valor final por venda — ótimo para decisões estratégicas.

💼 Tecnologias Usadas
-PostgreSQL
-Python 3
-Pandas
-psycopg2
