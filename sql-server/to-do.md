# SQL Server

https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash


Pull the SQL Server 2019 Linux container image from Microsoft Container Registry.

    docker pull mcr.microsoft.com/mssql/server:2019-latest


To run the container image with Docker, you can use the following command from a bash shell (Linux/macOS) or elevated PowerShell command prompt.

    docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=poliavahmg00265Ad2997b" \
   -p 1433:1433 --name sql1 -h sql1 \
   -d mcr.microsoft.com/mssql/server:2019-latest

To view your Docker containers, use the docker ps command.

    sudo docker ps -a


Use the `docker exec -it` command to start an interactive bash shell inside your running container. 

In the following example `sql1` is name specified by the `--name` parameter when you created the container.

    docker exec -it sql1 "bash"

Once inside the container, connect locally with sqlcmd. 

Sqlcmd is not in the path by default, so you have to specify the full path.

    /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "poliavahmg00265Ad2997b"
