
## This script creates a new database called  DataWarehouse.
USE master;
Go
-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse
GO

USE DataWarehouse;
GO
-- Schema is like a folder that is used to organize our work. Here the bronze, silver and gold is used to organise our tables into raw data,cleaned, and ready for business use

create SCHEMA bronze
GO
create SCHEMA silver;
GO
create SCHEMA gold;
