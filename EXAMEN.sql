CREATE TABLE afiliados(
    id_afiliado                         NUMBER NOT NULL,
    rut                                 VARCHAR2(250) NOT NULL, 
    primer_nombre                       VARCHAR2(250) NOT NULL,
    segundo_nombre                      VARCHAR2(250),
    apellido_paterno                    VARCHAR2(250) NOT NULL,
    apellido_materno                    VARCHAR2(250),
    fecha_nacimiento                    DATE NOT NULL, 
    pretension_sueldo                   NUMBER NOT NULL,
    direccion                           VARCHAR2(250) NOT NULL,
    genero                              VARCHAR2(250) NOT NULL,
    discapacidad                        VARCHAR2(250) NOT NULL,
    correo_electronico                  VARCHAR2(250) NOT NULL,
    curriculum_vitae                    VARCHAR2(250) NOT NULL, 
    numero_carnet_socio                 NUMBER NOT NULL,
    estado_postulacion_id_postulacion   NUMBER NOT NULL,
    comuna_id_comuna                    NUMBER NOT NULL,
    solicitud_ingreso_id_solicitud      NUMBER NOT NULL
);

CREATE TABLE nacionalidad(
    id_nacionalidad     NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL,
    pasaporte           VARCHAR2(250)
);

CREATE TABLE tipo_discapacidad(
    id_tipo_discapacidad    NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL
);

CREATE TABLE telefono_cliente(
    id_telefono_cliente    NUMBER NOT NULL, 
    numero_cliente         VARCHAR2(250) NOT NULL,
    telefono_id_telefono   NUMBER NOT NULL,
    afiliados_id_afiliado  NUMBER NOT NULL
);

CREATE TABLE telefono(
    id_telefono                 NUMBER NOT NULL,
    numero_telefono             VARCHAR(250) NOT NULL,
    tipo_telefono_id_numero     NUMBER NOT NULL
);

CREATE TABLE tipo_telefono(
    id_numero               NUMBER NOT NULL, 
    ocupacion_numero        VARCHAR2(250) NOT NULL
);
    
CREATE TABLE comuna(
    id_comuna               NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL,
    provincia_id_provincia  NUMBER NOT NULL
);

CREATE TABLE provincia(
    id_provincia        NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL,
    region_id_region    NUMBER NOT NULL
);

CREATE TABLE region(
    id_region           NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL
);

CREATE TABLE pagos(
    id_pagos                        NUMBER NOT NULL,
    fecha                           DATE NOT NULL, 
    estado                          VARCHAR2(250) NOT NULL,
    cheque_id_cheque                NUMBER,          
    banco_id_banco                  NUMBER,
    tipo_pago_id_pago               NUMBER NOT NULL,
    forma_pago_id_forma_pago        NUMBER,
    afiliados_id_afiliado           NUMBER NOT NULL
);

CREATE TABLE forma_pago(
    id_forma_pago       NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL
);


CREATE TABLE tipo_pago(
    id_pago         NUMBER NOT NULL,
    nombre          VARCHAR2(250) NOT NULL                        
);

CREATE TABLE cheque(
    id_cheque       NUMBER NOT NULL,
    numero_cheque   NUMBER NOT NULL,
    tipo_banco      VARCHAR2(250) NOT NULL
);

CREATE TABLE banco(
    id_banco    NUMBER NOT NULL,
    nombre      VARCHAR2(250) NOT NULL,
    direccion   VARCHAR2(250) NOT NULL
);

CREATE TABLE sindicato(
    id_sindicato        NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL,
    direccion           VARCHAR2(250) NOT NULL,
    empresa_id_empresa  NUMBER NOT NULL
);
CREATE TABLE empresa(
    id_empresa          NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL,
    direccion           VARCHAR2(250) NOT NULL,
    comuna_id_comuna    NUMBER NOT NULL
);

CREATE TABLE solicitud_ingreso(
    id_solicitud                        NUMBER NOT NULL,
    fecha_creacion                      DATE NOT NULL,
    estado_postulacion_id_postulacion   NUMBER NOT NULL,
    futuro_afiliado_id_futuro_afiliado  NUMBER NOT NULL
);

CREATE TABLE estado_postulacion(
    id_postulacion      NUMBER NOT NULL,
    fecha_postulacion   DATE NOT NULL,
    rut_postulante      VARCHAR2(250) NOT NULL
    
);

