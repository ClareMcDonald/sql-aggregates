-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT  
    country,
    AVG(amount)
FROM
    address
INNER JOIN
    city
ON
    address.city_id = city.city_id 
INNER JOIN
    country
ON
    city.country_id = country.country_id
INNER JOIN
    customer
ON 
    address.address_id = customer.address_id
INNER JOIN
    payment
ON
    customer.customer_id = payment.customer_id
GROUP BY
    country
ORDER BY
    avg DESC
LIMIT
    10;