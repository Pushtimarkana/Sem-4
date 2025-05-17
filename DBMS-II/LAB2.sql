
----------------------------LAB-2------------------------------

-- Create Department Table--
CREATE TABLE Department (
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

-- Create Designation Table
CREATE TABLE Designation (
 DesignationID INT PRIMARY KEY,
 DesignationName VARCHAR(100) NOT NULL UNIQUE
);

-- Create Person Table
CREATE TABLE Person (
 PersonID INT PRIMARY KEY IDENTITY(101,1),
 FirstName VARCHAR(100) NOT NULL,
 LastName VARCHAR(100) NOT NULL,
 Salary DECIMAL(8, 2) NOT NULL,
 JoiningDate DATETIME NOT NULL,
 DepartmentID INT NULL,
 DesignationID INT NULL,
 FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
 FOREIGN KEY (DesignationID) REFERENCES Designation(DesignationID)
);

----------------------Part-A-----------------------

--1. Department, Designation & Person Table’s INSERT, UPDATE & DELETE Procedures.
	-------------Department Table------------
		--------INSERT PROCEDURE----------
	CREATE OR ALTER PROCEDURE PR_DEPARTMENT_INSERT
		@DEPARTMENTID INT,
		@DEPARTMENTNAME VARCHAR(50)
	AS 
	BEGIN
		INSERT INTO Department VALUES(
				@DEPARTMENTID,
				@DEPARTMENTNAME
		)
	END
	----------------UPDATE-----------
	CREATE OR ALTER PROCEDURE PR_DEPARTMENT_UPDATE
		@DEPARTMENTID INT,
		@DEPARTMENTNAME VARCHAR(50)
	AS 
	BEGIN
			UPDATE Department
			SET DepartmentName=@DEPARTMENTNAME
			WHERE DepartmentID=@DEPARTMENTID
	END

	-----------------DELETE ------------------

	CREATE OR ALTER PROCEDURE PR_DEPARTMENT_DELETE
		@DEPARTMENTID INT
	AS 
	BEGIN
		DELETE FROM Department
		WHERE DepartmentID=@DEPARTMENTID
	END

	------------ECECUTE -----
EXEC PR_DEPARTMENT_INSERT 1,'Admin'
EXEC PR_DEPARTMENT_INSERT 2,'IT'
EXEC PR_DEPARTMENT_INSERT 3,'HR'
EXEC PR_DEPARTMENT_INSERT 4,'Account'

SELECT * FROM Department

-----------------------Designation TABLE----------------
			-----------INSERT -----------------

	CREATE OR ALTER PROCEDURE PR_DESIGNATION_INSERT
		@DesignationID INT,
		@DesignationName VARCHAR(50)
	AS 
	BEGIN
		INSERT INTO Designation VALUES(
				@DesignationID,
				@DesignationName
		)
	END

	-----------------------UPDATE-----------------

	CREATE OR ALTER PROCEDURE PR_DESIGNATION_UPDATE
		@DesignationID INT,
		@DesignationName VARCHAR(50)
	AS 
	BEGIN
			UPDATE Designation
			SET DesignationName=@DesignationID
			WHERE DesignationID=@DesignationName
	END

			----------DELETE----------------------

	CREATE OR ALTER PROCEDURE PR_DESIGNATION_DELETE
		@DesignationID INT
	AS 
	BEGIN
			DELETE FROM Designation
			WHERE DesignationID=@DesignationID
	END
	-------------------ECECUTE VALUE--------------

	EXEC PR_DESIGNATION_INSERT 11,'Jobber'
	EXEC PR_DESIGNATION_INSERT 12,'Welder'
	EXEC PR_DESIGNATION_INSERT 13,'Clerk'
	EXEC PR_DESIGNATION_INSERT 14,'Manager'
	EXEC PR_DESIGNATION_INSERT 15,'CEO'

	SELECT * FROM Designation

	-------------------------PERSON TBLE----------

	---------------INSERT---------------------
	CREATE OR ALTER PROCEDURE PR_PERSON_INSERT
		@FirstName VARCHAR(50),
		@LastName VARCHAR(50),
		@Salary DECIMAL(8, 2),
		@JoiningDate DATETIME,
		@DepartmentID INT,
		@DesignationID INT
	AS 
	BEGIN
			INSERT INTO PERSON VALUES(@FirstName,@LastName,@Salary,@JoiningDate,@DepartmentID,@DesignationID)
	END

	-----------------UPDATE-----------

	CREATE OR ALTER PROCEDURE PR_PERSON_UPDATE
		@PID INT,
		@FirstName VARCHAR(50)
	AS 
	BEGIN
			UPDATE PERSON
			SET FirstName=@FirstName
			WHERE PersonID=@PID

	END

	----------------DELETE--------------

	CREATE OR ALTER PROCEDURE PR_PERSON_DELETE
		@PID INT
	AS 
	BEGIN
			DELETE FROM PERSON
			WHERE PersonID=@PID

	END

	------------------EXECUTE-------
	EXEC PR_PERSON_INSERT 'Rahul','Anshu',56000,'1990-01-01',1,12;
	EXEC PR_PERSON_INSERT 'Hardik','Hinsu',18000,'1990-09-25',2,11;
	EXEC PR_PERSON_INSERT 'Bhavin','Kamani',25000,'1990-05-14',NULL,11;
	EXEC PR_PERSON_INSERT 'Bhoomi','Patel',39000,'2014-02-20',1,13;
	EXEC PR_PERSON_INSERT 'Rohit','Rajgor',17000,'1990-07-23',2,15;
	EXEC PR_PERSON_INSERT 'Priya','Mehta',25000,'1990-10-18',2,NULL;
	EXEC PR_PERSON_INSERT 'Neha','Trivedi',18000,'2014-02-20',3,15;


	SELECT * FROM Person

--2. Department, Designation & Person Table’s SELECTBYPRIMARYKEY
----------------DEPARTMENT----
CREATE OR ALTER PROCEDURE PR_DEPARTMENT_BYPK
		@DID INT
	AS 
	BEGIN
			SELECT DepartmentID,DepartmentName
			FROM Department
			WHERE DepartmentID=@DID
	END

	-------------------DESIGNATION-----------
	CREATE OR ALTER PROCEDURE PR_DESIGNATION_BYPK
		@DEID INT
	AS 
	BEGIN
			SELECT DesignationID,DesignationName
			FROM Designation
			WHERE DesignationID=@DEID
	END
	-------------------PERSON-------------
	CREATE OR ALTER PROCEDURE PR_PERSON_BYPK
		@PID INT
	AS 
	BEGIN
			SELECT PersonID,FirstName,LastName,Salary,JoiningDate,DepartmentID,DesignationID
			FROM Person
			WHERE PersonID=@PID
	END


--3. Department, Designation & Person Table’s (If foreign key is available then do write join and take 
--columns on select list)

CREATE OR ALTER PROCEDURE PR_FK
AS
BEGIN
	SELECT P.PersonID,P.FirstName,P.LastName,P.SALARY,P.JOININGDATE,D.DepartmentNAME,DE.DesignationNAME
	FROM Person AS P JOIN Department AS D
	ON P.DepartmentID=D.DepartmentID
	JOIN Designation AS DE
	ON P.DesignationID=DE.DesignationID
	
END

--4. Create a Procedure that shows details of the first 3 persons.

CREATE OR ALTER PROCEDURE PR_FIRST_3PERSON
AS
BEGIN
	SELECT TOP 3 *
	FROM PERSON 
END 


---------EXCECUTE -----
EXEC PR_FIRST_3PERSON


------------------------part b--------------------------
--5. Create a Procedure that takes the department name as input and returns a table with all workers working in that department.

CREATE OR ALTER PROCEDURE PR_DEPT_2B05
	@DEPTNAME VARCHAR(50)
AS
BEGIN
	SELECT * 
	FROM PERSON 
	WHERE DepartmentID IN( 
						SELECT DepartmentID 
						FROM Department 
						WHERE DepartmentName=@DEPTNAME)
END

EXEC PR_DEPT_2B05 'ADMIN'

--6. Create Procedure that takes department name & designation name as input and returns a table with worker’s first name, salary, joining date & department name.

CREATE OR ALTER PROCEDURE PR_3JOIN_2B06
	@DEPTNAME VARCHAR(50),
	@DESIGNAME VARCHAR(50)
AS 
BEGIN
	SELECT P.FirstName,P.Salary,P.JoiningDate,D.DepartmentName
	FROM Person P JOIN Department D
	ON P.DepartmentID=D.DepartmentID
	JOIN Designation DE
	ON P.DesignationID=DE.DesignationID
	WHERE D.DepartmentName=@DEPTNAME AND DE.DesignationName=@DESIGNAME
END

EXEC PR_3JOIN_2B06 'IT','JOBBER'

--7. Create a Procedure that takes the first name as an input parameter and display all the details of the worker with their department & designation name.
CREATE OR ALTER PROCEDURE PR_JOIN_2B07
	@FNAME VARCHAR(50)
AS
BEGIN
		SELECT P.FirstName ,D.DepartmentName ,DE.DesignationName
		FROM Person  P JOIN Department D
		ON P.DepartmentID=D.DepartmentID
		JOIN Designation DE
		ON P.DesignationID = DE.DesignationID
		WHERE P.FirstName= @FNAME
END

EXEC PR_JOIN_2B07 'Rohit'

--8. Create Procedure which displays department wise maximum, minimum & total salaries.

CREATE OR ALTER PROCEDURE PR_GROUPBY_2B08
AS
BEGIN
	SELECT D.DepartmentName,MIN(P.Salary)AS MIN_SAL,MAX(P.Salary) AS MAX_SAL,SUM(P.Salary) AS TOTAL_SAL
	FROM Person P JOIN Department D
	ON P.DepartmentID = D.DepartmentID
	GROUP BY D.DepartmentName
END

EXEC PR_GROUPBY_2B08

--9. Create Procedure which displays designation wise average & total salaries.CREATE OR ALTER PROCEDURE PR_GROUPBY_2B09
AS
BEGIN
	SELECT DE.DesignationName,AVG(P.Salary)AS AVG_SAL,SUM(P.Salary) AS TOTAL_SAL
	FROM Person P JOIN Designation DE
	ON P.DesignationID = DE.DesignationID
	GROUP BY DE.DesignationName
END

EXEC PR_GROUPBY_2B09
--------------------------PART C---------------------------
--10. Create Procedure that Accepts Department Name and Returns Person Count.
CREATE OR ALTER PROCEDURE PR_PERSONCOUNT_2C10
	@DNAME VARCHAR(50)
AS
BEGIN
	SELECT D.DepartmentName ,COUNT(P.PersonID) AS COUNT_PERSON
	FROM Person P JOIN Department D
	ON P.DepartmentID = D.DepartmentID
	WHERE D.DepartmentName=@DNAME
	GROUP BY D.DepartmentName

END

EXEC PR_PERSONCOUNT_2C10 'IT'

--11. Create a procedure that takes a salary value as input and returns all workers with a salary greater than input salary value along with their department and designation details.

CREATE OR ALTER PROCEDURE PR_SALARY_2C11
	@SALARY Decimal (8,2)
AS
BEGIN
		SELECT *
		FROM Person P JOIN Department D
		ON P.DepartmentID = D.DepartmentID
		JOIN Designation DE 
		ON P.DesignationID = DE.DesignationID
		WHERE P.Salary>@SALARY

END

EXEC PR_SALARY_2C11 25000


--12. Create a procedure to find the department(s) with the highest total salary among all departments.

CREATE OR ALTER PROCEDURE PR_HEIHEST_2C12
AS
BEGIN
		SELECT TOP 1 D.DepartmentName,SUM(P.SALARY)
		FROM Person P JOIN Department D
		ON P.DepartmentID = D.DepartmentID
		GROUP BY D.DepartmentName
		ORDER BY SUM(P.SALARY) DESC
END

EXEC PR_HEIHEST_2C12 

--13. Create a procedure that takes a designation name as input and returns a list of all workers under that designation who joined within the last 10 years, along with their department.

CREATE OR ALTER PROCEDURE PR_DESIGNATION_2C13
	@DENAME VARCHAR(50)
AS
BEGIN
		SELECT *
		FROM Person P JOIN Department D
		ON P.DepartmentID = D.DepartmentID
		JOIN Designation DE 
		ON P.DesignationID = DE.DesignationID
		WHERE DE.DesignationName= @DENAME AND P.JoiningDate < DATEADD(YEAR,10,GETDATE())
END

EXEC PR_DESIGNATION_2C13 'Jobber'

--14. Create a procedure to list the number of workers in each department who do not have a designation assigned.

CREATE OR ALTER PROCEDURE PR_DESIGNATION_2C14
AS
BEGIN
		SELECT D.DepartmentName,COUNT(P.PersonID)
		FROM Person P JOIN Department D
		ON P.DepartmentID = D.DepartmentID
		WHERE P.DesignationID IS NULL
		GROUP BY D.DepartmentName

END

EXEC PR_DESIGNATION_2C14

--15. Create a procedure to retrieve the details of workers in departments where the average salary is above 12000.CREATE OR ALTER PROCEDURE PR_SLARY_2C15ASBEGIN		SELECT * FROM Person 		WHERE DepartmentID IN(				SELECT D.DepartmentID				FROM Person P JOIN Department D				ON P.DepartmentID = D.DepartmentID				GROUP BY D.DepartmentID				HAVING AVG(P.SALARY)>12000				)		ENDEXEC PR_SLARY_2C15
