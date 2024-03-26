-- Cleansed Fact_InternetSales Table --

USE
    AdventureWorksDW2022

SELECT
    [ProductKey]
    ,CONVERT(date, CONVERT(varchar(8), [OrderDateKey], 101)) AS [OrderDateKey]
    ,CONVERT(date, CONVERT(varchar(8), [DueDateKey], 101)) AS [DueDateKey]
    ,CONVERT(date, convert(varchar(8), [ShipDateKey], 101)) AS [ShipDateKey]
    ,[CustomerKey]
    ,[SalesOrderNumber]
    ,[SalesAmount]
FROM
    [dbo].[FactInternetSales]

WHERE
    LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) -2
-- Ensures we always bring only two years of dates from the extraction.

ORDER BY
    OrderDateKey ASC

