-- This query is not intended to have meaningful results from a data perspective
-- it is simply a demonstration of how to combine tables from different namespaces within a single SQL statement.
SELECT TOP 20
       EnglishDayNameOfWeek AS TheFirstColumn
FROM Adventureworks.DimDate
UNION ALL
SELECT
       Name AS TheFirstColumn
FROM Sample.Company;