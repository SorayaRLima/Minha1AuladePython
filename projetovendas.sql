SELECT id, cod_produto, nome_produto, categoria, valor_venda, venda_final, nome_vendedor, data_venda
	FROM public.vendas_final;


--1. Total de vendas por categoria
SELECT 
    categoria,
    ROUND(SUM(venda_final), 2) as total_vendas
FROM 
    vendas_final
GROUP BY 
    categoria
ORDER BY 
    total_vendas DESC;

--2. Top 3 vendedores que mais venderam
SELECT 
    nome_vendedor,
    ROUND(SUM(venda_final), 2) as total_vendas,
    COUNT(*) as qtd_vendas
FROM 
    vendas_final
GROUP BY 
    nome_vendedor
ORDER BY 
    total_vendas DESC
LIMIT 3;

--3. Média de valor final de venda
SELECT 
    ROUND(AVG(venda_final), 2) as media_venda_final
FROM 
    vendas_final;