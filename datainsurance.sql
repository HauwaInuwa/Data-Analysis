CREATE TABLE data_insurance(
age INT,
sex VARCHAR(10),
bmi FLOAT,
children INT,
smoker CHAR(5),
region VARCHAR(20),
charges FLOAT
);
DROP TABLE data_insurance
--QUESTION 1
SELECT COUNT(sex) AS Total_male_from_30_southeast
FROM data_insurance
WHERE sex='male' AND bmi>=30 AND region='southeast';

--QUESTION 2
SELECT COUNT(sex) AS Total_female_Smoker_NorthWest
FROM data_insurance
WHERE sex='female' AND smoker='yes' AND region='northwest';

--QUESTION 3
SELECT COUNT(sex) AS Total_male_Smoker_above25_SouthWest
FROM data_insurance
WHERE sex='male' AND smoker='yes' AND bmi>25 AND region='southwest'; 

--QUESTION 4
SELECT region,COUNT(smoker) Total_smokers
FROM data_insurance
WHERE smoker='yes'
GROUP BY region
ORDER BY Total_smokers DESC
LIMIT 1;

--QUESTION 5
SELECT SUM(charges)
FROM data_insurance
WHERE sex='female' AND smoker='yes' AND region='northeast';

--QUESTION 6
SELECT region, AVG(bmi) AS mean_bmi
FROM data_insurance
GROUP BY region
ORDER BY mean_bmi DESC
LIMIT 1;

--QUESTION 7
SELECT region, round(AVG(bmi),2) AS mean_bmi
FROM data_insurance
WHERE region IN('northwest','southwest')
GROUP BY region
ORDER BY mean_bmi DESC;

SELECT
round(AVG(bmi) - (SELECT AVG(bmi)
FROM data_insurance
WHERE region = 'northwest'),1) AS difference
FROM data_insurance
WHERE region = 'southwest';


--QUESTION 8
SELECT AVG(bmi) AS mean_bmi
FROM data_insurance
WHERE age BETWEEN 25 AND 30;

SELECT
round(AVG(bmi) - (SELECT AVG(bmi)
FROM data_insurance
WHERE age BETWEEN 25 AND 30),1) AS difference
FROM data_insurance
WHERE age BETWEEN 30 AND 40

--QUESTION 9
SELECT AVG(bmi) AS mean_bmi
FROM data_insurance
WHERE age BETWEEN 30 AND 40;

ALTER TABLE data_insurance ALTER column bmi TYPE NUMERIC;


SELECT * FROM data_insurance