USE DATABASE AdventureworksDW_SAMPLE
GO
CREATE TABLE Adventureworks.DimAccount(
	AccountKey INTEGER IDENTITY(1,1) NOT NULL,
	ParentAccountKey INTEGER NULL,
	AccountCodeAlternateKey INTEGER NULL,
	ParentAccountCodeAlternateKey INTEGER NULL,
	AccountDescription VARCHAR(50) NULL,
	AccountType VARCHAR(50) NULL,
	Operator VARCHAR(50) NULL,
	CustomMembers VARCHAR(300) NULL,
	ValueType VARCHAR(50) NULL,
	CustomMemberOptions VARCHAR(200) NULL,
    CONSTRAINT PK PRIMARY KEY (AccountKey) 
)
GO
CREATE TABLE Adventureworks.DimCurrency(
	CurrencyKey INTEGER IDENTITY(1,1) NOT NULL,
	CurrencyAlternateKey CHAR(3) NOT NULL,
	CurrencyName VARCHAR(50) NOT NULL,
    CONSTRAINT PK PRIMARY KEY (CurrencyKey),
    CONSTRAINT UK_Alternate UNIQUE (CurrencyAlternateKey) 
)
GO
CREATE TABLE Adventureworks.DimCustomer(
	CustomerKey INTEGER IDENTITY(1,1) NOT NULL,
	GeographyKey INTEGER NULL,
	CustomerAlternateKey VARCHAR(15) NOT NULL,
	Title VARCHAR(8) NULL,
	FirstName VARCHAR(50) NULL,
	MiddleName VARCHAR(50) NULL,
	LastName VARCHAR(50) NULL,
	NameStyle BIT NULL,
	BirthDate DATE NULL,
	MaritalStatus CHAR(1) NULL,
	Suffix VARCHAR(10) NULL,
	Gender VARCHAR(1) NULL,
	EmailAddress VARCHAR(50) NULL,
	YearlyIncome MONEY NULL,
	TotalChildren TINYINT NULL,
	NumberChildrenAtHome TINYINT NULL,
	EnglishEducation VARCHAR(40) NULL,
	SpanishEducation VARCHAR(40) NULL,
	FrenchEducation VARCHAR(40) NULL,
	EnglishOccupation VARCHAR(100) NULL,
	SpanishOccupation VARCHAR(100) NULL,
	FrenchOccupation VARCHAR(100) NULL,
	HouseOwnerFlag CHAR(1) NULL,
	NumberCarsOwned TINYINT NULL,
	AddressLine1 VARCHAR(120) NULL,
	AddressLine2 VARCHAR(120) NULL,
	Phone VARCHAR(20) NULL,
	DateFirstPurchase DATE NULL,
	CommuteDistance VARCHAR(15) NULL,
    CONSTRAINT PK PRIMARY KEY (CustomerKey),
    CONSTRAINT UK_Alternate UNIQUE (CustomerAlternateKey)
)
GO
CREATE TABLE Adventureworks.DimDate(
	DateKey INTEGER NOT NULL,
	FullDateAlternateKey DATE NOT NULL,
	DayNumberOfWeek TINYINT NOT NULL,
	EnglishDayNameOfWeek VARCHAR(10) NOT NULL,
	SpanishDayNameOfWeek VARCHAR(10) NOT NULL,
	FrenchDayNameOfWeek VARCHAR(10) NOT NULL,
	DayNumberOfMonth TINYINT NOT NULL,
	DayNumberOfYear SMALLINT NOT NULL,
	WeekNumberOfYear TINYINT NOT NULL,
	EnglishMonthName VARCHAR(10) NOT NULL,
	SpanishMonthName VARCHAR(10) NOT NULL,
	FrenchMonthName VARCHAR(10) NOT NULL,
	MonthNumberOfYear TINYINT NOT NULL,
	CalendarQuarter TINYINT NOT NULL,
	CalendarYear SMALLINT NOT NULL,
	CalendarSemester TINYINT NOT NULL,
	FiscalQuarter TINYINT NOT NULL,
	FiscalYear SMALLINT NOT NULL,
	FiscalSemester TINYINT NOT NULL,
    CONSTRAINT PK PRIMARY KEY (DateKey),
    CONSTRAINT UK_Alternate UNIQUE (FullDateAlternateKey)
)
GO
CREATE TABLE Adventureworks.DimDepartmentGroup(
	DepartmentGroupKey INTEGER IDENTITY(1,1) NOT NULL,
	ParentDepartmentGroupKey INTEGER NULL,
	DepartmentGroupName VARCHAR(50) NULL,
    CONSTRAINT PK PRIMARY KEY (DepartmentGroupKey)
)
GO
CREATE TABLE Adventureworks.DimEmployee(
	EmployeeKey INTEGER IDENTITY(1,1) NOT NULL,
	ParentEmployeeKey INTEGER NULL,
	EmployeeNationalIDAlternateKey VARCHAR(15) NULL,
	ParentEmployeeNationalIDAlternateKey VARCHAR(15) NULL,
	SalesTerritoryKey INTEGER NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	MiddleName VARCHAR(50) NULL,
	NameStyle BIT NOT NULL,
	Title VARCHAR(50) NULL,
	HireDate DATE NULL,
	BirthDate DATE NULL,
	LoginID VARCHAR(256) NULL,
	EmailAddress VARCHAR(50) NULL,
	Phone VARCHAR(25) NULL,
	MaritalStatus CHAR(1) NULL,
	EmergencyContactName VARCHAR(50) NULL,
	EmergencyContactPhone VARCHAR(25) NULL,
	SalariedFlag BIT NULL,
	Gender CHAR(1) NULL,
	PayFrequency TINYINT NULL,
	BaseRate MONEY NULL,
	VacationHours SMALLINT NULL,
	SickLeaveHours SMALLINT NULL,
	CurrentFlag BIT NOT NULL,
	SalesPersonFlag BIT NOT NULL,
	DepartmentName VARCHAR(50) NULL,
	StartDate DATE NULL,
	EndDate DATE NULL,
	Status VARCHAR(50) NULL,
	--EmployeePhoto VARCHAR(32000) NULL, -- BLOB
    CONSTRAINT PK PRIMARY KEY (EmployeeKey)
)
GO
CREATE TABLE Adventureworks.DimGeography(
	GeographyKey INTEGER IDENTITY(1,1) NOT NULL,
	City VARCHAR(30) NULL,
	StateProvinceCode VARCHAR(3) NULL,
	StateProvinceName VARCHAR(50) NULL,
	CountryRegionCode VARCHAR(3) NULL,
	EnglishCountryRegionName VARCHAR(50) NULL,
	SpanishCountryRegionName VARCHAR(50) NULL,
	FrenchCountryRegionName VARCHAR(50) NULL,
	PostalCode VARCHAR(15) NULL,
	SalesTerritoryKey INTEGER NULL,
	IpAddressLocator VARCHAR(15) NULL,
    CONSTRAINT PK PRIMARY KEY (GeographyKey)
)
GO
CREATE TABLE Adventureworks.DimOrganization(
	OrganizationKey INTEGER IDENTITY(1,1) NOT NULL,
	ParentOrganizationKey INTEGER NULL,
	PercentageOfOwnership VARCHAR(16) NULL,
	OrganizationName VARCHAR(50) NULL,
	CurrencyKey INTEGER NULL,
    CONSTRAINT PK PRIMARY KEY (OrganizationKey)
)
GO
CREATE TABLE Adventureworks.DimProduct(
	ProductKey INTEGER IDENTITY(1,1) NOT NULL,
	ProductAlternateKey VARCHAR(25) NULL,
	ProductSubcategoryKey INTEGER NULL,
	WeightUnitMeasureCode CHAR(3) NULL,
	SizeUnitMeasureCode CHAR(3) NULL,
	EnglishProductName VARCHAR(50) NOT NULL,
	SpanishProductName VARCHAR(50) NOT NULL,
	FrenchProductName VARCHAR(50) NOT NULL,
	StandardCost MONEY NULL,
	FinishedGoodsFlag BIT NOT NULL,
	Color VARCHAR(15) NOT NULL,
	SafetyStockLevel SMALLINT NULL,
	ReorderPoint SMALLINT NULL,
	ListPrice MONEY NULL,
	Size VARCHAR(50) NULL,
	SizeRange VARCHAR(50) NULL,
	Weight FLOAT NULL,
	DaysToManufacture INTEGER NULL,
	ProductLine CHAR(2) NULL,
	DealerPrice MONEY NULL,
	Class CHAR(2) NULL,
	Style CHAR(2) NULL,
	ModelName VARCHAR(50) NULL,
	--LargePhoto VARCHAR(32000) NULL, -- BLOB
	EnglishDescription VARCHAR(400) NULL,
	FrenchDescription VARCHAR(400) NULL,
	ChineseDescription VARCHAR(400) NULL,
	ArabicDescription VARCHAR(400) NULL,
	HebrewDescription VARCHAR(400) NULL,
	ThaiDescription VARCHAR(400) NULL,
	GermanDescription VARCHAR(400) NULL,
	JapaneseDescription VARCHAR(400) NULL,
	TurkishDescription VARCHAR(400) NULL,
	StartDate DATETIME NULL,
	EndDate DATETIME NULL,
	Status VARCHAR(7) NULL,
    CONSTRAINT PK PRIMARY KEY (ProductKey),
    CONSTRAINT UK_Alternate_StartDate UNIQUE (ProductAlternateKey, StartDate)
)
GO
CREATE TABLE Adventureworks.DimProductCategory(
	ProductCategoryKey INTEGER IDENTITY(1,1) NOT NULL,
	ProductCategoryAlternateKey INTEGER NULL,
	EnglishProductCategoryName VARCHAR(50) NOT NULL,
	SpanishProductCategoryName VARCHAR(50) NOT NULL,
	FrenchProductCategoryName VARCHAR(50) NOT NULL,
    CONSTRAINT PK PRIMARY KEY (ProductCategoryKey),
    CONSTRAINT UK_Alternate UNIQUE (ProductCategoryAlternateKey)
)
GO
CREATE TABLE Adventureworks.DimProductSubcategory(
	ProductSubcategoryKey INTEGER IDENTITY(1,1) NOT NULL,
	ProductSubcategoryAlternateKey INTEGER NULL,
	EnglishProductSubcategoryName VARCHAR(50) NOT NULL,
	SpanishProductSubcategoryName VARCHAR(50) NOT NULL,
	FrenchProductSubcategoryName VARCHAR(50) NOT NULL,
	ProductCategoryKey INTEGER NULL,
    CONSTRAINT PK PRIMARY KEY (ProductSubCategoryKey),
    CONSTRAINT UK_Alternate UNIQUE (ProductSubCategoryAlternateKey)
)
GO
CREATE TABLE Adventureworks.DimPromotion(
	PromotionKey INTEGER IDENTITY(1,1) NOT NULL,
	PromotionAlternateKey INTEGER NULL,
	EnglishPromotionName VARCHAR(255) NULL,
	SpanishPromotionName VARCHAR(255) NULL,
	FrenchPromotionName VARCHAR(255) NULL,
	DiscountPct FLOAT NULL,
	EnglishPromotionType VARCHAR(50) NULL,
	SpanishPromotionType VARCHAR(50) NULL,
	FrenchPromotionType VARCHAR(50) NULL,
	EnglishPromotionCategory VARCHAR(50) NULL,
	SpanishPromotionCategory VARCHAR(50) NULL,
	FrenchPromotionCategory VARCHAR(50) NULL,
	StartDate DATETIME NOT NULL,
	EndDate DATETIME NULL,
	MinQty INTEGER NULL,
	MaxQty INTEGER NULL,
    CONSTRAINT PK PRIMARY KEY (PromotionKey),
    CONSTRAINT UK_Alternate UNIQUE (PromotionAlternateKey)
)
GO
CREATE TABLE Adventureworks.DimReseller(
	ResellerKey INTEGER IDENTITY(1,1) NOT NULL,
	GeographyKey INTEGER NULL,
	ResellerAlternateKey VARCHAR(15) NULL,
	Phone VARCHAR(25) NULL,
	BusinessType VARCHAR(20) NOT NULL,
	ResellerName VARCHAR(50) NOT NULL,
	NumberEmployees INTEGER NULL,
	OrderFrequency CHAR(1) NULL,
	OrderMonth TINYINT NULL,
	FirstOrderYear INTEGER NULL,
	LastOrderYear INTEGER NULL,
	ProductLine VARCHAR(50) NULL,
	AddressLine1 VARCHAR(60) NULL,
	AddressLine2 VARCHAR(60) NULL,
	AnnualSales MONEY NULL,
	BankName VARCHAR(50) NULL,
	MinPaymentType TINYINT NULL,
	MinPaymentAmount MONEY NULL,
	AnnualRevenue MONEY NULL,
	YearOpened INTEGER NULL,
    CONSTRAINT PK PRIMARY KEY (ResellerKey),
    CONSTRAINT UK_Alternate UNIQUE (ResellerAlternateKey)
)
GO
CREATE TABLE Adventureworks.DimSalesReason(
	SalesReasonKey INTEGER IDENTITY(1,1) NOT NULL,
	SalesReasonAlternateKey INTEGER NOT NULL,
	SalesReasonName VARCHAR(50) NOT NULL,
	SalesReasonReasonType VARCHAR(50) NOT NULL,
    CONSTRAINT PK PRIMARY KEY (SalesReasonKey)
)
GO
CREATE TABLE Adventureworks.DimSalesTerritory(
	SalesTerritoryKey INTEGER IDENTITY(1,1) NOT NULL,
	SalesTerritoryAlternateKey INTEGER NULL,
	SalesTerritoryRegion VARCHAR(50) NOT NULL,
	SalesTerritoryCountry VARCHAR(50) NOT NULL,
	SalesTerritoryGroup VARCHAR(50) NULL,
	-- SalesTerritoryImage VARCHAR(32000) NULL, -- BLOB
    CONSTRAINT PK PRIMARY KEY (SalesTerritoryKey),
    CONSTRAINT UK_Alternate UNIQUE (SalesTerritoryAlternateKey)
)
GO
CREATE TABLE Adventureworks.DimScenario(
	ScenarioKey INTEGER IDENTITY(1,1) NOT NULL,
	ScenarioName VARCHAR(50) NULL,
    CONSTRAINT PK PRIMARY KEY (ScenarioKey)
)
GO
CREATE TABLE Adventureworks.FactAdditionalInternationalProductDescription(
	ProductKey INTEGER NOT NULL,
	CultureName VARCHAR(50) NOT NULL,
	ProductDescription VARCHAR(32000) NOT NULL,
    CONSTRAINT PK PRIMARY KEY (ProductKey, CultureName)
)
GO
CREATE TABLE Adventureworks.FactCallCenter(
	FactCallCenterID INTEGER IDENTITY(1,1) NOT NULL,
	DateKey INTEGER NOT NULL,
	WageType VARCHAR(15) NOT NULL,
	Shift VARCHAR(20) NOT NULL,
	LevelOneOperators SMALLINT NOT NULL,
	LevelTwoOperators SMALLINT NOT NULL,
	TotalOperators SMALLINT NOT NULL,
	Calls INTEGER NOT NULL,
	AutomaticResponses INTEGER NOT NULL,
	Orders INTEGER NOT NULL,
	IssuesRaised SMALLINT NOT NULL,
	AverageTimePerIssue SMALLINT NOT NULL,
	ServiceGrade FLOAT NOT NULL,
	"Date" DATETIME NULL,
    CONSTRAINT PK PRIMARY KEY (FactCallCenterID),
    CONSTRAINT UK_DateKey_Shift UNIQUE (DateKey, Shift)
)
GO
CREATE TABLE Adventureworks.FactCurrencyRate(
	CurrencyKey INTEGER NOT NULL,
	DateKey INTEGER NOT NULL,
	AverageRate FLOAT NOT NULL,
	EndOfDayRate FLOAT NOT NULL,
	"Date" DATETIME NULL,
    CONSTRAINT PK PRIMARY KEY (CurrencyKey, DateKey)
)
GO
CREATE TABLE Adventureworks.FactFinance(
	FinanceKey INTEGER IDENTITY(1,1) NOT NULL,
	DateKey INTEGER NOT NULL,
	OrganizationKey INTEGER NOT NULL,
	DepartmentGroupKey INTEGER NOT NULL,
	ScenarioKey INTEGER NOT NULL,
	AccountKey INTEGER NOT NULL,
	Amount FLOAT NOT NULL,
	"Date" DATETIME NULL
)
GO
CREATE TABLE Adventureworks.FactInternetSales(
	ProductKey INTEGER NOT NULL,
	OrderDateKey INTEGER NOT NULL,
	DueDateKey INTEGER NOT NULL,
	ShipDateKey INTEGER NOT NULL,
	CustomerKey INTEGER NOT NULL,
	PromotionKey INTEGER NOT NULL,
	CurrencyKey INTEGER NOT NULL,
	SalesTerritoryKey INTEGER NOT NULL,
	SalesOrderNumber VARCHAR(20) NOT NULL,
	SalesOrderLineNumber TINYINT NOT NULL,
	RevisionNumber TINYINT NOT NULL,
	OrderQuantity SMALLINT NOT NULL,
	UnitPrice MONEY NOT NULL,
	ExtendedAmount MONEY NOT NULL,
	UnitPriceDiscountPct FLOAT NOT NULL,
	DiscountAmount FLOAT NOT NULL,
	ProductStandardCost MONEY NOT NULL,
	TotalProductCost MONEY NOT NULL,
	SalesAmount MONEY NOT NULL,
	TaxAmt MONEY NOT NULL,
	Freight MONEY NOT NULL,
	CarrierTrackingNumber VARCHAR(25) NULL,
	CustomerPONumber VARCHAR(25) NULL,
	OrderDate DATETIME NULL,
	DueDate DATETIME NULL,
	ShipDate DATETIME NULL,
    CONSTRAINT PK PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber)
)
GO
CREATE TABLE Adventureworks.FactInternetSalesReason(
	SalesOrderNumber VARCHAR(20) NOT NULL,
	SalesOrderLineNumber TINYINT NOT NULL,
	SalesReasonKey INTEGER NOT NULL,
    CONSTRAINT PK PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber, SalesReasonKey)
)
GO
CREATE TABLE Adventureworks.FactProductInventory(
	ProductKey INTEGER NOT NULL,
	DateKey INTEGER NOT NULL,
	MovementDate DATE NOT NULL,
	UnitCost MONEY NOT NULL,
	UnitsIn INTEGER NOT NULL,
	UnitsOut INTEGER NOT NULL,
	UnitsBalance INTEGER NOT NULL,
    CONSTRAINT PK PRIMARY KEY (ProductKey, DateKey)
)
GO
CREATE TABLE Adventureworks.FactResellerSales(
	ProductKey INTEGER NOT NULL,
	OrderDateKey INTEGER NOT NULL,
	DueDateKey INTEGER NOT NULL,
	ShipDateKey INTEGER NOT NULL,
	ResellerKey INTEGER NOT NULL,
	EmployeeKey INTEGER NOT NULL,
	PromotionKey INTEGER NOT NULL,
	CurrencyKey INTEGER NOT NULL,
	SalesTerritoryKey INTEGER NOT NULL,
	SalesOrderNumber VARCHAR(20) NOT NULL,
	SalesOrderLineNumber TINYINT NOT NULL,
	RevisionNumber TINYINT NULL,
	OrderQuantity SMALLINT NULL,
	UnitPrice MONEY NULL,
	ExtendedAmount MONEY NULL,
	UnitPriceDiscountPct FLOAT NULL,
	DiscountAmount FLOAT NULL,
	ProductStandardCost MONEY NULL,
	TotalProductCost MONEY NULL,
	SalesAmount MONEY NULL,
	TaxAmt MONEY NULL,
	Freight MONEY NULL,
	CarrierTrackingNumber VARCHAR(25) NULL,
	CustomerPONumber VARCHAR(25) NULL,
	OrderDate DATETIME NULL,
	DueDate DATETIME NULL,
	ShipDate DATETIME NULL,
    CONSTRAINT PK PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber)
)
GO
CREATE TABLE Adventureworks.FactSalesQuota(
	SalesQuotaKey INTEGER IDENTITY(1,1) NOT NULL,
	EmployeeKey INTEGER NOT NULL,
	DateKey INTEGER NOT NULL,
	CalendarYear SMALLINT NOT NULL,
	CalendarQuarter TINYINT NOT NULL,
	SalesAmountQuota MONEY NOT NULL,
	"Date" DATETIME NULL,
    CONSTRAINT PK PRIMARY KEY (SalesQuotaKey)
)
GO
CREATE TABLE Adventureworks.FactSurveyResponse(
	SurveyResponseKey INTEGER IDENTITY(1,1) NOT NULL,
	DateKey INTEGER NOT NULL,
	CustomerKey INTEGER NOT NULL,
	ProductCategoryKey INTEGER NOT NULL,
	EnglishProductCategoryName VARCHAR(50) NOT NULL,
	ProductSubcategoryKey INTEGER NOT NULL,
	EnglishProductSubcategoryName VARCHAR(50) NOT NULL,
	"Date" DATETIME NULL,
    CONSTRAINT PK PRIMARY KEY (SurveyResponseKey)
)
GO
CREATE TABLE Adventureworks.NewFactCurrencyRate(
	AverageRate REAL NULL,
	CurrencyID VARCHAR(3) NULL,
	CurrencyDate DATE NULL,
	EndOfDayRate REAL NULL,
	CurrencyKey INTEGER NULL,
	DateKey INTEGER NULL
)
GO
CREATE TABLE Adventureworks.ProspectiveBuyer(
	ProspectiveBuyerKey INTEGER IDENTITY(1,1) NOT NULL,
	ProspectAlternateKey VARCHAR(15) NULL,
	FirstName VARCHAR(50) NULL,
	MiddleName VARCHAR(50) NULL,
	LastName VARCHAR(50) NULL,
	BirthDate DATETIME NULL,
	MaritalStatus CHAR(1) NULL,
	Gender VARCHAR(1) NULL,
	EmailAddress VARCHAR(50) NULL,
	YearlyIncome MONEY NULL,
	TotalChildren TINYINT NULL,
	NumberChildrenAtHome TINYINT NULL,
	Education VARCHAR(40) NULL,
	Occupation VARCHAR(100) NULL,
	HouseOwnerFlag CHAR(1) NULL,
	NumberCarsOwned TINYINT NULL,
	AddressLine1 VARCHAR(120) NULL,
	AddressLine2 VARCHAR(120) NULL,
	City VARCHAR(30) NULL,
	StateProvinceCode VARCHAR(3) NULL,
	PostalCode VARCHAR(15) NULL,
	Phone VARCHAR(20) NULL,
	Salutation VARCHAR(8) NULL,
	Unknown INTEGER NULL,
    CONSTRAINT PK PRIMARY KEY (ProspectiveBuyerKey)
)
GO
-- foreign keys
ALTER TABLE Adventureworks.DimAccount ADD 
    CONSTRAINT FK_DimAccount_DimAccount FOREIGN KEY 
    (
        ParentAccountKey
    ) REFERENCES Adventureworks.DimAccount (AccountKey) NOCHECK
