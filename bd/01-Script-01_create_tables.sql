

CREATE TABLE acta (
    id_acta           NUMBER(10) NOT NULL,
    nombre_multa      VARCHAR2(30) NOT NULL,
    descripcion_multa VARCHAR2(200),
    valor_multa       NUMBER(10) NOT NULL
)
LOGGING;

ALTER TABLE acta ADD CONSTRAINT acta_pk PRIMARY KEY ( id_acta );

CREATE TABLE ciudad (
    id_ciudad        VARCHAR2(100) NOT NULL,
    nombre_ciudad    VARCHAR2(100) NOT NULL,
    region_id_region VARCHAR2(100) NOT NULL
)
LOGGING;

ALTER TABLE ciudad ADD CONSTRAINT ciudad_pk PRIMARY KEY ( id_ciudad );

CREATE TABLE comuna (
    id_comuna        VARCHAR2(100) NOT NULL,
    nombre_comuna    VARCHAR2(100) NOT NULL,
    ciudad_id_ciudad VARCHAR2(100) NOT NULL
)
LOGGING;

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
    foto_depto            VARCHAR2(255),
    precio_depto          NUMBER(10) NOT NULL,
    estado_depto          CHAR(1) NOT NULL,
    descripcion_depto     VARCHAR2(240) NOT NULL,
    comuna_id_comuna      VARCHAR2(100) NOT NULL,
    img_path              VARCHAR2(150) NOT NULL
)
LOGGING;

ALTER TABLE departamento ADD CONSTRAINT departamento_pk PRIMARY KEY ( id_depto );

CREATE TABLE departamento_inventario (
    id                    NUMBER(3) NOT NULL,
    cantidad              NUMBER(8),
    departamento_id_depto NUMBER(5) NOT NULL,
    inventario_id_obj     NUMBER(10) NOT NULL
)
LOGGING;

CREATE TABLE inventario (
    nombre_obj VARCHAR2(50) NOT NULL,
    id_obj     NUMBER(10) NOT NULL,
    desc_obj   VARCHAR2(200)
)
LOGGING;

ALTER TABLE inventario ADD CONSTRAINT inventario_pk PRIMARY KEY ( id_obj );

CREATE TABLE mantencion (
    id_mantencion         NUMBER(3) NOT NULL,
    fecha_inicio          DATE NOT NULL,
    fecha_termino         DATE,
    id_funcionario        NUMBER(10) NOT NULL,
    departamento_id_depto NUMBER(5) NOT NULL
)
LOGGING;

ALTER TABLE mantencion ADD CONSTRAINT mantencion_pk PRIMARY KEY ( id_mantencion );

CREATE TABLE ordenpago (
    id             NUMBER(4) NOT NULL,
    total_pago     NUMBER(15) NOT NULL,
    estado         VARCHAR2(40) NOT NULL,
    fecha_registro DATE NOT NULL,
    id_reserva     NUMBER(10) NOT NULL
)
LOGGING;

ALTER TABLE ordenpago ADD CONSTRAINT ordenpago_pk PRIMARY KEY ( id );

CREATE TABLE region (
    id_region     VARCHAR2(100) NOT NULL,
    nombre_region VARCHAR2(100) NOT NULL
)
LOGGING;

ALTER TABLE region ADD CONSTRAINT region_pk PRIMARY KEY ( id_region );

CREATE TABLE reserva (
    id_reserva            NUMBER(10) NOT NULL,
    check_in_planificado  DATE NOT NULL,
    check_in              DATE,
    check_out             DATE,
    cant_dias             NUMBER(3) NOT NULL,
    cant_adultos          NUMBER(3) NOT NULL,
    cant_ninos            NUMBER(3) NOT NULL,
    cant_bebes            NUMBER(3) NOT NULL,
    total_reserva         NUMBER(20) NOT NULL,
    estado_reserva        VARCHAR2(40) NOT NULL,
    departamento_id_depto NUMBER(5) NOT NULL,
    id_cliente            NUMBER(10) NOT NULL,
    id_funcionario        NUMBER(10) NOT NULL
)
LOGGING;

ALTER TABLE reserva ADD CONSTRAINT reserva_pk PRIMARY KEY ( id_reserva );

CREATE TABLE reserva_acta (
    id                 NUMBER(3) NOT NULL,
    cantidad_acta      NUMBER(4) NOT NULL,
    subtotal_acta      NUMBER(14) NOT NULL,
    acta_id_acta       NUMBER(10) NOT NULL,
    reserva_id_reserva NUMBER(10) NOT NULL
)
LOGGING;

ALTER TABLE reserva_acta ADD CONSTRAINT reserva_acta_pk PRIMARY KEY ( id );

CREATE TABLE reserva_servex (
    id                     NUMBER(10) NOT NULL,
    cantidad_servex        NUMBER(4) NOT NULL,
    subtotal_servex        NUMBER(14) NOT NULL,
    servicio_extra_id_serv NUMBER(10) NOT NULL,
    reserva_id_reserva     NUMBER(10) NOT NULL
)
LOGGING;

ALTER TABLE reserva_servex ADD CONSTRAINT reserva_servex_pk PRIMARY KEY ( id );

CREATE TABLE servicio_extra (
    id_serv    NUMBER(10) NOT NULL,
    desc_serv  VARCHAR2(200) NOT NULL,
    valor_serv NUMBER(10) NOT NULL
)
LOGGING;

