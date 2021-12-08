-- Populate the following tables:
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
        ,round(dbms_random.value(1, 14)) as dayof
        ,round(dbms_random.value(0, 1)) as ESTADO_RESERV
        ,round(dbms_random.value(1, 49)) as apartment_id
        ,row_number() over (order by 1) as seqnum
from USUARIO
where TIPO_USUARIO_ID_TIPO = 1)

SELECT T1.checkIN, T1.dayof, T1.ESTADO_RESERV, T1.apartment_id, t1.id_usu, T2.ID_work
FROM clientSub T1
JOIN sub T2 ON T1.seqnum = T2.seqnum;

-- reservas
INSERT INTO RESERVA(ID_RESERVA
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
        , checkIN as checkin_plan
        , case 
            when ESTADO_RESERV = 1 THEN checkIN + NUMTODSINTERVAL(FLOOR(DBMS_RANDOM.VALUE(0,2)), 'DAY')
            else NULL
            end as checkin
        , case 
            when ESTADO_RESERV = 1 THEN checkIN + dayof
            else NULL
            end as checkout
        , dayof
        , trunc(dbms_random.value(1, 4)) as adults
        , ROUND(dbms_random.value(0, 3)) as kids
        , ROUND(dbms_random.value(0, 3)) as bbs
        , PRECIO_DEPTO * dayof as total
        , ESTADO_RESERV 
        , apartment_id
        , ID_USU
        , ID_work

from AuxReserv
join departamento de on apartment_id = de.ID_DEPTO;
commit;

-- RESERVA SERVX
INSERT INTO reserva_servex(ID,CANTIDAD_SERVEX,SUBTOTAL_SERVEX,SERVICIO_EXTRA_ID_SERV,RESERVA_ID_RESERVA)
with sub1 as (
    select ID_SERV
    ,VALOR_SERV
    ,ROUND(dbms_random.value(0, 3)) as cantServ
    from servicio_extra
)

, alt1 as (
    select ID_RESERVA
    from RESERVA 
)

, almost as (SELECT 
     s.cantServ
    , s.VALOR_SERV * cantServ as total
    , s.ID_SERV
    , ID_RESERVA
FROM sub1 s
cross join alt1
ORDER BY ID_RESERVA)

, finalSub as (SELECT *
FROM   (
    select
    cantServ
    , total
    , ID_SERV
    , ID_RESERVA
FROM almost
where cantServ > 0
    ORDER BY DBMS_RANDOM.RANDOM)
WHERE  rownum < 400
order by ID_RESERVA)

select ROWNUM, cantServ, total, ID_SERV, ID_RESERVA
from finalSub;
commit;

INSERT INTO transporte(ID_TRANS, LUGAR_TRANS, HORARIO_TRANS, VEHICULO_TRANS, RESERVA_ID_RESERVA
,ID_FUNCIONARIO)
SELECT rownum as IDTR
, d.DIRECCION_DEPTO
, TO_CHAR(ROUND(dbms_random.value(0, 23))) ||':'||TO_CHAR(ROUND(dbms_random.value(0, 5))* 10) as hora
, DBMS_RANDOM.string('x',10)  as vehiculo
, r.ID_RESERVA
, ID_FUNCIONARIO
from RESERVA R
join DEPARTAMENTO d on r.DEPARTAMENTO_ID_DEPTO = d.ID_DEPTO;
commit;