GO
ALTER TABLE Adventureworks.DimCustomer ADD
	CONSTRAINT FK_DimCustomer_DimGeography FOREIGN KEY
	(
		GeographyKey
	)
	REFERENCES Adventureworks.DimGeography (GeographyKey) NOCHECK
GO
ALTER TABLE Adventureworks.DimDepartmentGroup ADD 
    CONSTRAINT FK_DimDepartmentGroup_DimDepartmentGroup FOREIGN KEY 
    (
        ParentDepartmentGroupKey
    ) REFERENCES Adventureworks.DimDepartmentGroup (DepartmentGroupKey) NOCHECK
GO
ALTER TABLE Adventureworks.DimEmployee ADD 
    CONSTRAINT FK_DimEmployee_DimSalesTerritory FOREIGN KEY 
    (
        SalesTerritoryKey
    ) REFERENCES Adventureworks.DimSalesTerritory (SalesTerritoryKey) NOCHECK,
	CONSTRAINT FK_DimEmployee_DimEmployee FOREIGN KEY 
    (
        ParentEmployeeKey
    ) REFERENCES Adventureworks.DimEmployee (EmployeeKey) NOCHECK
GO
ALTER TABLE Adventureworks.DimGeography ADD
    CONSTRAINT FK_DimGeography_DimSalesTerritory  FOREIGN KEY 
    (
        SalesTerritoryKey
    ) REFERENCES Adventureworks.DimSalesTerritory (SalesTerritoryKey) NOCHECK
