--Wk4, Day 3 HW
--Question 1: List all customers who live in Texas(use JOINs)
SELECT customer.first_name, customer.last_name, customer.email, customer.address_id
FROM customer
FULL JOIN address
ON address.address_id = customer.address_id
FULL JOIN city
ON city.city_id = address.city_id
WHERE city.city = 'Texas'

--Question 2: Get all payments above 6.99 with the customer's full name---
SELECT customer.customer_id, first_name,last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment.amount >= 6.99

--Question 3: Show all customers names who have made payments over $175
SELECT customer.first_name, customer.last_name, customer.email
FROM customer
FULL JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment.amount SUM(amount)>175)

--Question 4: List all customers that live in Nepal
SELECT customer.customer_id, first_name, last_name, address_id
FROM customer
FULL JOIN address
ON address.address_id = customer.address_id
FULL JOIN city
ON city.city_id = address.city_id
FULL JOIN country
ON country.country_id = city.country_id
WHERE country.country = 'Nepal'

---Question 5: which staff members had the most transactions
SELECT staff.staff_id, first_name,last_name
FROM staff
LEFT JOIN rental
ON rental.staff_id = staff.staff_id
WHERE ?? (Pull from where transactions are stored)
ORDER BY staff.staff_id

--Question 6: How many movie ratings are there? 
SELECT COUNT rating,
FROM film;

--Question 7: Show all the customers who have made a single payment above $6.99
SELECT customer.first_name, customer.last_name, customer.email
FROM customer
FULL JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment.amount SUM(amount)>175)
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

--Question 8: How many free rentals did our store give away?
SELECT COUNT payment.amount
FROM payment
WHERE payment.amount = 0; 

