USE master
GO

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Telecom')
BEGIN
	DROP DATABASE Telecom
END;
Create DATABASE Telecom;
GO