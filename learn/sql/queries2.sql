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

SELECT customer.first_name, customer.last_name, customer.email, address.address, store.store_id
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN store
ON customer.store_id = store.store_id
WHERE store.store_id = 1
