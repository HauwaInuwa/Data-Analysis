CREATE TABLE used_cars(
s_no INT,
name VARCHAR(100),
location VARCHAR(30),
year INT,
kilometers_driven INT,
fuel_type VARCHAR(20),
transmission VARCHAR(20),
owner_type VARCHAR(20),
mileage FLOAT,
engine FLOAT,
power FLOAT,
seats INT,
new_price FLOAT,
price FLOAT
);

--QUESTION 1
SELECT name, MAX(engine) AS best_cars_engine
FROM used_cars
WHERE location='Chennai'
GROUP BY name
ORDER BY best_cars_engine DESC
LIMIT 10;

--QUESTION 2
SELECT name, MAX(power) AS best_cars_power
FROM used_cars
WHERE location='Chennai'
GROUP BY name
ORDER BY best_cars_power DESC
LIMIT 10;

--QUESTION 3
SELECT name, transmission, COUNT(transmission) AS best_cars_transmission
FROM used_cars
WHERE location='Chennai'
GROUP BY name, transmission
ORDER BY best_cars_transmission DESC
LIMIT 10;

--QUESTION 4
SELECT name, MIN(mileage) AS best_cars_mileage
FROM used_cars
WHERE location='Pune'
GROUP BY name
ORDER BY best_cars_mileage ASC
LIMIT 10;

--QUESTION 5
SELECT name, MAX(engine) AS best_cars_engine
FROM used_cars
WHERE location='Pune'
GROUP BY name
ORDER BY best_cars_engine DESC
LIMIT 10;

--QUESTION 6
SELECT name, MIN(kilometers_driven) AS best_cars_mumbai
FROM used_cars
WHERE location='Mumbai'
GROUP BY name
ORDER BY best_cars_mumbai ASC
LIMIT 10;

--QUESTION 7
SELECT name, MIN(kilometers_driven) AS best_cars_kilometer, price
FROM used_cars
GROUP BY name,price
ORDER BY best_cars_kilometer, price ASC
LIMIT 10;

--QUESTION 8
SELECT COUNT(transmission) total_automatic
FROM used_cars
WHERE location='Chennai' AND transmission= 'Automatic';

SELECT name, price
FROM used_cars
WHERE location= 'Chennai' AND transmission= 'Automatic'
ORDER BY price ASC;

--QUESTION 9
SELECT name, AVG(mileage) AS mean_mileage
FROM used_cars
WHERE location='pune' AND mileage >mean_mileage
GROUP BY name
ORDER BY mileage

SELECT * FROM used_cars