![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Laboratorio | Consultas SQL 7

En esta práctica de laboratorio, utilizará la base de datos de alquiler de películas [Sakila](https://dev.mysql.com/doc/sakila/en/). Ya ha estado utilizando esta base de datos en un par de laboratorios, pero si necesita obtener los datos nuevamente, consulte el [enlace de instalación] oficial (https://dev.mysql.com/doc/sakila/en/sakila-installation .html).

La base de datos está estructurada de la siguiente manera:
![Esquema de base de datos](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

### Instrucciones

1. En la tabla de actores, ¿cuáles son los actores cuyos apellidos no se repiten? Por ejemplo, si ordena los datos de la tabla actor por apellido, verá que están Christian Arkoyd, Kirsten Arkoyd y Debbie Arkoyd. Estos tres actores tienen el mismo apellido. Por eso no queremos incluir este apellido en nuestra salida. El apellido "Astaire" está presente sólo una vez con la actriz "Angelina Astaire", por lo que querríamos esto en nuestra lista de resultados.
2. ¿Qué apellidos aparecen más de una vez? Usaríamos la misma lógica que en la pregunta anterior pero esta vez queremos incluir los apellidos de los actores donde el apellido estuvo presente más de una vez.
3. Utilizando la tabla de alquileres, averigüe cuántos alquileres procesó cada empleado.
4. Utilizando la tabla de películas, descubre cuántas películas se estrenaron cada año.
5. Utilizando la tabla de películas, averigua para cada clasificación cuántas películas había.
6. ¿Cuál es la duración media de la película para cada tipo de calificación? Redondea las longitudes medias a dos decimales.
7. ¿Qué tipo de películas (calificación) tienen una duración media superior a dos horas?