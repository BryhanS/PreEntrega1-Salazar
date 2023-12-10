delimiter //
create procedure sp_get_documentos()
begin
	/* store procede para ver detalle de documentos */
	select serie,numeracion from IphoneData.detalle_ventas
    order by numeracion asc;

end//

call sp_get_documentos

create procedure sp_get_ciudad_top(in top int)
begin
	/* store procede para ver consolidado de todas las ventas por ciudad de top, ingresar cero para tener todos los distritos */
    
    if top = 0 then
		select ciudad,sum(monto) from IphoneData.detalle_ventas
		group by ciudad
		order by sum(monto) desc;
	else
		select ciudad,sum(monto) from IphoneData.detalle_ventas
		group by ciudad
		order by sum(monto) desc
		limit top;
    end if;
    
end//

call sp_get_ciudad_top(5)