GO    
ALTER TABLE Adventureworks.DimOrganization ADD 
    CONSTRAINT FK_DimOrganization_DimCurrency FOREIGN KEY 
    (
        CurrencyKey
    ) REFERENCES Adventureworks.DimCurrency (CurrencyKey) NOCHECK,
    CONSTRAINT FK_DimOrganization_DimOrganization FOREIGN KEY 
    (
        ParentOrganizationKey
    ) REFERENCES Adventureworks.DimOrganization (OrganizationKey) NOCHECK
GO
ALTER TABLE Adventureworks.DimProduct ADD 
    CONSTRAINT FK_DimProduct_DimProductSubcategory FOREIGN KEY 
    (
        ProductSubcategoryKey
    ) REFERENCES Adventureworks.DimProductSubcategory (ProductSubcategoryKey) NOCHECK
GO
ALTER TABLE Adventureworks.DimProductSubcategory ADD 
    CONSTRAINT FK_DimProductSubcategory_DimProductCategory FOREIGN KEY 
    (
        ProductCategoryKey
    ) REFERENCES Adventureworks.DimProductCategory (ProductCategoryKey) NOCHECK
GO
ALTER TABLE Adventureworks.DimReseller ADD
	CONSTRAINT FK_DimReseller_DimGeography FOREIGN KEY
	(
		GeographyKey
	) REFERENCES Adventureworks.DimGeography (GeographyKey) NOCHECK
