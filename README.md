# LABORATORIO 07
## Vectores y Matrices
### TAREA 1. Ejercicios obligatorios
1. **Esta en vector (vector no ordenado).** Implementa la _función_ **esta_en_vector** que, dado un valor entero y un vector de N enteros (completo, o sea, con N enteros) cuyos valores _**pueden no estar ordenados**_, diga si el entero está o no en el vector.
2. **Posición.** Implementa la _función_ **posición** que, dado un valor entero X y un vector de N enteros (completo, o sea, con N enteros) cuyos valores _**pueden no estar ordenados**_, diga en qué posición se encuentra X en el vector. Si dicho entero estuviera repetido, bastará con devolver la posición de una cualquiera de sus apariciones; y en caso de no encontrarse en el vector, se devolverá el valor `Integer'Last`.
3. **¿Son fechas iguales?** Implementa la _función_ **son_iguales** que, dadas dos fechas, nos indica si se trata de la misma fecha o no.
4. **Centesimales.** Implementa la _función_ **centesimales** que, dado un valor de grados sexagesimales (grados, minutos y segundos), devuelva los grados equivalentes según la fórmula siguiente:
  ```math
    grados = grados + \frac{minutos \cdot 60 + segundos}{3600}
  ```
5. **¿Son listas iguales?** Implementa la _función_ **son_iguales** que, dadas dos listas incluidas en un vector (terminado en el centinela `Integer'First`), devuelva true si el contenido de las dos listas es el mismo (mismos elementos en el mismo orden) y false si no.  los elementos que tienen interés para decidir si son iguales o no son los anteriores al centinela. Los valores de los elementos posteriores no afectan. Por ejemplo, (1 2 3 C 5 6) es igual a (1 2 3 C 6 5).
6. **Eliminar el elemento de una posición.** Crea el _procedimiento_ **eliminar_elemento** que, dada una posición pos y un vector V de N enteros (no necesariamente completo, o sea, con, como mucho, N enteros terminado con el valor `Integer'First`), cuyos valores _**pueden no estar ordenados**_, modifique V eliminando el elemento en la posición pos (si existe). Si pos no es un valor donde hay un elemento, entonces no se hará nada. Los elementos de la lista no tienen por qué estar ordenados (ni antes ni después del borrado), lo que se puede aprovechar para ganar en eficiencia al eliminar el elemento. De hecho, es imprescindible que la solución sea eficiente y, en concreto, se aprovechará que el orden de los elementos de la lista es indiferente (tanto antes como después de la eliminación del elemento) para borrar el tercer elemento _**sin utilizar bucles**_ moviendo el último elemento (el anterior al centinela) a la posición donde se borra el elemento y dejando el centinela en la posición anterior al centinela también.
7. **Insertar elemento en una posición.** Implementa el _procedimiento_ **insertar_elemento_en_pos** que, dados dos enteros num y pos, y un vector de, como máximo, N-1 enteros (lo que significa que aún hay hueco para uno más) y terminado con el valor `Integer'First`, inserte en la lista el número num en la posición pos, desplazando los elementos que corresponda una posición a la derecha.
8. **Posición del máximo.** Implementa la _función_ **pos_maximo** que, dado un vector de enteros completo, devuelva la posición en la que se encuentra el máximo de ese vector.
9. **Ordenación por selección.** Implementa el _procedimiento_ **ordenar_seleccion** que, dado un vector de enteros, ordene sus elementos _**de mayor a menor**_. El programa debe usar la función maximo del punto anterior.
### TAREA 2. Ejercicios extra
10. **Centesimales a sexagesimales.** Implementa el _procedimiento_ **cent_a_sex** que, dado un valor de grados centesimales, lo convierta a grados sexagesimales (grados, minutos y segundos) según las siguientes fórmulas (E(X) significa, parte entera de X). En Ada, el tipo Float tiene varios atributos que se pueden utilizar para resolver el ejercicio: `Rounding`, `Truncation`, `Remainder`, `Floor`, `Ceiling`:
  ```math
    \begin{align}
    grados = E(centesimales) \\
    minutos = E(centesimales \cdot 60) \\
    segundos = E((centesimales \cdot 3600) \mod 60) \\
    \end{align}
  ```
