----------------------------Lab-6--------------------

-- Create the Products table
CREATE TABLE Products (
 Product_id INT PRIMARY KEY,
 Product_Name VARCHAR(250) NOT NULL,
 Price DECIMAL(10, 2) NOT NULL
);

-- Insert data into the Products table
INSERT INTO Products (Product_id, Product_Name, Price) VALUES
(1, 'Smartphone', 35000),
(2, 'Laptop', 65000),
(3, 'Headphones', 5500),
(4, 'Television', 85000),
(5, 'Gaming Console', 32000);
--------------------------Part - A-----------------------
--1. Create a cursor Product_Cursor to fetch all the rows from a products table.
DECLARE @PID INT,@PNAME VARCHAR(250),@PRICE DECIMAL(10,2)

DECLARE PRODUCT_CURSOR CURSOR
FOR
	SELECT Product_id,Product_Name,Price FROM Products
OPEN PRODUCT_CURSOR

FETCH NEXT FROM PRODUCT_CURSOR
INTO @PID,@PNAME,@PRICE

WHILE @@FETCH_STATUS=0
BEGIN
	PRINT CAST(@PID AS VARCHAR)+'-'+@PNAME+'-'+ CAST(@PRICE AS VARCHAR)

	FETCH NEXT FROM PRODUCT_CURSOR
	INTO @PID,@PNAME,@PRICE
END

CLOSE PRODUCT_CURSOR
DEALLOCATE PRODUCT_CURSOR



--2. Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName.(Example: 1_Smartphone)


DECLARE @P_ID INT,@P_NAME VARCHAR(250)

DECLARE PRODUCT_CURSOR_FETCH CURSOR
FOR
	SELECT Product_id,Product_Name FROM Products
OPEN PRODUCT_CURSOR_FETCH

FETCH NEXT FROM PRODUCT_CURSOR_FETCH
INTO @P_ID,@P_NAME

WHILE @@FETCH_STATUS=0
BEGIN
	PRINT CAST(@P_ID AS VARCHAR)+'_'+@P_NAME

	FETCH NEXT FROM PRODUCT_CURSOR_FETCH
	INTO @P_ID,@P_NAME
END

CLOSE PRODUCT_CURSOR_FETCH
DEALLOCATE PRODUCT_CURSOR_FETCH

--3. Create a Cursor to Find and Display Products Above Price 30,000.

DECLARE @PRID INT,@PRNAME VARCHAR(205) ,@PR DECIMAL(10,2)

DECLARE PRODUCT_CURSOR_PRICE CURSOR
FOR
	SELECT  Product_id,Product_Name,Price FROM Products
	WHERE Price>30000
OPEN PRODUCT_CURSOR_PRICE

FETCH NEXT FROM PRODUCT_CURSOR_PRICE
INTO @PRID,@PRNAME,@PR

WHILE @@FETCH_STATUS=0
BEGIN
	 PRINT CAST(@PRID AS VARCHAR)+'-'+@PRNAME+'-'+ CAST(@PR AS VARCHAR)

	FETCH NEXT FROM PRODUCT_CURSOR_PRICE
	INTO @PRID,@PRNAME,@PR
END

CLOSE PRODUCT_CURSOR_PRICE
DEALLOCATE PRODUCT_CURSOR_PRICE

--4. Create a cursor Product_CursorDelete that deletes all the data from the Products table.


DECLARE @PR_ID INT

DECLARE PRODUCT_CURSOR_DELETE CURSOR
FOR
	SELECT  Product_id FROM Products
OPEN PRODUCT_CURSOR_DELETE

FETCH NEXT FROM PRODUCT_CURSOR_DELETE
INTO @PR_ID

WHILE @@FETCH_STATUS=0
BEGIN
	 DELETE FROM Products
	 WHERE Product_id= @PR_ID

	FETCH NEXT FROM PRODUCT_CURSOR_DELETE
	INTO @PR_ID
END

CLOSE PRODUCT_CURSOR_DELETE
DEALLOCATE PRODUCT_CURSOR_DELETE

SELECT * FROM Products




-----------------------------Part � B----------------------
--5. Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases the price by 10%.

DECLARE @PRO_ID INT

DECLARE PRODUCT_CURSORUPDATE CURSOR
FOR
	SELECT  Product_id FROM Products
