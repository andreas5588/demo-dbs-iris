# Dockerized InterSystems IRIS Database with Demo Namespaces

This repository contains all the necessary resources to create a Docker container running an InterSystems IRIS database. The database includes several namespaces (databases) with demo data that can be used for development, testing, or training purposes.
The primary focus of this project is the SQL layer of InterSystems IRIS. While InterSystems IRIS is a versatile data platform with numerous features such as object-oriented programming, interoperability, and machine learning integration, this repository is dedicated to exploring and utilizing its SQL capabilities. Other concepts and functionalities of the platform are not covered here.


## Available Namespaces

![Namespaces](/doc/view_all_namespace_sqldatalens.png)

The following namespaces are available:

- **AdventureworksDW_SAMPLE**: A data warehouse example from the MS AdventureWorks databases, suitable for BI and reporting scenarios. [Original repo: isc-adventureworks](https://github.com/bdeboe/isc-adventureworks/)
![AdventureworksDW_SAMPLE](/doc/tables_adventureworks_namespace_sqldatalens.png)
The data (csv files) comes from the original MS repo [microsoft sql-server-samples](https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/adventure-works/data-warehouse-install-script)


- **Aviation_SAMPLE**: Contains demo data from the aviation industry, such as flight data or aircraft fleet information. [Original repo: Samples-Aviation](https://github.com/intersystems/Samples-Aviation)
![Aviation_SAMPLE](/doc/tables_aviation_namespace_sqldatalens.png)


- **DuckDB_SAMPLE**: A sample database focused on DuckDB integration. 
The **airlines.dat file** (src\DuckDBSample) contains information on airlines. The data file (csv) comes the from: https://openflights.org/data.html
The **yellow_tripdata_2024-01.parquet** file comes from https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page. Also helpful [azure/open-datasets](https://learn.microsoft.com/en-us/azure/open-datasets/dataset-taxi-yellow?tabs=azureml-opendatasets)

- **FEDERATION**: This namepace is used to combine the data from other namespaces. IRIS can't execute SQL Statements that combines tables from different nanmespaces. To avoid this limitation this federated namespace is used to include the other namespaces by creating foreign server. With that it is possilbe to create foreign tables, with that you can combine all tables within this federated namespace and write SQL statements that combine the table in one SQL Statements. This namespace is used to explore this feature. 

This namespace is designed to facilitate the integration of data from multiple namespaces. IRIS does not support executing SQL statements that combine tables from different namespaces. To address this limitation, this federated namespace leverages the concept of creating foreign servers to include other namespaces.

By defining foreign tables, it becomes possible to seamlessly combine tables across namespaces, allowing users to write SQL statements that unify data into a single query. This namespace is used to explore this feature, serves as a practical demonstration of this capability, showcasing how to explore and utilize it.

![Foreign Tables](/doc/foreign_table.png)

![Foreign Tables](/doc/foreign_table_2.png.png)


In this namespace foreign servers are created to connect to the other namespaces like this:

```sql
CREATE FOREIGN SERVER LocalIRIS.AdventureworksDW_Sample FOREIGN DATA WRAPPER JDBC CONNECTION 'ConLocal_AdventureworksDW_Sample'
GO
CREATE FOREIGN SERVER LocalIRIS.Person_SAMPLE FOREIGN DATA WRAPPER JDBC CONNECTION 'ConLocal_Person_SAMPLE'
GO
CREATE FOREIGN SERVER LocalIRIS.Aviation_SAMPLE FOREIGN DATA WRAPPER JDBC CONNECTION 'ConLocal_Aviation_SAMPLE'
GO
```

The necessary connections were previously created in file iris_initialisation.script. This is necessary because no functional connections can be created via SQL. See also: [create-sqlgateway-connection-using-code](https://community.intersystems.com/post/how-can-i-create-sqlgateway-connection-using-code)


```sql
CREATE FOREIGN TABLE Adventureworks.DimDate SERVER LocalIRIS.AdventureworksDW_Sample TABLE 'Adventureworks.DimDate'
GO
CREATE FOREIGN TABLE Sample.Company SERVER LocalIRIS.Person_SAMPLE TABLE 'Sample.Company'
GO
```

At this time it is not possible to integrate tables from the Aviation Namespace. It just doesnt work. All three tables produce the same error.

```sql
CREATE FOREIGN TABLE Aviation.Event SERVER LocalIRIS.Aviation_SAMPLE TABLE 'Aviation.Event'
Unexpected error occurred in generated CREATE FOREIGN TABLE code:ERROR #5002: ObjectScript error: <ILLEGAL VALUE>Decode+1^%SQL.FDW.XDBC.1
```


- **Person_SAMPLE**: A sample database with information about individuals and their attributes, ideal for generic database testing. [Original repo: Samples-Data](https://github.com/intersystems/Samples-Data)
![Person_SAMPLE](/doc/tables_person_namespace_sqldatalens.png)



## Purpose of this Repository

This repository was created to provide developers and database enthusiasts with an easy way to work with InterSystems IRIS and explore various database scenarios. The included demo data and namespaces enable:

- **Rapid Prototyping**: Use the prebuilt databases to quickly develop applications and queries.
- **Learning and Training**: Perfect for beginners to get familiar with the InterSystems IRIS platform and its features.
- **Testing**: Ideal for testing scripts, integrations, and other solutions in a realistic environment.




## Prerequisites

- Installed [Docker](https://www.docker.com/).
- Basic knowledge of Docker and InterSystems IRIS.

## Installation and Usage (use the image directly from https://hub.docker.com/)

### 1. pull and run

```shell
docker pull andreasschneiderixdbde/demo-dbs-iris:latest
```

## Installation and Usage (build and run from github)

### 1. Clone the Repository

```shell
git clone https://github.com/andreas5588/demo-dbs-iris.git
cd demo-dbs-iris
```

### 2. Build the Docker Image

Run the following command to build the Docker image:

```shell
docker build -t andreasschneiderixdbde/demo-dbs-iris . --progress=plain
```

### 3. Start the Container

Start the Docker container with the following command:

```shell
docker run -d -p 1972:1972 -p 52773:52773 --name demo-dbs-iris-container andreasschneiderixdbde/demo-dbs-iris
```
By default the Container ports are mapped to the same local ports. Please check the availability of the ports on your maschine first.
* The container is now running, and the InterSystems IRIS Management Portal is available at `http://localhost:52773/csp/sys/UtilHome.csp`.
* Connect via JDBC with this URL: jdbc:IRIS://localhost:1972/AdventureworksDW_SAMPLE


```shell
docker stop demo-dbs-iris-container
```

### 4. Log in to the IRIS Management Console

Use the following default credentials to log in:

- **Username:** `_SYSTEM`
- **Password:** `SYS`

> **Note**: Change the default credentials to ensure security.

## Additional Information

- [InterSystems IRIS Documentation](https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls)
- [Docker Documentation](https://docs.docker.com/)

## Contributors

We welcome contributions to this project! Please submit pull requests or report issues via the [Issues page](https://github.com/andreas5588/demo-dbs-iris/issues).

## License

This project is licensed under the [MIT License](LICENSE).