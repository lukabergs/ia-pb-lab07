WITH Laboratorio07, Ada.Text_IO, Ada.Integer_Text_IO,Ada.Float_Text_IO;
USE Laboratorio07, Ada.Text_IO, Ada.Integer_Text_IO,Ada.Float_Text_IO;

use laboratorio07.P_Vector_Integer, laboratorio07.P_Vector_Integer_Sorting;

PROCEDURE Lab07_Pruebas IS
   V: T_Vector_Enteros(-90..-80);
   W: T_Vector_Enteros(0..13);
   v2: T_Vector_Enteros(1..10);
   v3: T_Vector_Enteros(0..29);
   v4: T_Vector_Enteros(-1..-1);
   F1, F2: T_Fecha;
   G, Sexagesimales: T_Grados_Sex;
   GCentesimales: Float;
   Texto: T_Info_Texto;
   Palabras: T_Palabras(1..Max_Palabras);
   Matriz: T_Matriz(1..3,1..4);
   VX, VY, VZ : T_Vector_Integer;
BEGIN
--   -- Aportación anónima de un alumno con tiempo libre (curso 20/21)
--   Put("V es un vector que va de -90 a -80.");New_Line;
--   Put("W es un vector que va de 0 a 13.");New_Line;
--   -----------------
--   -- Ejercicio 1 --
--   -----------------

--   Put("Ejercicio 1");New_Line(2);

