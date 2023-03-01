BBDD 2022
1º DAM
Tablón
Trabajo de clase
Personas
Todos los temas
Exámenes
4.- SQL - 2ª Evaluación
3.- Diseño Lógico. Modelo Relacional
2.- El Modelo Conceptual. Modelo Entidad - Relación
1.- Los Sistemas de Información
0.- EL SGBD Access
0.- Programación del módulo
Exámenes
Exámenes
Completada Tarea
Examen 1ª Evaluación
Fecha de entrega: 24 nov 2022, 11:00
4.- SQL - 2ª Evaluación
4.- SQL - 2ª Evaluación
Material
EJERCICIOS SAKILA
Última modificación: 10:05

Ejercicios 2 Sakila.docx
Word

Ejercicios 1 Sakila.docx
Word

sakila_database.png
Imagen

sakila-data.sql
SQL

sakila-schema.sql
SQL

sakila.png
Imagen

Boletín 1 Sakila.sql
SQL

Boletin 2 Sakila.sql
SQL
Material
Solciones subconsultas
Publicado: 2 feb
Material
Resúmenes SQL
Publicado: 31 ene
Material
Subconsultas en SQL
Publicado: 16 ene
Material
Ejemplos
Última modificación: 17 nov 2022
Material
Actividades
Última modificación: 24 ene
Material
Unidades Didácticas
Última modificación: 30 ene
3.- Diseño Lógico. Modelo Relacional
3.- Diseño Lógico. Modelo Relacional
Completada Tarea
Actividad Final Unidad
Fecha de entrega: 13 nov 2022, 23:59
Material
Soluciones
Publicado: 18 oct 2022
Material
Actividades
Última modificación: 3 nov 2022
Material
Unidad Didáctica 3. Modelo Relacional
Última modificación: 13 nov 2022
2.- El Modelo Conceptual. Modelo Entidad - Relación
2.- El Modelo Conceptual. Modelo Entidad - Relación
Material
Solución Tarea Final
Publicado: 5 nov 2022
Completada Tarea
Actividad Final de la Unidad
Fecha de entrega: 23 oct 2022, 23:59
Material
Soluciones
Publicado: 1 oct 2022
Material
Ejercicios
Última modificación: 4 oct 2022
Material
Unidad Didáctica 2.- Modelo Entidad - Relación
Última modificación: 8 oct 2022
1.- Los Sistemas de Información
1.- Los Sistemas de Información
Material
Los Sistemas de almacenamiento de la información
Última modificación: 29 sept 2022
0.- EL SGBD Access
0.- EL SGBD Access
Material
Access
Última modificación: 12 sept 2022
0.- Programación del módulo
0.- Programación del módulo
Material
Programación del módulo de Base de Datos
Última modificación: 12 sept 2022
EJERCICIOS SAKILA se ha mostrado
#1
SELECT fa.actor_id AS ID,CONCAT(a.first_name," ",a.last_Name) AS Nombre,COUNT(*) AS "Número de películas" FROM film_actor fa JOIN actor a USING(actor_id)
GROUP BY fa.actor_id
ORDER BY 3 DESC LIMIT 10;

#2

SELECT c.first_name,c.last_name,co.country
FROM customer c JOIN address a USING(address_id) JOIN city ci USING(city_id) JOIN country co USING(country_id)
WHERE co.country LIKE 'S%';

#3
SELECT co.country AS "País",COUNT(c.customer_id) AS "Número de clientes"
FROM customer c JOIN address a USING(address_id) JOIN city ci USING(city_id) JOIN country co USING(country_id)
GROUP BY co.country_id
ORDER BY 2 DESC
LIMIT 10;

#4 

SELECT f.title,COUNT(i.inventory_id) AS "Núm copias"
FROM film f JOIN inventory i USING(film_id)
GROUP BY f.title
ORDER BY 2 DESC
LIMIT 10;

#5

SELECT f.film_id,f.title,COUNT(*)
FROM customer c JOIN rental r USING(customer_id) JOIN inventory i USING(inventory_id) JOIN film f USING(film_id)
WHERE first_name='DEBORAH' AND last_name='WALKER'
GROUP BY f.film_id;

SELECT DISTINCT f.film_id
FROM customer c JOIN rental r USING(customer_id) JOIN inventory i USING(inventory_id) JOIN film f USING(film_id)
WHERE first_name='DEBORAH' AND last_name='WALKER';

#6

SELECT c.customer_id,CONCAT(c.first_name," ",c.last_name) AS "Nombre cliente",SUM(p.amount) AS Total
FROM customer c JOIN rental r USING(customer_id) JOIN payment p USING(rental_id)
GROUP BY c.customer_id
ORDER BY 3 DESC
LIMIT 10;






Boletin 2 Sakila.sql
Mostrando Boletin 2 Sakila.sql.