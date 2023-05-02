# Use the official PostgreSQL image as the base image
FROM postgres:latest

# Set environment variables for the database
ENV POSTGRES_USER john
ENV POSTGRES_PASSWORD 1234
ENV POSTGRES_DB sample1

# Copy the SQL scripts to the container
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432
