USE DATABASE AdventureworksDW_SAMPLE
GO
LOAD DATA FROM FILE '${data_dir}DimAccount.csv'
	INTO Adventureworks.DimAccount
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimCurrency.csv'
	INTO Adventureworks.DimCurrency
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimCustomer.csv'
	INTO Adventureworks.DimCustomer
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimDate.csv'
	INTO Adventureworks.DimDate
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimDepartmentGroup.csv'
	INTO Adventureworks.DimDepartmentGroup
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimEmployee.csv'
	COLUMNS (
		EmployeeKey INTEGER, 
		ParentEmployeeKey INTEGER, 
		EmployeeNationalIDAlternateKey VARCHAR(15), 
		ParentEmployeeNationalIDAlternateKey VARCHAR(15), 
		SalesTerritoryKey INTEGER, 
		FirstName VARCHAR(50), 
		LastName VARCHAR(50), 
		MiddleName VARCHAR(50), 
		NameStyle BIT, 
		Title VARCHAR(50), 
		HireDate DATE, 
		BirthDate DATE, 
		LoginID VARCHAR(256), 
		EmailAddress VARCHAR(50), 
		Phone VARCHAR(25), 
		MaritalStatus CHAR(1), 
		EmergencyContactName VARCHAR(50), 
		EmergencyContactPhone VARCHAR(25), 
		SalariedFlag BIT, 
		Gender CHAR(1), 
		PayFrequency TINYINT, 
		BaseRate MONEY, 
		VacationHours SMALLINT, 
		SickLeaveHours SMALLINT, 
		CurrentFlag BIT, 
		SalesPersonFlag BIT, 
		DepartmentName VARCHAR(50), 
		StartDate DATE, 
		EndDate DATE, 
		Status VARCHAR(50),
		EmployeePhoto VARCHAR(32000)
	)
	INTO Adventureworks.DimEmployee (
		EmployeeKey, ParentEmployeeKey, EmployeeNationalIDAlternateKey, ParentEmployeeNationalIDAlternateKey,  
		SalesTerritoryKey, FirstName, LastName, MiddleName, NameStyle, Title, HireDate, BirthDate,  
		LoginID, EmailAddress, Phone, MaritalStatus, EmergencyContactName, EmergencyContactPhone, SalariedFlag, Gender,  
		PayFrequency, BaseRate, VacationHours, SickLeaveHours, CurrentFlag, SalesPersonFlag, DepartmentName, StartDate,  
		EndDate, Status
	)
	VALUES (
		EmployeeKey, ParentEmployeeKey, EmployeeNationalIDAlternateKey, ParentEmployeeNationalIDAlternateKey,  
		SalesTerritoryKey, FirstName, LastName, MiddleName, NameStyle, Title, HireDate, BirthDate,  
		LoginID, EmailAddress, Phone, MaritalStatus, EmergencyContactName, EmergencyContactPhone, SalariedFlag, Gender,  
		PayFrequency, BaseRate, VacationHours, SickLeaveHours, CurrentFlag, SalesPersonFlag, DepartmentName, StartDate,  
		EndDate, Status
	)
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO

LOAD DATA FROM FILE '${data_dir}DimGeography.csv'
	INTO Adventureworks.DimGeography
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO

