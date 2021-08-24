-- select * from runs
-- Runs 1
-- SELECT
-- 	AVG(distance_km) as avg_running_distance
-- FROM
-- 	runs

-- Runs 2
-- SELECT DISTINCT 
-- 	route_name
-- FROM runs 
-- WHERE 
-- 	distance_km IN 
--     (
-- 	SELECT
-- 		min(distance_km)
-- 	FROM runs
-- )

-- Runs 3
-- SELECT DISTINCT
-- 	city_name as City
-- FROM
-- 	runs

-- Runs 4
-- SELECT DISTINCT
-- 	park_name
-- FROM
-- 	runs
-- WHERE 
-- 	distance_km < 10
--     AND duration_mins > 20 and duration_mins < 30
-- ORDER BY
-- 	park_name

-- Sakila 1
-- select 
-- 	last_name
--     ,count(last_name) as count
-- from actor
-- group by 
-- 	last_name
-- order by
-- 	count desc
-- limit 3

-- Sakila 2
-- SELECT
-- 	f.title
--     ,fa.actor_id
--     ,a.first_name
--     ,a.last_name
-- FROM
-- 	film as f
-- LEFT JOIN
-- 	film_actor as fa
--     ON f.film_id = fa.film_id
-- LEFT JOIN
-- 	actor as a
--     ON fa.actor_id = a.actor_id
-- WHERE
-- 	title  like '%pirate%'

-- Sakila 3
-- SELECT
-- 	film.title
--     ,COUNT(rental.rental_id) as rental_count
-- FROM
-- 	film
-- LEFT JOIN inventory
-- 	ON film.film_id = inventory.film_id
-- LEFT JOIN rental
-- 	ON inventory.inventory_id = rental.inventory_id
-- GROUP BY film.title
-- ORDER BY rental_count desc
-- limit 5

-- Sakila 4
select 
	concat(first_name, " ", last_name) as name
from customer as cu
LEFT JOIN address as ad
	on cu.address_id = ad.address_id
LEFT JOIN city as ci
	on ad.city_id = ci.city_id
LEFT JOIN country as co
	on ci.country_id = co.country_id
WHERE
	co.country = "France"
    


