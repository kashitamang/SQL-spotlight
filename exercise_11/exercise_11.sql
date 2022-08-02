-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10

SELECT title, count(*)
from film 
LEFT JOIN inventory on film.film_id = inventory.film_id
INNER JOIN rental on inventory.inventory_id = rental.inventory_id
GROUP BY film.film_id
ORDER by count DESC
limit 10;