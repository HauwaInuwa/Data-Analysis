SELECT * FROM actor
SELECT * FROM address
SELECT * FROM category
SELECT * FROM city
SELECT * FROM country
SELECT * FROM customer
SELECT * FROM film
SELECT * FROM film_actor
SELECT * FROM film_category
SELECT * FROM inventory
SELECT * FROM language
SELECT * FROM payment
SELECT * FROM rental
SELECT * FROM staff
SELECT * FROM store

--QUESTION 1
SELECT first_name, last_name, email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

--QUESTION 2
SELECT title, description FROM film
WHERE title = 'Outlaw Hanky';

--QUESTION 3*
SELECT phone FROM address
WHERE address = '259 Ipoh Drive.';

--QUESTION 4*
SELECT * FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
ORDER BY payment_id ASC
LIMIT 10;

--QUESTION 5
SELECT title FROM film
ORDER BY length
LIMIT 5;

--QUESTION 6
SELECT * FROM film
WHERE length <=50;

--QUESTION 7
SELECT DISTINCT COUNT(customer_id) FROM payment
WHERE amount >5;

--QUESTION 8*
SELECT address FROM address
INNER JOIN customer ON address.address_id = customer.address_id
INNER JOIN payment ON customer.customer_id = payment.customer_id
WHERE amount >5;

--QUESTION 9
SELECT COUNT(film_id) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

--QUESTION 10
SELECT staff_id, COUNT(rental_id) FROM rental
GROUP BY staff_id;

--QUESTION 11
SELECT rating, ROUND(AVG(replacement_cost),1) FROM film
GROUP BY rating

--QUESTION 12
SELECT customer.customer_id, amount FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
ORDER BY amount DESC
LIMIT 5;

--QUESTION 13
SELECT customer_id, COUNT(customer_id) FROM rental
GROUP BY customer_id
HAVING COUNT(customer_id) >= 40;

--QUESTION 14
SELECT first_name, last_name, email, address.address FROM customer
INNER JOIN address ON customer.address_id = address.address_id
WHERE district = 'California';

--QUESTION 15
SELECT title, description FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';

--QUESTION 16
SELECT COUNT(*) FROM PAYMENT
WHERE EXTRACT(DOW FROM payment_date) = 1;

--QUESTION 17


--QUESTION 19
SELECT COUNT(payment.customer_id) FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
WHERE first_name = 'David' AND last_name = 'Farrell'

--QUESTION 20
SELECT customer.first_name, customer.last_name,COUNT(payment.customer_id) 
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY customer.first_name, customer.last_name,payment.customer_id

--QUESTION 21
SELECT store.store_id, COUNT(payment.customer_id) 
FROM payment
INNER JOIN staff ON payment.staff_id = staff.staff_id
INNER JOIN store ON staff.store_id = store.store_id
GROUP BY store.store_id

--QUESTIN 22
SELECT customer.first_name, customer.last_name,COUNT(payment.customer_id),
CASE
WHEN COUNT(payment.customer_id) >= 25 THEN 'Premium'
ELSE 'Standard'
END AS Membership
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY customer.first_name, customer.last_name,payment.customer_id
