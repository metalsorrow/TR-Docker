DROP TABLE acta CASCADE CONSTRAINTS;
DROP TABLE administrador CASCADE CONSTRAINTS;
DROP TABLE ciudad CASCADE CONSTRAINTS;
DROP TABLE comuna CASCADE CONSTRAINTS;
DROP TABLE departamento CASCADE CONSTRAINTS;
DROP TABLE departamento_inventario CASCADE CONSTRAINTS;
DROP TABLE funcionario CASCADE CONSTRAINTS;
DROP TABLE inventario CASCADE CONSTRAINTS;
DROP TABLE invitado CASCADE CONSTRAINTS;
DROP TABLE invitado_reserva CASCADE CONSTRAINTS;
DROP TABLE region CASCADE CONSTRAINTS;
DROP TABLE reserva CASCADE CONSTRAINTS;
DROP TABLE reserva_acta CASCADE CONSTRAINTS;
DROP TABLE reserva_servex CASCADE CONSTRAINTS;
DROP TABLE servicio_extra CASCADE CONSTRAINTS;
DROP TABLE transporte CASCADE CONSTRAINTS;
DROP TABLE usuario CASCADE CONSTRAINTS;

CREATE TABLE acta (
    id_acta           NUMBER(10) NOT NULL,
    nombre_multa      VARCHAR2(30) NOT NULL,
    descripcion_multa VARCHAR2(200),
    valor_multa       NUMBER(10) NOT NULL,
    subtotal_multa    NUMBER(10) NOT NULL
);

ALTER TABLE acta ADD CONSTRAINT acta_pk PRIMARY KEY ( id_acta );

CREATE TABLE administrador (
    id_adm          NUMBER(13) NOT NULL,
    nom_adm         VARCHAR2(100) NOT NULL,
    app_adm         VARCHAR2(30) NOT NULL,
    apm_adm         VARCHAR2(30) NOT NULL,
    fnacimiento_adm DATE NOT NULL,
    genero_adm      VARCHAR2(20) NOT NULL,
    celular_adm     VARCHAR2(20) NOT NULL,
    telefono_adm    NVARCHAR2(20),
    contrasena_adm  VARCHAR2(240) NOT NULL
);

ALTER TABLE administrador ADD CONSTRAINT administrador_pk PRIMARY KEY ( id_adm );

CREATE TABLE ciudad (
    id_ciudad        VARCHAR2(100) NOT NULL,
    nombre_ciudad    VARCHAR2(100) NOT NULL,
    region_id_region VARCHAR2(100) NOT NULL
);

ALTER TABLE ciudad ADD CONSTRAINT ciudad_pk PRIMARY KEY ( id_ciudad );

CREATE TABLE comuna (
    id_comuna        VARCHAR2(100) NOT NULL,
    nombre_comuna    VARCHAR2(100) NOT NULL,
    ciudad_id_ciudad VARCHAR2(100) NOT NULL
);

ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY ( id_comuna );

CREATE TABLE departamento (
    id_depto              NUMBER(5) NOT NULL,
    nom_depto             VARCHAR2(50) NOT NULL,
    direccion_depto       VARCHAR2(50) NOT NULL,
    cant_habitaciones     NUMBER(2) NOT NULL,
    cant_estacionamientos NUMBER(2) NOT NULL,
    cant_banos            NUMBER(2) NOT NULL,
    internet              CHAR(1) NOT NULL,
    cable                 CHAR(1) NOT NULL,
    calefaccion           CHAR(1) NOT NULL,
    amoblado              CHAR(1) NOT NULL,
    foto_depto            BLOB,
    precio_depto          NUMBER(10) NOT NULL,
    estado_depto          CHAR(1) NOT NULL,
    descripcion_depto     VARCHAR2(240) NOT NULL,
    comuna_id_comuna      VARCHAR2(100) NOT NULL
);

ALTER TABLE departamento ADD CONSTRAINT departamento_pk PRIMARY KEY ( id_depto );

CREATE TABLE departamento_inventario (
    departamento_id_depto NUMBER(5) NOT NULL,
    inventario_id_obj     NUMBER(10) NOT NULL,
    funcionario_id_fun    NUMBER(13) NOT NULL
);

