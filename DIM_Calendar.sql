--Cleansed DIM_Date Table
select
	[DateKey],
	[FullDateAlternateKey] as Date,
	--[DayNumberOfWeek],
	[EnglishDayNameOfWeek] as Day,
	--[SpanishDayNameOfWeek],
	--[FrenchDayNameOfWeek],
	--[DayNumberOfMonth],
	--[DayNumberOfYear],
	--[WeekNumberOfYear],
	[EnglishMonthName] as Month,
	left([EnglishMonthName], 3) as MonthShort,
	--[SpanishMonthName],
	--[FrenchMonthName],
	[MonthNumberOfYear] as MonthNo,
	[CalendarQuarter] as Quarter,
	[CalendarYear] as Year
	--[CalenderSemester],
	--[FiscalQuarter]
	--[FiscalYear]
	--[FiscalSemester]
from
	[AdventureWorksDW2022].[dbo].[DimDate]
where
	[CalendarYear] >= 2022