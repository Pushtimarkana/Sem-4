------------------LAB 4-----------

------------------PART-A---------------
--1. Write a function to print "hello world".
CREATE OR ALTER FUNCTION FN_PRINT_HELLO()
RETURNS VARCHAR(100)
AS
BEGIN
		RETURN 'HELLO WORLD'
END

SELECT dbo.FN_PRINT_HELLO()


--2. Write a function which returns addition of two numbers.
CREATE OR ALTER FUNCTION FN_SUM(@NUM1 INT ,@NUM2 INT)
RETURNS INT
AS
BEGIN
		DECLARE @SUM AS INT
		SET @SUM=@NUM1+@NUM2
		RETURN @SUM
END

SELECT DBO.FN_SUM(10,15)

--3. Write a function to check whether the given number is ODD or EVEN.

CREATE OR ALTER FUNCTION FN_ODD_EVEN(@NUM INT)
RETURNS VARCHAR(50)
AS 
BEGIN
	DECLARE @ANS AS VARCHAR(50)
	IF @NUM % 2=0
	BEGIN
		SET @ANS='EVEN'
	END
	ELSE
		SET @ANS ='ODD'

	RETURN @ANS
END

SELECT DBO.FN_ODD_EVEN(6)
SELECT DBO.FN_ODD_EVEN(9)

-------USING WHEN THEN------

CREATE OR ALTER FUNCTION FN_OE_WHEN(@NUM INT)
RETURNS VARCHAR(50)
AS 
BEGIN
	RETURN CASE
			WHEN @NUM%2=0 THEN 'EVEN'
			WHEN @NUM%2!=0 THEN 'ODD'
			ELSE 'INCORRECT INPUT'
	END
END

SELECT DBO.FN_OE_WHEN(18)


--4. Write a function which returns a table with details of a person whose first name starts with B.

CREATE OR ALTER FUNCTION FN_TABLE_PERSON()
RETURNS TABLE
AS
	RETURN (SELECT * FROM Person WHERE  FirstName LIKE 'B%')

SELECT * FROM DBO.FN_TABLE_PERSON()

--5. Write a function which returns a table with unique first names from the person table.

CREATE OR ALTER FUNCTION FN_TABLE_5()
RETURNS TABLE
AS 
	RETURN (SELECT DISTINCT FirstName FROM Person )

SELECT * FROM DBO.FN_TABLE_5()

--6. Write a function to print number from 1 to N. (Using while loop)

CREATE OR ALTER FUNCTION FN_1_N(@NUM INT)
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @ANS AS VARCHAR(MAX),@I AS INT
	SET @I=1
	SET @ANS=' '
	WHILE (@I<=@NUM)
	BEGIN
		SET @ANS= @ANS + CAST(@I AS VARCHAR)+' '
		SET @I = @I +1
	END
	RETURN @ANS
END

SELECT DBO.FN_1_N(15)

--7. Write a function to find the factorial of a given integer.
CREATE OR ALTER FUNCTION FN_FACTORIAL(@NUM INT)
RETURNS INT
AS
BEGIN
	DECLARE @ANS AS INT,@I AS INT
	SET @I=1
	SET @ANS=1
	WHILE (@I<=@NUM)
	BEGIN
		SET @ANS= @ANS * @I
		SET @I = @I +1
	END
	RETURN @ANS
END

SELECT DBO.FN_FACTORIAL(6)

-----------------PART-B-----------------

--8. Write a function to compare two integers and return the comparison result. (Using Case statement).

CREATE OR ALTER FUNCTION FN_COMPARE(@NUM1 INT ,@NUM2 INT)
RETURNS VARCHAR(MAX)
AS
BEGIN 
	RETURN CASE
			WHEN @NUM1>@NUM2 THEN 'FIRST NUMBER IS GREATER'
			WHEN @NUM1<@NUM2 THEN 'SECOND NUMBER IS GREATER'
			ELSE 'INCORRECT INPUT'
	END
END

SELECT DBO.FN_COMPARE(15,25)

