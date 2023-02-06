#1
SELECT CONCAT(c.first_name," ",c.last_name) AS Nombre,ci.city AS Ciudad 
FROM customer c JOIN address a ON c.address_id=a.address_id JOIN city ci USING(city_id) 
WHERE first_name='JUDY' AND last_name='GRAY';

#2
SELECT COUNT(DISTINCT co.country_id) AS "PAÍSES CLIENTES"
FROM customer c JOIN address a USING(address_id) 
JOIN city ci USING(city_id) JOIN country co USING(country_id);

#LA SIGUIENTE CONSULTA NO ESTÁ EN EL BOLETÍN, SACAMOS EL PAÍS SIN CLIENTES
SELECT co.country 
FROM customer c JOIN address a USING(address_id) JOIN city ci USING(city_id) RIGHT JOIN country co USING(country_id)
WHERE c.customer_ID is NULL;

#3
SELECT COUNT(*) AS "Clientes egipcios"
FROM customer c JOIN address a USING(address_id) 
JOIN city ci USING(city_id) JOIN country co USING(country_id)
WHERE country='EGYPT';

#DUDA DE ELOY
SELECT COUNT(*) AS "Clientes egipcios",group_concat(concat(city) separator ',persona')
FROM customer c JOIN address a USING(address_id) 
JOIN city ci USING(city_id) JOIN country co USING(country_id)
WHERE country='EGYPT';

#4
SELECT DISTINCT ci.city
FROM customer c JOIN address a USING(address_id) 
JOIN city ci USING(city_id) JOIN country co USING(country_id)
WHERE country='EGYPT';

#5
SELECT COUNT(*) AS "Clientes no americanos"
FROM customer c JOIN address a USING(address_id) JOIN city ci USING(city_id) JOIN country co USING(country_id)
WHERE co.country<>'UNITED STATES'