OPEN PRODUCT_CURSORUPDATE

FETCH NEXT FROM PRODUCT_CURSORUPDATE
INTO @PRO_ID

WHILE @@FETCH_STATUS=0
BEGIN
	 UPDATE Products
	 SET Price = Price + (Price*10)/100
	 WHERE Product_id = @PRO_ID

	FETCH NEXT FROM PRODUCT_CURSORUPDATE
	INTO @PRO_ID
END

CLOSE PRODUCT_CURSORUPDATE
DEALLOCATE PRODUCT_CURSORUPDATE


SELECT * FROM Products


--6. Create a Cursor to Rounds the price of each product to the nearest whole number.

DECLARE @PROD_ID INT

DECLARE PRODUCT_CURSOR_ROUND CURSOR
FOR
	SELECT  Product_id FROM Products
OPEN PRODUCT_CURSOR_ROUND

FETCH NEXT FROM PRODUCT_CURSOR_ROUND
INTO @PROD_ID

WHILE @@FETCH_STATUS=0
BEGIN
	 UPDATE Products
	 SET Price = ROUND(Price,0)
	 WHERE Product_id = @PROD_ID

	FETCH NEXT FROM PRODUCT_CURSOR_ROUND
	INTO @PROD_ID
END

CLOSE PRODUCT_CURSOR_ROUND
DEALLOCATE PRODUCT_CURSOR_ROUND

-----------------------------Part � C-------------------------
--7. Create a cursor to insert details of Products into the NewProducts table if the product is �Laptop� 
--(Note: Create NewProducts table first with same fields as Products table)

CREATE TABLE NewProducts (
 NewProduct_id INT PRIMARY KEY,
 NewProduct_Name VARCHAR(250) NOT NULL,
 NewPrice DECIMAL(10, 2) NOT NULL
);

DECLARE @PRODUCT_ID INT ,@PRODUCT_NAME VARCHAR(50),@NEWPRICE DECIMAL(10,2)

DECLARE NEWPRODUCT_INSERT CURSOR
FOR
	SELECT Product_id,Product_Name,Price FROM Products
OPEN NEWPRODUCT_INSERT
FETCH NEXT FROM NEWPRODUCT_INSERT
INTO @PRODUCT_ID,@PRODUCT_NAME,@NEWPRICE

WHILE @@FETCH_STATUS=0
BEGIN
	IF(@PRODUCT_NAME='Laptop')
		INSERT INTO NewProducts VALUES (@PRODUCT_ID,@PRODUCT_NAME,@NEWPRICE)

	FETCH NEXT FROM NEWPRODUCT_INSERT
	INTO @PRODUCT_ID,@PRODUCT_NAME,@NEWPRICE
END

CLOSE NEWPRODUCT_INSERT
DEALLOCATE NEWPRODUCT_INSERT

--8. Create a Cursor to Archive High-Price Products in a New Table (ArchivedProducts), Moves products 
--with a price above 50000 to an archive table, removing them from the original Products table.

CREATE TABLE ArchivedProducts (
 ARProduct_id INT PRIMARY KEY,
 ARProduct_Name VARCHAR(250) NOT NULL,
 ARPrice DECIMAL(10, 2) NOT NULL
);

DECLARE @PRODU_ID INT ,@PRODU_NAME VARCHAR(50),@ARPRICE DECIMAL(10,2)

DECLARE ARPRODUCT_INSERT CURSOR
FOR
	SELECT Product_id,Product_Name,Price FROM Products
OPEN ARPRODUCT_INSERT
FETCH NEXT FROM ARPRODUCT_INSERT
INTO @PRODU_ID,@PRODU_NAME,@ARPRICE

WHILE @@FETCH_STATUS=0
BEGIN
	IF @ARPRICE>=50000
	BEGIN
		INSERT INTO ArchivedProducts VALUES (@PRODU_ID,@PRODU_NAME,@ARPRICE)
		DELETE FROM Products
		WHERE Product_id=@PRODU_ID
	END

	FETCH NEXT FROM ARPRODUCT_INSERT
	INTO @PRODU_ID,@PRODU_NAME,@ARPRICE
END

CLOSE ARPRODUCT_INSERT
DEALLOCATE ARPRODUCT_INSERT

SELECT * FROM Products
SELECT * FROM ArchivedProducts
