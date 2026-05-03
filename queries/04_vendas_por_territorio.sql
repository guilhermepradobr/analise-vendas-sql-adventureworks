-- ================================================
-- Vendas por Território
-- Objetivo: Performance comercial por região geográfica
-- ================================================

SELECT 
    st.Name AS Territorio,
    st.CountryRegionCode AS Pais,
    COUNT(soh.SalesOrderID) AS Total_Pedidos,
    SUM(soh.TotalDue) AS Receita_Total,
    AVG(soh.TotalDue) AS Ticket_Medio
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name, st.CountryRegionCode
ORDER BY Receita_Total DESC
