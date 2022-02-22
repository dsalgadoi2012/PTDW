create table facturacion.cliente
(
    id_cliente     int identity
        constraint cliente_pk
            primary key nonclustered,
    nombre         nvarchar(200),
    documento      nvarchar(20),
    edad           int,
    estado         bit      default 1,
    fecha_creacion datetime default sysdatetime()
)
go

INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Sheila-kathryn', N'66-190-5254', 21, 1, N'2022-02-17 20:43:50.077');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Giacinta', N'76-344-4309', 32, 1, N'2022-02-17 20:43:50.160');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Leia', N'55-588-4161', 71, 1, N'2022-02-17 20:43:50.163');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Iago', N'27-445-8085', 34, 1, N'2022-02-17 20:43:50.167');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Katee', N'64-618-7880', 30, 1, N'2022-02-17 20:43:50.173');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Martguerita', N'08-579-9028', 70, 1, N'2022-02-17 20:43:50.177');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Gauthier', N'94-789-0184', 62, 1, N'2022-02-17 20:43:50.180');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Nelie', N'54-627-4639', 77, 1, N'2022-02-17 20:43:50.183');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Smith', N'64-587-9133', 85, 1, N'2022-02-17 20:43:50.190');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Hans', N'88-056-2109', 65, 1, N'2022-02-17 20:43:50.193');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Felice', N'83-941-6212', 76, 1, N'2022-02-17 20:43:50.200');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Yolane', N'87-221-5290', 58, 1, N'2022-02-17 20:43:50.203');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Dannel', N'47-901-0576', 37, 1, N'2022-02-17 20:43:50.207');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Reuven', N'16-062-2331', 34, 1, N'2022-02-17 20:43:50.210');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Shelley', N'68-708-2679', 20, 1, N'2022-02-17 20:43:50.217');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Faith', N'13-615-9391', 47, 1, N'2022-02-17 20:43:50.223');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Alexa', N'54-252-2348', 79, 1, N'2022-02-17 20:43:50.227');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Karalynn', N'19-425-8799', 88, 1, N'2022-02-17 20:43:50.230');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Reggi', N'86-299-8540', 58, 1, N'2022-02-17 20:43:50.237');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Gillan', N'25-303-6469', 72, 1, N'2022-02-17 20:43:50.243');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Keen', N'40-096-6917', 55, 1, N'2022-02-17 20:43:50.247');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Lynde', N'30-859-6998', 77, 1, N'2022-02-17 20:43:50.253');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Kate', N'40-816-7325', 50, 1, N'2022-02-17 20:43:50.260');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Phillida', N'16-570-1763', 86, 1, N'2022-02-17 20:43:50.263');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Priscella', N'67-639-4536', 87, 1, N'2022-02-17 20:43:50.267');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Karly', N'09-447-0215', 40, 1, N'2022-02-17 20:43:50.270');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Brig', N'19-936-0248', 27, 1, N'2022-02-17 20:43:50.277');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Akim', N'03-197-9778', 65, 1, N'2022-02-17 20:43:50.280');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Claudie', N'46-503-5513', 35, 1, N'2022-02-17 20:43:50.283');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Abba', N'10-318-9867', 33, 1, N'2022-02-17 20:43:50.287');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Melisent', N'51-719-0622', 88, 1, N'2022-02-17 20:43:50.290');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Jo', N'34-566-8290', 36, 1, N'2022-02-17 20:43:50.293');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Erv', N'23-016-0022', 82, 1, N'2022-02-17 20:43:50.300');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Ario', N'68-337-4073', 18, 1, N'2022-02-17 20:43:50.303');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Harwell', N'72-700-7922', 88, 1, N'2022-02-17 20:43:50.307');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Guntar', N'85-227-0412', 64, 1, N'2022-02-17 20:43:50.307');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Tallou', N'84-435-1349', 75, 1, N'2022-02-17 20:43:50.313');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Tarah', N'87-487-7071', 37, 1, N'2022-02-17 20:43:50.317');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Padraig', N'43-494-9877', 69, 1, N'2022-02-17 20:43:50.320');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Viki', N'16-498-9179', 84, 1, N'2022-02-17 20:43:50.327');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Melicent', N'16-249-7204', 65, 1, N'2022-02-17 20:43:50.330');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Ninetta', N'13-161-1704', 64, 1, N'2022-02-17 20:43:50.333');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Onida', N'52-743-6570', 41, 1, N'2022-02-17 20:43:50.340');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Grier', N'39-210-2797', 63, 1, N'2022-02-17 20:43:50.343');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Sissie', N'66-009-2273', 33, 1, N'2022-02-17 20:43:50.347');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Georgeta', N'80-586-7596', 50, 1, N'2022-02-17 20:43:50.350');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Welby', N'75-042-7388', 18, 1, N'2022-02-17 20:43:50.357');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Lanni', N'31-762-6943', 33, 1, N'2022-02-17 20:43:50.360');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Jacklin', N'72-491-7966', 87, 1, N'2022-02-17 20:43:50.363');
INSERT INTO pruebaTecnica.facturacion.cliente (nombre, documento, edad, estado, fecha_creacion) VALUES (N'Jean', N'06-135-7791', 61, 1, N'2022-02-17 20:43:50.370');