--9. Write a function to print the sum of even numbers between 1 to 20.

CREATE OR ALTER FUNCTION FN_SUM_EVEN()
RETURNS INT
AS
BEGIN
	DECLARE @SUM AS INT ,@I AS INT
	SET @I=2
	SET @SUM=0
	WHILE @I<=20
	BEGIN
		SET @SUM=@SUM+@I
		SET @I=@I+2
	END
	RETURN @SUM
END

SELECT DBO.FN_SUM_EVEN()

--10. Write a function that checks if a given string is a palindrome

CREATE OR ALTER FUNCTION FN_STR_PALINDROME(@STR VARCHAR(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @TEMP AS VARCHAR(MAX),@ANS AS VARCHAR(MAX)
	SET @TEMP=REVERSE(@STR)

	IF @TEMP=@STR
		SET @ANS='PALINDROME'
	ELSE
		SET @ANS='NOT PALINDROME'
	RETURN @ANS
END

SELECT DBO.FN_STR_PALINDROME('ABVBA')
SELECT DBO.FN_STR_PALINDROME('ABVBAUERH')


-----------------PART-C-----------------------
--11. Write a function to check whether a given number is prime or not.
CREATE OR ALTER FUNCTION FN_PRIME(@NUM INT)
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @ANS AS VARCHAR(MAX),@FLAG AS INT,@I AS INT
	SET @I = 2
	SET @ANS = ''
	SET @FLAG =0
	WHILE (@I<=(@NUM/2))
	BEGIN
		IF @NUM%@I=0
			SET @FLAG = @FLAG + 1
			SET @I = @I + 1
	END
	IF @FLAG=0
		SET @ANS = 'Number is prime'
	ELSE
			SET @ANS = 'Number is not prime'

	RETURN @ANS

END

SELECT DBO.FN_PRIME(5)
SELECT DBO.FN_PRIME(9)

--12. Write a function which accepts two parameters start date & end date, and returns a difference in days.
CREATE OR ALTER FUNCTION FN_DATE_DIFF(@STARTDATE DATE,@ENDDATE DATE)
RETURNS INT
AS
BEGIN
	RETURN DATEDIFF(DAY,@STARTDATE,@ENDDATE)
END

SELECT DBO.FN_DATE_DIFF('2024-01-01','2024-01-31')

--13. Write a function which accepts two parameters year & month in integer and returns total days each year.
CREATE OR ALTER FUNCTION FN_YEAR_MONTH(@YEAR INT ,@MONTH INT)
RETURNS INT
AS
BEGIN
	DECLARE @TOTAL AS INT
	IF @MONTH IN (1,3,5,7,8,10,12)
		SET @TOTAL = 31
	ELSE IF @MONTH IN (4,6,9,11)
		SET @TOTAL = 30
	ELSE IF @MONTH =2
		IF (@YEAR % 4 = 0 AND @YEAR % 100 != 0) OR (@YEAR % 400 = 0) 
            SET @TOTAL = 29; -- Leap year, February has 29 days
        ELSE
            SET @TOTAL = 28; -- Non-leap year, February has 28 days
	RETURN @TOTAL
END


SELECT DBO.FN_YEAR_MONTH(2024,8)

SELECT DBO.FN_YEAR_MONTH(2024,2)

--14. Write a function which accepts departmentID as a parameter & returns a detail of the persons.
CREATE OR ALTER FUNCTION FN_JOIN_PERSON(@DID INT)
RETURNS TABLE 
AS
	RETURN (SELECT * FROM Person 
			WHERE DepartmentID=@DID)

SELECT * FROM DBO.FN_JOIN_PERSON(2)

--15. Write a function that returns a table with details of all persons who joined after 1-1-1991.
CREATE OR ALTER FUNCTION FN_JOIN_DATE()
RETURNS TABLE
AS
	RETURN (SELECT * FROM Person 
			WHERE JoiningDate>'1991-01-01')


SELECT * FROM DBO.FN_JOIN_DATE()

