
create view  detalle_celulares_imei as
select 
	c.id_imei,
    c.imei,
    s.codigo_sku,
    s.modelo,
    s.capacidad,
    s.color,
    s.precio
from celulares c
join sku s
	on c.id_sku = s.id_sku;
    

create view venta_total_sucursal as
select 
	t.nombre_sucursal,
    sum(v.cantidad *d.precio) as total
from Ventas v
join detalle_celulares_imei d
	on v.id_imei = d.id_imei
join Tienda t
	on v.id_tienda = t.id_tienda
group by t.nombre_sucursal;


create view cantidad_venta_distrito as
select 
	d.ciudad,
    sum(v.cantidad) as cantidadTotal
from Ventas v
join Clientes c
	on v.id_cliente = c.id_cliente
join Direccion d
	on c.id_direccion = d.id_direccion
group by d.ciudad
order by cantidadTotal DESC;


create view detalle_ventas as
select 
	v.serie,
    v.numeracion,
    t.nombre_sucursal,
    c.dni,
    c.nombres,
    c.apellidos,
    d.direccion,
    d.ciudad,
	dc.imei,
    dc.codigo_sku,
    dc.modelo,
    v.cantidad,
    dc.precio,
    (v.cantidad * dc.precio) as monto
from Ventas v
join Tienda t
	on v.id_tienda = t.id_tienda
join Clientes c
	on v.id_cliente = c.id_cliente
join Direccion d
	on c.id_direccion = d.id_direccion
join detalle_celulares_imei dc
	on v.id_imei = dc.id_imei;


create view ventas_por_ciudad as
select 
	ciudad,
    sum(monto) as total
 from detalle_ventas
 group by ciudad
 order by total desc;