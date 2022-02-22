-- Obtener la lista de precios de todos los productos
select nombre, precio
from facturacion.producto;
-- Obtener la lista de productos cuya existencia en el inventario haya llegado al mínimo
-- permitido (5 unidades)
select *
from facturacion.producto
where cantidad <= 5;
-- Obtener una lista de clientes no mayores de 35 años que hayan realizado compras entre el
-- 1 de febrero de 2000 y el 25 de mayo de 2000
select c.*
from facturacion.cliente c
         inner join facturacion.factura f on c.id_cliente = f.id_cliente
where c.edad <= 35
  and f.fecha between '2000-02-01' and '2000-05-25';
--Obtener el valor total vendido por cada producto en el año 2000
select p.id_producto, p.nombre, sum(fp.cantidad) cantidad, CAST(sum(fp.cantidad * p.precio) as money) total
from facturacion.producto p
         inner join facturacion.factura_producto fp on p.id_producto = fp.id_producto
         inner join facturacion.factura f on f.id_factura = fp.id_factura
where year(f.fecha) = '2000'
group by p.id_producto, p.nombre;

--Obtener la última fecha de compra de un cliente y según su frecuencia de compra estimar
--en qué fecha podría volver a comprar.

begin
    DROP TABLE IF EXISTS #TablaTemporal
    CREATE TABLE #TablaTemporal
    (
        id_cliente        int,
        nombre            nvarchar(100),
        fechaUltimaCompra date,
        cantidadCompras   int,
        fechaEstimada     date
    );
    insert into #TablaTemporal
    select c.id_cliente, c.nombre, max(f.fecha) fecha, count(f.fecha) cantidad, null
    from facturacion.cliente c
             inner join facturacion.factura f on c.id_cliente = f.id_cliente
    group by c.id_cliente, c.nombre;


    DECLARE @id_cliente int;
    DECLARE ITEM_CURSOR CURSOR
        FOR
        select id_cliente
        from #TablaTemporal
        where cantidadCompras > 1;
    OPEN ITEM_CURSOR -- This charges the results to memory
    FETCH NEXT FROM ITEM_CURSOR INTO @id_cliente
    WHILE @@FETCH_STATUS = 0
        BEGIN
            DECLARE @id_factura int;
            DECLARE @contador int = 0;
            DECLARE @suma_diferecias int = 0;
            declare @fecha_primera date;
            select @fecha_primera = min(fecha), @contador = count(id_factura)
            from facturacion.factura
            where id_cliente = @id_cliente
            DECLARE ITEM_CURSOR2 CURSOR
                FOR
                select id_factura
                from facturacion.factura
                where id_cliente = @id_cliente
                order by fecha asc;
            OPEN ITEM_CURSOR2 -- This charges the results to memory
            FETCH NEXT FROM ITEM_CURSOR2 INTO @id_factura -- We fetch the first result
            WHILE @@FETCH_STATUS = 0 --If the fetch went well then we go for it
                BEGIN
                    select @suma_diferecias = datediff(day, @fecha_primera, fecha) + @suma_diferecias,
                           @fecha_primera = fecha
                    from facturacion.factura
                    where id_factura = @id_factura;
                    --PRINT (@suma_diferecias);
                    FETCH NEXT FROM ITEM_CURSOR2 INTO @id_factura
                END
            CLOSE ITEM_CURSOR2
            DEALLOCATE ITEM_CURSOR2

            update #TablaTemporal
            set fechaEstimada = dateadd(day, (@suma_diferecias / (#TablaTemporal.cantidadCompras - 1)),
                                        fechaUltimaCompra)
            where id_cliente = @id_cliente;
            FETCH NEXT FROM ITEM_CURSOR INTO @id_cliente -- Once the work is done we fetch the next result
        END
    CLOSE ITEM_CURSOR
    DEALLOCATE ITEM_CURSOR
    select * from #TablaTemporal
    drop table #TablaTemporal
end
----------

