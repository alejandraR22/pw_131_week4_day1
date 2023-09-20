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
SELECT film_id,inventory
FROM inventory
WHERE amount

-- How many customers have the last name ‘William’?
--0
SELECT last_name,customer_id
FROM customer
WHERE  last_name = 'William'

-- What store employee (get the id) sold the most rentals?
--???????
SELECT staff_id,first_name,last_name
FROM rental
WHERE

-- How many different district names are there?
--
SELECT
FROM address
WHERE

-- What film has the most actors in it? (use film_actor table and get film_id)
--
SELECT
FROM film_actor
WHERE

-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--
SELECT
FROM customer
WHERE

--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--
SELECT
FROM payment
WHERE

--Within the film table, how many rating categories are there? And what rating has the most
--movies total?
--
SELECT film_id
FROM rating
WHERE 