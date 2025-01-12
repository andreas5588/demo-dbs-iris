SELECT 
       SERVER_SCHEMA,
       SERVER_NAME,
       CLASSNAME,
       FOREIGN_DATA_WRAPPER,
       PARAMETERS,
       DESCRIPTION,
       OWNER
FROM INFORMATION_SCHEMA.FOREIGN_SERVERS;
GO
THROUGH SERVER ExtSrv.DuckDB SELECT * FROM read_csv('/opt/demodbsiris/src/DuckDBSample/data/airlines.dat');
GO
THROUGH SERVER ExtSrv.DuckDB SELECT * FROM read_parquet('/opt/demodbsiris/src/DuckDBSample/data/yellow_tripdata_2024-01.parquet') LIMIT 1000;
GO