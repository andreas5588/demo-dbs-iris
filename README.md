
### Build from source in this repo

Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

1. Clone/git pull the repo into any local directory

```shell
git clone https://github.com/andreas5588/demo-dbs-iris.git
```

2. Open the console in this directory and run:

```shell
docker-compose build
```

By default the Container ports are mapped to the same local ports. Please check the availability of the ports on your maschine first.


3. Run the iris-dataset container with the datamodel:

```shell
docker-compose up -d
```
docker-compose up -d --build --force-recreate
docker-compose build --progress=plain

Aviation: https://github.com/intersystems/Samples-Aviation
Person: https://github.com/intersystems/Samples-Data
AdventureWworksDW: https://github.com/bdeboe/isc-adventureworks/



## Using and testing the datamodels

Now that the container is running, you should be able to create a connection to the management portal or just create a database connection with your favorite sql query tool.

 The JDBC URL should be looks like: jdbc:IRIS://localhost:1972/<namespace>

 You can use User: _SYSTEM with pwd: SYS



 IRIS20242VM
_SYSTEM
SYS
jdbc:IRIS://192.168.178.67:1972/USER
com.intersystems.jdbc.IRISDriver



org.duckdb.DuckDBDriver
jdbc.duckdb