CREATE TABLE funcionario (
    id_fun           NUMBER(13) NOT NULL,
    nom_fun          VARCHAR2(100) NOT NULL,
    app_fun          VARCHAR2(30) NOT NULL,
    apm_fun          VARCHAR2(30) NOT NULL,
    fnacimiento_fun  DATE NOT NULL,
    genero_fun       VARCHAR2(20) NOT NULL,
    direccion_fun    VARCHAR2(50) NOT NULL,
    celular_fun      VARCHAR2(20) NOT NULL,
    telefono_fun     NVARCHAR2(20),
    contrasena_fun   VARCHAR2(240) NOT NULL,
    comuna_id_comuna VARCHAR2(100) NOT NULL
);

ALTER TABLE funcionario ADD CONSTRAINT funcionario_pk PRIMARY KEY ( id_fun );

CREATE TABLE inventario (
    nombre_obj VARCHAR2(50) NOT NULL,
    id_obj     NUMBER(10) NOT NULL,
    desc_obj   VARCHAR2(200)
);

ALTER TABLE inventario ADD CONSTRAINT inventario_pk PRIMARY KEY ( id_obj );

CREATE TABLE invitado (
    id_inv       NUMBER(10) NOT NULL,
    nom_inv      VARCHAR2(50) NOT NULL,
    app_inv      VARCHAR2(30) NOT NULL,
    apm_inv      VARCHAR2(30) NOT NULL,
    edad_inv     NUMBER(3) NOT NULL,
    email_inv    VARCHAR2(100),
    celular_inv1 NUMBER(10)
);

ALTER TABLE invitado ADD CONSTRAINT invitado_pk PRIMARY KEY ( id_inv );

CREATE TABLE invitado_reserva (
    invitado_id_inv    NUMBER(10) NOT NULL,
    reserva_id_reserva NUMBER(10) NOT NULL
);

CREATE TABLE region (
    id_region     VARCHAR2(100) NOT NULL,
    nombre_region VARCHAR2(100) NOT NULL
);

ALTER TABLE region ADD CONSTRAINT region_pk PRIMARY KEY ( id_region );

CREATE TABLE reserva (
    id_reserva            NUMBER(10) NOT NULL,
    check_in              DATE NOT NULL,
    check_out             DATE NOT NULL,
    cant_dias             NUMBER(3) NOT NULL,
    cant_adultos          NUMBER(3) NOT NULL,
    cant_ninos            NUMBER(3) NOT NULL,
    total_reserva         NUMBER(20) NOT NULL,
    estado_reserva        CHAR(1),
    funcionario_id_fun    NUMBER(13) NOT NULL,
    departamento_id_depto NUMBER(5) NOT NULL,
    usuario_id_usu        NUMBER(10) NOT NULL
);

ALTER TABLE reserva ADD CONSTRAINT reserva_pk PRIMARY KEY ( id_reserva );

CREATE TABLE reserva_acta (
    acta_id_acta       NUMBER(10) NOT NULL,
    subtotal_acta      NUMBER(14) NOT NULL,
    reserva_id_reserva NUMBER(10) NOT NULL
);

CREATE TABLE reserva_servex (
    servicio_extra_id_serv NUMBER(10) NOT NULL,
    subtotal_servex        NUMBER(14) NOT NULL,
    reserva_id_reserva     NUMBER(10) NOT NULL
);

CREATE TABLE servicio_extra (
    id_serv    NUMBER(10) NOT NULL,
    desc_serv  VARCHAR2(200) NOT NULL,
    valor_serv NUMBER(10) NOT NULL
);

ALTER TABLE servicio_extra ADD CONSTRAINT servicio_extra_pk PRIMARY KEY ( id_serv );

CREATE TABLE transporte (
    id_trans           VARCHAR2(10) NOT NULL,
    lugar_trans        VARCHAR2(100) NOT NULL,
    horario_trans      VARCHAR2(100) NOT NULL,
    vehiculo_trans     VARCHAR2(50) NOT NULL,
    funcionario_id_fun NUMBER(13) NOT NULL,
    reserva_id_reserva NUMBER(10) NOT NULL
);

ALTER TABLE transporte ADD CONSTRAINT transporte_pk PRIMARY KEY ( id_trans );

