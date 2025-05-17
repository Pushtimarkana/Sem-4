---------------------LAB-5-------------------

-- Creating PersonInfo Table
CREATE TABLE PersonInfo (
 PersonID INT PRIMARY KEY,
 PersonName VARCHAR(100) NOT NULL,
 Salary DECIMAL(8,2) NOT NULL,
 JoiningDate DATETIME NULL,
 City VARCHAR(100) NOT NULL,
 Age INT NULL,
 BirthDate DATETIME NOT NULL
);

-- Creating PersonLog Table
CREATE TABLE PersonLog (
 PLogID INT PRIMARY KEY IDENTITY(1,1),
 PersonID INT NOT NULL,
 PersonName VARCHAR(250) NOT NULL,
 Operation VARCHAR(50) NOT NULL,
 UpdateDate DATETIME NOT NULL
);

DROP TABLE PersonLog

---------------------Part – A-----------------
--1. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the PersonInfo table to display a message “Record is Affected.” 
CREATE OR ALTER TRIGGER TR_INS_DEL_UPD
ON PersonInfo
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	PRINT 'RECORD IS AFFECTED'
END

INSERT INTO PersonInfo VALUES (101,'PUSHTI',50000.00,'2027-05-19','RAJKOT',19,'2005-05-19')

UPDATE PersonInfo SET CITY='SURAT' WHERE PersonID=101

DELETE FROM PersonInfo WHERE PersonID=101

DROP TRIGGER TR_INS_DEL_UPD

--2. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the PersonInfo table. For that, log all operations performed on the person table into PersonLog.

CREATE OR ALTER TRIGGER TR_INSERT_LOG
ON PersonInfo
AFTER INSERT
AS
BEGIN
	DECLARE @PID INT,@PNAME VARCHAR(250)
	SELECT @PID = PersonID FROM inserted
	SELECT @PNAME=PersonName FROM inserted

	INSERT INTO PersonLog VALUES(@PID,@PNAME,'INSERT',GETDATE())

END

INSERT INTO PersonInfo VALUES (102,'PUSHTII',5000.00,2028-05-19,'RAJKOT',19,2005-05-19)
DROP TRIGGER TR_INSERT_LOG

CREATE OR ALTER TRIGGER TR_UPDATE_LOG
ON PersonInfo
AFTER UPDATE
AS
BEGIN
	DECLARE @PID INT,@PNAME VARCHAR(250)
	SELECT @PID = PersonID FROM inserted
	SELECT @PNAME=PersonName FROM inserted

	INSERT INTO PersonLog VALUES(@PID,@PNAME,'UPDATE',GETDATE())

END

UPDATE PersonInfo SET CITY='SURAT' WHERE PersonID=102
DROP TRIGGER TR_UPDATE_LOG

CREATE OR ALTER TRIGGER TR_DELETED_LOG
ON PersonInfo
AFTER DELETE
AS
BEGIN
	DECLARE @PID INT,@PNAME VARCHAR(250)
	SELECT @PID = PersonID FROM deleted
	SELECT @PNAME=PersonName FROM deleted

	INSERT INTO PersonLog VALUES(@PID,@PNAME,'DELETE',GETDATE())
END

DELETE FROM PersonInfo WHERE PersonID=102
DROP TRIGGER TR_DELETED_LOG

--3. Create an INSTEAD OF trigger that fires on INSERT, UPDATE and DELETE operation on the PersonInfo table. For that, log all operations performed on the person table into PersonLog.
CREATE OR ALTER TRIGGER TR_INS_INSERT_LOG
ON PersonInfo
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @PID INT,@PNAME VARCHAR(250)
	SELECT @PID = PersonID FROM inserted
	SELECT @PNAME=PersonName FROM inserted

	INSERT INTO PersonLog VALUES(@PID,@PNAME,'INSERT',GETDATE())

END

INSERT INTO PersonInfo VALUES (101,'PUSHTI',50000.00,'2027-05-19','RAJKOT',19,'2005-05-19')
INSERT INTO PersonInfo VALUES (103,'PUSHTI',50000.00,'2027-05-19','aHEMDABAD',19,'2005-05-19')

