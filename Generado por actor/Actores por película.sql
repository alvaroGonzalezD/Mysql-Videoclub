CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `actors_in_film` AS
    SELECT 
        `film`.`film_id` AS `film_id`,
        COUNT(`actor`.`actor_id`) AS `reparto`
    FROM
        ((`actor`
        JOIN `film_actor` ON ((`actor`.`actor_id` = `film_actor`.`actor_id`)))
        JOIN `film` ON ((`film_actor`.`film_id` = `film`.`film_id`)))
    GROUP BY `film_actor`.`film_id`