GO
ALTER TABLE Adventureworks.FactCallCenter ADD 
    CONSTRAINT FK_FactCallCenter_DimDate FOREIGN KEY 
    (
        DateKey
    ) REFERENCES Adventureworks.DimDate (DateKey) NOCHECK
GO
ALTER TABLE Adventureworks.FactCurrencyRate ADD 
    CONSTRAINT FK_FactCurrencyRate_DimDate FOREIGN KEY 
    (
       DateKey
    ) REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	CONSTRAINT FK_FactCurrencyRate_DimCurrency FOREIGN KEY 
    (
       CurrencyKey
    ) REFERENCES Adventureworks.DimCurrency (CurrencyKey) NOCHECK
GO
ALTER TABLE Adventureworks.FactFinance ADD 
    CONSTRAINT FK_FactFinance_DimScenario FOREIGN KEY 
    (
        ScenarioKey
    ) REFERENCES Adventureworks.DimScenario (ScenarioKey) NOCHECK,
    CONSTRAINT FK_FactFinance_DimOrganization FOREIGN KEY 
    (
        OrganizationKey
    ) REFERENCES Adventureworks.DimOrganization (OrganizationKey) NOCHECK,
    CONSTRAINT FK_FactFinance_DimDepartmentGroup FOREIGN KEY 
    (
        DepartmentGroupKey
    ) REFERENCES Adventureworks.DimDepartmentGroup (DepartmentGroupKey) NOCHECK,
	CONSTRAINT FK_FactFinance_DimDate FOREIGN KEY 
    (
        DateKey
    ) REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	CONSTRAINT FK_FactFinance_DimAccount FOREIGN KEY 
    (
        AccountKey
    ) REFERENCES Adventureworks.DimAccount (AccountKey) NOCHECK	
