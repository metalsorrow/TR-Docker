-- Objetos y multas
CREATE GLOBAL TEMPORARY TABLE AuxDepto
    (NOM_DEPTO1 VARCHAR2(50),
     NOM_DEPTO12 VARCHAR2(50),
     NOM_DEPTO2 VARCHAR2(50),
     NOM_DEPTO22 VARCHAR2(50),
     DIRECCION_DEPTO VARCHAR2(50)
)
ON COMMIT DELETE ROWS;



insert into AuxDepto(NOM_DEPTO1,NOM_DEPTO12,NOM_DEPTO2,NOM_DEPTO22,DIRECCION_DEPTO)
VALUES('Condominio', 'La Mar', 'a pasos de', 'la playa.', 'Las Jaibas 1313');
insert into AuxDepto(NOM_DEPTO1,NOM_DEPTO12,NOM_DEPTO2,NOM_DEPTO22, 
DIRECCION_DEPTO)
VALUES('Departamento', 'Las Calilas', 'a metros de', 'parada de autobuses.', 
'Las Calilas 421');
insert into AuxDepto(NOM_DEPTO1,NOM_DEPTO12,NOM_DEPTO2,NOM_DEPTO22, 
DIRECCION_DEPTO)
VALUES('Departamento', 'Los Orientales', 'a pasos de', 'Mall.', 
'El Roble 504');
insert into AuxDepto(NOM_DEPTO1,NOM_DEPTO12,NOM_DEPTO2,NOM_DEPTO22, 
DIRECCION_DEPTO)
VALUES('Condominio', 'Las Pisadas', 'cercano a', 'sitio de trekking.', 
'Las Mojojos 1990');
insert into AuxDepto(NOM_DEPTO1,NOM_DEPTO12,NOM_DEPTO2,NOM_DEPTO22, 
DIRECCION_DEPTO)
VALUES('Condominio', 'Los Fardos', 'en proximidad de', 'restaurantes.', 
'Las Sauces 1990');
insert into AuxDepto(NOM_DEPTO1,NOM_DEPTO12,NOM_DEPTO2,NOM_DEPTO22, 
DIRECCION_DEPTO)
VALUES('Departamento', 'Los Orientales', 'a pasos de', 'cine.', 
'El Cultrun 504');


INSERT INTO departamento(ID_DEPTO -- 1
    , NOM_DEPTO -- 2
    , DIRECCION_DEPTO -- 3
    , CANT_HABITACIONES -- 4
    , CANT_ESTACIONAMIENTOS -- 5
    , CANT_BANOS -- 6
    , INTERNET -- 7
    , CABLE -- 8
    , CALEFACCION -- 9
    , AMOBLADO -- 10
    -- FOTO_DEPTO -- 11
    , PRECIO_DEPTO -- 12
    , ESTADO_DEPTO -- 13
    , DESCRIPCION_DEPTO --14
    , COMUNA_ID_COMUNA --15
    , IMG_PATH) -- 16
select rowNum -- 1
    , t1.NOM_DEPTO1||' '||t2.NOM_DEPTO12||', '||t3.NOM_DEPTO2||' '||t3.NOM_DEPTO22 -- 2
    , t3.DIRECCION_DEPTO -- 3
    , trunc(dbms_random.value(1, 4)) -- 4
    , trunc(dbms_random.value(1, 2)) -- 5
    , trunc(dbms_random.value(1, 3)) -- 6
    , to_char(ROUND(dbms_random.value(0, 1))) -- 7
    , to_char(ROUND(dbms_random.value(0, 1))) -- 8
    , to_char(ROUND(dbms_random.value(0, 1))) -- 9
    , to_char(ROUND(dbms_random.value(0, 1))) -- 10
    --, 'NAAA' -- 11
    , trunc(dbms_random.value(3, 9) * 10000) -- 12
    , to_char(ROUND(dbms_random.value(0, 1))) -- 13
    , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum lacinia semper nibh quis ullamcorper. Maecenas at libero sit amet justo pulvinar pellentesque eu eu leo. Sed imperdiet luctus lacus, eget. ' -- 14
    , to_char(ROUND(dbms_random.value(1, 45))) --15
    , '/usr/src/app/resources/deptoImages/depto' || to_char(ROUND(dbms_random.value(1, 6))) || '.jpg'
from AuxDepto t1
cross join AuxDepto t2
cross join AuxDepto t3
where 1=1;

INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , trunc(dbms_random.value(1, 10))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , trunc(dbms_random.value(1, 10))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , trunc(dbms_random.value(1, 10))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , trunc(dbms_random.value(1, 10))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;        
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
INSERT INTO DEPARTAMENTO_INVENTARIO(ID
                ,CANTIDAD
                ,DEPARTAMENTO_ID_DEPTO
                ,INVENTARIO_ID_OBJ)
select rowNum, trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , ROUND(dbms_random.value(1, 9))
from DUAL;
COMMIT;