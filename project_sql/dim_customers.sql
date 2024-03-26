-- Cleansed Dim_Customer's Table --

USE
    AdventureWorksDW2022

SELECT
    c.[CustomerKey] AS CustomerKey
      ,c.[FirstName] AS 'First Name'
      ,c.[LastName] AS 'Last Name'
      ,c.FirstName + ' ' + c.LastName AS 'Full Name'
      ,CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,c.[DateFirstPurchase] AS 'Date First Purchase'
      ,g.City AS 'Customer City' -- Joined in Customer City form Geography Table
FROM
    [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
    LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey

ORDER BY
    CustomerKey ASC  -- Ordered List by Customer Key