# Dockerized InterSystems IRIS Database with Demo Namespaces

This repository contains all the necessary resources to create a Docker container running an InterSystems IRIS database. The database includes several namespaces (databases) with demo data that can be used for development, testing, or training purposes.
The primary focus of this project is the SQL layer of InterSystems IRIS. While InterSystems IRIS is a versatile data platform with numerous features such as object-oriented programming, interoperability, and machine learning integration, this repository is dedicated to exploring and utilizing its SQL capabilities. Other concepts and functionalities of the platform are not covered here.


## Available Namespaces

![Namespaces](/doc/view_all_namespace_sqldatalens.png)

The following namespaces with example databases are available:

- **Aviation_SAMPLE**: Contains demo data from the aviation industry, such as flight data or aircraft fleet information. [Original repo: Samples-Aviation](https://github.com/intersystems/Samples-Aviation)
![Aviation_SAMPLE](/doc/tables_aviation_namespace_sqldatalens.png)

- **Person_SAMPLE**: A sample database with information about individuals and their attributes, ideal for generic database testing. [Original repo: Samples-Data](https://github.com/intersystems/Samples-Data)
![Person_SAMPLE](/doc/tables_person_namespace_sqldatalens.png)

- **AdventureworksDW_SAMPLE**: A data warehouse example from the MS AdventureWorks databases, suitable for BI and reporting scenarios. [Original repo: isc-adventureworks](https://github.com/bdeboe/isc-adventureworks/)
![AdventureworksDW_SAMPLE](/doc/tables_adventureworks_namespace_sqldatalens.png)
The data (csv files) comes from the original MS repo [microsoft sql-server-samples](https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/adventure-works/data-warehouse-install-script)

- **DuckDB_SAMPLE**: A sample database focused on DuckDB integration. 
The **airlines.dat file** (src\DuckDBSample) contains information on airlines Data files and comes the from: https://openflights.org/data.html
The **yellow_tripdata_2024-01.parquet** file comes from ttps://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page. Also helpful [azure/open-datasets](https://learn.microsoft.com/en-us/azure/open-datasets/dataset-taxi-yellow?tabs=azureml-opendatasets)

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