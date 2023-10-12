use Telecom
go

IF EXISTS ( SELECT * FROM sys.objects WHERE name = 'err_source_output' and type='U')
BEGIN
	DROP TABLE err_source_output;
END;
GO

CREATE TABLE  err_source_output (
	id INT IDENTITY(1,1),
    [Flat File Source Error Output Column] varchar(max),
    [ErrorCode] int,
    [ErrorColumn] int
)


--alter table err_source_output add audit_id int;