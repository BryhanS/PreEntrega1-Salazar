delimiter %
create function PagoIgv(monto int) returns float
deterministic
begin
	return monto * 0.18;
end%

create function Total(monto int) returns float
deterministic
begin
	return monto * 1.18;
end%

SELECT *, PagoIgv(monto) as igv, Total(monto) as Total  FROM IphoneData.detalle_ventas;