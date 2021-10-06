# Too see

- https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash
- https://hub.docker.com/_/microsoft-mssql-server
- https://www.microsoft.com/en-us/sql-server/developer-get-started/node/ubuntu

    docker-compose up --build
    docker run -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=numsey#2021' -p 1433:1433 -e 'MSSQL_PID=Express' 
    docker run -d mcr.microsoft.com/mssql/server:2017-latest        -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=numsey#2021' -p 5433:1433 
    docker run -d mcr.microsoft.com/mssql/server:2019-latest        -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=numsey#2021" -p 1433:1433 --name sql1 -h sql1 
    docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P numsey#2021