CREATE TABLE futuro_afiliado(
    id_futuro_afiliado                  NUMBER NOT NULL,
    primer_nombre                       VARCHAR2(250) NOT NULL,
    segundo_nombre                      VARCHAR2(250),
    apellido_paterno                    VARCHAR2(250) NOT NULL,
    apellido_materno                    VARCHAR2(250) NOT NULL,
    fecha_nacimiento                    DATE NOT NULL,
    tipo_parentesco                     VARCHAR2(250) NOT NULL,
    tipo_patentesco_id_tipo_parentesco  NUMBER,
    estado_civil_id_estado_civil        NUMBER
);
CREATE TABLE estado_civil(
    id_estado_civil       NUMBER NOT NULL,
    nombre                VARCHAR2(250) NOT NULL
);

CREATE TABLE tipo_parentesco(
    id_tipo_parentesco      NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL                            
);
CREATE TABLE aseguradora(
    id_aseguradora              NUMBER NOT NULL,
    nombre                      VARCHAR2(250) NOT NULL,
    direccion                   VARCHAR2(250) NOT NULL,
    rut                         VARCHAR2(250) NOT NULL
);
CREATE TABLE aseguradora_empresa(
    id_aseguradora          NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL,
    direccion               VARCHAR2(250) NOT NULL
);

CREATE TABLE vehiculo(
    id_vehiculo                             NUMBER NOT NULL,
    marca                                   VARCHAR2(250) NOT NULL,
    modelo                                  VARCHAR2(250) NOT NULL,
    patente                                 VARCHAR2(250) NOT NULL,
    color                                   VARCHAR2(250) NOT NULL,
    tipo                                    VARCHAR2(250) NOT NULL,
    numero_chasis                           VARCHAR2(250) NOT NULL,
    numero_motor                            VARCHAR2(250) NOT NULL,
    aseguradora_id_aseguradora              NUMBER NOT NULL,
    descuento_id_descuentos                 NUMBER NOT NULL,
    afiliados_id_afiliado                   NUMBER NOT NULL
);

CREATE TABLE tipo_transporte(
    id_tipo_transporte      NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL
);

CREATE TABLE beneficio(
    id_beneficio                                    NUMBER NOT NULL,
    nombre                                          VARCHAR2(250) NOT NULL,
    descuento_id_descuentos                         NUMBER NOT NULL,
    tipo_beneficio_id_tipo_beneficio                NUMBER NOT NULL,
    afiliados_id_afiliado                           NUMBER NOT NULL
);

CREATE TABLE tipo_beneficio(
    id_tipo_beneficio           NUMBER NOT NULL,
    nombre                      VARCHAR2(250) NOT NULL                 
);

--- CREACION DE PRIMARY KEY 

ALTER TABLE afiliados ADD CONSTRAINT afiliados_PK PRIMARY KEY (id_afiliado);
ALTER TABLE pagos ADD CONSTRAINT pagos_PK PRIMARY KEY (id_pagos);
ALTER TABLE tipo_pago ADD CONSTRAINT tipo_pago_PK PRIMARY KEY (id_pago);
ALTER TABLE forma_pago ADD CONSTRAINT forma_pago_PK PRIMARY KEY (id_forma_pago);
ALTER TABLE banco ADD CONSTRAINT banco_PK PRIMARY KEY (id_banco);
ALTER TABLE cheque ADD CONSTRAINT cheque_PK PRIMARY KEY (id_cheque);
ALTER TABLE nacionalidad ADD CONSTRAINT nacionalidad_PK PRIMARY KEY (id_nacionalidad);
ALTER TABLE tipo_discapacidad ADD CONSTRAINT tipo_discapacidad_PK PRIMARY KEY (id_tipo_de_discapacidad);
ALTER TABLE telefono_cliente ADD CONSTRAINT telefono_cliente_PK PRIMARY KEY (id_telefono_cliente);
ALTER TABLE telefono ADD CONSTRAINT telefono_PK PRIMARY KEY (id_telefono);
ALTER TABLE tipo_telefono ADD CONSTRAINT tipo_telefono_PK PRIMARY KEY (id_numero);
ALTER TABLE beneficio ADD CONSTRAINT beneficio_PK PRIMARY KEY (id_beneficio);
ALTER TABLE tipo_beneficio ADD CONSTRAINT tipo_beneficio_PK PRIMARY KEY (id_tipo_beneficio);
ALTER TABLE descuento ADD CONSTRAINT descuento_PK PRIMARY KEY (id_descuentos);
ALTER TABLE tipo_transporte ADD CONSTRAINT tipo_transporte_PK PRIMARY KEY (id_tipo_transporte);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_PK PRIMARY KEY (id_vehiculo, afiliados_id_afiliado);
ALTER TABLE aseguradora ADD CONSTRAINT aseguradora_PK PRIMARY KEY (id_aseguradora);
ALTER TABLE aseguradora_empresa ADD CONSTRAINT aseguradora_empresa_PK PRIMARY KEY (id_aseguradora_empresa);
ALTER TABLE empresa ADD CONSTRAINT empresa_PK PRIMARY KEY (id_empresa);
ALTER TABLE sindicato ADD CONSTRAINT sindicato_PK PRIMARY KEY (id_sindicato);
ALTER TABLE comuna ADD CONSTRAINT comuna_PK PRIMARY KEY (id_comuna);
ALTER TABLE provincia ADD CONSTRAINT provincia_PK PRIMARY KEY (id_provincia);
ALTER TABLE region ADD CONSTRAINT region_PK PRIMARY KEY (id_region);
ALTER TABLE solicitud_ingreso ADD CONSTRAINT solicitud_ingreso_PK PRIMARY KEY (id_solicitud);
ALTER TABLE estado_postulacion ADD CONSTRAINT estado_postulacion_PK PRIMARY KEY (id_postulacion);
ALTER TABLE futuro_afiliado ADD CONSTRAINT futuro_afiliado_PK PRIMARY KEY (id_futuro_afiliado);
ALTER TABLE tipo_patentesco ADD CONSTRAINT tipo_patentesco_PK PRIMARY KEY (id_tipo_parentesco);
ALTER TABLE estado_civil ADD CONSTRAINT estado_civil_PK PRIMARY KEY (id_estado_civil);

