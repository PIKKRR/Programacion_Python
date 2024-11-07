--Este SQL lo uso para ir realizando las consultas.

SELECT * 
FROM city 
WHERE country_id = (SELECT country_id FROM country WHERE upper(country) = 'SPAIN');