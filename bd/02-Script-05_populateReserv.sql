-- populate the following tables:
CREATE GLOBAL TEMPORARY TABLE AuxReserv
    (checkIN DATE,
     dayof NUMBER(5),
     ESTADO_RESERV NUMBER(2),
     apartment_id NUMBER(5)
)
ON COMMIT DELETE ROWS;

INSERT INTO AuxReserv(checkIN,dayof,ESTADO_RESERV,apartment_id,ID_USU)

select TO_DATE(TRUNC(DBMS_RANDOM.VALUE (2459215 , 2459580)),'J') as checkIN
    ,trunc(dbms_random.value(1, 14)) as dayof
    ,trunc(dbms_random.value(0, 1)) as ESTADO_RESERV
    ,trunc(dbms_random.value(1, 50)) as apartment_id
    ,ID_USU
from USUARIO
where TIPO_USUARIO_ID_TIPO = 1;

-- reservas
INSERT INTO DEPARTAMENTO_INVENTARIO(ID_RESERVA
                ,CHECK_IN_PLANIFICADO
                ,CHECK_IN
                ,CHECK_OUT
                ,CANT_DIAS
                ,CANT_ADULTOS
                ,CANT_NINOS
                ,CANT_BEBES
                ,TOTAL_RESERVA
                ,ESTADO_RESERVA
                ,DEPARTAMENTO_ID_DEPTO
                ,ID_CLIENTE
                ,ID_FUNCIONARIO
                )

select rowNum
        , checkIN
        , case 
            when ESTADO_RESERV < 1 THEN checkIN + INTERVAL to_char(trunc(dbms_random.value(0, 2))) DAY
            else NULL
        , case 
            when ESTADO_RESERV < 1 THEN checkIN + INTERVAL to_char(trunc(dbms_random.value(0, 2)) + dayof) DAY
            else NULL
        , dayof
        , trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 4))
        --
        , ESTADO_RESERV
        , apartment_id
        , trunc(dbms_random.value(1, 4))
        , trunc(dbms_random.value(1, 215))
        , trunc(dbms_random.value(1, 10))
from sub;  

ID_RESERVA NUMBER(10,0)
CHECK_IN_PLANIFICADO DATE
CHECK_IN DATE
CHECK_OUT DATE
CANT_DIAS NUMBER(3,0)
CANT_ADULTOS NUMBER(3,0)
CANT_NINOS NUMBER(3,0)
CANT_BEBES NUMBER(3,0)
TOTAL_RESERVA NUMBER(20,0)
ESTADO_RESERVA VARCHAR2(40 BYTE)
DEPARTAMENTO_ID_DEPTO NUMBER(5,0)
ID_CLIENTE NUMBER(10,0)
ID_FUNCIONARIO NUMBER(10,0)

-- populate the following tables:
CREATE GLOBAL TEMPORARY TABLE AuxReserv
    (checkIN DATE,
     dayof NUMBER(5),
     ESTADO_RESERV NUMBER(2),
     apartment_id NUMBER(5),
     ID_USU NUMBER(5),
     ID_work NUMBER(5)
)
ON COMMIT DELETE ROWS;

--

INSERT INTO AuxReserv(checkIN,dayof,ESTADO_RESERV,apartment_id,ID_USU,ID_work)

with sub as (
    select ID_USU as ID_work,
    row_number() over (order by 1) as seqnum
    from USUARIO
    where TIPO_USUARIO_ID_TIPO = 2
)
, clientSub as (
    select ID_USU
        ,TO_DATE(TRUNC(DBMS_RANDOM.VALUE (2459215 , 2459580)),'J') as checkIN
        ,trunc(dbms_random.value(1, 14)) as dayof
        ,trunc(dbms_random.value(0, 1)) as ESTADO_RESERV
        ,trunc(dbms_random.value(1, 50)) as apartment_id
        ,row_number() over (order by 1) as seqnum
from USUARIO
where TIPO_USUARIO_ID_TIPO = 1)

SELECT T1.checkIN, T1.dayof, T1.ESTADO_RESERV, T1.apartment_id, t1.id_usu, T2.ID_work
FROM clientSub T1
JOIN sub T2 ON T1.seqnum = T2.seqnum;