ALTER TABLE servicio_extra ADD CONSTRAINT servicio_extra_pk PRIMARY KEY ( id_serv );

CREATE TABLE tipo_usuario (
    id_tipo     NUMBER(5) NOT NULL,
    nombre_tipo VARCHAR2(40) NOT NULL
)
LOGGING;

ALTER TABLE tipo_usuario ADD CONSTRAINT tipo_usuario_pk PRIMARY KEY ( id_tipo );

CREATE TABLE transporte (
    id_trans           VARCHAR2(10) NOT NULL,
    lugar_trans        VARCHAR2(100) NOT NULL,
    horario_trans      VARCHAR2(100) NOT NULL,
    vehiculo_trans     VARCHAR2(50) NOT NULL,
    reserva_id_reserva NUMBER(10) NOT NULL,
    id_funcionario     NUMBER(10) NOT NULL
)
LOGGING;

ALTER TABLE transporte ADD CONSTRAINT transporte_pk PRIMARY KEY ( id_trans );

CREATE TABLE usuario (
    id_usu               NUMBER(10) NOT NULL,
    rut_usu              VARCHAR2(16) NOT NULL,
    nom_usu              VARCHAR2(50) NOT NULL,
    app_usu              VARCHAR2(30) NOT NULL,
    apm_usu              VARCHAR2(30) NOT NULL,
    fnacimiento_usu      DATE NOT NULL,
    email_usu            VARCHAR2(100) NOT NULL,
    celular_usu          VARCHAR2(20) NOT NULL,
    contrasena_usu       VARCHAR2(240) NOT NULL,
    comuna_id_comuna     VARCHAR2(100) NOT NULL,
    tipo_usuario_id_tipo NUMBER(5) NOT NULL
)
LOGGING;

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( id_usu );

ALTER TABLE ciudad
    ADD CONSTRAINT ciudad_region_fk FOREIGN KEY ( region_id_region )
        REFERENCES region ( id_region )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE comuna
    ADD CONSTRAINT comuna_ciudad_fk FOREIGN KEY ( ciudad_id_ciudad )
        REFERENCES ciudad ( id_ciudad )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE departamento
    ADD CONSTRAINT departamento_comuna_fk FOREIGN KEY ( comuna_id_comuna )
        REFERENCES comuna ( id_comuna )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE departamento_inventario
    ADD CONSTRAINT departamento_inv_dep_fk FOREIGN KEY ( departamento_id_depto )
        REFERENCES departamento ( id_depto )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE departamento_inventario
    ADD CONSTRAINT departamento_inv_inv_fk FOREIGN KEY ( inventario_id_obj )
        REFERENCES inventario ( id_obj )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE mantencion
    ADD CONSTRAINT mantencion_departamento_fk FOREIGN KEY ( departamento_id_depto )
        REFERENCES departamento ( id_depto )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE mantencion
    ADD CONSTRAINT mantencion_funcionario_fk FOREIGN KEY ( id_funcionario )
        REFERENCES usuario ( id_usu )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE ordenpago
    ADD CONSTRAINT ordenpago_reserva_fk FOREIGN KEY ( id_reserva )
        REFERENCES reserva ( id_reserva )
    NOT DEFERRABLE;

ALTER TABLE reserva_acta
    ADD CONSTRAINT reserva_acta_acta_fk FOREIGN KEY ( acta_id_acta )
        REFERENCES acta ( id_acta )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE reserva_acta
    ADD CONSTRAINT reserva_acta_reserva_fk FOREIGN KEY ( reserva_id_reserva )
        REFERENCES reserva ( id_reserva )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE reserva
    ADD CONSTRAINT reserva_departamento_fk FOREIGN KEY ( departamento_id_depto )
        REFERENCES departamento ( id_depto )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE reserva
    ADD CONSTRAINT reserva_funcionario_fk FOREIGN KEY ( id_funcionario )
        REFERENCES usuario ( id_usu )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE reserva_servex
    ADD CONSTRAINT reserva_servex_reserva_fk FOREIGN KEY ( reserva_id_reserva )
        REFERENCES reserva ( id_reserva )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE reserva_servex
    ADD CONSTRAINT reserva_servex_servicio_ex_fk FOREIGN KEY ( servicio_extra_id_serv )
        REFERENCES servicio_extra ( id_serv )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE reserva
    ADD CONSTRAINT reserva_usuario_fk FOREIGN KEY ( id_cliente )
        REFERENCES usuario ( id_usu )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE transporte
    ADD CONSTRAINT transporte_funcionario_fk FOREIGN KEY ( id_funcionario )
        REFERENCES usuario ( id_usu )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE transporte
    ADD CONSTRAINT transporte_reserva_fk FOREIGN KEY ( reserva_id_reserva )
        REFERENCES reserva ( id_reserva )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE usuario
    ADD CONSTRAINT usuario_comuna_fk FOREIGN KEY ( comuna_id_comuna )
        REFERENCES comuna ( id_comuna )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE usuario
    ADD CONSTRAINT usuario_tipo_usuario_fk FOREIGN KEY ( tipo_usuario_id_tipo )
        REFERENCES tipo_usuario ( id_tipo )
            ON DELETE CASCADE
    NOT DEFERRABLE;

