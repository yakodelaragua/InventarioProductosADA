WITH Productos;
USE Productos;

WITH Ada.Text_IO;
USE Ada.Text_IO;
WITH Ada.Float_Text_IO;
USE Ada.Float_Text_IO;
WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE Leer_De_Teclado (
      P :    OUT Producto) IS
   Lectura_Correcta : Boolean          := False;
   Linea            : String (1 .. 80) := (OTHERS => ' ');
   Pre              : Float            := 0.0;
   Pes              : Float            := 0.0;
   Can              : Integer          := 0;
   N                : Integer;
BEGIN
   Put_Line("--Introduce la descripcion del producto (string): ");
   WHILE NOT Lectura_Correcta LOOP
      BEGIN
         Get_Line(Linea, N);
         Modificar_Nombre(P, Linea(1..N));
         Lectura_Correcta := True;
      EXCEPTION
         WHEN OTHERS =>
            Put("Descripcion erronea, vuelva a introducirla (string): ");
      END;
   END LOOP;

   Lectura_Correcta := False;
   Put_Line("--Introduce el precio del producto por unidad (0.0):  ");
   WHILE NOT Lectura_Correcta LOOP
      BEGIN
         Get(Pre);
         Modificar_Precio(P, Pre);
         Skip_Line;
         Lectura_Correcta := True;
      EXCEPTION
         WHEN OTHERS =>
            Skip_Line;
            Put_Line("Precio erroneo, vuelva a introducirlo (0.0): ");
      END;
   END LOOP;

   Lectura_Correcta := False;
   Put("--Introduce la cantidad (numero de unidades):");
   WHILE NOT Lectura_Correcta LOOP
      BEGIN
         Get(Can);
         Modificar_Cantidad(P, Can);
         Skip_Line;
         Lectura_Correcta := True;
      EXCEPTION
         WHEN OTHERS =>
            Skip_Line;
            Put("Cantidad erronea, vuelva a introducirla: ");
      END;
   END LOOP;

   Lectura_Correcta := False;
   Put("--Introduce el peso del producto por unidad (en kg)(0.0):");
   WHILE NOT Lectura_Correcta LOOP
      BEGIN
         Get(Pes);
         Modificar_Peso(P, Pes);
         Skip_Line;
         Lectura_Correcta := True;
      EXCEPTION
         WHEN OTHERS =>
            Skip_Line;
            Put("Peso erroneo, vuelva a introducirlo (0,0): ");
      END;
   END LOOP;
END Leer_De_Teclado;

