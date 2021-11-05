PACKAGE BODY Inventario IS

   Max: CONSTANT := 100;
   TYPE Invent IS ARRAY (1..500) OF Productos.Producto;
   Inventario: Invent;
   Cantidad: Integer;
   I: Integer;
   Cod: Integer := 0;


--   PROCEDURE Cargar IS
--   BEGIN
--
--   END Cargar;
--

--   PROCEDURE Guardar IS
--   BEGIN
--
--   END Guardar;



   PROCEDURE Dar_Alta(Prod: IN Productos.Producto) IS
   BEGIN

      Cod := cod + 1;
      Prod.Codigo := Cod;
      I:=I+1;
      Inventario(I) := Prod;

   END Dar_Alta;

   PROCEDURE Dar_Baja(Cod: IN Integer) IS

   BEGIN
      FOR I IN 1..500 LOOP

         IF ElCodigo(Inventario(I)) = Cod THEN



            Inventario(I) := null;
         END IF;

      END LOOP;

   END Dar_Baja;





   FUNCTION Tamano RETURN Integer IS
   BEGIN

      RETURN Cantidad;
   END Tamano;

   FUNCTION Obtener_Producto (Cod: IN Integer) RETURN Producto IS
   BEGIN

         I:= 0;

      WHILE (Inventario(I).Codigo /= Cod) LOOP
      I:= i + 1;
         END LOOP;

      IF Inventario(I).Codigo = Cod THEN
         RETURN Inventario(I);
         ELSE Put("Producto inexistente");
      END IF;

   END Obtener_Producto;


   PROCEDURE Actualizar_Cantidad(Cod: IN Integer; Cant: IN Integer) IS
   BEGIN

      i := 0;
      while (Inventario(I).Codigo /= Cod) LOOP

      i:= i + 1;
      END LOOP;

      IF Inventario(I).Codigo = Cod THEN
         Inventario(I).Cantidad := Cant;

      ELSE Put("Producto inexistente");

      END IF;

   END Actualizar_Cantidad;

   PROCEDURE Mostrar IS
   BEGIN
      FOR I IN 1..500 LOOP
         Visualizar(Inventario(I));
      END LOOP;

   END Mostrar;


END Inventario;











