CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `film_info` AS
    SELECT 
        `film`.`title` AS `title`,
        `film`.`film_id` AS `film_id`,
        `actors_in_film`.`reparto` AS `reparto`,
        `money_generated_per_film`.`money_generated_per_film` AS `money_generated_per_film`
    FROM
        ((((`actor`
        JOIN `film_actor` ON ((`actor`.`actor_id` = `film_actor`.`actor_id`)))
        JOIN `film` ON ((`film_actor`.`film_id` = `film`.`film_id`)))
        JOIN `actors_in_film` ON ((`film_actor`.`film_id` = `actors_in_film`.`film_id`)))
        JOIN `money_generated_per_film` ON ((`film_actor`.`film_id` = `money_generated_per_film`.`film_id`)))
    GROUP BY `film_actor`.`film_id`