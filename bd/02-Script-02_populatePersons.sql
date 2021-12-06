-- Tipo Usuario
insert into TIPO_USUARIO(ID_TIPO, NOMBRE_TIPO)
VALUES(1, 'client');
insert into TIPO_USUARIO(ID_TIPO, NOMBRE_TIPO)
VALUES(2, 'worker');
insert into TIPO_USUARIO(ID_TIPO, NOMBRE_TIPO)
VALUES(3, 'admin');

-- Usuario
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

INSERT INTO usuario(ID_USU, RUT_USU, NOM_USU, APP_USU, APM_USU, FNACIMIENTO_USU, EMAIL_USU, CELULAR_USU, CONTRASENA_USU, COMUNA_ID_COMUNA, TIPO_USUARIO_ID_TIPO)
select rowNum, t1.NOM_USU, t2.APP_USU, t3.APM_USU, TO_DATE(TRUNC(DBMS_RANDOM.VALUE (2429630 , 2451545)),'J') as Bdate
,(SUBSTR(t1.NOM_USU, 1, 1) || SUBSTR(t2.APP_USU, 1, 2) || SUBSTR(t3.APM_USU, 1, 5) || '@mail.test') as mail
, ('+56' || to_char(trunc(dbms_random.value(2, 9) * 100000000))) as phone, 'a' as contra
, to_char(ROUND(dbms_random.value(1,64))) as comunaID
, ROUND(dbms_random.value(1,3)) as tipoUser

from namesAux t1
cross join namesAux t2
cross join namesAux t3
where 1=1;
COMMIT;