--- CREACION DE FOREIGN KEY (no se si los id despues del foreign key se agregan como solo "comuna_id" o "comuna_id_comuna")
ALTER TABLE afiliados ADD CONSTRAINT afiliados_comuna_id_FK FOREIGN KEY (comuna_id) REFERENCES comuna (id_comuna);
ALTER TABLE afiliados ADD CONSTRAINT afiliados_nacionalidad_id_FK FOREIGN KEY (nacionalidad_id) REFERENCES nacionalidad (id_nacionalidad);
ALTER TABLE afiliados ADD CONSTRAINT afiliados_tipo_discapacidad_id_FK FOREIGN KEY (tipo_discapacidad_id) REFERENCES tipo_discapacidad (id_tipo_de_discapacidad);
ALTER TABLE afiliados ADD CONSTRAINT afiliados_solicitud_ingreso_id_FK FOREIGN KEY (solicitud_ingreso_id) REFERENCES solicitud_ingreso (id_solicitud);
ALTER TABLE telefono_cliente ADD CONSTRAINT telefono_cliente_telefono_id_FK FOREIGN key (telefono_id) REFERENCES telefono (id_telefono);
ALTER TABLE telefono_cliente ADD CONSTRAINT telefono_cliente_afiliado_id_FK FOREIGN KEY (afiliados_id) REFERENCES afiliado (id_afiliado);
ALTER TABLE telefono ADD CONSTRAINT telefono_tipo_telefono_id_FK FOREIGN KEY (tipo_telefono_id) REFERENCES tipo_telefono (id_numero);
ALTER TABLE pagos ADD CONSTRAINT pagos_cheque_id_FK FOREIGN KEY (cheque_id) REFERENCES cheque (id_cheque);
ALTER TABLE pagos ADD CONSTRAINT pagos_banco_id_FK FOREIGN KEY (banco_id) REFERENCES banco (id_banco);
ALTER TABLE pagos ADD CONSTRAINT pagos_tipo_pago_id_FK FOREIGN KEY (tipo_pago_id) REFERENCES tipo_pago (id_pago);
ALTER TABLE pagos ADD CONSTRAINT pagos_forma_pago_id_FK FOREIGN KEY (forma_pago_id) REFERENCES forma_pago (id_forma_pago);
ALTER TABLE pagos ADD CONSTRAINT pagos_afiliados_id_FK FOREIGN KEY (afiliados_id) REFERENCES afiliado (id_afiliado);
ALTER TABLE beneficio ADD CONSTRAINT beneficio_descuento_id_FK FOREIGN KEY (descuento_id) REFERENCES descuento (id_descuentos);
ALTER TABLE beneficio ADD CONSTRAINT beneficio_tipo_beneficio_id_FK FOREIGN KEY (tipo_beneficio_id) REFERENCES tipo_beneficio (id_tipo_beneficio);
ALTER TABLE beneficio ADD CONSTRAINT beneficio_afiliados_id_FK FOREIGN KEY (afiliados_id) REFERENCES afiliados (id_afiliado);
ALTER TABLE descuento ADD CONSTRAINT descuento_tipo_transporte_id_FK FOREIGN KEY (tipo_transporte_id) REFERENCES tipo_transporte (id_tipo_transporte);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_afiliados_id_FK FOREIGN KEY (afiliados_id) REFERENCES afiliados (id_afiliado);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_aseguradora_id_FK FOREIGN KEY (aseguradora_id) REFERENCES aseguradora (id_aseguradora);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_descuento_id_FK FOREIGN KEY (descuento_id) REFERENCES descuento (id_descuentos);
ALTER TABLE provincia ADD CONSTRAINT provincia_region_id_FK FOREIGN KEY (region_id) REFERENCES region (id_region);
ALTER TABLE comuna ADD CONSTRAINT comuna_provincia_id_FK FOREIGN KEY (provincia_id) REFERENCES provincia (id_provincia);
ALTER TABLE solicitud_ingreso ADD CONSTRAINT solicitud_ingreso_futuro_afiliado_id_FK FOREIGN KEY (futuro_afiliado_id) REFERENCES futuro_afiliado (id_futuro_afiliado);
ALTER TABLE solicitud_ingreso ADD CONSTRAINT solicitud_ingreso_estado_postulacion_id_FK FOREIGN KEY (estado_postulacion_id) REFERENCES estado_postulacion (id_postulacion);
ALTER TABLE sindicato ADD CONSTRAINT sindicato_empresa_id_FK FOREIGN KEY (empresa_id) REFERENCES empresa (id_empresa);
ALTER TABLE empresa ADD CONSTRAINT empresa_comuna_id_FK FOREIGN KEY (comuna_id) REFERENCES comuna (id_comuna);
ALTER TABLE futuro_afiliado ADD CONSTRAINT futuro_afiliado_tipo_parentesco_id_FK FOREIGN KEY (tipo_parentesco_id) REFERENCES tipo_parentesco (id_tipo_parentesco);
ALTER TABLE futuro_afiliado ADD CONSTRAINT futuro_afiliado_estado_civil_id_FK FOREIGN KEY (estado_civil_id) REFERENCES estado_civil (id_estado_civil);
ALTER TABLE aseguradora_empresa ADD CONSTRAINT aseguradora_empresa_empresa_id_FK FOREIGN KEY (empresa_id) REFERENCES empresa (id_empresa);
ALTER TABLE aseguradora_empresa ADD CONSTRAINT aseguradora_empresa_aseguradora_id_FK FOREIGN KEY (aseguradora_id) REFERENCES aseguradora (id_aseguradora);

