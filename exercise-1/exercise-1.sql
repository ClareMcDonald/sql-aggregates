-- find the title and count of the top 10 most rented films
SELECT
    title,
    COUNT(*) AS total_rentals_per_film
FROM
    film
INNER JOIN
    inventory
ON
    film.film_id = inventory.film_id
-- use COUNT to count each row
-- GROUP BY the film_id
GROUP BY    
    film.film_id
-- ORDER in descending order
ORDER BY
    total_rentals_per_film DESC
-- LIMIT 10
LIMIT 10;