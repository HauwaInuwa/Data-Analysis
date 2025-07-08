CREATE TABLE customer(
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(60) NOT NULL,
company VARCHAR(60) NOT NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
state CHAR(2) NOT NULL,
zip SMALLINT NOT NULL,
phone VARCHAR(20) NOT NULL,
birth_date DATE NOT NULL,
sex CHAR(1) NOT NULL,
date_entered TIMESTAMP NOT NULL,
id SERIAL PRIMARY KEY);

--inserting records in a table
INSERT INTO customer(
first_name, last_name, email, company, street, city, state, zip_code, 
phone, birth_date, sex, date_entered)

VALUES(
'Christoper','Jones','christoperjones@BP.com','BP',
'347 Cedar St', 'Lawrenceville', 'GA',
'30044', '348-841','1938-09-15','m', current_timestamp),
(
'Tamara','Avani','tamaraavani@FCB.com','FCB',
'125 watercrest St', 'Houston', 'TX',
'11489', '348-453','1987-03-11','f', current_timestamp),
('Alex','Mcbroom','alexmcbroom@NEL.com','NEL',
'267 Dimond St', 'Timesquare', 'NY',
'11245', '348-321','2011-08-15','m', current_timestamp)

-- Select is used to retrive data from a table
SELECT * FROM customer;

--Dropping table from the database
DROP TABLE customer;

-- Alter is used to edit column, Add column is used to add extra column to the table.
ALTER TABLE customer ADD COLUMN remark VARCHAR(150);

-- DROP is used to remove a column from the table 
ALTER TABLE customer DROP COLUMN remark;

--Changing the data tpe of a column
ALTER TABLE customer ALTER COLUMN zip TYPE INT;

--renaming a column
ALTER TABLE customer RENAME COLUMN zip TO zip_code;

--UPDATING

UPDATE customer
SET company = 'FCMB'
WHERE first_name = 'Tamara';

--Delete is used to delete entire row
DELETE FROM customer WHERE id=5;
DELETE FROM customer WHERE id in (4,6);

--Delete all records from the table customer.
DELETE FROM customer;

--Anotheer way to delete all records from the table customer.
TRUNCATE TABLE customer;