---------------------------LAB - 7---------------------


--------------------------Part – A---------------

-- Create the Customers table 
CREATE TABLE Customers ( 
Customer_id INT PRIMARY KEY,                 
Customer_Name VARCHAR(250) NOT NULL,         
Email VARCHAR(50) UNIQUE  
); 

-- Create the Orders table 
CREATE TABLE Orders ( 
Order_id INT PRIMARY KEY,                    
Customer_id INT,                             
Order_date DATE NOT NULL,                    
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)  
);

--1. Handle Divide by Zero Error and Print message like: Error occurs that is - Divide by zero error.

BEGIN TRY
	DECLARE @A INT ,@B INT ,@RESULT INT
	SET @A=10
	SET @B=0
	SET @RESULT =@A/@B
	PRINT @RESULT
END TRY
BEGIN CATCH
		PRINT 'NOT dIVISIBLE BY ZERO'
END CATCH

--2. Try to convert string to integer and handle the error using try…catch block.

BEGIN TRY
	DECLARE @STRING VARCHAR(50) ,@INT INT
	SET @STRING='ABC'

	SET @INT = CAST(@STRING AS INT)
	PRINT @INT
END TRY
BEGIN CATCH
	PRINT 'STRING IS NOT CONVERT AS INT'
END CATCH


--3. Create a procedure that prints the sum of two numbers: take both numbers as integer & handle 
--exception with all error functions if any one enters string value in numbers otherwise print result.

CREATE PROCEDURE PR_ADDITION
@N1 VARCHAR(50),
@N2 VARCHAR(50)
AS
BEGIN 
	BEGIN TRY
		DECLARE @NUM1 INT ,@NUM2 INT
		SET @NUM1=CAST(@N1 AS INT)
		SET @NUM2=CAST(@N2 AS INT)
		PRINT (@NUM1+@NUM2)
	END TRY

	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH
END

EXEC PR_ADDITION '2','3'
EXEC PR_ADDITION '2','ABC'

--4. Handle a Primary Key Violation while inserting data into customers table and print the error details 
--such as the error message, error number, severity, and state.

CREATE PROCEDURE PR_PR_KEY
@ID INT,@NAME VARCHAR(50),@EMAIL VARCHAR(50)
AS
BEGIN
	BEGIN TRY
		INSERT INTO Customers VALUES (@ID,@NAME,@EMAIL)
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH
END

EXEC PR_PR_KEY 101,'PUSHTI','ABC@GMAIL.COM'
EXEC PR_PR_KEY 101,'ABC','XYZ'

--5. Throw custom exception using stored procedure which accepts Customer_id as input & that throws Error like no Customer_id is available in database.

CREATE PROCEDURE PR_AVAILABLE_ID
@ID INT
AS
BEGIN
	IF NOT EXISTS (SELECT Customer_id FROM  Customers WHERE Customer_id=@ID) 
		THROW 5001,'NO CUSTOMER_ID  EXISTS IN DATABASE',1	
	ELSE 
		PRINT ' CUSTOMER_ID  EXISTS '
END

EXEC PR_AVAILABLE_ID 101


---------------------------Part – B
--6. Handle a Foreign Key Violation while inserting data into Orders table and print appropriate error message.


BEGIN TRY 
	INSERT INTO Orders VALUES (2,102,'2025-05-19')
END TRY

BEGIN CATCH
	PRINT ERROR_MESSAGE()
END CATCH



--7. Throw custom exception that throws error if the data is invalid.
BEGIN 
	DECLARE @NUM INT
	SET @NUM=-2
	IF @NUM<0
		THROW  50001,'DATA IS INVALID',1
	ELSE
		PRINT 'NUMBER IS POSITIVE'
END 


--8. Create a Procedure to Update Customer’s Email with Error HandlinG.
CREATE OR ALTER PROCEDURE PR_UPDATE
@EMAIL VARCHAR(50),@ID INT
AS
BEGIN
	BEGIN TRY
		UPDATE Customers
		SET Email=@EMAIL
		WHERE Customer_id=@ID
	END TRY
	BEGIN CATCH
		PRINT 'CUSTOMER DOES NOT EXISTS'
	END CATCH
END

EXEC PR_UPDATE 'ABCD',101
EXEC PR_UPDATE 'UAYGF',103

SELECT * FROM Customers