11. **Rotar derecha.** Crea el _procedimiento_ **rotar_derecha** que, dado un vector de N enteros (completo, o sea, con N enteros) cuyos valores pueden no estar ordenados, lo modifique rotando sus elementos una posición a la derecha, de modo que el último elemento pase a ser el primero.

    <div align="center">
       <img src="https://github.com/lukabergs/ia-pb-lab07/assets/52601751/1ce843d5-f509-4521-b3e0-943af816a610" title="Fig. 1">
    </div>

12. **Esta en vector (vector ordenado).** Implementa la _función_ **esta_en_vector_ordenado** que, dado un valor entero y un vector de N enteros (completo, o sea, con N enteros) cuyos valores están ordenados ascendentemente, diga si el entero está o no en el vector. Es imprescindible que la solución sea eficiente.
13. **Eliminar elemento (vector ordenado)** Crea el _procedimiento_ **eliminar_elemento_ordenado** que, dada una posición pos y un vector V de N enteros cuyos valores están ordenados ascendentemente y terminado con el valor `Integer'First`, modifique V eliminando el elemento en la posición pos (si existe). Si pos no es un valor donde hay un elemento, entonces no se hará nada. Este ejercicio es similar al anterior, con la diferencia de que en este caso los elementos de la lista están ordenados antes y deben seguir ordenados después de realizar el borrado del elemento.
14. **Insertar elemento (vector ordenado)** Implementa el _procedimiento_ **insertar_elemento_ordenado** que, dado un entero num, y un vector de, como máximo, N-1 enteros (lo que significa que aún hay hueco para uno más) ordenados ascendentemente y terminado con el valor `Integer'First`, inserte en el vector el número num en la posición que le corresponda, desplazando los elementos mayores que él una posición a la derecha.
15. **Eliminar repetidos** Implementa el _procedimiento_ **eliminar_repetidos** que, dado un vector de enteros, lo modifique eliminando los enteros repetidos (borrando el más lejano al principio del vector) y haciendo que el vector termine en `Integer'First`.
16. **Letra más repetida** Implementa la _función_ **letra_mas_repetida** que, dado un vector de caracteres, cuente la frecuencia de las letras (sin distinguir entre mayúsculas y minúsculas) en ese vector y devuelva la más frecuente de todas. Si hubiera varias más frecuentes, la primera por orden alfabético.
17. **Ordenación por inserción** Implementa el _procedimiento_ **ordenar_insercion** que, dado un vector de enteros, ordene sus elementos de menor a mayor. Para hacer este _procedimiento_ debes usar el _procedimiento_ **insertar_elemento_ordenado**.
18. **¿Es matriz de Töplitz?** Implementa la _función_ **es_Toeplitz** que, dada una matriz, devuelva true si la matriz es una matriz de Töplitz. Se trata de una matriz cuadrada en la que los elementos de sus diagonales (de izquierda a derecha) son constantes.
```math
  \begin{pmatrix}
    a & b & c & d & e \\
    f & a & b & c & d \\
    g & f & a & b & c \\
    h & g & f & a & b \\
    i & h & g & f & a
  \end{pmatrix}
```
### Tarea 3: Ejercicios para pensar - Vectors
Ada tiene la biblioteca de programas `Ada.Containers.Vectors` dedicada a los vectores que incluye funciones sofisticadas que están a nuestra disposición. Como los vectores se crean a partir de dos tipos de datos, el del índice (`Index_Type`) y el de los elementos que forman parte del vector (`Element_Type`), se necesita definir ambos tipos y crear una biblioteca con los programas para acceder con esos índices a elementos del tipo indicado. Los vectores crecen a medida que se les asigna elementos, de manera que no hay que preocuparse por quedarse sin espacio. Cuando un vector se queda sin espacio, se aumenta su capacidad en una cantidad de elementos fija. Aquí tiene sentido preguntar por la longitud del vector, ya que no es fija desde la creación del mismo. Los Vectores no tienen los atributos que tienen los arrays, pero la biblioteca incluye las funciones `First_index(V)` y `last_index(V)` que equivalen a los atributos First y Last. Para acceder a estos vectores, la documentación permite el uso de `V(I)` como un sinónimo de la llamada a la función `Element(V,I)`.
```ada
with Ada.Containers.Vectors;
  -- En la parte de declaraciones (paquete de especificación)
  package P_Vector_Integer is new Ada.Containers.Vectors
    (Index_Type => Natural, Element_Type => Integer);
  subtype T_Vector_Integer is P_Vector_Integer.Vectors;
  V : T_Vector_Integer; -- o también: P_Vector_Integer.Vectors
```
Los siguientes ejercicios son para hacer usando las funciones disponibles de la biblioteca mencionada. La mayoría de los ejercicios consiste en localizar en la documentación de la biblioteca de programas, el programa que hace dicha tarea. Los dos últimos ejercicios necesitan de más programación, aunque se puede tomar inspiración en la solución pensada en el apartado anterior y trasladarla para usarla con este tipo de estructuras. Se facilita el enlace a la especificación: https://www.adaic.org/resources/add_content/standards/05rm/html/RM-A-18-2.html

