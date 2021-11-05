WITH Productos;
USE Productos;

PACKAGE Inventario IS


  -- PROCEDURE Cargar;
  -- PROCEDURE Guardar;
   PROCEDURE Dar_Alta(Prod: IN Productos.Producto);
   PROCEDURE Dar_Baja(Cod: IN integer);
   FUNCTION Tamano RETURN Integer;
   FUNCTION Obtener_Producto (Cod: in Integer) RETURN Productos.Producto;
   PROCEDURE Actualizar_Cantidad(Cod: IN Integer; Cant: IN Integer);
   PROCEDURE Mostrar;

END Inventario;









