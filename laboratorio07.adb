package body Laboratorio07 is

   ------------------------------------------------------------
   --AUTHOR: BERGARETXE LOPEZ, LUKA
   ------------------------------------------------------------

   --------------------
   -- esta_en_vector --
   --------------------

   use P_Vector_Integer, P_Vector_Integer_Sorting;

   function esta_en_vector
     (V: in T_vector_enteros;
      N: in Integer)
      return Boolean
   is
      i : Integer := V'first;
      r : Boolean := FALSE;
   begin
      loop
         r := r or (V(i) = N and V(i) /= VACIO);
         exit when r or V(i) = VACIO or i = V'last;
         i := i + 1;
      end loop;
      return r;
   end esta_en_vector;

   --------------
   -- posicion --
   --------------

   function posicion
     (V: in T_Vector_enteros;
      Num: in Integer)
      return Integer
   is
      i : Integer := V'first;
      r : Integer := Integer'Last;
   begin
      loop
         if V(i) = Num then
            r := i;
         end if;
         exit when V(i) = VACIO or r = i or i = V'last;
         i := i + 1;
      end loop;
      return r;
   end posicion;

   -----------------
   -- Son_Iguales --
   -----------------

   function Son_Iguales (F1, F2: in T_Fecha) return Boolean is
      r : Boolean;
   begin
      if F1.Dia = F2.Dia and F1.Mes = F2.Mes and F1.anno = F2.anno then
         r := TRUE;
      else
         r := FALSE;
      end if;
      return r;
   end Son_Iguales;

   ------------------
   -- Centesimales --
   ------------------

   function Centesimales (Grados: in T_Grados_Sex) return Float is
      r : Float;
   begin
      r := 10.0*(float(Grados.Grados) + float(60*Grados.Minutos + Grados.Segundos)/3600.0)/9.0;
      return r;
   end Centesimales;

   -----------------
   -- Son_Iguales --
   -----------------

   function Son_Iguales (L1, L2: in T_vector_enteros) return Boolean is
      i : Natural := 0;
      r : Boolean := TRUE;
   begin
      loop
         r := r and L1(L1'First + i) = L2(L2'First + i);
         exit when not r or L1(L1'First + i) = VACIO or L2(L2'First + i) = VACIO;
         i := i + 1;
      end loop;
      return r;
   end Son_Iguales;

   -----------------------
   -- eliminar_elemento --
   -----------------------

   procedure eliminar_elemento
     (pos: in Integer;
      V: in out T_vector_enteros)
   is
   begin
      if pos in V'range and then V (pos) /= VACIO then
         V (pos..V'last - 1) := V (pos + 1..V'last);
      end if;
   end eliminar_elemento;

   ------------------------------
   -- insertar_elemento_en_pos --
   ------------------------------

   procedure insertar_elemento_en_pos
     (num: in Integer;
      pos: in Integer;
      V: in out T_Vector_Enteros)
   is
   begin
      if pos in V'range then
         V(pos..V'last) := Num & V(pos..V'last - 1);
      end if;
   end insertar_elemento_en_pos;

   ----------------
   -- Pos_Maximo --
   ----------------

   function Pos_Maximo (V: in T_Vector_Enteros) return Integer is
      P : Integer := V'first;
      i : Integer;
   begin
      if V'length > 1 then
         i := P + 1;
         loop
            if V(i) > V(P) then
               P := i;
            end if;
            exit when i = V'last;
            i := i + 1;
         end loop;
      end if;
      return P;
   end Pos_Maximo;

   -----------------------
   -- Ordenar_Seleccion --
   -----------------------

   procedure Ordenar_Seleccion (V: in out T_Vector_Enteros) is
      aux, P : Integer;
      i : Integer := V'first;
   begin
      if V'length > 1 then
         while i <= V'last loop
            aux := V(Pos_Maximo(V(i..V'last)));
            V(Pos_Maximo(V(i..V'last))) := V(i);
            V(i) := aux;
            i := i + 1;
         end loop;
      end if;
   end Ordenar_Seleccion;

   ----------------
   -- Cent_A_Sex --
   ----------------

   procedure Cent_A_Sex
     (Centesimales: in Float;
      Sexagesimales:out T_Grados_Sex)
   is
   begin
      Sexagesimales.grados := Integer(Float'Truncation(9.0*Centesimales/10.0));
      Sexagesimales.minutos := Integer(Float'Truncation(60.0*(9.0*Centesimales/10.0 - Float(Sexagesimales.grados))));
      Sexagesimales.segundos := Integer(Float'Rounding(60.0*(60.0*(9.0*Centesimales/10.0 - Float(Sexagesimales.grados)) - Float(Sexagesimales.minutos))));
   end Cent_A_Sex;

   -------------------
   -- Rotar_Derecha --
   -------------------

   procedure Rotar_Derecha (V:in out T_Vector_Enteros) is
   begin
      V := V(V'last) & V(V'first..V'last-1);
   end Rotar_Derecha;

   -----------------------------
   -- esta_en_vector_ordenado --
   -----------------------------

   function esta_en_vector_ordenado
     (V: in T_vector_enteros;
      N: in Integer)
      return Boolean
   is
      r : Boolean := FALSE;
      i : Integer := V'first;
   begin
      if N >= V(V'first) and N <= V(V'last) then
         if N = V(V'first) or N = V(V'last) then
            r := TRUE;
         else
            loop
               r := r or V(i) = N;
               exit when r or V(i) > N or i = V'last;
               i := i + 1;
            end loop;
         end if;
      end if;
      return r;
   end esta_en_vector_ordenado;

   --------------------------------
   -- eliminar_elemento_ordenado --
   --------------------------------

   procedure eliminar_elemento_ordenado
     (pos: in Integer;
      V: in out T_vector_enteros)
   is
   i, j : Integer := V'first;
   begin
      if pos in V'range and then V(pos) /= VACIO then
         loop
            if i /= pos then
               V(j) := V(i);
               j:= j + 1;
            end if;
            exit when V(i) = VACIO;
            i := i + 1;
         end loop;
      end if;
   end eliminar_elemento_ordenado;

   --------------------------------
   -- insertar_elemento_ordenado --
   --------------------------------

   procedure insertar_elemento_ordenado
     (num:  in Integer;
      V: in out T_Vector_Enteros)
   is
      i : Integer := V'first;
   begin
      if num <= V(V'first) or V(V'first) = VACIO then
         V := num & V(V'first..V'last-1);
      else
         loop
            if V(i) >= num or V(i) = VACIO then
               V := V(V'first..i-1) & num & V(i..V'last-1);
            end if;
            exit when V(i) = num or V(i) = VACIO or i = V'last;
            i := i + 1;
         end loop;
      end if;
   end insertar_elemento_ordenado;

   ------------------------
   -- Eliminar_Repetidos --
   ------------------------

   procedure Eliminar_Repetidos (V: in out T_Vector_Enteros) is
      i : Integer := V'first;
      j, k : Integer;
   begin
      while V(i) /= VACIO and i /= V'last loop
         j := i + 1;
         k := i + 1;
         loop
            if V(i) /= V(j) then
               V(k) := V(j);
               k := k + 1;
            end if;
            j := j + 1;
            exit when V(j - 1) = VACIO or j - 1 = V'last;
         end loop;
         if j /= k then
            V(k) := VACIO;
         end if;
         i := i + 1;
      end loop;
   end Eliminar_Repetidos;

   ------------------------
   -- Letra_Mas_Repetida --
   ------------------------

   function Pos_Maximo (C: in T_Contadores_Letras) return Character is
      P : Character := C'first;
   begin
      for i in 'B'..C'last loop
         if C(i) > C(P) then
            P := i;
         end if;
      end loop;
      return P;
   end Pos_Maximo;

   function Letra_Mas_Repetida (Texto: in T_Info_Texto) return T_LETRA is
      C : T_Contadores_Letras := (others => 0);
      r : T_LETRA;
   begin
      for num_pal in 1..Texto.Cuantas loop
         for num_let in 1..Texto.Palabras(num_pal).Long loop
            if Texto.Palabras(num_pal).Letras(num_let) in 'A'..'Z' or Texto.Palabras(num_pal).Letras(num_let) in 'a'..'z' then
               C(Character'Val((Character'Pos(Texto.Palabras(num_pal).Letras(num_let)) - 65) mod 32 + 65)) := C(Character'Val((Character'Pos(Texto.Palabras(num_pal).Letras(num_let)) - 65) mod 32 + 65)) + 1;
            end if;
         end loop;
      end loop;
      r := pos_maximo(C);
      return r;
   end Letra_Mas_Repetida;

   -----------------------
   -- Ordenar_Insercion --
   -----------------------

   procedure mover_insertar (V : in out T_Vector_Enteros; p : in Integer) is

   begin
      for i in V'first..p loop
         if V(i) > V(p) then
            V(i..p) := V(p) & V(i..p-1);
         end if;
      end loop;
   end mover_insertar;

   procedure Ordenar_Insercion (V: in out T_Vector_Enteros) is
   begin
      for i in V'first + 1..V'last loop
         mover_insertar (V, i);
      end loop;
   end Ordenar_Insercion;

   -----------------
   -- Es_Toeplitz --
   -----------------

   function Es_Toeplitz (M: T_Matriz) return Boolean is
      r : Boolean := FALSE;
      i : Natural;
      j : Natural;
   begin
      if M'length(1) = M'length(2) then
         r := TRUE;
         b1 : for k in M'first(2)..M'last(2) - 1 loop
            i := M'first(1) + 1;
            j := k + 1;
            loop
               r := r and M(M'first(1),k) = M(i,j);
               exit b1 when not r;
               i := i + 1;
               j := j + 1;
               exit when i > M'last(1) or j > M'last(2);
            end loop;
         end loop b1;
         if r then
            b2 : for k in M'first(1) + 1..M'last(1) - 1 loop
               i := k + 1;
               j := M'First(2) + 1;
               loop
                  r := r and M(k,M'first(2)) = M(i,j);
                  exit b2 when not r;
                  i := i + 1;
                  j := j + 1;
                  exit when i > M'last(1) or j > M'last(2);
               end loop;
            end loop b2;
         end if;
      end if;
      return r;
   end Es_Toeplitz;


   -----------------------
   -- Nivel Para pensar --
   -----------------------

   function Esta_En_Vector(V: in T_Vector_Integer; N: in Integer) return Boolean is
   -- pre: V contiene al menos un elemento
   -- los elementos pueden no seguir un orden
   -- post: resultado = True <--> el valor N esta en V
      r : Boolean;
   begin
      r := V.Contains(N);
      return r;
   end Esta_En_Vector;


   function posicion (V: in T_Vector_Integer; Num: in Integer) return Integer is
   -- pre: V contiene al menos un elemento
   -- los elementos no siguen ningun orden. el elemento que se busca no tiene por que estar en V
   -- post: posicion en la que se encuentra N y, si no esta, Integer'Last
      r : Integer;
   begin
      r := Find_Index(V,Num);
      return r;
   end posicion;


   function Son_Iguales(L1, L2: in T_Vector_Integer) return Boolean is
   -- L1 y L2 son dos listas de enteros
   -- post: resultado = true <--> F1=F2 (mismo numero de elementos, en el mismo orden)
      r : constant Boolean := L1 = L2;
   begin
      return r;
   end Son_Iguales;

   procedure eliminar_elemento (pos: in Integer; V: in out T_Vector_Integer) is
   -- pre:  pos es una posición dentro del rango del índice de V
   --       V no necesariamente completo (los elementos en las primeras posiciones, centinela Integer'first)
   -- post: V igual si la posicion no apunta a un dato valido
   --       V sin el elemento de la posicion pos si hay un dato valido
   --NOTA:  Busca eficiencia: El vector no tiene que mantener ningun orden particular
   begin
      if pos in First_Index(V)..Last_Index(V) then
         Delete(V, pos);
      end if;
   end eliminar_elemento;

   procedure insertar_elemento_en_pos (num: in Integer; pos: in Integer; V: in out T_Vector_Integer) is
   -- pre: V contiene N enteros
   --      la posicion de insercion estará en el rango
   --      que el numero de elementos que contenga la lista +1
   -- post: si pos es una posición valida de datos, V incluye num en dicha posicion
   --       y todos los elementos se desplazan una posicion a la derecha
   --       Si pos no es valida, no se inserta nada y V se queda igual
   begin
      if pos in First_Index(V)..Last_Index(V) then
         Insert(V, pos, num);
      elsif pos = Last_Index(V)+1 then
         Append(V, num);
      end if;
   end insertar_elemento_en_pos;

   procedure Ordenar(V: in out T_Vector_Integer) is
   -- pre:  El Vector tiene todos los elementos ocupados
   -- post: Los elementos del vector están ordenados
   begin
      Sort(V);
   end Ordenar;

   function Pos_Maximo (V: in T_Vector_Integer) return Integer is
   -- pre:  El Vector tiene todos los elementos ocupados
   -- post: Resultado = numero máximo de los incluidos en V
      r : Integer := First_Index(V);
   begin
      for i in r..Last_Index(V) loop
         if V(i) > V(r) then
            r := i;
         end if;
      end loop;
      return r;
   end Pos_Maximo;

   procedure Eliminar_Repetidos(V: in out T_Vector_Integer) is
   -- pre:  V es un vector con enteros completo
   -- post: V contiene los mismos elementos de V, sin los repetidos.
   begin
      for i in First_Index(V)..Last_Index(V)-1 loop
         while Find_Index(V,V(i),i+1) /= No_Index loop
            Delete(V,Find_Index(V,V(i)));
         end loop;
      end loop;
   end Eliminar_Repetidos;

end Laboratorio07;
