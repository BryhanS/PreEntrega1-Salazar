use  Mysql;
select * from mysql.user;

-- usuario solo lectura de tablas
create user 'logistica'@'localhost' identified by '123456';
-- permisos de seleccion solo tabla iphonedata
grant select on IphoneData.* to 'logistica'@'localhost';
-- revisar permisos
show grants for 'logistica'@'localhost';



-- usuario solo lectura de tablas
create user 'facturador'@'localhost' identified by '123456';
-- permisos de seleccion solo tabla iphonedata
grant all on IphoneData.* to 'facturador'@'localhost';
-- revoca permiso de eliminar
revoke delete on IphoneData.* from 'facturador'@'localhost';
-- revisar permisos
show grants for 'facturador'@'localhost';