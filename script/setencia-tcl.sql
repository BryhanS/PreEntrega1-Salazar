/*desactivar autocommit */
set autocommit = 0;

select * from Ventas;

delete from Ventas where id_venta=25;
rollback;
commit;

/*insertar linea faltante*/
insert into Ventas(id_venta,serie,numeracion,id_tienda,id_cliente,cantidad,id_imei)
values
(null,"B001","025",2,25,1,25);

/*ejercicio 2*/

select * from sku;


start transaction;
insert into sku(id_sku, nombre_sku,modelo,capacidad,color, codigo_sku,precio) values (null,"iPhone Xr 256 Negro","iPhone Xr",256,"Negro","XR256NEG",999);
insert into sku(id_sku, nombre_sku,modelo,capacidad,color, codigo_sku,precio) values (null,"iPhone SE 2020 64 Rojo","iPhone SE 2020",64,"Rojo","SE264ROJ",499);
insert into sku(id_sku, nombre_sku,modelo,capacidad,color, codigo_sku,precio) values (null,"iPhone Xs 256 Plata","iPhone Xs",256,"Plata","XS256PTA",1300);
insert into sku(id_sku, nombre_sku,modelo,capacidad,color, codigo_sku,precio) values (null,"iPhone 11 128 Azul","iPhone 11",128,"Azul","11128AZUL",1800);
savepoint lote_1;
insert into sku(id_sku, nombre_sku,modelo,capacidad,color, codigo_sku,precio) values (null,"iPhone Xr 256 Amarillo","iPhone Xr",256,"Amarillo","XR256AMA",999);
insert into sku(id_sku, nombre_sku,modelo,capacidad,color, codigo_sku,precio) values (null,"iPhone SE 2020 128 Rojo","iPhone SE 2020",128,"Rojo","SE2128ROJ",499);
insert into sku(id_sku, nombre_sku,modelo,capacidad,color, codigo_sku,precio) values (null,"iPhone Xs 128 Plata","iPhone Xs",128,"Plata","XS128PTA",1300);
insert into sku(id_sku, nombre_sku,modelo,capacidad,color, codigo_sku,precio) values (null,"iPhone 11 128 Negro","iPhone 11",128,"Negro","11128NEG",1800);
savepoint lote_2;

release savepoint lote_1;
