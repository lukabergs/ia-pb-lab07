with Ada.Containers.Vectors;
package laboratorio07 is
   subtype T_Dia is Integer range 1..31;
   type T_mes is (Enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre, diciembre);
   type T_Fecha is record
      Dia: T_Dia;
      Mes: T_Mes;
      anno: Positive;
   end record;
   type T_Grados_Sex is record
      Grados, Minutos, Segundos: Natural;
   end record;

   VACIO: constant integer := Integer'First;
   type T_Vector_Enteros is array (Integer range <>) of Integer;
   type T_Matriz is array (Integer range <>, Integer range<>) of Integer;

   ------------------
   -- Nivel basico --
   ------------------
   function esta_en_vector(V: in T_vector_enteros; N: in Integer) return Boolean;
   -- pre: V contiene al menos un elemento (V'Last >= 1)
   -- los elementos pueden no seguir un orden
   -- post: resultado = True <--> el valor N esta en V
   function posicion (V: in T_Vector_enteros; Num: in Integer) return Integer;
   -- pre: V contiene al menos un elemento (V'Length >= 1)
   -- los elementos no siguen ningun orden. el elemento que se busca no tiene por que estar en V
   -- post: posicion en la que se encuentra N y, si no esta, Integer'Last
   function Son_Iguales(F1, F2: in T_Fecha) return Boolean;
   -- F1 y F2 son dos fechas válidas
   -- post: resultado = true <--> F1=F2
   function Centesimales(Grados: in T_Grados_Sex) return Float;
   --pre: grados, minutos y segundos Naturales
   --post: resultado = grados centesimales equivalentes a los grados, minutos y segundos especificados
   function Son_Iguales(L1, L2: in T_vector_enteros) return Boolean;
   -- L1 y L2 son dos listas de enteros terminadas en VACIO
   -- post: resultado = true <--> F1=F2 (mismo numero de elementos, en el mismo orden)
   procedure eliminar_elemento (pos: in Integer; V: in out T_vector_enteros);
   -- pre:  pos es una posición dentro del rango del índice de V
   --       V no necesariamente completo (los elementos en las primeras posiciones, centinela Integer'first)
   -- post: V igual si la posicion no apunta a un dato valido
   --       V sin el elemento de la posicion pos si hay un dato valido
   --NOTA:  Busca eficiencia: El vector no tiene que mantener ningun orden particular
   procedure insertar_elemento_en_pos (num: in Integer; pos: in Integer; V: in out T_Vector_Enteros);
   -- pre: V contiene N enteros  (termina en Integer'First)
   --      la posicion de insercion estará en el rango
   --      que el numero de elementos que contenga la lista +1
   --      V tiene al menos un hueco libre
   -- post: si pos es una posición valida de datos, V incluye num en dicha posicion
   --       y todos los elementos se desplazan una posicion a la derecha
   --       Si pos no es valida, no se inserta nada y V se queda igual
   function Pos_Maximo (V: in T_Vector_Enteros) return Integer;
   -- pre:  El Vector tiene todos los elementos ocupados
   -- post: Resultado = numero máximo de los incluidos en V
   procedure Ordenar_Seleccion (V: in out T_Vector_Enteros);
   -- pre:  El Vector tiene todos los elementos ocupados
   -- post: Los elementos del vector están ordenados




   --------------------
   -- Nivel Avanzado --
   --------------------
   Max_palabras: constant integer :=100;
   subtype T_Letra is character range 'A'..'Z';
   type T_contadores_letras is array (T_Letra) of Natural;
   type T_Info_palabra is record
      Long: integer;
      Letras: string(1..30);
   end record;
   type t_palabras is array (Integer range <>) of T_Info_Palabra;
   type T_Info_texto is record
      Cuantas: integer;
      Palabras: t_palabras(1..Max_Palabras);
   end record;

   procedure Cent_A_Sex(Centesimales: in Float; Sexagesimales:out T_Grados_Sex);
   --pre: centesimales>=0
   --post: sexagesimales contiene los grados, minutos y segundos equivalentes a centesimales
   procedure Rotar_Derecha(V:in out T_Vector_Enteros);
   -- pre: V está lleno
   -- post: V con el último elemento en la primera posición y los demas desplazados la derecha
   function esta_en_vector_ordenado(V: in T_vector_enteros; N: in Integer) return Boolean;
   -- pre: V contiene al menos un elemento (V'Last >= 1)
   --      V esta ordenado ascendentemente:
   --              V(i) <= V(i+1),      1 <= i < V'last
   -- post: resultado = True <--> N esta en V
   --       El algoritmo es eficiente y se aprovecha de que V esta ordenado
   procedure eliminar_elemento_ordenado (pos: in Integer; V: in out T_vector_enteros);
   -- pre:  pos es una posición dentro del rango del índice de V
   --       V no necesariamente completo (los elementos en las primeras posiciones, centinela Integer'first)
   --       V ordenado ascendentemente (en los elementos validos)
   -- post: V igual si la posicion no apunta a un dato valido
   --       V sin el elemento de la posicion pos si hay un dato valido
   --       V continua ordenado en los elementos validos
   procedure insertar_elemento_ordenado (num:  in Integer; V: in out T_Vector_Enteros);
   -- pre: V contiene N enteros  (termina en Integer'First)
   --      V ordenado ascendentemente
   --      V tiene al menos un hueco libre
   -- post: V incluye num en la posision que le corresponde segun el orden
   --       y todos los elementos mayores se desplazan una posicion a la derecha
   --       Si pos no es valida, no se inserta nada y V se queda igual
   procedure Eliminar_Repetidos(V: in out T_Vector_Enteros);
   -- pre:  V es un vector con enteros completo
   -- post: V contiene los mismos elementos de V, sin los repetidos en
   --       las posiciones con indice más alto).
   function Letra_Mas_Repetida (Texto: in T_Info_Texto) return T_LETRA;
   -- pre: Texto con letras mayúsculas, minúsculas y signos de puntuacion
   --post: Letra más frecuente del texto (en Mayúsculas).
   --      Si varias, la que aparezca antes en orden alfabético
   procedure Ordenar_Insercion (V: in out T_Vector_Enteros);
   -- pre: V es un Vector de enteros completo, probablemente desordenado
   --post: V contiene los elementos de V en orden de menor a mayor
   function Es_Toeplitz (M: T_Matriz) return Boolean;
   --pre: M es una matriz de enteros (cuadrada o no)
   --post: resultado=true <--> M es una matriz de toeplitz

   -----------------------
   -- Nivel Para pensar --
   -----------------------
   -- Con notacion posicional:
   -- package P_Vector_Integer is new Vectors(Positive,Integer);
   -- Mejor con notacion nominal (que deja las cosas mas claras)
   package P_Vector_Integer is
      new Ada.Containers.Vectors(Index_Type=>Positive, Element_Type=>Integer);
   -- descomentando use, estaría disponible el tipo Vector:
   -- use P_Vector_Integer;
   --
   -- También podemos renombrar el tipo:
   subtype T_Vector_Integer is P_Vector_Integer.Vector;

   --Para ordenar Vectores:
   package P_Vector_Integer_Sorting is
      new P_Vector_Integer.Generic_Sorting;

   function Esta_En_Vector(V: in T_Vector_Integer; N: in Integer) return Boolean;
   -- pre: V contiene al menos un elemento
   -- los elementos pueden no seguir un orden
   -- post: resultado = True <--> el valor N esta en V

   function posicion (V: in T_Vector_Integer; Num: in Integer) return Integer;
   -- pre: V contiene al menos un elemento
   -- los elementos no siguen ningun orden. el elemento que se busca no tiene por que estar en V
   -- post: posicion en la que se encuentra N y, si no esta, Integer'Last
   function Son_Iguales(L1, L2: in T_Vector_Integer) return Boolean;
   -- L1 y L2 son dos listas de enteros
   -- post: resultado = true <--> F1=F2 (mismo numero de elementos, en el mismo orden)
   procedure eliminar_elemento (pos: in Integer; V: in out T_Vector_Integer);
   -- pre:  pos es una posición dentro del rango del índice de V
   --       V no necesariamente completo (los elementos en las primeras posiciones, centinela Integer'first)
   -- post: V igual si la posicion no apunta a un dato valido
   --       V sin el elemento de la posicion pos si hay un dato valido
   --NOTA:  Busca eficiencia: El vector no tiene que mantener ningun orden particular
   procedure insertar_elemento_en_pos (num: in Integer; pos: in Integer; V: in out T_Vector_Integer);
   -- pre: V contiene N enteros
   --      la posicion de insercion estará en el rango
   --      que el numero de elementos que contenga la lista +1
   -- post: si pos es una posición valida de datos, V incluye num en dicha posicion
   --       y todos los elementos se desplazan una posicion a la derecha
   --       Si pos no es valida, no se inserta nada y V se queda igual
   procedure Ordenar(V: in out T_Vector_Integer);
   -- pre:  El Vector tiene todos los elementos ocupados
   -- post: Los elementos del vector están ordenados
   function Pos_Maximo (V: in T_Vector_Integer) return Integer;
   -- pre:  El Vector tiene todos los elementos ocupados
   -- post: Resultado = numero máximo de los incluidos en V
   procedure Eliminar_Repetidos(V: in out T_Vector_Integer);
   -- pre:  V es un vector con enteros completo
   -- post: V contiene los mismos elementos de V, sin los repetidos.

end laboratorio07;

