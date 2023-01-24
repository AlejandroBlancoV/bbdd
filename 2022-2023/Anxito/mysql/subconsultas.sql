## 1) Listar los nombres de los clientes que tienen asignado el representante García Gómez, Luis
## Antonio (suponiendo que no pueden haber representantes con el mismo nombre).

SELECT Nombre
FROM clientes
WHERE codRepresentante=(SELECT codEmpleado FROM empleados WHERE nombre ="García Gómez, Luis Antonio") ;

## lo mismo con un JOIN
SELECT c.nombre
FROM empleados e JOIN clientes c ON e.codEmpleado=c.codRepresentante
WHERE e.nombre="García Gómez, Luis Antonio";

## 2) Listar los vendedores (codEmpleado, nombre, y no de oficina) que trabajan en oficinas "buenas"
## (las que tienen ventas superiores a su objetivo).

SELECT codempleado, nombre
FROM empleados
WHERE oficina IN (SELECT codOficina FROM oficinas WHERE objetivo>ventas);

SELECT  p.codRepresentante, SUM(lp.cantidad*lp.precioVenta),o.objetivo
FROM lineaspedido lp JOIN pedidos p ON lp.codPedido=p.codPedido JOIN empleados e ON
p.codrepresentante=e.codEmpleado JOIN oficinas ON e.oficina=o.codOficina
GROUP BY e.oficina
HAVING SUM(lp.cantidad*lp.precioVenta);


SELECT p.codPedido, SUM(lp.cantidad*lp.precioVenta),o.objetivo
FROM pedidos p JOIN lineaspedido lp ON p.codPedido=lp.codPedido JOIN empleados e ON
p.codRepresentante=e.codEmpleado JOIN oficinas o ON e.oficina =o.codOficina
GROUP BY e.oficina;


## 3) Listar los vendedores que no trabajan en oficinas dirigidas por el empleado 108.
SELECT *
FROM empleados
WHERE oficina IN (SELECT codOficina FROM directores WHERE codDirector<>108);


/*4) Listar los productos (idfabricante, idproducto y descripción) para los cuales no se ha recibido
ningún pedido de 500 € o más.*/
SELECT idFabricante, idproducto, descripcion
FROM productos
WHERE idProducto NOT IN (SELECT DISTINCT producto FROM lineaspedido WHERE (cantidad*precioVenta)>500);


/*5) Listar los clientes asignados a García Gómez, Luis Antonio que no han remitido un pedido
superior a 5.000 €.*/

SELECT codCliente, nombre
FROM clientes
WHERE codRepresentante =(SELECT codEmpleado
FROM empleados
WHERE nombre="García Gómez, Luis Antonio") AND codCliente IN (SELECT DISTINCT p.codCliente FROM pedidos p
JOIN lineaspedido lp ON p.codPedido=lp.codPedido GROUP BY p.codCliente,p.codPedido HAVING
SUM(cantidad*precioVenta)>5000);

## hacer la consulta con JOINS
SELECT codCliente, nombre
FROM clientes
WHERE codRepresetante;

/*6) Listar las oficinas en donde haya un vendedor cuyas ventas representen más del 55% del objetivo
de su oficina.*/
SELECT e.codEmpleado, SUM(lp.cantidad*lp.precioVenta) AS "Total vendedor" ,ROUND
((o.objetivo*0.55),2) AS 55OBJETIVO 
FROM empleados e JOIN pedidos p ON e.codEmpleado=p.codRepresentante
JOIN lineaspedido lp  USING (codPedido)
JOIN oficinas o ON e.oficina=o.codOficina
GROUP BY e.codEmpleado HAVING SUM(lp.cantidad*lp.precioVenta)>55OBJETIVO;

/*7) Listar las oficinas en donde todos los vendedores tienen sueldos que superan al 50% del objetivo
de la oficina.*/
SELECT e.codEmpleado, e.sueldo, (o.objetivo*0.5) AS mitad_objetivo
FROM empleados e JOIN oficinas o ON e.oficina= o.codOficina
WHERE o.objetivo IS NOT NULL AND e.sueldo>(o.objetivo*0.5);

SELECT CodOficina, ciudad
FROM oficinas
WHERE (objetivo * 0.5) < (SELECT MIN(sueldo) FROM empleados WHERE 
empleados.oficina=oficina.CodOficina); 


/*8) Listar las oficinas que tengan un objetivo mayor que la suma
 de los objetivos de sus vendedores.*/
 SELECT *
 FROM oficinas
 WHERE
 WHERE
 


/*9) Listar las oficinas que tengan un objetivo mayor que la suma de los objetivos de sus vendedores.*/


/*10) Hallar cuántos pedidos (total de cada pedido) hay de más de 1800 €.*/


/*11) Saber cuántas oficinas tienen empleados con ventas superiores a su objetivo, no queremos saber
cuáles sino cuántas hay.*/


/*12) Listar las oficinas en donde todos los vendedores tienen ventas que superan al 50% del objetivo
de la oficina.*/


/*13) Seleccionar los pedidos, entendiendo por un pedido el Código del pedido y todas sus líneas, con
un importe superior a 30.000€.*/


/*14) Listar las oficinas que no tienen director.*/


/*15) Seleccionar los clientes que no han realizado ningún pedido.*/


/*16) Seleccionar los productos que no han sido vendidos.*/


/*17) Seleccionar los representantes que no han realizado ninguna venta, indicando el nombre del
empleado.*/