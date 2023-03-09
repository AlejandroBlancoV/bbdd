# 1- Realizar una consulta que me muestre toda las columnas de la tabla de productos
select *
from products;


# 2- Realizar una consulta que me muestre el código, el nombre y el precio del producto
select ProductID, ProductName, UnitPrice
from products;


# 3- Realizar una consulta que me muestre el código, nombre y la categoría de los productos que estén entre 18.00 y 20.00
select ProductID, ProductName, CategoryName
from products join categories using (CategoryID)
where UnitPrice >= 18 and UnitPrice <= 20;


# 4- Realiza una consulta que permita presentar la fecha actual mediante una función
select curdate();

# 5- Realiza una consulta que permita presentar los apellidos de los empleados en minúscula
select LOWER(LastName)
from employees;


# 6- Realiza una consulta que permita presentar los apellidos de los empleados en mayúscula
select upper(LastName)
from employees;

 
# 7- Realiza una consulta que permita presentar las tres primeras letras del nombre de los empleados
SELECT SUBSTRING(FirstName, 1, 3)
FROM employees;


# 8- Realiza una consulta que permita presentar el nombre y apellido, y un correo
# de los empleados, éste deberá tener los siguientes datos:
# a. La primera letra del nombre, seguida del apellido
# b. El correo deberá presentarse en minúscula
select concat(substring(FirstName, 1, 1),' ', LastName), lower(Address)
from employees ;


# 9- Realiza una consulta que permita presentar el nombre y apellidos de los
# empleados que tengan más de 40 años
select concat(FirstName,' ', LastName) as 'nombre', year(curdate()) - year(BirthDate)>= 40
from employees;


