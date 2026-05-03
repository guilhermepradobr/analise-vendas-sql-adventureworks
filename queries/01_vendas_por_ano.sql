-- ================================================
-- Análise de Vendas por Ano
-- Objetivo: Evolução anual de pedidos, receita e ticket médio
-- ================================================

SELECT 
    YEAR(OrderDate) AS Ano,
    COUNT(SalesOrderID) AS Total_Pedidos,
    SUM(TotalDue) AS Receita_Total,
    AVG(TotalDue) AS Ticket_Medio
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY Ano
