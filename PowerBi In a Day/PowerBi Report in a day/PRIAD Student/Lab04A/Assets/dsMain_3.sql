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
	[e].[EmployeeKey] IN (@EmployeeKey);