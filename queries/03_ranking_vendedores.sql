-- ================================================
-- Ranking de Vendedores
-- Objetivo: Top 10 vendedores por receita total
-- ================================================

SELECT TOP 10
    p.FirstName + ' ' + p.LastName AS Vendedor,
    st.Name AS Territorio,
    COUNT(soh.SalesOrderID) AS Total_Pedidos,
    SUM(soh.TotalDue) AS Receita_Total
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesPerson sp ON soh.SalesPersonID = sp.BusinessEntityID
JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID
JOIN Sales.SalesTerritory st ON soh.TerritoryID = st.TerritoryID
GROUP BY p.FirstName, p.LastName, st.Name
ORDER BY Receita_Total DESC
