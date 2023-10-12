USE Telecom
GO

truncate table fact_transaction
GO
truncate table err_destination_output
GO
truncate table err_source_output
GO

SELECT * FROM fact_transaction

select * from err_destination_output
select * from err_source_output