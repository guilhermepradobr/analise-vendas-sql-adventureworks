-- ================================================
-- Top 10 Produtos Mais Rentáveis
-- Objetivo: Produtos com maior receita total
-- ================================================

SELECT TOP 10
    p.Name AS Produto,
    SUM(sod.OrderQty) AS Quantidade_Vendida,
    SUM(sod.LineTotal) AS Receita_Total
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY Receita_Total DESC
