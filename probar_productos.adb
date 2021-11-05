WITH Productos;
USE Productos;
WITH Leer_De_Teclado;

WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE Probar_Productos IS
   P : Producto;
    S : Producto;

   F: File_type;
BEGIN

   Crear_Producto(
      Nombre   => "prod1",
      Peso     => 2.0,
      Precio   => 16.0,
      Cantidad => 1,
      Codigo   => 323,
      Prod     => P);


   Crear_Producto(
      Nombre   => "prod2",
      Peso     => 2.0,
      Precio   => 16.0,
      Cantidad => 1,
      Codigo   => 323,
      Prod     => S);

   --Visualizar(P);
--   Open (
--         File => F,
--         Mode => Out_File,
--         Name => "Fproductos.txt");

      New_Line;
   Escribir_En_Fichero(P);
   Escribir_En_Fichero(S);
   Leer_De_Teclado(P);
   Visualizar(P);
  -- close(File => F);

END Probar_Productos;



