#1 Obtén los nombres de los clientes que han hecho pedidos después del 1/1/98.
select ContactName, concat(day(OrderDate),"-", month(OrderDate),"-",year(OrderDate))
from customers join orders using(CustomerID)
where year(OrderDate) between 1998 and year(curdate())
order by 2;

#2 Obtén los nombres de los productos y de las compañías que los suministran.
# Los productos sin suministradores asignados y los suministradores sin
# productos asignados no se incluyen en el conjunto de resultados.

select ProductName, CompanyName
from Products join Suppliers using(SupplierID)
 order by 2
 
#3 Realiza una consulta que permita presentar el número de la factura y el código
# del cliente al cual ésta pertenece.