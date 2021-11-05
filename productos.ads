PACKAGE Productos IS
   TYPE Producto IS LIMITED PRIVATE;

   --Fichero_Productos: file_type := "Fproductos.txt";

   PROCEDURE Crear_Producto (
         Nombre   : IN     String;
         Peso     : IN     Float;
         Precio   : IN     Float;
         Cantidad : IN     Integer;
         Codigo   : IN     Integer;
         Prod     : OUT Producto);

   FUNCTION El_Nombre (
         Prod : Producto)
     RETURN String;

   FUNCTION La_Cantidad (
         Prod : Producto)
     RETURN Integer;

   FUNCTION El_Precio (
         Prod : Producto)
     RETURN Float;

   FUNCTION El_Codigo (
         Prod : Producto)
     RETURN Integer;

   FUNCTION El_Peso (
         Prod : Producto)
     RETURN Float;

   FUNCTION El_IVA (
         Prod : Producto)
     RETURN Float;



   PROCEDURE Modificar_Codigo (
         Prod   : IN OUT Producto;
         Codigo : IN     Integer);
   PROCEDURE Modificar_Precio (
         Prod   : IN OUT Producto;
         Precio : IN     Float);
   PROCEDURE Modificar_Cantidad (
         Prod     : IN OUT Producto;
         Cantidad :        Integer);
   PROCEDURE Modificar_Peso (
         Prod : IN OUT Producto;
         Peso :        Float);
   PROCEDURE Modificar_IVA (
         Prod : IN OUT Producto;
         IVA  :        Float);
   PROCEDURE Modificar_Nombre (
         Prod   : IN OUT Producto;
         Nombre :        String);


   FUNCTION Precio_Con_IVA (
         Prod : Producto)
     RETURN Float;

   PROCEDURE Visualizar (
         Prod : IN OUT Producto);

   PROCEDURE Escribir_En_Fichero (Prod: in Productos.Producto);

   --PROCEDURE Leer_De_Fichero;


PRIVATE

   TYPE Producto IS
      RECORD
         Codigo   : Integer;
         Nombre   : String (1 .. 5);
         Precio   : Float;
         Cantidad : Integer;
         Peso     : Float;
         IVA      : Float;
      END RECORD;

END Productos;