LOAD DATA FROM FILE '${data_dir}DimOrganization.csv'
	INTO Adventureworks.DimOrganization
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimProduct.csv'
	COLUMNS (
		ProductKey INTEGER, ProductAlternateKey VARCHAR(25), ProductSubcategoryKey INTEGER, WeightUnitMeasureCode CHAR(3),
		SizeUnitMeasureCode CHAR(3), EnglishProductName VARCHAR(50), SpanishProductName VARCHAR(50), FrenchProductName VARCHAR(50),
		StandardCost MONEY, FinishedGoodsFlag BIT, Color VARCHAR(15), SafetyStockLevel SMALLINT,
		ReorderPoint SMALLINT, ListPrice MONEY, Size VARCHAR(50), SizeRange VARCHAR(50),
		Weight FLOAT, DaysToManufacture INTEGER, ProductLine CHAR(2), DealerPrice MONEY,
		Class CHAR(2), Style CHAR(2), ModelName VARCHAR(50), LargePhoto VARCHAR(32000), -- BLOB
		EnglishDescription VARCHAR(400), FrenchDescription VARCHAR(400), ChineseDescription VARCHAR(400), ArabicDescription VARCHAR(400),
		HebrewDescription VARCHAR(400), ThaiDescription VARCHAR(400), GermanDescription VARCHAR(400), JapaneseDescription VARCHAR(400),
		TurkishDescription VARCHAR(400), StartDate DATETIME, EndDate DATETIME, Status VARCHAR(7)
	)
	INTO Adventureworks.DimProduct (
		ProductKey, ProductAlternateKey, ProductSubcategoryKey, WeightUnitMeasureCode,
		SizeUnitMeasureCode, EnglishProductName, SpanishProductName, FrenchProductName,
		StandardCost, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint,
		ListPrice, Size, SizeRange, Weight, DaysToManufacture,
		ProductLine, DealerPrice, Class, Style, ModelName,
		--LargePhoto, -- BLOB
		EnglishDescription, FrenchDescription, ChineseDescription, ArabicDescription,
		HebrewDescription, ThaiDescription, GermanDescription, JapaneseDescription,
		TurkishDescription, StartDate, EndDate, Status
	)
	VALUES (
		ProductKey, ProductAlternateKey, ProductSubcategoryKey, WeightUnitMeasureCode,
		SizeUnitMeasureCode, EnglishProductName, SpanishProductName, FrenchProductName,
		StandardCost, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint,
		ListPrice, Size, SizeRange, Weight, DaysToManufacture,
		ProductLine, DealerPrice, Class, Style, ModelName,
		--LargePhoto, -- BLOB
		EnglishDescription, FrenchDescription, ChineseDescription, ArabicDescription,
		HebrewDescription, ThaiDescription, GermanDescription, JapaneseDescription,
		TurkishDescription, StartDate, EndDate, Status
	)
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimProductCategory.csv'
	INTO Adventureworks.DimProductCategory
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimProductSubcategory.csv'
	INTO Adventureworks.DimProductSubCategory
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimPromotion.csv'
	INTO Adventureworks.DimPromotion
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimReseller.csv'
	INTO Adventureworks.DimReseller
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimSalesReason.csv'
	INTO Adventureworks.DimSalesReason
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimSalesTerritory.csv'
	INTO Adventureworks.DimSalesTerritory
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}DimScenario.csv'
	INTO Adventureworks.DimScenario
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactAdditionalInternationalProductDescription.csv'
	INTO Adventureworks.FactAdditionalInternationalProductDescription
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactCallCenter.csv'
	INTO Adventureworks.FactCallCenter
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactCurrencyRate.csv'
	INTO Adventureworks.FactCurrencyRate
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactFinance.csv'
	INTO Adventureworks.FactFinance
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactInternetSales.csv'
	INTO Adventureworks.FactInternetSales
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactInternetSalesReason.csv'
	INTO Adventureworks.FactInternetSalesReason
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactProductInventory.csv'
	INTO Adventureworks.FactProductInventory
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactResellerSales.csv'
	INTO Adventureworks.FactResellerSales
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactSalesQuota.csv'
	INTO Adventureworks.FactSalesQuota
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}FactSurveyResponse.csv'
	INTO Adventureworks.FactSurveyResponse
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}NewFactCurrencyRate.csv'
	INTO Adventureworks.NewFactCurrencyRate
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
LOAD DATA FROM FILE '${data_dir}ProspectiveBuyer.csv'
	INTO Adventureworks.ProspectiveBuyer
	USING '{ "from": {"file": {"columnseparator":"|"} } }'
GO
