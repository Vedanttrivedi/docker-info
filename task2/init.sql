CREATE DATABASE IF NOT EXISTS project_db;
USE project_db;
 
CREATE TABLE paths (
  id int(11)
)
 
CREATE USER 'project_user'@'%' IDENTIFIED BY 'project_password';
GRANT ALL PRIVILEGES ON project_db.* TO 'project_user'@'%';
FLUSH PRIVILEGES;
