WITH Ada.Text_IO;
USE Ada.Text_IO;
WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;
WITH Ada.IO_Exceptions;

PACKAGE BODY Productos IS

   --CONSTRUCTORA
   -- Fichero_Productos: file_type := "Fproductos.txt";

   PROCEDURE Crear_Producto (
         Nombre   : IN     String;
         Peso     : IN     Float;
         Precio   : IN     Float;
         Cantidad : IN     Integer;
         Codigo   : IN     Integer;
         Prod     :    OUT Producto) IS


   BEGIN
      Prod.Nombre := Nombre;
      Prod.Peso := Peso;
      Prod.Precio := Precio;
      Prod.Cantidad := Cantidad;
      Prod.IVA := 0.21;
      Prod.Codigo := Codigo;

   END Crear_Producto;


   --GETTERS

   FUNCTION El_Nombre (
         Prod : Producto)
     RETURN String IS
   BEGIN
      RETURN Prod.Nombre;
   END El_Nombre;


   FUNCTION La_Cantidad (
         Prod : Producto)
     RETURN Integer IS
   BEGIN
      RETURN Prod.Cantidad;
   END La_Cantidad;


   FUNCTION El_Precio (
         Prod : Producto)
     RETURN Float IS
   BEGIN
      RETURN Prod.Precio;
   END El_Precio;


   FUNCTION El_Codigo (
         Prod : Producto)
     RETURN Integer IS
   BEGIN
      RETURN Prod.Codigo;
   END El_Codigo;


   FUNCTION El_Peso (
         Prod : Producto)
     RETURN Float IS
   BEGIN
      RETURN Prod.Peso;
   END El_Peso;


   FUNCTION El_IVA (
         Prod : Producto)
     RETURN Float IS
   BEGIN
      RETURN Prod.IVA;
   END El_IVA;

   --SETTERS

   PROCEDURE Modificar_Codigo (
         Prod   : IN OUT Producto;
         Codigo : IN     Integer) IS
   BEGIN
      Prod.Codigo := Codigo;
   END Modificar_Codigo;


   PROCEDURE Modificar_Precio (
         Prod   : IN OUT Producto;
         Precio : IN     Float) IS
   BEGIN
      Prod.Precio := Precio;
   END Modificar_Precio;


   PROCEDURE Modificar_Cantidad (
         Prod     : IN OUT Producto;
         Cantidad :        Integer) IS
   BEGIN
      Prod.Cantidad := Cantidad;
   END Modificar_Cantidad;


   PROCEDURE Modificar_Peso (
         Prod : IN OUT Producto;
         Peso :        Float) IS
   BEGIN
      Prod.Peso := Peso;
   END Modificar_Peso;


   PROCEDURE Modificar_Nombre (
         Prod   : IN OUT Producto;
         Nombre :        String) IS
   BEGIN
      Prod.Nombre := Nombre;
   END Modificar_Nombre;


   PROCEDURE Modificar_IVA (
         Prod : IN OUT Producto;
         IVA  :        Float) IS
   BEGIN
      Prod.IVA := IVA;
   END Modificar_IVA;


   --OTRAS

   FUNCTION Precio_Con_IVA (
         Prod : Producto)
     RETURN Float IS
   BEGIN
      RETURN Prod.IVA + Prod.Precio;
   END Precio_Con_IVA;


   PROCEDURE Visualizar (
         Prod : IN OUT Producto) IS
   BEGIN
      Put_Line("PRODUCTO");
      Put("Nombre: ");
      Put_Line(El_Nombre(Prod));

      Put("Codigo: ");
      Put_Line(Integer'Image(El_Codigo(Prod)));
      Put("Precio: ");
      Put_Line(Float'Image(El_Precio(Prod)));
      Put("Cantidad: ");
      Put_Line(Integer'Image(La_Cantidad(Prod)));
      Put("Peso: ");
      Put_Line(Float'Image(El_Peso(Prod)));
      Put("IVA aplicable: ") ;
      Put_Line(Float'Image(El_IVA(Prod)));
      Put("precio con IVA: ");
      Put_Line(Float'Image(Precio_Con_IVA(Prod)));
   END Visualizar;



   PROCEDURE Escribir_En_Fichero (
         Prod : IN     Productos.Producto) IS
      F : File_Type;

   BEGIN
      --BEGIN

      Open (
         File => F,
         Mode => Out_File,
         Name => "Fproductos.txt");

      --EXCEPTION
      --   WHEN ada.io_exceptions.Use_Error =>

 WHILE NOT End_OF_File (F) LOOP
         Get(
            File => F,
            Item => Producto.codigo);

         Get(
            File => F,
            Item => Float);

         Get(
            File => F,
            Item => Float);

         Get(
            File => F,
            Item => Integer);
         Get(
            File => F,
            Item => String);
end loop;

      Put(F, Prod.Codigo, 0);
      Put(F, Float'Image(Prod.Precio));
      Put(F, " ");
      Put(F, Prod.Cantidad, 0);
      Put(F,  Float'Image(Prod.Peso));
      Put(F, Float'Image(Prod.IVA));
      Put(F, " ");
      Put(F, Prod.Nombre);

      New_Line;

      RETURN;


      Close(F);
   END Escribir_En_Fichero;










--   PROCEDURE Leer_De_Fichero IS
--      F     : File_Type;
--      Valor : Character;
--   BEGIN
--      Open (
--         File => F,
--         Mode => In_File,
--         Name => "Fproductos.txt");

--      WHILE NOT End_OF_File (F) LOOP
--         Get(
--            File => F,
--            Item => Integer);
--         Put (Item => Integer);
--         Get(
--            File => F,
--            Item => Float);
--         Put (Item => Float);

--         Get(
--            File => F,
--            Item => Float);
--         Put (Item => Float);
--         Get(
--            File => F,
--            Item => Integer);
--         Put (Item => Integer);
--         Get(
--            File => F,
--            Item => String);
--         Put (Item => String);



--         IF End_OF_Line (F) THEN
--            New_Line;
--         END IF;
--      END LOOP;
--      Close (File => F);

--   END Leer_De_Fichero;

END Productos;
























