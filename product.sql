CREATE TABLE product(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(100),
category_id INT
);


SELECT * FROM product

CREATE TABLE categories(
category_id SERIAL PRIMARY KEY,
categpry_name VARCHAR(40) NOT NULL,
description VARCHAR(250) NOT NULL
);

SELECT * FROM categories

INSERT INTO product(
product_name,
category_id
)
VALUES(
'John Fruit Cake', 3),
('Marys Healthy Mix',9),
('Peters Scary Stuff',10),
('Jims Secret Recipe',11),
('Elisabeths Best Apples',12),
('Janes Favourite Cheese',4),
('Billys Home Made Oizza',13),
('Ellas Special Salmon',8),
('Roberts Rich Speghetti',5),
('Mias Popular Ice',14)

INSERT INTO categories(
categpry_name,
description
)
VALUES(
'Beverages','Soft Drinks, coffees, teas, beers and ales'),
('Condiments','Sweet and savory sauces, relishes, spreads, and seasoning'),
('confections','Desserts,candies, and sweet breads'),
('Diary Products','Cheeses'),
('Grains/Cereals','Breads, crackers, pasta, and cereal'),
('Meat/Poultry','Prepared meats'),
('Produce','Dired fruit and bean curd'),
('Seafood','Seaweed and fish')

ALTER TABLE categories RENAME COLUMN categpry_name TO category_name;

SELECT product_id,product_name, category_name
FROM product
INNER JOIN categories ON product.category_id = categories.category_id;

SELECT product_id,product_name, category_name
FROM product
LEFT JOIN categories ON product.category_id = categories.category_id;

SELECT product_id,product_name, category_name
FROM product
RIGHT JOIN categories ON product.category_id = categories.category_id;

SELECT product_id,product_name, category_name
FROM product
FULL JOIN categories ON product.category_id = categories.category_id;

SELECT product_id,product_name, category_name
FROM product
CROSS JOIN categories;