GO
ALTER TABLE Adventureworks.FactInternetSales ADD 
    CONSTRAINT FK_FactInternetSales_DimCurrency FOREIGN KEY 
    (
        CurrencyKey
    ) REFERENCES Adventureworks.DimCurrency (CurrencyKey) NOCHECK,
	 CONSTRAINT FK_FactInternetSales_DimCustomer FOREIGN KEY 
    (
        CustomerKey
    ) REFERENCES Adventureworks.DimCustomer (CustomerKey) NOCHECK,
	 CONSTRAINT FK_FactInternetSales_DimDate FOREIGN KEY 
    (
        OrderDateKey
    ) REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	 CONSTRAINT FK_FactInternetSales_DimDate1 FOREIGN KEY 
    (
        DueDateKey
    ) REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	 CONSTRAINT FK_FactInternetSales_DimDate2 FOREIGN KEY 
    (
        ShipDateKey
    ) REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	 CONSTRAINT FK_FactInternetSales_DimProduct FOREIGN KEY 
    (
        ProductKey
    ) REFERENCES Adventureworks.DimProduct (ProductKey) NOCHECK,
	CONSTRAINT FK_FactInternetSales_DimPromotion FOREIGN KEY 
    (
        PromotionKey
    ) REFERENCES Adventureworks.DimPromotion (PromotionKey) NOCHECK,
	CONSTRAINT FK_FactInternetSales_DimSalesTerritory FOREIGN KEY 
    (
        SalesTerritoryKey
    ) REFERENCES Adventureworks.DimSalesTerritory (SalesTerritoryKey) NOCHECK
