-- find the title and count of the top 10 most rented films
SELECT
    title,
    COUNT(*) AS count
FROM
    film
INNER JOIN
    inventory
ON
    film.film_id = inventory.film_id
INNER JOIN  
    rental
ON  
    inventory.inventory_id = rental.inventory_id
-- use COUNT to count each row
-- GROUP BY the film_id
GROUP BY    
    film.film_id
-- ORDER in descending order
ORDER BY
    count DESC
-- LIMIT 10
LIMIT 10;