CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `money_generated_per_film` AS
    SELECT 
        `film`.`film_id` AS `film_id`,
        SUM(`payment`.`amount`) AS `money_generated_per_film`
    FROM
        (((`payment`
        JOIN `rental` ON ((`payment`.`rental_id` = `rental`.`rental_id`)))
        JOIN `inventory` ON ((`rental`.`inventory_id` = `inventory`.`inventory_id`)))
        JOIN `film` ON ((`inventory`.`film_id` = `film`.`film_id`)))
    GROUP BY `inventory`.`film_id`