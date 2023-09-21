SELECT *
FROM customer 
----------------
SELECT *
FROM actor
-----------------
SELECT *
FROM film


-- How many actors are there with the last name ‘Wahlberg’?
-- 2
SELECT last_name,actor_id
FROM actor
WHERE last_name = 'Wahlberg'

-- How many payments were made between $3.99 and $5.99?
-- 2
SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99

-- What film does the store have the most of? (search in inventory)
-- ????????
SELECT film_id,title, COUNT(*)
FROM inventory
GROUP BY film_id
ORDER BY Count(*) DESC

-- How many customers have the last name ‘William’?
--0
SELECT last_name,customer_id
FROM customer
WHERE  last_name = 'William'

-- What store employee (get the id) sold the most rentals?
-- 1
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(*) DESC

-- How many different district names are there?
-- 603
SELECT district
FROM address

-- What film has the most actors in it? (use film_actor table and get film_id)
--
SELECT film_id,count(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY film_id DESC

-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- 13
SELECT count(customer_id)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'

--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--3
SELECT amount, COUNT(rental_id)
FROM payment
WHERE payment.customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250


--Within the film table, how many rating categories are there? And what rating has the most
--movies total?
- 5
-PG-13
SELECT rating, COUNT(title)
FROM film
GROUP BY rating
ORDER BY COUNT(title) DESC