GO
ALTER TABLE Adventureworks.FactInternetSalesReason ADD 
    CONSTRAINT FK_FactInternetSalesReason_FactInternetSales FOREIGN KEY 
    (
        SalesOrderNumber, SalesOrderLineNumber
    ) REFERENCES Adventureworks.FactInternetSales (SalesOrderNumber, SalesOrderLineNumber),
	CONSTRAINT FK_FactInternetSalesReason_DimSalesReason FOREIGN KEY
	(
		SalesReasonKey
	) REFERENCES Adventureworks.DimSalesReason (SalesReasonKey) NOCHECK
GO
ALTER TABLE Adventureworks.FactProductInventory ADD 
    CONSTRAINT FK_FactProductInventory_DimDate FOREIGN KEY 
    (
        DateKey
    ) REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	CONSTRAINT FK_FactProductInventory_DimProduct FOREIGN KEY
	(
		ProductKey
	) REFERENCES Adventureworks.DimProduct (ProductKey) NOCHECK
GO
ALTER TABLE Adventureworks.FactResellerSales ADD 
    CONSTRAINT FK_FactResellerSales_DimCurrency FOREIGN KEY(CurrencyKey)
			REFERENCES Adventureworks.DimCurrency (CurrencyKey) NOCHECK,
	CONSTRAINT FK_FactResellerSales_DimDate FOREIGN KEY(OrderDateKey)
			REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	CONSTRAINT FK_FactResellerSales_DimDate1 FOREIGN KEY(DueDateKey)
			REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	CONSTRAINT FK_FactResellerSales_DimDate2 FOREIGN KEY(ShipDateKey)
			REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	CONSTRAINT FK_FactResellerSales_DimEmployee FOREIGN KEY(EmployeeKey)
			REFERENCES Adventureworks.DimEmployee (EmployeeKey) NOCHECK,
	CONSTRAINT FK_FactResellerSales_DimProduct FOREIGN KEY(ProductKey)
			REFERENCES Adventureworks.DimProduct (ProductKey) NOCHECK,
	CONSTRAINT FK_FactResellerSales_DimPromotion FOREIGN KEY(PromotionKey)
			REFERENCES Adventureworks.DimPromotion (PromotionKey) NOCHECK,
	CONSTRAINT FK_FactResellerSales_DimReseller FOREIGN KEY(ResellerKey)
			REFERENCES Adventureworks.DimReseller (ResellerKey) NOCHECK,
	CONSTRAINT FK_FactResellerSales_DimSalesTerritory FOREIGN KEY(SalesTerritoryKey)
			REFERENCES Adventureworks.DimSalesTerritory (SalesTerritoryKey) NOCHECK