SELECT * FROM PersonLog
DROP TRIGGER TR_INS_INSERT_LOG

CREATE OR ALTER TRIGGER TR_INS_UPDATE_LOG
ON PersonInfo
INSTEAD OF UPDATE
AS
BEGIN
	DECLARE @PID INT,@PNAME VARCHAR(250)
	SELECT @PID = PersonID FROM inserted
	SELECT @PNAME=PersonName FROM inserted

	INSERT INTO PersonLog VALUES(@PID,@PNAME,'UPDATE',GETDATE())

END

UPDATE PersonInfo SET CITY='SURAT' WHERE PersonID=102
DROP TRIGGER TR_INS_UPDATE_LOG

SELECT * FROM PersonLog




CREATE OR ALTER TRIGGER TR_INS_DELETE_LOG
ON PersonInfo
INSTEAD OF DELETE
AS
BEGIN
	DECLARE @PID INT,@PNAME VARCHAR(250)
	SELECT @PID = PersonID FROM deleted
	SELECT @PNAME=PersonName FROM deleted

	INSERT INTO PersonLog VALUES(@PID,@PNAME,'UPDATE',GETDATE())

END

DELETE FROM PersonInfo WHERE PersonID=102
DROP TRIGGER TR_INS_DELETE_LOG

--4. Create a trigger that fires on INSERT operation on the PersonInfo table to convert person name into uppercase whenever the record is inserted.
CREATE OR ALTER TRIGGER TR_INSERT_UPPER_LOG
ON PersonInfo
AFTER INSERT
AS
BEGIN
	DECLARE @PID INT,@PNAME VARCHAR(250)
	SELECT @PID = PersonID FROM inserted
	SELECT @PNAME=PersonName FROM inserted

	INSERT INTO PersonLog VALUES(@PID,UPPER(@PNAME),'INSERT',GETDATE())

END

INSERT INTO PersonInfo VALUES (103,'pushtim',5000.00,2028-05-19,'RAJKOT',19,2005-05-19)

DROP TRIGGER TR_INSERT_UPPER_LOG




--5. Create trigger that prevent duplicate entries of person name on PersonInfo table.
CREATE OR ALTER Trigger tr_prevent_dublicate
on PersonInfo
INSTEAD OF INSERT
AS
BEGIN
		--DECLARE @PID INT,@PNAME VARCHAR(100),@SAL DECIMAL(8,2),@JDATE DATETIME ,@CITY VARCHAR(100),@AGE INT,@BDATE DATETIME
		--SELECT @PID=PersonID,@PNAME = PersonName ,@SAL=Salary ,@JDATE=JoiningDate ,@CITY =City ,@AGE =Age,@BDATE=BirthDate FROM inserted
		INSERT INTO PersonInfo(PersonID,PersonName,Salary,JoiningDate,City,Age,BirthDate)
		SELECT * FROM inserted
		WHERE PersonName NOT IN(SELECT PersonName FROM PersonInfo)
END

INSERT INTO PersonInfo VALUES(105,'PUSHTI',50000.00,'2027-05-5','RAJKOT',19,'2005-05-19')
INSERT INTO PersonInfo VALUES(106,'ABCCC',25000.00,'2027-05-5','MORBI',18,'2005-05-19')
INSERT INTO PersonInfo VALUES(107,'PUSHTI',25000.00,'2027-05-5','MORBI',19,'2005-05-19')


DELETE PersonInfo WHERE PersonID=105
DELETE PersonInfo WHERE PersonID=106
DELETE PersonInfo WHERE PersonID=107
DELETE PersonInfo WHERE PersonID=108

DROP TRIGGER tr_prevent_dublicate

--6. Create trigger that prevent Age below 18 years.

CREATE OR ALTER TRIGGER TR_PREVENT_AGE
ON PersonInfo
INSTEAD OF INSERT
AS
BEGIN
	
	INSERT INTO PersonInfo(PersonID,PersonName,Salary,JoiningDate,City,Age,BirthDate)
	SELECT * FROM INSERTED
	WHERE AGE>=18
