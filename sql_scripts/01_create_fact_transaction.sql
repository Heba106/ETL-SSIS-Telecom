USE Telecom
GO

IF EXISTS (SELECT * FROM sys.objects WHERE name='fact_transaction' and type='U')
BEGIN
	DROP TABLE fact_transaction;
END;
GO

CREATE TABLE fact_transaction(
id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
transaction_id INT NOT NULL,
subscriber_id int,
imsi VARCHAR(9) NOT NULL,
imei varchar(14) NULL,
tac varchar(8) NULL,
snr varchar(6) NULL,
cell INT NOT NULL,
lac INT NOT NULL,
event_type VARCHAR(2) NULL,
event_ts DATETIME NOT NULL,
audit_id INT NOT NULL default (-1)
);
GO