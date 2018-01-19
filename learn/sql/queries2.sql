SELECT customer.first_name, customer.last_name, customer.email, address.address, address.address2, city.city
FROM customer
LEFT JOIN address
ON customer.address_id = address.address_id
LEFT JOIN city
ON address.city_id = city.city_id
WHERE city.city_id = 312


SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
JOIN film_category
ON film.film_id = film_category.film_id
JOIN category
ON film_category.film_id = category.category_id
WHERE category.name = "Comedy"


SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year
FROM actor
JOIN film
WHERE actor_id = 5

SELECT customer.first_name, customer.last_name, customer.email, address.address, store.store_id, city.city_id
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN store
ON customer.store_id = store.store_id
JOIN city
ON city.city_id = address.city_id
WHERE store.store_id = 1
AND city.city_id IN (1,42,312,459)

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, film_actor.actor_id
FROM film
JOIN film_actor
ON film.film_id = film_actor.film_id
WHERE rating = "G"
AND special_features LIKE '%Behind The Scenes%'
AND actor_id = 15

SELECT film.film_id, film.title, film_actor.actor_id, actor.first_name, actor.last_name
FROM film
JOIN film_actor
ON film.film_id = film_actor.film_id
JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE film_actor.film_id = 369


-- UNSURE
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name, payment.amount
FROM film
JOIN film_category
ON film.film_id = film_category.film_id
JOIN category
ON film_category.category_id = category.category_id
JOIN inventory
ON film.film_id = inventory.film_id
JOIN rental
ON inventory.film_id = rental.rental_id
JOIN payment
ON rental.rental_id = payment.rental_id
WHERE category.name = "Drama"

--

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name,actor.first_name, actor.last_name
FROM film
JOIN film_category
ON film.film_id = film_category.film_id
JOIN category
ON film_category.category_id = category.category_id
JOIN film_actor
ON film.film_id = film_actor.film_id
JOIN actor
ON actor.actor_id = film_actor.actor_id
WHERE actor.first_name = "SANDRA" AND actor.last_name = "KILMER"
AND category.name = "Action"
