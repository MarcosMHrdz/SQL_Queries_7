use sakila;

-- En la tabla de actores, ¿cuáles son los actores cuyos apellidos no se repiten? 
-- Por ejemplo, si ordena los datos de la tabla actor por apellido, 
-- verá que están Christian Arkoyd, Kirsten Arkoyd y Debbie Arkoyd. 
-- Estos tres actores tienen el mismo apellido. 
-- Por eso no queremos incluir este apellido en nuestra salida. 
-- El apellido "Astaire" está presente sólo una vez con la actriz "Angelina Astaire", 
-- por lo que querríamos esto en nuestra lista de resultados.
 
SELECT last_name, COUNT(*) AS count
FROM actor
GROUP BY last_name 
HAVING count = 1
ORDER BY last_name;

SELECT first_name, last_name, COUNT(*)  over (partition by last_name) 
FROM actor
-- GROUP BY last_name 
-- HAVING count = 1
HAVING COUNT(*)  over (partition by last_name) 
ORDER BY last_name;

SELECT first_name, last_name
FROM actor
WHERE last_name IN (
    SELECT last_name 
    FROM actor 
    GROUP BY last_name 
    HAVING COUNT(last_name) = 1
);


-- ALTERNATIVA

-- ALTERNATIVA:
WITH result AS (
	SELECT first_name, last_name, COUNT(*) OVER (PARTITION BY last_name) AS counter
	FROM sakila.actor
)
SELECT first_name, last_name
FROM result
WHERE counter=1;

-- Qué apellidos aparecen más de una vez? 
-- Usaríamos la misma lógica que en la pregunta anterior pero esta vez queremos 
-- incluir los apellidos de los actores donde el apellido estuvo presente más de una vez.

SELECT last_name, COUNT(*) AS count
FROM actor
GROUP BY last_name
HAVING count > 1;

-- Utilizando la tabla de alquileres, averigüe cuántos alquileres procesó cada empleado.
SELECT staff_id, COUNT(rental_id) AS cantidad_alquileres
FROM rental
GROUP BY staff_id;

-- Usando la tabla de películas, averigua cuántas películas se estrenaron cada año.

SELECT release_year, COUNT(film_id) AS Cantidad_peliculas
from film
GROUP BY release_year;

-- Usando la tabla de películas, averigua para cada clasificación cuántas películas había.

SELECT rating, COUNT(film_id) AS Cantidad_peliculas
FROM film
GROUP BY rating;

-- ¿Cuál es la duración media de la película para cada tipo de calificación? Redondea las longitudes medias a dos decimales.

SELECT rating, ROUND(AVG(length), 2) AS duracion_media
FROM film
GROUP BY rating;

-- ¿Qué tipo de películas (calificación) tienen una duración media superior a dos horas?

SELECT rating, ROUND(AVG(length), 2) AS duracion_media
FROM film
GROUP BY rating
having duracion_media > 120;