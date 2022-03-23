SELECT
	-1 AS [EmployeeKey]
	,N'(All Salespeople)' AS [SalespersonName]
UNION
SELECT
	[e].[EmployeeKey]
	,UPPER([e].[LastName]) + N', ' + [e].[FirstName] AS [SalespersonName]
FROM
	[dbo].[DimEmployee] AS [e]
	INNER JOIN [dbo].[DimSalesTerritory] AS [st]
		ON [st].[SalesTerritoryKey] = [e].[SalesTerritoryKey]
WHERE
	[e].[SalesPersonFlag] = 1
	AND [st].[SalesTerritoryGroup] = @SalesTerritoryGroup
ORDER BY
	[SalespersonName];