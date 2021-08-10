SELECT
	title,
	SUM(amount) AS dinerito
FROM payment
	JOIN rental USING(rental_id)
    JOIN inventory USING(inventory_id)
    JOIN film USING(film_id)
    GROUP BY film_id
    ORDER BY film_id