19. **Esta en vector (vector no ordenado).** Implementa la _función_ **esta_en_vector** que, dado un valor entero y un vector de enteros (completo, o sea, con N enteros) cuyos valores _**pueden no estar ordenados**_, diga si el entero está o no en el vector.
20. **Posición.** Implementa la _función_ **posicion** que, dado un valor entero X y un vector de N enteros (completo, o sea, con N enteros) cuyos valores pueden no estar ordenados, diga en qué valor del índice se encuentra X en el vector. Si dicho entero estuviera repetido, bastará con devolver la posición de una cualquiera de sus apariciones; y en caso de no encontrarse en el vector, se devolverá la constante `No_index`.
21. **¿Son listas iguales?** Implementa la _función_ **son_iguales** que, dadas dos listas devuelva true si el contenido de las dos listas es el mismo (mismos elementos en el mismo orden) y false si no. Son iguales si tienen los mismos elementos, en el mismo orden.
22. **Eliminar el elemento de una posición.** Crea el _procedimiento_ **eliminar_elemento** que, dados una valor del índice pos y un vector V de N enteros (completo) cuyos valores _**pueden no estar ordenados**_, modifique V eliminando el elemento en la posición pos (si existe). Si pos no es un valor donde hay un elemento, entonces no se hará nada. Los elementos de la lista no tienen por qué estar ordenados (ni antes ni después del borrado), lo que se puede aprovechar para ganar en eficiencia al eliminar el elemento. De hecho, es imprescindible que la solución sea eficiente y, en concreto, se aprovechará que el orden de los elementos de la lista es indiferente (tanto antes como después de la eliminación del elemento) para borrar el tercer elemento _**sin utilizar bucles**_ moviendo el último elemento (el anterior al centinela) a la posición donde se borra el elemento y dejando el centinela en la posición anterior al centinela también.
23. **Insertar elemento en una posición.** Implementa el _procedimiento_ **insertar_elemento_en_pos** que, dados dos enteros num y pos, y un vector de, como máximo, N-1 enteros (lo que significa que aún hay hueco para uno más) y terminado con el valor `Integer'First`, inserte en la lista el número num en la posición pos, desplazando los elementos que corresponda una posición a la derecha.
24. **Ordenación por inserción.** Implementa el _procedimiento_ **ordenar_insercion** que, dado un vector de enteros, ordene sus elementos de menor a mayor. Para hacer este _procedimiento_ debes usar el _procedimiento_ **insertar_elemento_ordenado**.
25. **Posición del máximo.** Implementa la _función_ **pos_maximo** que, dado un vector de enteros completo, devuelva la posición en la que se encuentra el máximo de ese vector.
26. **Eliminar repetidos.** Implementa el _procedimiento_ **eliminar_repetidos** que, dado un vector de enteros, lo modifique eliminando los enteros repetidos (borrando el más lejano al principio del vector) y haciendo que el vector termine en `Integer'First`.
