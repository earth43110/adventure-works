-- Cleansed FACT_InternetSales Table
SELECT 
[ProductKey],
[OrderDateKey],
[DueDateKey],
[ShipDateKey],
[CustomerKey],
--      ,[PromotionKey]
--      ,[CurrencyKey]
--      ,[SalesTerritoryKey]
[SalesOrderNumber],
--[SalesOrderLineNumber]
--[RevisionNumber]
--[OrderQuantity]
--[UnitPrice]
--[ExtendedAmount]
--[UnitPriceDiscountPct]
--[DiscountAmount]
--[ProductStandardCost]
--[TotalProductCost]
[SalesAmount]
--[TaxAmt]
--[Freight]
--[CarrierTrackingNumber]
--[CustomerPONumber]
--[OrderDate]
--[DueDate]
--[ShipDate]
from
	AdventureWorksDW2022.dbo.FactInternetSales
where 
	left (OrderDateKey, 4) >= year(getdate()) - 2 --Ensures we always only bring two years of date from extraction.
order by
	OrderDateKey asc