END

INSERT INTO PersonInfo VALUES(108,'XYZZ',50000.00,'2027-05-5','RAJKOT',19,'2005-05-19')------> INSERT SUCCESSFULLY


INSERT INTO PersonInfo VALUES(109,'SHYAM',50000.00,'2027-05-5','RAJKOT',17,'2005-05-19')----->IT WILL GENRATE ERROR


DROP TRIGGER TR_PREVENT_AGE

---------------------Part – B---------------------
--7. Create a trigger that fires on INSERT operation on person table, which calculates the age and update that age in Person table.

CREATE OR ALTER TRIGGER TR_CALCULATE_AGE
ON PersonInfo
AFTER INSERT 
AS
BEGIN
		DECLARE @PID INT,@DOB DATETIME,@AGE INT

		SELECT @PID=PersonID ,@DOB= BirthDate FROM inserted
		SET @AGE=FLOOR(DATEDIFF(DAY,@DOB, GETDATE()) / 365) 

		UPDATE PersonInfo
		SET Age=@AGE WHERE PersonID=@PID
END

DROP TRIGGER TR_CALCULATE_AGE

INSERT INTO PersonInfo VALUES(111,'SHYAMSUNDR',32000.00,'2027-05-5','RAJKOT',17,'2005-05-19')
DELETE PersonInfo WHERE PersonID=111
SELECT * FROM PersonInfo

--8. Create a Trigger to Limit Salary Decrease by a 10%.
CREATE OR ALTER TRIGGER TR_SALARY_LIMIT
ON PersonInfo
AFTER UPDATE
AS
BEGIN
	 DECLARE @OldSalary DECIMAL(8,2), @NewSalary DECIMAL(8,2),@PID INT
    
    SELECT @PID=PersonID FROM inserted
    SELECT @OldSalary = Salary FROM deleted WHERE PersonID=@PID
    SELECT @NewSalary = Salary FROM inserted WHERE PersonID=@PID

    IF @NewSalary < @OldSalary * 0.9
    BEGIN
       
	   PRINT 'Salary decrease cannot be more than 10%'
		UPDATE PersonInfo SET Salary = @OldSalary WHERE  PersonID= (SELECT PersonID FROM inserted)
    END
END

UPDATE PersonInfo SET Salary=5000.00 WHERE PersonID=111
DROP TRIGGER TR_SALARY_LIMIT

--------------------------Part – C---------------- 
--9. Create Trigger to Automatically Update JoiningDate to Current Date on INSERT if JoiningDate is NULL during an INSERT.
CREATE OR ALTER TRIGGER TR_UPDATE_DATE
ON PERSONINFO
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @PID INT,@JDATE DATETIME
	SELECT @PID = PersonID FROM inserted
	SELECT @JDATE= JoiningDate FROM inserted

	INSERT INTO PersonInfo(PersonID,PersonName,Salary,JoiningDate,City,Age,BirthDate)
	SELECT * FROM inserted
	IF (@JDATE IS NULL)
	BEGIN
		UPDATE PersonInfo SET JoiningDate=GETDATE() WHERE PersonID=@PID
	END
END

INSERT INTO PersonInfo VALUES(112,'DAYA',32000.00,NULL,'RAJKOT',17,'2005-05-19')
--DELETE PersonInfo WHERE PersonID=112
DROP TRIGGER TR_UPDATE_DATE

--10. Create DELETE trigger on PersonLog table, when we delete any record of PersonLog table it prints ‘Record deleted successfully from PersonLog’.CREATE OR ALTER TRIGGER TR_DELETE_PERSONLOG
ON PersonLog
AFTER DELETE
AS
BEGIN
	PRINT 'Record deleted successfully from PersonLog'
END

DELETE FROM PersonLog WHERE PLOGID=7
SELECT * FROM PersonLog

DROP TRIGGER TR_DELETE_PERSONLOG