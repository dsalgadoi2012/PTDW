create table facturacion.producto
(
    id_producto    int identity
        constraint producto_pk
            primary key nonclustered,
    nombre         nvarchar(100),
    cantidad       int,
    precio         float,
    estado         bit      default 1,
    fecha_creacion datetime default sysdatetime()
)
go

INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Sprouts - Peppercress', 74, 7706, 1, N'2022-02-17 20:48:43.127');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Tendrils - Baby Pea, Organic', 83, 20178, 1, N'2022-02-17 20:48:43.433');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Lemonade - Pineapple Passion', 70, 8708, 1, N'2022-02-17 20:48:43.440');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Lychee - Canned', 41, 17440, 1, N'2022-02-17 20:48:43.443');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Sugar - Fine', 99, 5617, 1, N'2022-02-17 20:48:43.447');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Sugar - Brown, Individual', 89, 23099, 1, N'2022-02-17 20:48:43.453');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Parsley - Dried', 38, 15706, 1, N'2022-02-17 20:48:43.457');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Tart Shells - Savory, 4', 35, 18619, 1, N'2022-02-17 20:48:43.460');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Onions - White', 95, 7845, 1, N'2022-02-17 20:48:43.463');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Cheese - Fontina', 3, 20372, 1, N'2022-02-17 20:48:43.470');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Mini - Vol Au Vents', 47, 20823, 1, N'2022-02-17 20:48:43.473');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Veal - Osso Bucco', 49, 4368, 1, N'2022-02-17 20:48:43.477');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'The Pop Shoppe - Black Cherry', 32, 23849, 1, N'2022-02-17 20:48:43.483');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Cilantro / Coriander - Fresh', 96, 14119, 1, N'2022-02-17 20:48:43.487');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Danishes - Mini Raspberry', 90, 24369, 1, N'2022-02-17 20:48:43.490');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Island Oasis - Mango Daiquiri', 3, 7173, 1, N'2022-02-17 20:48:43.497');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Pork - Bones', 90, 13374, 1, N'2022-02-17 20:48:43.500');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Lettuce - Boston Bib', 38, 1887, 1, N'2022-02-17 20:48:43.503');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Honey - Comb', 67, 19786, 1, N'2022-02-17 20:48:43.507');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Lidsoupcont Rp12dn', 13, 3110, 1, N'2022-02-17 20:48:43.510');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Pur Value', 13, 14565, 1, N'2022-02-17 20:48:43.517');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Dill - Primerba, Paste', 88, 20979, 1, N'2022-02-17 20:48:43.520');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Dill Weed - Fresh', 62, 4393, 1, N'2022-02-17 20:48:43.523');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Beef - Short Ribs', 13, 6915, 1, N'2022-02-17 20:48:43.527');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Bacardi Mojito', 78, 23676, 1, N'2022-02-17 20:48:43.530');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Glass - Juice Clear 5oz 55005', 61, 2684, 1, N'2022-02-17 20:48:43.533');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Sauce Bbq Smokey', 73, 21524, 1, N'2022-02-17 20:48:43.540');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Syrup - Monin, Swiss Choclate', 54, 22237, 1, N'2022-02-17 20:48:43.543');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Figs', 81, 12817, 1, N'2022-02-17 20:48:43.547');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Coffee - Almond Amaretto', 3, 3632, 1, N'2022-02-17 20:48:43.550');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Wine - Chablis J Moreau Et Fils', 92, 4815, 1, N'2022-02-17 20:48:43.557');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Puree - Mango', 9, 24254, 1, N'2022-02-17 20:48:43.560');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Paper Cocktail Umberlla 80 - 180', 99, 20245, 1, N'2022-02-17 20:48:43.563');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Mayonnaise - Individual Pkg', 69, 17787, 1, N'2022-02-17 20:48:43.567');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Onions - Green', 95, 23171, 1, N'2022-02-17 20:48:43.573');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Table Cloth 81x81 Colour', 94, 12721, 1, N'2022-02-17 20:48:43.580');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Amaretto', 38, 10848, 1, N'2022-02-17 20:48:43.583');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Bread - Pumpernickle, Rounds', 27, 10546, 1, N'2022-02-17 20:48:43.590');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Banana - Green', 6, 3837, 1, N'2022-02-17 20:48:43.597');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Oil - Food, Lacquer Spray', 52, 4008, 1, N'2022-02-17 20:48:43.600');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Grapefruit - White', 25, 8771, 1, N'2022-02-17 20:48:43.607');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Pork - European Side Bacon', 65, 10557, 1, N'2022-02-17 20:48:43.610');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Pasta - Fett Alfredo, Single Serve', 27, 19598, 1, N'2022-02-17 20:48:43.613');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Jam - Strawberry, 20 Ml Jar', 28, 18444, 1, N'2022-02-17 20:48:43.617');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Garbage Bags - Clear', 33, 1059, 1, N'2022-02-17 20:48:43.623');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Milk 2% 500 Ml', 43, 1976, 1, N'2022-02-17 20:48:43.627');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Cheese - St. Paulin', 79, 19384, 1, N'2022-02-17 20:48:43.627');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Squash - Pepper', 73, 22520, 1, N'2022-02-17 20:48:43.633');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Wine - Sicilia Igt Nero Avola', 79, 5374, 1, N'2022-02-17 20:48:43.637');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Schnappes - Peach, Walkers', 71, 13245, 1, N'2022-02-17 20:48:43.640');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Chocolate - Semi Sweet', 15, 15063, 1, N'2022-02-17 20:48:43.647');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Tuna - Sushi Grade', 15, 18491, 1, N'2022-02-17 20:48:43.647');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Walkers Special Old Whiskey', 50, 14397, 1, N'2022-02-17 20:48:43.653');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Pepperoni Slices', 64, 21353, 1, N'2022-02-17 20:48:43.657');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Food Colouring - Red', 30, 12364, 1, N'2022-02-17 20:48:43.660');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Wine - Chablis J Moreau Et Fils', 34, 14063, 1, N'2022-02-17 20:48:43.663');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Swiss Chard', 9, 24039, 1, N'2022-02-17 20:48:43.667');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Lumpfish Black', 18, 11821, 1, N'2022-02-17 20:48:43.670');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Bread - Onion Focaccia', 27, 3548, 1, N'2022-02-17 20:48:43.673');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Nut - Hazelnut, Ground, Natural', 93, 4196, 1, N'2022-02-17 20:48:43.677');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Yogurt - Peach, 175 Gr', 34, 2868, 1, N'2022-02-17 20:48:43.683');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Wine - Rosso Del Veronese Igt', 28, 14153, 1, N'2022-02-17 20:48:43.687');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Tea - Herbal Orange Spice', 78, 11645, 1, N'2022-02-17 20:48:43.693');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Grapefruit - White', 2, 11308, 1, N'2022-02-17 20:48:43.697');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Sole - Dover, Whole, Fresh', 7, 19436, 1, N'2022-02-17 20:48:43.700');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Melon - Watermelon, Seedless', 24, 12090, 1, N'2022-02-17 20:48:43.703');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Pasta - Fettuccine, Dry', 58, 24195, 1, N'2022-02-17 20:48:43.710');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Red Snapper - Fresh, Whole', 74, 9941, 1, N'2022-02-17 20:48:43.713');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Beer - Pilsner Urquell', 82, 19652, 1, N'2022-02-17 20:48:43.720');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Sauce - Marinara', 18, 5787, 1, N'2022-02-17 20:48:43.723');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Bagel - Whole White Sesame', 66, 18429, 1, N'2022-02-17 20:48:43.727');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Jam - Blackberry, 20 Ml Jar', 97, 14025, 1, N'2022-02-17 20:48:43.733');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Cinnamon - Stick', 94, 22074, 1, N'2022-02-17 20:48:43.737');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Chocolate Liqueur - Godet White', 14, 3031, 1, N'2022-02-17 20:48:43.740');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Bay Leaf', 37, 9290, 1, N'2022-02-17 20:48:43.743');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Potatoes - Purple, Organic', 69, 24185, 1, N'2022-02-17 20:48:43.750');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Cheese - Brie', 10, 15336, 1, N'2022-02-17 20:48:43.753');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Bread - Calabrese Baguette', 88, 10855, 1, N'2022-02-17 20:48:43.757');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Cookies Oatmeal Raisin', 71, 5662, 1, N'2022-02-17 20:48:43.770');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Thyme - Lemon, Fresh', 45, 7670, 1, N'2022-02-17 20:48:43.773');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Sherbet - Raspberry', 44, 15028, 1, N'2022-02-17 20:48:43.780');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Chicken - Diced, Cooked', 22, 24575, 1, N'2022-02-17 20:48:43.783');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Nut - Hazelnut, Ground, Natural', 43, 8850, 1, N'2022-02-17 20:48:43.787');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Hog / Sausage Casing - Pork', 35, 20752, 1, N'2022-02-17 20:48:43.790');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Apples - Spartan', 45, 1088, 1, N'2022-02-17 20:48:43.793');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Wine - Zinfandel California 2002', 65, 21708, 1, N'2022-02-17 20:48:43.800');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Lettuce - Escarole', 15, 16967, 1, N'2022-02-17 20:48:43.803');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Wine - Rioja Campo Viejo', 29, 24605, 1, N'2022-02-17 20:48:43.807');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Ecolab - Mikroklene 4/4 L', 25, 18362, 1, N'2022-02-17 20:48:43.810');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Container - Hngd Cll Blk 7x7x3', 98, 14203, 1, N'2022-02-17 20:48:43.813');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Lemon Tarts', 32, 20221, 1, N'2022-02-17 20:48:43.817');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Muffin Mix - Chocolate Chip', 53, 7446, 1, N'2022-02-17 20:48:43.820');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Appetizer - Crab And Brie', 27, 14030, 1, N'2022-02-17 20:48:43.827');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Sping Loaded Cup Dispenser', 90, 12986, 1, N'2022-02-17 20:48:43.833');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Catfish - Fillets', 60, 17780, 1, N'2022-02-17 20:48:43.837');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Eel - Smoked', 61, 1295, 1, N'2022-02-17 20:48:43.847');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Vanilla Beans', 17, 8779, 1, N'2022-02-17 20:48:43.850');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Pasta - Lasagne, Fresh', 60, 24523, 1, N'2022-02-17 20:48:43.857');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Langers - Ruby Red Grapfruit', 0, 18195, 1, N'2022-02-17 20:48:43.860');
INSERT INTO pruebaTecnica.facturacion.producto (nombre, cantidad, precio, estado, fecha_creacion) VALUES (N'Beef - Tongue, Cooked', 59, 5894, 1, N'2022-02-17 20:48:43.863');