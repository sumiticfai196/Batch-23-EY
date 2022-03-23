SELECT
	-1 AS [EmployeeKey]
	,N'(All Salespeople)' AS [SalespersonName]
UNION
SELECT
	[EmployeeKey]
	,UPPER([LastName]) + N', ' + [FirstName] AS [SalespersonName]
FROM
	[dbo].[DimEmployee]
WHERE
	[SalesPersonFlag] = 1
ORDER BY
	[SalespersonName];