GO
ALTER TABLE Adventureworks.FactSalesQuota ADD 
    CONSTRAINT FK_FactSalesQuota_DimEmployee FOREIGN KEY(EmployeeKey)
			REFERENCES Adventureworks.DimEmployee (EmployeeKey) NOCHECK,
    CONSTRAINT FK_FactSalesQuota_DimDate FOREIGN KEY(DateKey)
			REFERENCES Adventureworks.DimDate (DateKey) NOCHECK
GO
ALTER TABLE Adventureworks.FactSurveyResponse  ADD 
    CONSTRAINT FK_FactSurveyResponse_DateKey FOREIGN KEY(DateKey)
			REFERENCES Adventureworks.DimDate (DateKey) NOCHECK,
	CONSTRAINT FK_FactSurveyResponse_CustomerKey FOREIGN KEY(CustomerKey)
			REFERENCES Adventureworks.DimCustomer (CustomerKey) NOCHECK
GO
--- views
CREATE VIEW Adventureworks.vDMPrep
AS
    SELECT
        pc.EnglishProductCategoryName
        ,Coalesce(p.ModelName, p.EnglishProductName) AS Model
        ,c.CustomerKey
        ,s.SalesTerritoryGroup AS Region
        ,CASE
            WHEN Month(GetDate()) < Month(c.BirthDate)
                THEN DateDiff(yy,c.BirthDate,GetDate()) - 1
            WHEN Month(GetDate()) = Month(c.BirthDate)
            AND Day(GetDate()) < Day(c.BirthDate)
                THEN DateDiff(yy,c.BirthDate,GetDate()) - 1
            ELSE DateDiff(yy,c.BirthDate,GetDate())
        END AS Age
        ,CASE
            WHEN c.YearlyIncome < 40000 THEN 'Low'
            WHEN c.YearlyIncome > 60000 THEN 'High'
            ELSE 'Moderate'
        END AS IncomeGroup
        ,d.CalendarYear
        ,d.FiscalYear
        ,d.MonthNumberOfYear AS Month
        ,f.SalesOrderNumber AS OrderNumber
        ,f.SalesOrderLineNumber AS LineNumber
        ,f.OrderQuantity AS Quantity
        ,f.ExtendedAmount AS Amount  
    FROM
        Adventureworks.FactInternetSales f
    INNER JOIN Adventureworks.DimDate d
        ON f.OrderDateKey = d.DateKey
    INNER JOIN Adventureworks.DimProduct p
        ON f.ProductKey = p.ProductKey
    INNER JOIN Adventureworks.DimProductSubcategory psc
        ON p.ProductSubcategoryKey = psc.ProductSubcategoryKey
    INNER JOIN Adventureworks.DimProductCategory pc
        ON psc.ProductCategoryKey = pc.ProductCategoryKey
    INNER JOIN Adventureworks.DimCustomer c
        ON f.CustomerKey = c.CustomerKey
    INNER JOIN Adventureworks.DimGeography g
        ON c.GeographyKey = g.GeographyKey
    INNER JOIN Adventureworks.DimSalesTerritory s
        ON g.SalesTerritoryKey = s.SalesTerritoryKey 
