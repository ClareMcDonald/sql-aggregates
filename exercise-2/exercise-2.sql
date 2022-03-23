-- the top 10 cities with the most total rental payment amount
SELECT
    city
    COUNT(*) as count
FROM    
    city
INNER JOIN
    address
ON
    city.city_id = address.city_id
customer
    add
-- include the city name and sum
-- use SUM to sum up the amounts
