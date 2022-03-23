SELECT
	[e].[FirstName]
	,[e].[LastName]
	,[e].[Title]
	,[e].[EmailAddress]
	,[e].[Phone]
	,[st].[SalesTerritoryGroup]
	,[st].[SalesTerritoryRegion]
	,[e].[EmployeePhoto]
FROM
	[dbo].[DimEmployee] AS [e]
	INNER JOIN [dbo].[DimSalesTerritory] AS [st]
		ON [st].[SalesTerritoryKey] = [e].[SalesTerritoryKey]
WHERE
	[e].[SalesPersonFlag] = 1
	AND ([e].[EmployeeKey] = @EmployeeKey OR @EmployeeKey = -1)
	AND [st].[SalesTerritoryGroup] = @SalesTerritoryGroup;