GO
CREATE VIEW Adventureworks.vTargetMail 
AS
    SELECT
        c.CustomerKey, 
        c.GeographyKey, 
        c.CustomerAlternateKey, 
        c.Title, 
        c.FirstName, 
        c.MiddleName, 
        c.LastName, 
        c.NameStyle, 
        c.BirthDate, 
        c.MaritalStatus, 
        c.Suffix, 
        c.Gender, 
        c.EmailAddress, 
        c.YearlyIncome, 
        c.TotalChildren, 
        c.NumberChildrenAtHome, 
        c.EnglishEducation, 
        c.SpanishEducation, 
        c.FrenchEducation, 
        c.EnglishOccupation, 
        c.SpanishOccupation, 
        c.FrenchOccupation, 
        c.HouseOwnerFlag, 
        c.NumberCarsOwned, 
        c.AddressLine1, 
        c.AddressLine2, 
        c.Phone, 
        c.DateFirstPurchase, 
        c.CommuteDistance, 
        x.Region, 
        x.Age, 
        CASE x.Bikes 
            WHEN 0 THEN 0 
            ELSE 1 
        END AS BikeBuyer
    FROM
        Adventureworks.DimCustomer c INNER JOIN (
            SELECT
                CustomerKey
                ,Region
                ,Age
                ,Sum(
                    CASE EnglishProductCategoryName 
                        WHEN 'Bikes' THEN 1 
                        ELSE 0 
                    END) AS Bikes
            FROM
                Adventureworks.vDMPrep 
            GROUP BY
                CustomerKey
                ,Region
                ,Age
            ) AS x
        ON c.CustomerKey = x.CustomerKey
GO