# Stage 1: Use a lightweight MySQL image to extract necessary files
FROM mysql:latest AS intermediate

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_USER=project_user
ENV MYSQL_PASSWORD=project_password
ENV MYSQL_DATABASE=project_db

# Copy custom configuration file
COPY my.cnf /etc/mysql/my.cnf
COPY init.sql /docker-entrypoint-initdb.d/
 
# Stage 2: Create a minimal MySQL image
FROM scratch

# Copy binaries and necessary files from the intermediate stage
COPY --from=intermediate / /

# Expose MySQL port
EXPOSE 3306

# Define the volume for MySQL data
VOLUME /var/lib/mysql

# Start MySQL service
CMD ["mysqld"]

