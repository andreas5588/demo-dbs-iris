USE DATABASE "FEDERATION"
GO
CREATE FOREIGN SERVER LocalIRIS.AdventureworksDW_Sample FOREIGN DATA WRAPPER JDBC CONNECTION 'ConLocal_AdventureworksDW_Sample'
GO
CREATE FOREIGN SERVER LocalIRIS.Person_SAMPLE FOREIGN DATA WRAPPER JDBC CONNECTION 'ConLocal_Person_SAMPLE'
GO
CREATE FOREIGN SERVER LocalIRIS.Aviation_SAMPLE FOREIGN DATA WRAPPER JDBC CONNECTION 'ConLocal_Aviation_SAMPLE'
GO
CREATE FOREIGN TABLE Adventureworks.DimDate SERVER LocalIRIS.AdventureworksDW_Sample TABLE 'Adventureworks.DimDate'
GO
CREATE FOREIGN TABLE Sample.Company SERVER LocalIRIS.Person_SAMPLE TABLE 'Sample.Company'
GO
-- Aviation Namespace just doesnt work. All three tables produce the same error.
-- Unexpected error occurred in generated CREATE FOREIGN TABLE code:ERROR #5002: ObjectScript error: <ILLEGAL VALUE>Decode+1^%SQL.FDW.XDBC.1
CREATE FOREIGN TABLE Aviation.Event SERVER LocalIRIS.Aviation_SAMPLE TABLE 'Aviation.Event'
GO