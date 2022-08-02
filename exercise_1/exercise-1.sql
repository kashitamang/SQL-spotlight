-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city

-- the address_id column 
--from address table + inner join city table on address.city_id = city.city_id
--do this where city.city = "Dundee"

SELECT address_id 
FROM address INNER JOIN city on address.city_id = city.city_id
where city.city = 'Dundee';