---- INSERT DE DATOS:D
ALTER SESSION SET NLS_DATE_FORMAT= 'DD/MM/YYYY'
INSERT INTO solicitud_ingreso VALUES (1, '03/04/2021');
INSERT INTO solicitud_ingreso VALUES (2, '07/09/2017');
INSERT INTO region VALUES (1, 'METROPOLITANA DE SANTIAGO');
INSERT INTO region VALUES (2, 'ARICA Y PARINACOTA');
INSERT INTO region VALUES (3, 'TARAPACA');
INSERT INTO provincia VALUES (1, 'MAGALLANES')
INSERT INTO provincia VALUES (2, 'VALDIVIA')
INSERT INTO provincia VALUES (3, 'IQUIQUE')
INSERT INTO comuna VALUES (1, 'LA FLORIDA');
INSERT INTO comuna VALUES (2, 'PUENTE ALTO');
INSERT INTO comuna VALUES (3, 'LA GRANJA');
INSERT INTO nacionalidad VALUES (1,'CHILENA/O');
INSERT INTO nacionalidad VALUES (2,'MEXICANA/O');
INSERT INTO nacionalidad VALUES (3,'VENEZOLANA/O');
INSERT INTO discapacidad VALUES ('')
INSERT INTO vehiculo VALUES (1,'CHEVROLET', 'CAMARO', '1234','AZUL', 'tipo', '1111','11111','01');
INSERT INTO vehiculo VALUES (2, 'BMW', 'sedan', '5678', 'verde', 'tipo', '2222', '22222', '02');
INSERT INTO vehiculo VALUES (3, 'SUZUKI', 'APV', '9101');

