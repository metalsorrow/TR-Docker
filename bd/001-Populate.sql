CREATE GLOBAL TEMPORARY TABLE namesAux
    (NOM_USU VARCHAR2(30),
     APP_USU VARCHAR2(30),
     APM_USU VARCHAR2(30))
  ON COMMIT DELETE ROWS;

insert into namesAux(NOM_USU, APP_USU, APM_USU)
VALUES('Carlos', 'Soto', 'Vergara');
insert into namesAux(NOM_USU, APP_USU, APM_USU)
VALUES('Miguel', 'Reyes', 'Rojas');
insert into namesAux(NOM_USU, APP_USU, APM_USU)
VALUES('Andres', 'Leyton', 'Contreras');
insert into namesAux(NOM_USU, APP_USU, APM_USU)
VALUES('Karen', 'Villarroel', 'Gonzales');
insert into namesAux(NOM_USU, APP_USU, APM_USU)
VALUES('Marco', 'Alvarez', 'Arancibia');
insert into namesAux(NOM_USU, APP_USU, APM_USU)
VALUES('Marcos', 'Fuentes', 'Cabrera');
insert into namesAux(NOM_USU, APP_USU, APM_USU)
VALUES('Josefina', 'Diagita', 'Oyarzun');
insert into namesAux(NOM_USU, APP_USU, APM_USU)
VALUES('Valentina', 'Quesada', 'Aguirre');

select rowNum, t1.NOM_USU, t2.APP_USU, t3.APM_USU, TO_DATE(TRUNC(DBMS_RANDOM.VALUE (2429630 , 2451545)),'J') as Bdate
,(SUBSTR(t1.NOM_USU, 1, 1) || SUBSTR(t2.APP_USU, 1, 2) || SUBSTR(t3.APM_USU, 1, 5) || '@mail.test') as mail
, ('+56' || to_char(trunc(dbms_random.value(2, 9) * 100000000))) as phone, 'a' as contra, dbms_random.value(2)
from namesAux t1
cross join namesAux t2
cross join namesAux t3;





insert into region(ID_REGION, NOMBRE_REGION)
select rownum + 2, 'region ' || to_char(dbms_random.value(2, 9) * 1000)
from dual
connect by level <= 50;



insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD, REGION_ID_REGION)
select rownum + 2, DBMS_RANDOM.string('x',5), rownum
from dual
connect by level <= 8;