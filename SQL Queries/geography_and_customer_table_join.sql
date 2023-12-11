/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  TOP (1000) c.[CustomerKey] 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.[FirstName] 
  --,[MiddleName]
  , 
  c.[LastName] 
  --,[NameStyle]
  , 
  c.[FirstName] + ' ' + c.[LastName] AS FullName, 
  c.[BirthDate], 
  CASE c.[MaritalStatus] WHEN 'M' THEN 'Married' WHEN 'S' THEN 'Single' END AS MaritalStatus 
  --,[Suffix]
  , 
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.[EmailAddress], 
  c.[YearlyIncome] 
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  , 
  c.[Phone], 
  c.[DateFirstPurchase] --,[CommuteDistance]
  , 
  g.City AS City 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
