CREATE TABLE brewery(
sales_id INT,
sales_rep VARCHAR(30),
email VARCHAR (60),
brand VARCHAR(30),
plant_cost INT,
unit_price INT,
quantity INT,
cost INT,
profit INT,
countries VARCHAR(40),
region VARCHAR (40),
months VARCHAR(20),
years INT
);

SELECT * FROM brewery;

--
SELECT SUM(PROFIT) AS total_profit FROM brewery;

SELECT brand,countries, SUM(profit)
FROM brewery
GROUP BY brand,countries
ORDER BY SUM(profit) DESC
LIMIT 5 OFFSET 10;

SELECT MAX(profit) max_profit 
FROM brewery 
WHERE years in(2018,2019);

SELECT MIN(profit) min_profit 
FROM brewery 
WHERE years in(2018,2019);

SELECT COUNT(sales_id) count_id
FROM brewery; 

SELECT COUNT(DISTINCT(brand))
FROM brewery;

SELECT AVG(unit_price) avg_price_nigeria_ghana
FROM brewery
WHERE countries in ('Nigeria', 'Ghana') AND brand='beta malt';

SELECT countries,SUM(profit) highest_profit
FROM brewery
WHERE years= 2019
GROUP BY countries 
ORDER BY highest_profit DESC;

SELECT years, SUM(profit) highest_profit_years
FROM brewery
GROUP BY years
ORDER BY highest_profit_years DESC;

SELECT SUM(profit)
FROM brewery
WHERE years BETWEEN 2017 AND 2018;

-- Question 1
SELECT SUM(profit) AS Total_Profit
FROM brewery;

--Question 2
SELECT countries, SUM(profit) AS Total_Profit
FROM brewery
WHERE years= 2019
GROUP BY countries
ORDER BY Total_Profit DESC
LIMIT 1;

--QUESTION 3
SELECT years, SUM(profit) AS Total_Profit
FROM brewery
GROUP BY years
ORDER BY Total_Profit DESC
LIMIT 1;

--QUESTION 4
SELECT countries, SUM(profit) AS Total_Profit
FROM brewery
GROUP BY countries
ORDER BY Total_Profit DESC;

--QUESTION 5
SELECT months, SUM(PROFIT) AS Least_Profit
FROM brewery
GROUP BY months
ORDER BY Least_Profit ASC
LIMIT 3;

--QUESTION 6
SELECT MIN(profit) AS Min_Profit
FROM brewery
WHERE years= 2018 AND months='December';

--QUESTION 7***
SELECT months, SUM(profit) AS Total_Profit
FROM brewery
WHERE years=2019
GROUP BY months
ORDER BY Total_Profit DESC;

--QUESTION 8
SELECT brand, SUM(profit) AS Total_Profit
FROM brewery
WHERE countries='Senegal'
GROUP BY brand
ORDER BY Total_Profit DESC;

--Question 9
SELECT brand, SUM(profit) AS Total_Profit
FROM brewery
WHERE years IN(2018,2019) AND countries IN('Senegal','Togo','Ghana','Benin')
GROUP BY brand
ORDER BY Total_Profit DESC;

--QUESTION 10
SELECT brand, SUM(profit) AS Total_Profit
FROM brewery
WHERE countries='Nigeria'
GROUP BY brand
ORDER BY Total_Profit DESC;

--QUESTION 11
SELECT brand, SUM(profit) AS Total_Profit
FROM brewery
WHERE countries IN('Nigeria','Ghana') AND years IN(2018,2019) AND brand LIKE '%malt'
GROUP BY brand
ORDER BY Total_Profit DESC;

--QUESTION 12
SELECT brand, SUM(profit) AS Total_Profit
FROM brewery
WHERE countries= 'Nigeria' AND years=2018
GROUP BY brand
ORDER BY Total_Profit DESC;

--QUESTION 13
SELECT brand, SUM(profit) AS Total_Profit
FROM brewery
WHERE countries= 'Nigeria' AND region= 'southsouth'
GROUP BY brand
ORDER BY Total_Profit DESC;

--QUESTION 14
SELECT brand, SUM(quantity) AS Total_Quantity
FROM brewery
WHERE countries= 'Nigeria' 
AND brand IN('eagle lager','hero','castle lite', 'budweiser', 'trophy')
GROUP BY brand
ORDER BY Total_Quantity DESC;

SELECT SUM(quantity) AS Total_Quantity
FROM brewery
WHERE countries= 'Nigeria' 
AND brand IN('eagle lager','hero','castle lite', 'budweiser', 'trophy');

--QUESTION 15
SELECT brand, SUM(quantity) AS Total_Quantity
FROM brewery
WHERE brand IN('eagle lager','hero','castle lite', 'budweiser', 'trophy')
GROUP BY brand
ORDER BY Total_Quantity DESC;

SELECT SUM(quantity) AS Total_Quantity
FROM brewery
WHERE brand IN('eagle lager','hero','castle lite', 'budweiser', 'trophy');

--QUESTION 16
SELECT sales_rep, SUM(quantity) AS Total_Quantity
FROM brewery
WHERE brand= 'budweiser' AND countries= 'Senegal'
GROUP BY sales_rep
ORDER BY Total_Quantity DESC
LIMIT 1;

--QUESTION 17
SELECT countries, SUM(profit) AS Total_Profit
FROM brewery
WHERE years ='2019' AND months IN('September','October','November','December')
GROUP BY countries
ORDER BY Total_Profit DESC;

SELECT * FROM brewery 

SELECT months 
FROM brewery 
GROUP BY months

SELECT DISTINCT months 
FROM brewery