# w3-database-project
Repo proyecto W3. Limpieza y carga de datos en SQL

## Introduction

Iniciamos el proyecto partiendo de 7 ficheros csv que algunos guardan relación entre ellos, y que hay que depurar algunos datos 


## Proceso

[[ Se realiza un primer ejercicio en el fichero main. Posteriormente intentamos en el fichero main2 optimizar el codigo con bucles y variables dinamicas, y ampliamos un paso mas, el de insertar una pelicula nueva y ver si se actualizan las tablas ]]


Lo primero que hemos hecho es analizar fichero por fichero para ver su contenido y entender las necesidades del proyecto

Vemos que hay relación entre la tabla actor y la tabla film, pero para ello tenemos que pasar por la tala old_HDD.

Para poder tener valores en comun, concatenamos de la tabla actor las columnas fname y lname, haciendo lo mismo en la tabl old_hdd. De esta manera tenemos una unica columna con valores comunes.

Lo siguiente que hacemos es ir limpiando las tablas y subiendolas a SQL a traves de python y pandas

Una vez que todo esta limpio y subido, hacemos el proceso de enlazado entre tablas.

Hecho esto, podemos proceder a realizar consultas en SQL

Despues de hacer nuestras consultas, probamos a insertar una pelicula nueva, y ver como se actualizan las tablas. ++ Funciona :) ++


## Consultas

Realizamos varias consultas poniendo en practica lo aprendido:

SQL1:
- Hacemos una tabla resumen de actores agrupado por total de peliculas de una misma categoria ordenado de mayor a menor

SQL2:
- Query para visualizar el total de actores por titulo de pelicula. (observamos que hay peliculas que no tienen actores)

SQL3:
- Queremos crear una tabla permanente que nos muestre las peliculas en las que PENELOPE GUINESS ha participado, mostrando el tipo de la pelicula.
Como queremos que esta nueva tabla que hemos creado llamada `Peliculas_Penelope` este siempre actualizada, procedemos a ejecutar una query que la elimine, y a continuación otra query que la cree y actualice datos.

SQL4:
- Queremos una tabla que nos resuma el total de peliculas por su tipologia (excluyendo los nulos)



