
-- Find all employees
SELECT *
FROM employee;

-- Find all clients
SELECT *
FROM clients;

-- Find all employees ordered by salary
SELECT *
from employee
ORDER BY salary ASC/DESC;

-- Find all employees ordered by sex then name
SELECT *
from employee
ORDER BY sex, name;

-- Find the first 5 employees in the table
SELECT *
from employee
LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name, employee.last_name
FROM employee;

-- Find the forename and surnames names of all employees
SELECT first_name AS forename, employee.last_name AS surname
FROM employee;

-- Find out all the different genders
SELECT DISCINCT sex
FROM employee;

-- Find all male employees
SELECT *
FROM employee
WHERE sex = 'M';

-- Find all employees at branch 2
SELECT *
FROM employee
WHERE branch_id = 2;

-- Find all employee's id's and names who were born after 1969
SELECT emp_id, first_name, last_name
FROM employee
WHERE birth_day >= 1970-01-01;

-- Find all female employees at branch 2
SELECT *
FROM employee
WHERE branch_id = 2 AND sex = 'F';

-- Find all employees who are female & born after 1969 or who make over 80000
SELECT *
FROM employee
WHERE (birth_day >= '1970-01-01' AND sex = 'F') OR salary > 80000;

-- Find all employees born between 1970 and 1975
SELECT *
FROM employee
WHERE birth_day BETWEEN '1970-01-01' AND '1975-01-01';

-- Find all employees named Jim, Michael, Johnny or David
SELECT *
FROM employee
WHERE first_name IN ('Jim', 'Michael', 'Johnny', 'David');

-- Find the two last employees recorded of table Employees --
SELECT * FROM dima.employee ORDER BY Empl_id DESC LIMIT 2

-- Delete last Employee recorded of tahble Employees --
DELETE FROM employee where Empl_id=99;
-- OR --
DELETE FROM employee by Empl_id desc limit 1;

-- he following SQL statement updates the first customer (CustomerID = 1) 
with a new contact person and a new city.

UPDATE Customers
SET ContactName = 'ATCHOM Yasmine', City= 'Ontario'
WHERE CustomerID = 1;

-- The following SQL statement will update the ContactName 
to "Sandji" for all records where country is "Cameroon": --

UPDATE Customers
SET ContactName='Sandji'
WHERE Country='Cameroon';





