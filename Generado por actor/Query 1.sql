SELECT 
	concat_ws(', ', first_name, last_name) AS actor,
    SUM(money_actor_film) AS generado
FROM sakila.film_actor
	JOIN money_actor_film USING(film_id)
    JOIN actor using(actor_id)

GROUP BY actor_id
ORDER BY generado DESC