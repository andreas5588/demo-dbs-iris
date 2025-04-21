SELECT TOP 1000
	  ev.ID,
       ev.AirportDirection,
       ev.AirportDistance,
       ev.AirportElevation,
       ev.AirportLocation,
       ev.AirportName,
       ev.Altimeter,
       ev.EventDate,
       d.EnglishMonthName
FROM Aviation.Event as ev
INNER JOIN Adventureworks.DimDate as d ON d.FullDateAlternateKey = ev.EventDate -- watch out for datatype! this join bad idea, it is simply a demonstration of how to combine tables
GO
SELECT * FROM Adventureworks.DimDate


