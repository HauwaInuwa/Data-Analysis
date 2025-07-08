SELECT * FROM cars
SELECT "Brand" FROM cars

SELECT "Region" , ROUND(AVG("HorsePower"),1) AS avg_HorsePower
FROM cars
GROUP BY "Region";

SELECT * FROM CARS
WHERE "VehicleClass" = 'SUV' AND "HorsePower" > 250 AND "MSRP" < 40000
ORDER BY "MSRP" DESC;