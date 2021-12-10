-- Objetos y multas
CREATE GLOBAL TEMPORARY TABLE AuxObj
    (objectName VARCHAR2(30),
     descObject VARCHAR2(100),
     actaMultua VARCHAR2(30),
     descMultua VARCHAR2(200))
  ON COMMIT DELETE ROWS;


insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('televisor', '30 pulgadas', 'Substraccion', 'El cliente se llevo el');
insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('televisor', '100 pulgadas', 'Destrozo', 'El cliente realizo desmanes en la habitacion y destruyo el');
insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('tostador', 'roja', 'Averia', 'Al momento de limpiar la habitacion, se encontro averiado el');
insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('control de tv', 'universal para los televisores', 'Averia', 'El lanzo objetos en la habitacion y produjo desperfectos en el');
insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('sillon', 'rojo en L', 'vandalismo', 'El cliente vandalizo el');
insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('camarote', 'de dos plazas', 'vandalismo', 'El cliente hizo marcas permanentes de plumion en el');
insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('catre', 'de dos plazas', 'vandalismo', 'El cliente derritio parte del');
insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('lavamanos', 'de marmol', 'vandalismo', 'El cliente removio parte del');
insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('hervidor', 'de acero inoxidable', 'hurto frustado', 'El cliente fue sorprendido tratando de dejar las inmediaciones con el');
insert into AuxObj(objectName, descObject, actaMultua, descMultua)
VALUES('secador de pelo', 'profesional de salon', 'desmanes', 'El cliente arrojo por el balcon de su departamento el');

INSERT INTO inventario(NOMBRE_OBJ, ID_OBJ, DESC_OBJ)
select objectName, rowNum, descObject
from AuxObj;

INSERT INTO acta(id_acta, nombre_multa, descripcion_multa, valor_multa)
select rowNum, t1.actaMultua, (t1.descMultua ||' '|| t2.descObject) , trunc(dbms_random.value(3, 900000) * 10000)
from AuxObj t1
cross join AuxObj t2
where 1=1;
COMMIT;


insert into servicio_extra(id_serv, desc_serv, valor_serv)
VALUES(1, 'Masaje', 30000);
insert into servicio_extra(id_serv, desc_serv, valor_serv)
VALUES(2, 'Servicio a la habitacion', 40000);
insert into servicio_extra(id_serv, desc_serv, valor_serv)
VALUES(3, 'Arriendo de Sauna', 50000);
insert into servicio_extra(id_serv, desc_serv, valor_serv)
VALUES(4, 'Tour por la ciudad', 20000);
insert into servicio_extra(id_serv, desc_serv, valor_serv)
VALUES(5, 'Menu de almuerzo', 10000);
insert into servicio_extra(id_serv, desc_serv, valor_serv)
VALUES(6, 'Servicio de desayuno', 10000);
insert into servicio_extra(id_serv, desc_serv, valor_serv)
VALUES(7, 'Servicio de lavanderia', 18000);