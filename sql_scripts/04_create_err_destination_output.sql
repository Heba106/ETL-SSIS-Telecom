USE Telecom
GO

IF EXISTS (SELECT * FROM sys.objects WHERE name='err_destination_output' and type='U')
BEGIN
	DROP TABLE err_destination_output;
END;
GO

CREATE TABLE err_destination_output(
    id int,
    imsi varchar(9),
    imei varchar(14),
    cell int,
    lac int,
    event_type varchar(1),
    event_ts datetime,
    ErrorCode int,
    ErrorColumn int,
	tac varchar(8),
	snr varchar(6),
)