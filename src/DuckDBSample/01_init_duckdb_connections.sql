USE DATABASE %SYS
GO
/*

creating connections like this just doesn't work. see also https://community.intersystems.com/post/how-can-i-create-sqlgateway-connection-using-code

INSERT INTO %Library.sys_SQLConnection 
    (Connection_Name,OnConnectStatement,ReverseOJ,URL,Usr,bUnicodeStream,bindTSasString,classpath,
    driver,isJDBC,needlongdatalen,noconcat,nodefq,nofnconv,nvl,properties,pwd,useCAST,useCASTCHAR,useCOALESCE,xadriver) 
    VALUES 
    ('ConDuckDB',NULL,0,'jdbc:duckdb:','x',0,0,'/opt/demodbsiris/lib/duckdb_jdbc-1.1.3.jar',
    'org.duckdb.DuckDBDriver',1,0,NULL,0,0,0,NULL,NULL,0,0,1,NULL)
GO
*/
USE DATABASE DUCKDB_SAMPLE
GO
CREATE FOREIGN SERVER ExtSrv.DuckDB FOREIGN DATA WRAPPER JDBC CONNECTION 'ConDuckDB'
GO