DECLARE @I AS INT=0
WHILE @I<1000
BEGIN
DECLARE @NAME AS VARCHAR(100)
DECLARE @GENDER AS VARCHAR(1)
DECLARE @SURNAME AS VARCHAR(100)
DECLARE @CITY AS VARCHAR(100)
DECLARE @COUNTRY AS VARCHAR(100)
DECLARE @BIRTDATE AS DATETIME

DECLARE @RAND AS INT

SET @RAND = RAND()*17
SELECT @NAME = NAME, @GENDER = GENDER FROM NAMES WHERE ID = @RAND


SET @RAND = RAND()*17
SELECT @SURNAME = SURNAME FROM SURNAMES WHERE ID = @RAND

SET @RAND = RAND()*16
SELECT @CITY = City, @COUNTRY = Country FROM Address WHERE ID = @RAND

SET @RAND = RAND()*365*80
SET @BIRTDATE = GETDATE()-@RAND

INSERT INTO CUSTOMER (NAME, SURNAME, BIRTDATE, CITY, COUNTRY, GENDER)
VALUES (@NAME, @SURNAME, @BIRTDATE, @CITY, @COUNTRY, @GENDER)

SET @I = @I + 1
END
SELECT * FROM CUSTOMER