delimiter //
create procedure sp_get_documentos()
begin
	/* store procede para ver detalle de documentos */
	select serie,numeracion from IphoneData.detalle_ventas
    order by numeracion asc;

end//

call sp_get_documentos