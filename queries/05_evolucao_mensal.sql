-- ================================================
-- Evolução Mensal de Vendas
-- Objetivo: Receita mensal e acumulada por ano
-- ================================================

WITH VendasMensais AS (
    SELECT 
        YEAR(OrderDate) AS Ano,
        MONTH(OrderDate) AS Mes,
        COUNT(SalesOrderID) AS Total_Pedidos,
        SUM(TotalDue) AS Receita_Total
    FROM Sales.SalesOrderHeader
    GROUP BY YEAR(OrderDate), MONTH(OrderDate)
)
SELECT 
    Ano,
    Mes,
    Total_Pedidos,
    Receita_Total,
    SUM(Receita_Total) OVER (PARTITION BY Ano ORDER BY Mes) AS Receita_Acumulada
FROM VendasMensais
ORDER BY Ano, Mes
