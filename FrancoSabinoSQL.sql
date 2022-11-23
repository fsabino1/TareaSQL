/*Clase 10 */

SELECT * FROM Usuario
WHERE (NombreUsuario) = 'fsabino'

SELECT * FROM Usuario
WHERE (NombreUsuario) = 'martin' AND (Contraseña) = 'usuario123'

SELECT * FROM Usuario
WHERE (NombreUsuario) = 'fsabino' AND (Contraseña) = 'usuario123'

SELECT * FROM Producto
WHERE IdUsuario = 1
GO

INSERT INTO Usuario
(Nombre, Apellido, NombreUsuario, Contraseña, Mail)
VALUES
('Juan', 'Gonzalez', 'jgonzalez', 'usuario123', 'jgonzalez@gmail.com')
GO

INSERT INTO Producto
(Descripciones, Costo, PrecioVenta, Stock, IdUsuario)
VALUES
('Pelota', 250, 750, 80, 1)

INSERT INTO Producto
(Descripciones, Costo, PrecioVenta, Stock, IdUsuario)
VALUES
('Lavandina', 900, 1200, 20, 1)

/* Venta mayores a 100000 de los productos terminados en ina */

SELECT A.id ,A.Descripciones, A.PrecioVenta * B.Stock AS TotalVendido
FROM
Producto AS A
 INNER JOIN productoVendido AS B
 ON A.id = B.Idproducto
 WHERE A.precioVenta* B.stock>=10000 AND A.Descripciones LIKE '%ina'
GO

/*Venta de 20 productos */

INSERT INTO ProductoVendido
(Stock, IdProducto,IdVenta)
VALUES
(20,15,6)

INSERT INTO ProductoVendido
(Stock, IdProducto,IdVenta)
VALUES
(5,16,6)

/* Actualizo stock */

UPDATE Producto
SET Stock = '100'
WHERE id = 2

/*Eliminar producto*/

DELETE FROM Producto
WHERE id = 1
GO