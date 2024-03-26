-- Cleansed Dim_Products Table --

USE
    AdventureWorksDW2022

SELECT 
    p.[ProductKey]
    ,p.[ProductAlternateKey] AS ProductItemCode
    ,p.[EnglishProductName] AS 'Product Name'
    ,ps.EnglishProductSubcategoryName AS 'Sub Category'  -- Joined in from Sub Category Table
    ,pc.EnglishProductCategoryName AS 'Product Category'  -- Joined in from Category Table
    ,p.[Color] AS 'Product Color'
    ,p.[Size] AS 'Product Size'
    ,p.[ProductLine] AS 'Product Line'
    ,p.[ModelName] AS 'Product Model Name'
    ,p.[EnglishDescription] AS 'Product Description'
    ,ISNULL(p.[Status], 'Outdated') AS 'Product Status'
  FROM
        [dbo].[DimProduct] AS p
        LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductCategoryKey = p.ProductSubcategoryKey
        LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey

ORDER BY
    p.ProductKey ASC