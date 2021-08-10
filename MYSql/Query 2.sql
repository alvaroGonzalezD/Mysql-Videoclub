SELECT
	title,
    COUNT(actor_id) AS reparto
FROM actor
	JOIN film_actor USING(actor_id)
    JOIN film USING(film_id)
    GROUP BY film_id
    ORDER BY film_id
    