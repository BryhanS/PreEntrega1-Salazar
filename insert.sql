
insert into Direccion(id_direccion,direccion,pais,ciudad)
VALUES 
(1,"La direccion en Pueblo Libre","Peru","Pueblo Libre"),
(2,"La direccion en Miraflores","Peru","Miraflores"),
(3,"La direccion en Barranco","Peru","Barranco"),
(4,"La direccion en San Borja","Peru","San Borja"),
(5,"La direccion en Agustino","Peru","Aguatino"),
(6,"La direccion en Lima","Peru","Lima"),
(7,"La direccion en Surco","Peru","Surco"),
(8,"Av. San Martin 123","Peru","Miraflores"),
(9,"Calle Los Pinos 456","Peru","San Isidro"),
(10,"Jr. Huancayo 789","Peru","La Molina"),
(11,"Av. Arequipa 101","Peru","Barranco"),
(12,"Calle Tacna 202","Peru","Jesús María"),
(13,"Jr. Junin 303","Peru","San Borja"),
(14,"Av. Pardo 404","Peru","Jesús María"),
(15,"Calle Lima 505","Peru","Magdalena"),
(16,"Av. Larco 606","Peru","San Miguel"),
(17,"Jr. Cusco 707","Peru","Pueblo Libre"),
(18,"Calle Huaraz 808","Peru","San Miguel"),
(19,"Av. Ayacucho 909","Peru","Chorrillos"),
(20,"Jr. Callao 1010","Peru","Breña"),
(21,"Calle Iquitos 1111","Peru","La Victoria"),
(22,"Av. Huancavelica 1212","Peru","Jesús María"),
(23,"Jr. Ucayali 1313","Peru","Breña"),
(24,"Calle Piura 1414","Peru","Surquillo"),
(25,"Av. Lambayeque 1515","Peru","San Juan de Lurigancho"),
(26,"Jr. Tumbes 1616","Peru","Surquillo"),
(27,"Calle Amazonas 1717","Peru","San Miguel");


insert into Clientes(id_cliente, dni, nombres,apellidos,id_direccion)
values
(1,66453513,"Pedro","Linares",2),
(2,28910873,"Luis","De Carpio",3),
(3,83819755,"Miguel","Salas",1),
(4,97308736,"Brigitte","Colsa",4),
(5,15490415,"Katia","Perez",5),
(6,62083640,"Valentina","Martínez",8),
(7,63434897,"Mateo","García",9),
(8,22468945,"Isabella","Rodríguez",10),
(9,94287825,"Santiago","López",11),
(10,23789714,"Amelia","Pérez",12),
(11,71683594,"Diego","González",13),
(12,82100391,"Olivia","Ramírez",14),
(13,21647160,"Gabriel","Torres",15),
(14,59232724,"Sofia","Sánchez",16),
(15,15844386,"Alejandro","Castro",17),
(16,15441273,"Camila","Flores",18),
(17,16568585,"Leonardo","Díaz",19),
(18,66909706,"Valeria","Herrera",20),
(19,56739624,"Daniel","Ruiz",21),
(20,80119473,"Natalia","Ortega",22),
(21,74008708,"Lucas","Jiménez",23),
(22,21334829,"Emma","Vargas",24),
(23,20920037,"Adrian","Reyes",25),
(24,76053132,"Mia","Mendoza",26),
(25,88453745,"Andres","Medina",27);


insert into Tienda(id_tienda,nombre_sucursal,id_direccion)
values
(1,"Tienda Lima",6),
(2,"Tienda Surco",7);



insert into sku(id_sku, nombre_sku,modelo,capacidad,color, codigo_sku,precio)
values

(1,"iPhone Xr 128 Rojo","iPhone Xr",128,"Rojo","XR128ROJ",999),
(2,"iPhone SE 2020 64 Negro","iPhone SE 2020",64,"Negro","SE264NEG",499),
(3,"iPhone Xs 256 Dorado","iPhone Xs",256,"Dorado","XS256DOR",1300),
(4,"iPhone 11 128 Blanco","iPhone 11",128,"Blanco","11128BLA",1800),
(5,"iPhone 11 128 Morado","iPhone 11",128,"Morado","11128MOR",1800);


insert into Celulares(id_imei,imei,id_sku)
values
(1,"899785403717701",2),
(2,"965979360196480",5),
(3,"905133997837684",3),
(4,"562607816352275",1),
(5,"303047736791084",2),
(6,"820363848987001",2),
(7,"338268132978297",2),
(8,"175672153979542",2),
(9,"502908668981736",2),
(10,"271899756817026",4),
(11,"124979657739823",2),
(12,"356560032035739",3),
(13,"291978043337667",3),
(14,"587433572073705",3),
(15,"558115464012495",5),
(16,"286317154258125",4),
(17,"398261857399933",5),
(18,"172722826645041",2),
(19,"588713986918517",4),
(20,"920165107918006",1),
(21,"194147488182941",5),
(22,"376471582028381",5),
(23,"636752107270364",1),
(24,"436208529041474",1),
(25,"160869555071337",1);


insert into Ventas(id_venta,serie,numeracion,id_tienda,id_cliente,cantidad,id_imei)
values
(1,"B001","001",2,1,1,1),
(2,"B001","002",1,2,1,2),
(3,"B001","003",2,3,1,3),
(4,"B001","004",2,4,1,4),
(5,"B001","005",1,5,1,5),
(6,"B001","006",1,6,1,6),
(7,"B001","007",2,7,1,7),
(8,"B001","008",1,8,1,8),
(9,"B001","009",1,9,1,9),
(10,"B001","010",1,10,1,10),
(11,"B001","011",2,11,1,11),
(12,"B001","012",1,12,1,12),
(13,"B001","013",1,13,1,13),
(14,"B001","014",2,14,1,14),
(15,"B001","015",2,15,1,15),
(16,"B001","016",2,16,1,16),
(17,"B001","017",1,17,1,17),
(18,"B001","018",1,18,1,18),
(19,"B001","019",1,19,1,19),
(20,"B001","020",2,20,1,20),
(21,"B001","021",1,21,1,21),
(22,"B001","022",2,22,1,22),
(23,"B001","023",2,23,1,23),
(24,"B001","024",1,24,1,24),
(25,"B001","025",2,25,1,25);

