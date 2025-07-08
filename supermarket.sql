CREATE TABLE supermarket(
invoice_id VARCHAR(20),
branch CHAR(1),
city VARCHAR(30),
customer_type VARCHAR(30),
gender VARCHAR(20),
product_line VARCHAR(50),
unit_price FLOAT,
quantity INT,
tax FLOAT,
total FLOAT,
date DATE,
time TIME,
payment VARCHAR(20),
cogs FLOAT,
gross_margin_percentage FLOAT,
gross_income FLOAT,
rating FLOAT
);

ALTER TABLE supermarket ALTER COLUMN gross_income TYPE NUMERIC
ALTER TABLE supermarket ALTER COLUMN gross_margin_percentage TYPE NUMERIC
ALTER TABLE supermarket ALTER COLUMN cogs TYPE NUMERIC
ALTER TABLE supermarket ALTER COLUMN unit_price TYPE NUMERIC
ALTER TABLE supermarket ALTER COLUMN tax TYPE NUMERIC
ALTER TABLE supermarket ALTER COLUMN total TYPE NUMERIC
ALTER TABLE supermarket ALTER COLUMN rating TYPE NUMERIC




--	QUESTION 1
SELECT gender, SUM(QUANTITY) AS Total_Quantity
FROM supermarket
WHERE product_line= 'Home and lifestyle'
GROUP BY gender
ORDER BY Total_Quantity DESC;

--QUESTION 2
SELECT payment, COUNT(payment) AS Payment_method
FROM supermarket
WHERE product_line= 'Sports and travel' AND city='Yangon'
GROUP BY payment
ORDER BY Payment_method DESC;

--QUESTION 3
SELECT SUM(QUANTITY) AS Total_Quantity
FROM supermarket
WHERE city='Mandalay' AND product_line= 'Food and beverages'

--QUESTION 4
SELECT COUNT(customer_type) AS Normal_Customers_Naypyitaw
FROM supermarket
WHERE city='Naypyitaw' AND customer_type='Normal'

--QUESTION 5
SELECT invoice_id, round(gross_income,1), round(sum(gross_income) 
OVER (ORDER BY invoice_id),1) AS gross_cum_freq
FROM supermarket
GROUP BY invoice_id, gross_income

SELECT gross_income, SUM(gross_income) OVER (ORDER BY gross_income) AS gross_cum_freq
FROM supermarket;

--QUESTION 6
SELECT rating,
CASE
WHEN rating > 7.5 THEN 'Good'
ELSE 'Bad'
END AS star_rating
FROM supermarket

SELECT * FROM supermarket