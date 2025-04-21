THROUGH SERVER ExtSrv.DuckDB SELECT * FROM read_csv('/opt/demodbsiris/src/DuckDBSample/data/airlines.dat');
GO
THROUGH SERVER ExtSrv.DuckDB SELECT * FROM read_parquet('/opt/demodbsiris/src/DuckDBSample/data/yellow_tripdata_2024-01.parquet') LIMIT 1000;
GO
THROUGH SERVER ExtSrv.DuckDB SELECT 1; CREATE VIEW Test1 AS SELECT * FROM read_csv('/opt/demodbsiris/src/DuckDBSample/data/airlines.dat'); SELECT 2;
GO
THROUGH SERVER ExtSrv.DuckDB SELECT 1; CREATE VIEW Test2 AS SELECT 1; SELECT 2;
GO
THROUGH SERVER ExtSrv.DuckDB SELECT * FROM Test1
GO
THROUGH SERVER ExtSrv.DuckDB SELECT 1; SHOW ALL TABLES;