-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
--select is 3 things you need 

SELECT title, description, release_year, 
json_agg(to_jsonb(actor))
as actors from film
LEFT JOIN film_actor on film.film_id = film_actor.film_id
LEFT JOIN actor on film_actor.actor_id = actor.actor_id
where film.title = 'Airplane Sierra'
GROUP BY film.title, film.description, film.release_year