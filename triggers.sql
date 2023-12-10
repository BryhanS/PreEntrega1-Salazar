create table control_series (
	id int primary key auto_increment,
    serie varchar(4),
    numeracion varchar(10),
    id_cliente varchar(8),
    estado varchar(10) not null default 'emitido',
    dia datetime
);


create trigger before_control_series
before insert on Ventas
for each row
insert control_series (id, serie, numeracion, id_cliente, dia) values(new.id_venta, new.serie, new.numeracion, new.id_cliente, now());

DELIMITER //
create trigger afert_delete_series
after delete on ventas
for each row
begin
	update control_series
    set estado = 'anulado', dia = now()
    where id = OLD.id_venta;
end;
//
DELIMITER ;


-- test

insert into Ventas(id_venta,serie,numeracion,id_tienda,id_cliente,cantidad,id_imei)
values
(29,"B001","029",2,25,3,20);


delete from Ventas
where id_venta = 29;



-- drop trigger before_control_series