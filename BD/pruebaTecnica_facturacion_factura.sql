create table facturacion.factura
(
    id_factura int identity
        constraint factura_pk
            primary key nonclustered,
    id_cliente int
        constraint factura_cliente_id_cliente_fk
            references facturacion.cliente,
    valor      float,
    estado     bit      default 1,
    fecha      datetime default sysdatetime()
)
go

INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (39, 270138, 1, N'2001-06-18 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (45, 122875, 1, N'1999-02-28 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (5, 685455, 1, N'2001-07-07 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (18, 523596, 1, N'2004-08-28 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (47, 121362, 1, N'1999-05-05 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (44, 8850, 1, N'2003-08-03 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (45, 473402, 1, N'2004-03-26 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (44, 185460, 1, N'2002-08-11 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (14, 360150, 1, N'2002-10-29 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (11, 552448, 1, N'2000-10-02 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (17, 62126, 1, N'2002-06-27 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (42, 292357, 1, N'2002-07-02 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (42, 223920, 1, N'2000-11-30 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (39, 36368, 1, N'2000-08-25 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (22, 105947, 1, N'2004-12-30 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (26, 539293, 1, N'1999-09-28 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (3, 184037, 1, N'1999-11-08 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (47, 334730, 1, N'2002-02-18 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (47, 165494, 1, N'2005-01-08 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (36, 197151, 1, N'2000-08-01 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (3, 588526, 1, N'2005-01-17 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (48, 164349, 1, N'2002-05-28 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (36, 213897, 1, N'2000-10-19 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (32, 612621, 1, N'2005-01-18 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (47, 668444, 1, N'2000-03-04 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (34, 167040, 1, N'2002-06-05 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (31, 260736, 1, N'2004-03-17 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (17, 84456, 1, N'2002-02-08 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (30, 41718, 1, N'2002-09-20 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (1, 659239, 1, N'2003-04-26 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (29, 324040, 1, N'2002-07-02 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (30, 44676, 1, N'2004-09-16 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (42, 216028, 1, N'2005-01-26 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (38, 60956, 1, N'2003-05-03 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (38, 534120, 1, N'1999-11-05 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (29, 704006, 1, N'2002-06-07 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (31, 182819, 1, N'2004-07-29 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (9, 152460, 1, N'2004-04-20 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (2, 32580, 1, N'2001-05-29 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (29, 326361, 1, N'2000-04-08 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (17, 63532, 1, N'2003-09-09 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (41, 70548, 1, N'2004-09-22 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (3, 358524, 1, N'2002-03-23 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (22, 537690, 1, N'2003-10-01 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (5, 276660, 1, N'2000-06-02 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (13, 343322, 1, N'2000-12-06 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (44, 648441, 1, N'2004-02-11 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (14, 50232, 1, N'2002-12-27 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (29, 137186, 1, N'2002-10-07 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (23, 356328, 1, N'2003-01-02 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (43, 425081, 1, N'2004-09-21 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (46, 242511, 1, N'1999-11-07 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (15, 168782, 1, N'2000-03-18 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (47, 311593, 1, N'2004-04-12 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (18, 565056, 1, N'2000-12-04 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (13, 124509, 1, N'2003-06-24 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (11, 73167, 1, N'2004-01-26 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (34, 38370, 1, N'2003-03-20 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (47, 204809, 1, N'2003-01-01 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (7, 38872, 1, N'2000-01-15 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (9, 266844, 1, N'2004-10-06 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (3, 636070, 1, N'2000-07-10 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (12, 237465, 1, N'2003-05-21 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (8, 82279, 1, N'2004-12-04 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (43, 389299, 1, N'2004-11-21 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (6, 950220, 1, N'2001-03-11 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (26, 198440, 1, N'2001-04-26 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (24, 455904, 1, N'2002-07-12 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (5, 515336, 1, N'1999-08-14 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (6, 166801, 1, N'2002-01-25 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (21, 429282, 1, N'2001-10-06 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (39, 192312, 1, N'2004-03-19 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (33, 75985, 1, N'2003-04-21 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (35, 1225605, 1, N'2002-06-19 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (6, 270468, 1, N'1999-11-23 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (37, 335142, 1, N'1999-12-20 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (27, 534253, 1, N'2003-09-29 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (28, 303771, 1, N'2001-07-30 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (45, 387068, 1, N'2002-12-11 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (22, 841295, 1, N'2003-02-12 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (41, 181602, 1, N'2004-04-29 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (9, 28060, 1, N'2002-08-28 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (37, 304475, 1, N'2003-08-04 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (6, 319967, 1, N'2003-03-09 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (39, 307788, 1, N'1999-03-17 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (40, 34575, 1, N'1999-07-22 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (41, 254754, 1, N'2004-07-23 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (42, 11645, 1, N'2004-09-23 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (45, 49705, 1, N'2004-07-03 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (30, 364410, 1, N'2003-04-23 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (39, 193248, 1, N'2004-07-24 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (31, 193996, 1, N'2003-02-27 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (13, 97350, 1, N'2000-12-09 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (7, 620867, 1, N'2004-09-05 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (20, 202029, 1, N'2000-09-20 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (15, 121470, 1, N'2004-08-29 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (2, 155832, 1, N'2003-04-15 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (46, 30126, 1, N'2003-06-23 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (40, 559718, 1, N'2004-06-04 00:00:00.000');
INSERT INTO pruebaTecnica.facturacion.factura (id_cliente, valor, estado, fecha) VALUES (31, 172056, 1, N'1999-10-29 00:00:00.000');