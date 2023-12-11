/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  TOP (1000) [DateKey], 
  [FullDateAlternateKey] AS Date,
  [DayNumberOfWeek] AS DayNumber
  , 
  [EnglishDayNameOfWeek] AS DayName
  --[SpanishDayNameOfWeek]
  --[FrenchDayNameOfWeek]
  --[DayNumberOfMonth]
  --[DayNumberOfYear]
  --[WeekNumberOfYear]
  , 
  [EnglishMonthName] AS MonthName
  --[SpanishMonthName]
  --[FrenchMonthName]
  , 
  [MonthNumberOfYear] AS MonthNumber, 
  [CalendarQuarter], 
  [CalendarYear] AS Year
  --[CalendarSemester]
  --[FiscalQuarter]
  --[FiscalYear]
  --[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
WHERE
	CalendarYear > 2020

--SELECT DISTINCT(CalendarYear)
--FROM [AdventureWorksDW2022].[dbo].[DimDate]
--WHERE CalendarYear > 2020
	
	
