-- Cleansed Dim_Date Table --

USE
    AdventureWorksDW2022

SELECT
    DateKey
    ,FullDateAlternateKey AS Date
    ,EnglishDayNameOfWeek AS Day
    ,EnglishMonthName AS Month
    ,LEFT(EnglishMonthName, 3) AS MonthShort  --Useful for front end date navigation and front end graphs.
    ,MonthNumberOfYear AS MonthNo
    ,CalendarQuarter AS Quarter
    ,CalendarYear AS Year 

FROM
    [dbo].[dimdate] 

WHERE
    CalendarYear >= 2019