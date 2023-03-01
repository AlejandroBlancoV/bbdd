# 1. Actores que tienen de primer nombre ‘Scarlett’.

select concat(first_name,' ', last_name) as nombre
from actor
where first_name="Scarlett";

# 2. Actores que tienen de apellido ‘Johansson’.

select concat(first_name,' ', last_name) as nombre
from actor
where last_name="Johansson";

# 3. Actores que contengan una ‘O’ en su nombre.

select concat(first_name,' ', last_name) as nombre
from actor
where first_name like '%o%' and last_name like '%o%';

# 4. Actores que contengan dos ‘O’ en su nombre y en una ‘A’ en su apellido.

select concat(first_name,' ', last_name) as nombre
from actor
where first_name like '%o%o%' and last_name like '%a%';

# 5. Listar las ciudades con nombres compuestos.

select city
from city
where city  like '% %';

# 6. Listar las películas con una duración entre 80 y 100.

select title, length
from film
where length >= 80 and length <= 100;

# 7. Mostrar las ciudades del country Spain (consulta multitabla).

select city
from city join country using (country_id)
where country = "Spain";

# 8. Mostrar el nombre de la película y el nombre de los actores que participan en ella.

select title ,concat(first_name,' ', last_name) as nombre
from film join film_actor using(film_id) join actor using(actor_id)
order by 1;

# 9. Mostrar el country, la ciudad y dirección de cada miembro del staff.

select concat(s.first_name,' ', s.last_name) as nombre, a.address, ci.city, co.country
from staff s join address a using(address_id) join city ci using(city_id) join country co using(country_id);

# 10. Mostrar el country, la ciudad y dirección de cada customer.

select  concat(c.first_name,' ', c.last_name) as nombre, a.address, ci.city, co.country
from customer c join address a using(address_id) join city ci using(city_id) join country co using(country_id)