CREATE TABLE usuario (
    id_usu           NUMBER(10) NOT NULL,
    nom_usu          VARCHAR2(50) NOT NULL,
    app_usu          VARCHAR2(30) NOT NULL,
    apm_usu          VARCHAR2(30) NOT NULL,
    fnacimiento_usu  DATE NOT NULL,
    email_usu        VARCHAR2(100) NOT NULL,
    celular_usu      VARCHAR2(20) NOT NULL,
    contrasena_usu   VARCHAR2(240) NOT NULL,
    comuna_id_comuna VARCHAR2(100) NOT NULL
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( id_usu );

ALTER TABLE ciudad
    ADD CONSTRAINT ciudad_region_fk FOREIGN KEY ( region_id_region )
        REFERENCES region ( id_region );

ALTER TABLE comuna
    ADD CONSTRAINT comuna_ciudad_fk FOREIGN KEY ( ciudad_id_ciudad )
        REFERENCES ciudad ( id_ciudad );

ALTER TABLE departamento
    ADD CONSTRAINT departamento_comuna_fk FOREIGN KEY ( comuna_id_comuna )
        REFERENCES comuna ( id_comuna );

ALTER TABLE departamento_inventario
    ADD CONSTRAINT departamento_inv_dep_fk FOREIGN KEY ( departamento_id_depto )
        REFERENCES departamento ( id_depto );

ALTER TABLE departamento_inventario
    ADD CONSTRAINT departamento_inv_fun_fk FOREIGN KEY ( funcionario_id_fun )
        REFERENCES funcionario ( id_fun );

ALTER TABLE departamento_inventario
    ADD CONSTRAINT departamento_inv_inv_fk FOREIGN KEY ( inventario_id_obj )
        REFERENCES inventario ( id_obj );

ALTER TABLE funcionario
    ADD CONSTRAINT funcionario_comuna_fk FOREIGN KEY ( comuna_id_comuna )
        REFERENCES comuna ( id_comuna );

ALTER TABLE invitado_reserva
    ADD CONSTRAINT invitado_reserva_invitado_fk FOREIGN KEY ( invitado_id_inv )
        REFERENCES invitado ( id_inv );

ALTER TABLE invitado_reserva
    ADD CONSTRAINT invitado_reserva_reserva_fk FOREIGN KEY ( reserva_id_reserva )
        REFERENCES reserva ( id_reserva );

ALTER TABLE reserva_acta
    ADD CONSTRAINT reserva_acta_acta_fk FOREIGN KEY ( acta_id_acta )
        REFERENCES acta ( id_acta );

ALTER TABLE reserva_acta
    ADD CONSTRAINT reserva_acta_reserva_fk FOREIGN KEY ( reserva_id_reserva )
        REFERENCES reserva ( id_reserva );

ALTER TABLE reserva
    ADD CONSTRAINT reserva_departamento_fk FOREIGN KEY ( departamento_id_depto )
        REFERENCES departamento ( id_depto );

ALTER TABLE reserva
    ADD CONSTRAINT reserva_funcionario_fk FOREIGN KEY ( funcionario_id_fun )
        REFERENCES funcionario ( id_fun );

ALTER TABLE reserva_servex
    ADD CONSTRAINT reserva_servex_reserva_fk FOREIGN KEY ( reserva_id_reserva )
        REFERENCES reserva ( id_reserva );

ALTER TABLE reserva_servex
    ADD CONSTRAINT reserva_servex_servicio_ex_fk FOREIGN KEY ( servicio_extra_id_serv )
        REFERENCES servicio_extra ( id_serv );

ALTER TABLE reserva
    ADD CONSTRAINT reserva_usuario_fk FOREIGN KEY ( usuario_id_usu )
        REFERENCES usuario ( id_usu );

ALTER TABLE transporte
    ADD CONSTRAINT transporte_funcionario_fk FOREIGN KEY ( funcionario_id_fun )
        REFERENCES funcionario ( id_fun );

ALTER TABLE transporte
    ADD CONSTRAINT transporte_reserva_fk FOREIGN KEY ( reserva_id_reserva )
        REFERENCES reserva ( id_reserva );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_comuna_fk FOREIGN KEY ( comuna_id_comuna )
        REFERENCES comuna ( id_comuna );