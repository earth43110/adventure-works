--Cleansed DIM_Customers Table
select 
	c.customerkey as CustomerKey,
	--      ,[GeographyKey]
	--      ,[CustomerAlternateKey]
	--      ,[Title]
	c.firstname as [First Name],
	--      ,[MiddleName]
	c.lastname as [Last Name],
	c.firstname + ' ' + c.lastname as [Full Name],
	--Combined First and Last Name
	--      ,[NameStyle]
	--      ,[BirthDate]
	--      ,[MaritalStatus]
	--      ,[Suffix]
	case c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender,
	--      ,[EmailAddress]
	--      ,[YearlyIncome]
	--      ,[TotalChildren]
	--      ,[NumberChildrenAtHome]
	--      ,[EnglishEducation]
	--      ,[SpanishEducation]
	--      ,[FrenchEducation]
	--      ,[EnglishOccupation]
	--      ,[SpanishOccupation]
	--      ,[FrenchOccupation]
	--      ,[HouseOwnerFlag]
	--      ,[NumberCarsOwned]
	--      ,[AddressLine1]
	--      ,[AddressLine2]
	--      ,[Phone]
	c.datefirstpurchase as DateFirstPurchase,
	--      ,[CommuteDistance]
	g.city as [Customer City] --Joined in Customer City from Geography Table
from 
	[AdventureWorksDW2022].[dbo].[DimCustomer] as c
	left join [AdventureWorksDW2022].[dbo].[DimGeography] as g on g.geographykey = c.geographykey
order by 
	CustomerKey asc --Ordered List by CustomerKey