--   Put("Esta el valor 7 en el vector V=(1,2,3,4,5,6,8,9,10,11,VACIO)? Spoiler, no."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,10,11,Vacio);
--   Put(boolean'image(esta_en_vector (V, 7)));New_line(2);

--   Put("Esta el valor VACIO en el vector V=(1,2,3,4,5,6,8,9,10,11,VACIO)? Spoiler, no."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,10,11,Vacio);
--   Put(boolean'image(esta_en_vector (V, VACIO)));New_line(2);

--   Put("Esta el valor 7 en el vector V=(1,2,3,4,5,6,8,9,10,11,VACIO,13,7,15)? Spoiler, no."); New_Line;
--   W:=(1,2,3,4,5,6,8,9,10,11,Vacio,13,7,15);
--   Put(boolean'image(esta_en_vector (W, 7))); New_line(2);

--   Put("Esta el valor 11 en el vector V=(1,2,3,4,5,6,8,9,10,11,VACIO)? Spoiler, si."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,10,11,VACIO);
--   Put(boolean'image(esta_en_vector (V, 11)));New_line(2);

--   Put("Esta el valor 11 en el vector V=(11,2,3,4,5,6,8,9,10,1,12,VACIO,14,15)? Spoiler, si."); New_Line;
--   W:=(11,2,3,4,5,6,8,9,10,1,12,VACIO,14,15);
--   Put(Boolean'Image(Esta_En_Vector (W, 11)));New_Line(2);

--   New_Line(2);
--   -----------------
--   -- Ejercicio 2 --
--   -----------------

--   Put("Ejercicio 2");New_Line(2);

--   Put("En que posicion esta el valor 7 en el vector V=(1,2,3,4,5,6,8,9,10,11,VACIO)?");New_Line;
--   Put("Spoiler, no esta en ninguna(2147483647)."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,10,11,VACIO);
--   Put(Integer'Image(Posicion(V, 7)));New_Line(2);

--   Put("En que posicion esta el valor 7 en el vector V=(1,2,3,4,5,6,8,9,10,11,12,VACIO,14,15)?");New_Line;
--   Put("Spoiler, no esta en ninguna(2147483647)."); New_Line;
--   W:=(1,2,3,4,5,6,8,9,10,11,12,VACIO,14,15);
--   Put(Integer'Image(Posicion(w, 7)));New_Line(2);

--   Put("En que posicion esta el valor 11 en el vector V=(11,2,3,4,5,6,8,9,10,1,VACIO)?");New_Line;
--   Put("Spoiler, esta en la primera(-90)."); New_Line;
--   V:=(11,2,3,4,5,6,8,9,10,1,Vacio);
--   Put(Integer'Image(Posicion(V, 11)));New_Line(2);

--   Put("En que posicion esta el valor 16 en el vector V=(11,2,3,4,5,6,8,9,16,1,12,16,14,VACIO)?");New_Line;
--   Put("Spoiler, esta en la novena(8)."); New_Line;
--   W:=(11,2,3,4,5,6,8,9,16,1,12,16,14,Vacio);
--   Put(Integer'Image(Posicion(W, 16)));New_Line(2);
--   --Si no te da bien en este, pero si en los anteriores casos de prueba, es por que tu programa no para de buscar
--   --el valor una vez ya lo ha encontrado

--   New_Line(2);

--   -----------------
--   -- Ejercicio 3 --
--   -----------------
--   Put("Ejercicio 3");New_Line(2);

--   Put("Son iguales las fechas 26/11/2002 y 25/11/2002? Spoiler, no."); New_Line;
--   F1:=(Dia=>26,Mes=>Noviembre,Anno=>2002);
--   F2:=(Dia=>25,Mes=>Noviembre,Anno=>2002);
--   Put(Boolean'Image(SOn_iguales(F1, F2)));New_Line(2);

--   Put("Son iguales las fechas 26/11/2002 y 26/1/2002? Spoiler, no."); New_Line;
--   F2:=(Dia=>26,Mes=>Enero,Anno=>2002);
--   Put(Boolean'Image(SOn_Iguales(F1, F2)));New_Line(2);

--   Put("Son iguales las fechas 26/11/2002 y 26/11/2020? Spoiler, no."); New_Line;
--   F2:=(Dia=>26,Mes=>noviembre,Anno=>2020);
--   Put(Boolean'Image(SOn_Iguales(F1, F2)));New_Line(2);

--   Put("Son iguales las fechas 26/11/2002 y 26/11/2002? Spoiler, si."); New_Line;
--   F2:=f1;
--   Put(Boolean'Image(SOn_Iguales(F1, F2)));New_Line(2);

--   New_Line(2);

--   -----------------
--   -- Ejercicio 4 --
--   -----------------

--   Put("Ejercicio 4");New_Line(2);

--   Put("A cuantos grados centesimales equivalen 90 grados sexagesimales? Spoiler, equivalen a 100."); New_Line;
--   G:=(90,0,0);
--   Put(Centesimales(G));New_Line(2);

--   Put("A cuantos grados centesimales equivalen 45 grados sexagesimales? Spoiler, equivalen a 50."); New_Line;
--   G:=(45,0,0);
--   Put(Centesimales(G));New_Line(2);

--   Put("A cuantos grados centesimales equivalen 26 grados sexagesimales, 47' y 52''? Spoiler, equivalen a 2.97753E+01."); New_Line;
--   G:=(26,47,52);
--   Put(Centesimales(G));New_Line(2);

--   New_Line(2);

--   -----------------
--   -- Ejercicio 5 --
--   -----------------

--   Put("Ejercicio 5");New_Line(2);
--   --Si de primeras no te funciona, seguramente sea por que tu pograma este listo para comparar vectores cuyo v'first sea igual.
--   --function Son_Iguales(L1, L2: in T_vector_enteros) return Boolean;
--   Put("Son iguales los vectores (1,2,3,4,5,6,8,9,VACIO,11,12) y (1,2,3,4,5,6,8,9,10,VACIO,12,13,14,15)? Spoiler, no."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,VACIO,11,12);
--   W:=(1,2,3,4,5,6,8,9,10,VACIO,12,13,14,15);
--   Put(Boolean'Image(SOn_Iguales(V, W)));New_Line(2);

--   Put("Son iguales los vectores (1,2,3,4,5,6,8,9,VACIO,11,12) y (1,2,3,4,5,6,8,9,VACIO,12,13,14,15,0)? Spoiler, si."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,VACIO,11,12);
--   W:=(1,2,3,4,5,6,8,9,VACIO,12,13,14,15,0);
--   Put(Boolean'Image(SOn_Iguales(V, W)));New_Line(2);

--   Put("Son iguales los vectores (1,2,3,4,5,6,8,9,VACIO,11,12) y (2,2,3,4,5,6,8,9,10,VACIO,12,13,14,15)? Spoiler, no."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,VACIO,11,12);
--   W:=(2,2,3,4,5,6,8,9,10,VACIO,12,13,14,15);
--   Put(Boolean'Image(SOn_Iguales(V, W)));New_Line(2);

--   Put("Son iguales los vectores (1,2,3,4,5,6,8,9,12,11,vacio) y (1,2,3,4,5,6,8,9,12,11,VACIO,VACIO,14,15)? Spoiler, si."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,12,11,vacio);
--   W:=(1,2,3,4,5,6,8,9,12,11,vacio,vacio,14,15);
--   Put(Boolean'Image(SOn_Iguales(V, W)));New_Line(2);

----   Put("Son iguales los vectores (1,2,3,4,5,6,8,9,12,11,12) y (1,2,3,4,5,6,8,9,12,11,12,vacio,14,15)?"); New_Line;
----   Put("Spoiler, no deberia funcionar.");New_line;
----   V:=(1,2,3,4,5,6,8,9,12,11,12);
----   W:=(1,2,3,4,5,6,8,9,12,11,12,vacio,14,15);
----   Put(Boolean'Image(Son_Iguales(V, W)));New_Line(2);
------ Si descomentas esta prueba y te funciona sin errores es que tu programa no se asegura de que el vector tenga un centinela VACIO al final.
----   New_Line(2);

--   ---------------
--   -- Ejercicio 6 --
--   ---------------

--   Put("Ejercicio 6");New_Line(2);

--   Put("Elimina el elemento de la posicion 4 del vector (1,2,3,4,5,6,8,9,12,11,VACIO). Spoiler, se va a quedar igual."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,12,11,Vacio);
--   Eliminar_Elemento(4,V);
--   Put('(');
--   FOR I IN V'First..V'Last-1 LOOP
--      Put(V(I),0);
--      Put(',');
--   END LOOP;
--   Put(V(v'last),0);
--   Put(')');New_Line(2);

--   Put("Elimina el elemento de la posicion 4 del vector (1,2,3,4,5,6,8,9,12,11,VACIO,5,14,15). Spoiler, eliminara el 5."); New_Line;
--   w:=(1,2,3,4,5,6,8,9,12,11,vacio,5,14,15);--quedara (1,2,3,4,6,8,9,12,11,-2147483648,5,14,15,0)
--   Eliminar_Elemento(4,w);
--   Put('(');
--   FOR I IN w'First..w'Last-1 LOOP
--      Put(w(I),0);
--      Put(',');
--   END LOOP;
--   Put(w(w'last),0);
--   Put(')');New_line(2);

--   Put("Elimina el elemento de la posicion -80 del vector (1,2,3,4,5,6,8,9,12,11,VACIO). Spoiler, se va a quedar igual."); New_Line;
--   V:=(1,2,3,4,5,6,8,9,12,11,Vacio);--quedara (1,2,3,4,5,6,8,9,12,11,VACIO)
--   Eliminar_Elemento(-80,V);
--   Put('(');
--   FOR I IN V'First..V'Last-1 LOOP
--      Put(V(I),0);
--      Put(',');
--   END LOOP;
--   Put(V(v'last),0);
--   Put(')');New_Line(2);

--   Put("Elimina el elemento de la posicion -82 del vector (1,2,3,4,VACIO,6,8,9,12,13,11)."); New_Line;
--   V:=(1,2,3,4,vacio,6,8,9,12,13,11);--quedara (1,2,3,4,-2147483648,6,8,9,12,13,11)
--   Eliminar_Elemento(-82,V);
--   Put('(');
--   FOR I IN V'First..V'Last-1 LOOP
--      Put(V(I),0);
--      Put(',');
--   END LOOP;
--   Put(V(v'last),0);
--   Put(')');New_Line(2);

--   New_Line(2);

--   -----------------
--   -- Ejercicio 7 --
--   -----------------

--   Put("Ejercicio 7");New_Line(2);

--   Put("Inserta el elemento 2 en la posicion 4 del vector (1,1,1,1,1,1,1,1,1,VACIO,0). Spoiler, se va a quedar igual."); New_Line;
--   V:=(1,1,1,1,1,1,1,1,1,Vacio,0);
--   insertar_Elemento_en_pos(2,4,V);
--   Put('(');
--   FOR I IN V'First..V'Last-1 LOOP
--      Put(V(I),0);
--      Put(',');
--   END LOOP;
--   Put(V(v'last),0);
--   Put(')');New_Line(2);

--   Put("Inserta el elemento 2 de la posicion -85 del vector (1,1,1,1,1,1,1,1,1,VACIO,0)."); New_Line;
--   V:=(1,1,1,1,1,1,1,1,1,Vacio,0);--quedara (1,1,1,1,1,2,1,1,1,1,-2147483648)
--   insertar_Elemento_en_pos(2,-85,V);
--   Put('(');
--   FOR I IN V'First..V'Last-1 LOOP
--      Put(V(I),0);
--      Put(',');
--   END LOOP;
--   Put(V(v'last),0);
--   Put(')');New_Line(2);

--   Put("Inserta el elemento 7 de la posicion 6 del vector (1,2,3,4,5,6,8,9,10,11,VACIO,5,14,15)."); New_Line;
--   w:=(1,2,3,4,5,6,8,9,10,11,vacio,5,14,15);--quedara (1,2,3,4,5,6,7,8,9,10,11,-2147483648,5,14)
--   insertar_Elemento_en_pos(7,6,w);
--   Put('(');
--   FOR I IN w'First..w'Last-1 LOOP
--      Put(w(I),0);
--      Put(',');
--   END LOOP;
--   Put(w(w'last),0);
--   Put(')');New_Line(2);

--   New_Line(2);

--   -----------------
--   -- Ejercicio 8 --
--   -----------------

--   Put("Ejercicio 8");New_Line(2);

--   Put("En que posicion esta el mayor valor del vector (14,2,3,4,5,6,8,9,10,11,VACIO,5,14,15)? Spoiler, 13."); New_Line;
--   W:=(14,2,3,4,5,6,8,9,10,11,Vacio,5,14,15);
--   Put(Pos_Maximo(w),0);
--   New_Line(2);

--   Put("En que posicion esta el mayor valor del vector (12,2,3,4,5,6,8,9,10,13,VACIO,45,14,15)? Spoiler, 11."); New_Line;
--   w:=(12,2,3,4,5,6,8,9,10,13,vacio,45,14,15);
--   Put(Pos_Maximo(w),0);
--   New_Line(2);

--   Put("En que posicion esta el mayor valor del vector (1,1,1,1,1,1,1,1,1,VACIO,45)? Spoiler, -80."); New_Line;
--   v:=(1,1,1,1,1,1,1,1,1,vacio,45);
--   Put(Pos_Maximo(V),0);
--   New_Line(2);

--   Put("En que posicion esta el mayor valor del vector (1)? Spoiler, -1."); New_Line;
--   V4:=(V4'First => 1);
--   Put(Pos_Maximo(V4),0);
--   New_Line(2);

--   New_Line(2);

--   -----------------
--   -- Ejercicio 9 --
--   -----------------

--   Put("Ejercicio 9");New_Line(2);

--   Put("Ordena el vector (7,2,3,5,80,6,8,9,12,11,VACIO).");
--   V:=(7,2,3,5,80,6,8,9,12,11,vacio);--quedara (2,3,5,6,7,8,9,11,12,80,-2147483648)
--   Ordenar_seleccion(V);
--   Put('(');
--   FOR I IN V'First..V'Last-1 LOOP
--      Put(V(I),0);
--      Put(',');
--   END LOOP;
--   Put(V(v'last),0);
--   Put(')');New_Line(2);

--   Put("Ordena el vector (7,2,3,5,80,6,8,9,12,VACIO,-13).");
--   V:=(7,2,3,5,80,6,8,9,12,vacio,-13);--quedara (2,3,5,6,7,8,9,12,80,-2147483648,-13)
--   Ordenar_seleccion(V);
--   Put('(');
--   FOR I IN V'First..V'Last-1 LOOP
--      Put(V(I),0);
--      Put(',');
--   END LOOP;
--   Put(V(v'last),0);
--   Put(')');New_Line(2);

--   Put("Ordena el vector (vacio,7,2,3,5,80,6,8,9,12,VACIO).");
--   V:=(vacio,7,2,3,5,80,6,8,9,12,vacio);--quedara (-2147483648,7,2,3,5,80,6,8,9,12,-2147483648)
--   Ordenar_seleccion(V);
--   Put('(');
--   FOR I IN V'First..V'Last-1 LOOP
--      Put(V(I),0);
--      Put(',');
--   END LOOP;
--   Put(V(v'last),0);
--   Put(')');New_Line(2);
--
--   Put("Ordena el vector (1).");
--   V4:=(V4'First => 1);--quedara (1)
--   Ordenar_seleccion(V4);
--   Put('(');
--   FOR I IN V4'First..V4'Last-1 LOOP
--      Put(V4(I),0);
--      Put(',');
--   END LOOP;
--   Put(V4(V4'last),0);
--   Put(')');New_Line(2);

--   --- A partir de aquí las pruebas no están tan trabajadas...

--   --------------------------------
--   -- Ejercicio 10 -- Cent_A_Sex --
--   --------------------------------
--   GCentesimales:= 100.0;
--   Put_Line("100 grados centesimales son 90 grados, 0 minutos y 0 segundos sexagesimales");
--   Cent_A_Sex(GCentesimales, Sexagesimales);
--   Put_Line(Sexagesimales.Grados'img & " grados, " & Sexagesimales.Minutos'img & " minutos y " & Sexagesimales.segundos'img & " segundos.");

--   new_line;

--   GCentesimales:= 30.94;
--   Put_Line("34.33 grados centesimales son 27 grados, 50 minutos y 45 segundos sexagesimales");
--   Cent_A_Sex(GCentesimales, Sexagesimales);
--   Put_Line(Sexagesimales.Grados'img & " grados, " & Sexagesimales.Minutos'img & " minutos y " & Sexagesimales.segundos'img & " segundos.");

--   new_line;

--   GCentesimales:= 372.99;
--   Put_Line("372.99 grados centesimales son 335 grados, 41 minutos y 27 segundos sexagesimales");
--   Cent_A_Sex(GCentesimales, Sexagesimales);
--   Put_Line(Sexagesimales.Grados'img & " grados, " & Sexagesimales.Minutos'img & " minutos y " & Sexagesimales.segundos'img & " segundos.");

--   new_line;

--   GCentesimales:= 120.258;
--   Put_Line("120.258 grados centesimales son 108 grados, 13 minutos y 56 segundos sexagesimales");
--   Cent_A_Sex(GCentesimales, Sexagesimales);
--   Put_Line(Sexagesimales.Grados'img & " grados, " & Sexagesimales.Minutos'img & " minutos y " & Sexagesimales.segundos'img & " segundos.");

--   -----------------------------------
--   -- Ejercicio 11 -- Rotar_Derecha --
--   -----------------------------------
--   new_line(3);

--   V2:= (1,2,3,4,5,6,7,8,9,10);
--   Put_Line("El vector (1,2,3,4,5,6,7,8,9,10) rotado 1 posicion a la derecha es (10,1,2,3,4,5,6,7,8,9)");
--   Rotar_Derecha(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:= (2,2,3,3,3,4,4,4,5,2);
--   Put_Line("El vector (2,2,3,3,3,4,4,4,5,2) rotado 1 posicion a la derecha es (2,2,2,3,3,3,4,4,4,5)");
--   Rotar_Derecha(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:= (0,0,0,0,0,0,0,0,0,1);
--   Put_Line("El vector (0,0,0,0,0,0,0,0,0,1) rotado 1 posicion a la derecha es (1,0,0,0,0,0,0,0,0,0)");
--   Rotar_Derecha(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   ---------------------------------------------
--   -- Ejercicio 12 -- esta_en_vector_ordenado --
--   ---------------------------------------------
--   new_line(3);

--   V2:= (1,2,3,4,5,6,7,8,9,10);
--   Put_Line("Esta el numero 5 en el vector ordenado(1,2,3,4,5,6,7,8,9,10)? TRUE");
--   Put_Line(esta_en_vector_ordenado(V2, 5)'img);

--   new_line;

--   V2:= (1,1,2,2,3,3,4,4,5,5);
--   Put_Line("Esta el numero 9 en el vector ordenado(1,1,2,2,3,3,4,4,5,5)? FALSE");
--   Put_Line(esta_en_vector_ordenado(V2, 9)'img);

--   new_line;

--   V2:= (0,0,0,0,0,0,0,0,0,6);
--   Put_Line("Esta el numero 6 en el vector ordenado(0,0,0,0,0,0,0,0,0,6)? TRUE");
--   Put_Line(esta_en_vector_ordenado(V2, 6)'img);

--   ------------------------------------------------
--   -- Ejercicio 13 -- eliminar_elemento_ordenado --
--   ------------------------------------------------
--   new_line(3);

--   V2:= (1,2,3,4,5,6,7,8,9,VACIO);
--   Put_Line("El vector (1,2,3,4,5,6,7,8,9,10) despues de borrar el elemento en la posicion 3: (1,2,4,5,6,7,8,9,VACIO)");
--   eliminar_elemento_ordenado(3, V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:= (0,0,0,0,0,0,VACIO,0,0,1);
--   Put_Line("El vector (0,0,0,0,0,0,VACIO,0,0,1) despues de borrar el elemento en la posicion 10: (0,0,0,0,0,0,VACIO,0,0,1)");
--   eliminar_elemento_ordenado(10, V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:= (1,1,2,2,3,3,4,4,5,VACIO);
--   Put_Line("El vector (1,1,2,2,3,3,4,4,5,VACIO) despues de borrar el elemento en la posicion 9: (1,1,2,2,3,3,4,4,VACIO,VACIO)");
--   eliminar_elemento_ordenado(9, V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V3:= (0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,VACIO);
--   Put_Line("El vector (0..9,VACIO) despues de borrar el elemento en la posicion 0: (0..9,VACIO)");
--   eliminar_elemento_ordenado(0, V3);
--   for i in V3'range loop
--      put(V3(i));
--   end loop;

--   new_line(2);

--   V2:= (1,1,2,2,3,3,4,4,5,VACIO);
--   Put_Line("El vector (1,1,2,2,3,3,4,4,5,VACIO) despues de borrar el elemento en la posicion 9: (1,1,2,2,3,3,4,4,VACIO,VACIO)");
--   eliminar_elemento_ordenado(9, V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   ------------------------------------------------
--   -- Ejercicio 14 -- insertar_elemento_ordenado --
--   ------------------------------------------------
--   new_line(3);

--   V2:=(1,3,4,5,6,7,8,9,10,VACIO);
--   new_line(3);
--   Put_Line("El vector (1,3,4,5,6,7,8,9,10,VACIO) despues de insertar el numero 2: (1,2,3,4,5,6,7,8,9,10)");
--   insertar_elemento_ordenado(2,V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line;

--   V2:=(1,1,2,2,3,3,4,4,5,VACIO);
--   new_line(3);
--   Put_Line("El vector (1,1,2,2,3,3,4,4,5,VACIO) despues de insertar el numero 5: (1,1,2,2,3,3,4,4,5,5)");
--   insertar_elemento_ordenado(5,V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line;

--   V2:=(2,4,6,8,12,14,16,18,20,VACIO);
--   new_line(3);
--   Put_Line("El vector (2,4,6,8,12,14,16,18,20,VACIO) despues de insertar el numero 10: (2,4,6,8,10,12,14,16,18,20)");
--   insertar_elemento_ordenado(10,V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line;

--   V2:=(1,2,3,4,5,6,7,8,9,VACIO);
--   new_line(3);
--   Put_Line("El vector (1,2,3,4,5,6,7,8,9,VACIO) despues de insertar el numero 10: (1,2,3,4,5,6,7,8,9,10)");
--   insertar_elemento_ordenado(10,V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line;

--   V2:=(1,2,3,4,5,6,7,8,9,VACIO);
--   new_line(3);
--   Put_Line("El vector (1,2,3,4,5,6,7,8,9,VACIO) despues de insertar el numero 0: (0,1,2,3,4,5,6,7,8,9)");
--   insertar_elemento_ordenado(0,V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;



--   ----------------------------------------
--   -- Ejercicio 15 -- Eliminar_Repetidos --
--   ----------------------------------------
--   new_line(3);

--   V2:= (1,1,2,2,3,3,4,4,5,5);
--   Put_Line("(1,1,2,2,3,3,4,4,5,5) despues de eliminar los valores repetidos mas lejanos al principio: (1,2,3,4,5,VACIO,VACIO,VACIO,VACIO,VACIO)");
--   Eliminar_Repetidos(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:= (1,2,3,4,5,5,4,3,2,1);
--   Put_Line("(1,2,3,4,5,5,4,3,2,1) despues de eliminar los valores repetidos mas lejanos al principio: (1,2,3,4,5,VACIO,VACIO,VACIO,VACIO,VACIO)");
--   Eliminar_Repetidos(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:= (0,0,0,1,0,0,0,0,0,0);
--   Put_Line("(0,0,0,1,0,0,0,0,0,0) despues de eliminar los valores repetidos mas lejanos al principio: (0,1,VACIO,VACIO,VACIO,VACIO,VACIO,VACIO,VACIO,VACIO)");
--   Eliminar_Repetidos(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:= (1,2,3,4,5,6,7,8,9,10);
--   Put_Line("(1,2,3,4,5,6,7,8,9,10) despues de eliminar los valores repetidos mas lejanos al principio: (1,2,3,4,5,6,7,8,9,10)");
--   Eliminar_Repetidos(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   Put_Line("(0..9,VACIO) despues de eliminar los valores repetidos mas lejanos al principio: (0,1,2,3,4,5,6,7,8,9,VACIO..VACIO)");
--   Eliminar_Repetidos(V3);
--   for i in V3'range loop
--      put(V3(i));
--   end loop;

--   ----------------------------------------
--   -- Ejercicio 16 -- Letra_Mas_Repetida --
--   ----------------------------------------
--   new_line(3);

--   palabras:= (
--      (4, "Hola                          "),
--      (2, "Me                            "),
--      (5, "llamo                         "),
--      (8, "Sandalio                      "),
--      others => (0, "                              ")
--   );
--   Texto:= (
--            Cuantas => 4,
--            Palabras => t_palabras(palabras)
--   );
--   Put_Line("La letra mas repetida en ""Hola me llamo Sandalio"" es A");
--   put(Letra_Mas_Repetida(Texto));

--   new_line(2);

--   palabras:= (
--      (8, "¿Cuantos                      "),
--      (7, "Cuentos                       "),
--      (7, "Cuentas                       "),
--      (2, "Tu?                           "),
--      others => (0, "                              ")
--   );
--   Texto:= (
--            Cuantas => 4,
--            Palabras => t_palabras(palabras)
--   );
--   Put_line("La letra mas repetida en ""¿Cuantos cuentos cuentas tu?"" es T");
--   put(Letra_Mas_Repetida(Texto));

--   ---------------------------------------
--   -- Ejercicio 17 -- Ordenar_Insercion --
--   ---------------------------------------
--   new_line(3);

--   V2:=(5,1,7,2,9,8,3,5,4,6);
--   Put_Line("El vector (5,1,7,2,9,8,3,5,4,6) ordenado: (1,2,3,4,5,5,6,7,8,9)");
--   Ordenar_Insercion(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:=(18,16,14,12,10,8,6,4,2,0);
--   Put_Line("El vector (18,16,14,12,10,8,6,4,2,0) ordenado: (0,2,4,6,8,10,12,14,16,18)");
--   Ordenar_Insercion(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:=(0,1,0,1,0,1,0,1,0,1);
--   Put_Line("El vector (0,1,0,1,0,1,0,1,0,1) ordenado: (0,0,0,0,0,1,1,1,1,1)");
--   Ordenar_Insercion(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   new_line(2);

--   V2:=(11,12,13,14,15,16,17,18,19,20);
--   Put_Line("El vector (011,12,13,14,15,16,17,18,19,20) ordenado: (11,12,13,14,15,16,17,18,19,20)");
--   Ordenar_Insercion(V2);
--   for i in V2'range loop
--      put(V2(i));
--   end loop;

--   ---------------------------------
--   -- Ejercicio 18 -- Es_Toeplitz --
--   ---------------------------------
--   new_line(3);

--   Matriz := ((1,4,2,8),
--              (5,1,4,2),
--              (9,5,1,4));
--   Put_Line("Es la matriz (1,4,2,8), (5,1,4,2), (6,5,1,4) Toeplitz? TRUE");
--   put(Es_Toeplitz(Matriz)'img);

--   new_line(2);
--   Matriz := ((0,1,2,3),
--              (5,0,1,2),
--              (3,5,0,1));
--   Put_Line("Es la matriz (0,1,2,3), (5,0,1,2), (3,5,0,1) Toeplitz? TRUE");
--   put(Es_Toeplitz(Matriz)'img);

--   new_line(2);
--   Matriz := ((0,1,2,3),
--              (5,0,8,2),
--              (3,5,0,1));
--   Put_Line("Es la matriz (0,1,2,3), (5,0,1,2), (3,5,8,1) Toeplitz? FALSE");
--   put(Es_Toeplitz(Matriz)'img);

--   new_line(2);
--   Matriz := ((1,0,1,0),
--              (0,1,0,1),
--              (1,1,1,0));
--   Put_Line("Es la matriz (1,0,1,0), (0,1,0,1), (1,1,1,0) Toeplitz? FALSE");
--   put(Es_Toeplitz(Matriz)'img);
--
--   new_line(3);

   ---------------------------------

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9;
--   Put("El elemento 5 esta en el vector: ");
--   if Esta_En_Vector(VX, 5) then
--      put("SI");
--   else
--      put("No");
--   end if;
--   new_line;
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10;
--   Put("El elemento 11 esta en el vector: ");
--   if Esta_En_Vector(VX, 11) then
--      put("SI");
--   else
--      put("NO");
--   end if;
--   new_line;
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9;
--   Put("Posicion del elemento 5 en el vector: ");
--   Put(Posicion(VX,5)'img);
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9;
--   Put("Posicion del elemento 10 en el vector: ");
--   Put(Posicion(VX,10)'img);
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10;
--   VY := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10 & 11;
--   VZ := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 11;
--   Put("VX e VY son iguales: ");
--   if Son_Iguales(VX, VY) then
--      put("SI");
--   else
--      put("NO");
--   end if;
--   new_line;
--   Put("VX y VZ son iguales: ");
--   if Son_Iguales(VX, VZ) then
--      put("SI");
--   else
--      put("NO");
--   end if;
--   new_line;
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10;
--   Put("VX sin el elemento en la posición 7: ");
--   eliminar_elemento(7, VX);
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10;
--   Put("VX sin el elemento en la posición 16: ");
--   eliminar_elemento(16, VX);
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10;
--   Put("VX sin el elemento en la posición 1: ");
--   eliminar_elemento(1, VX);
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10;
--   Put("VX con el elemento 3 en la posición 3: ");
--   insertar_elemento_en_pos(3, 3, VX);
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10;
--   Put("VX con el elemento 3 en la posición 16: ");
--   insertar_elemento_en_pos(3, 16, VX);
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10;
--   Put("VX con el elemento 1 en la posición 1: ");
--   insertar_elemento_en_pos(1, 1, VX);
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 10 & 29 & 3300 & 4 & 52 & 62 & 62 & 8 & (-50) & 10;
--   Put("VX ordenado: ");
--   Ordenar(VX);
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 10 & 29 & 3300 & 4 & 52 & 62 & 62 & 8 & (-50) & 10;
--   Put("Posicion del maximo en VX: " & Pos_Maximo(VX)'img);
--   new_line;
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   Delete(VX,1);

--   VX := 10 & 29 & 3300 & 4 & 52 & 62 & 62 & 8 & (-50) & 10;
--   Put("VX sin repetidos: ");
--   Eliminar_Repetidos(VX);
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

--   VX := 0 & 0 & 0 & 0;
--   Put("VX sin repetidos: ");
--   Eliminar_Repetidos(VX);
--   for e of VX loop
--      put(e'img);
--   end loop;
--   new_line(2);

END Lab07_Pruebas;