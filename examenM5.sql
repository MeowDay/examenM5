SELECT * FROM actor order by actor_id desc;
SELECT * FROM customer order by customer_id desc;
SELECT * FROM staff order by staff_id desc;

---SECCIÓN 4 DEL EXAMEN---

---pregunta 1--

--customer
INSERT INTO customer(
customer_id, store_id, first_name, last_name, email, adress_id, activebool, create_date, last_update, active)
VALUES(
600, 'idusuario1', 'idtienda1', 'nombre1', 'apellido1', 'correo@mail.com', 606, true, 'yyy-mm-dd', current_timestamp, 1
);

UPDATE customer
SET customer_id= integer, store_id=smallint, first_name=varchar, last_name=varchar, email=varchar,
adress_id=smallint, activebool=boolean, create_date=date, last_update =current_timestamp, active= integer
WHERE --ingresar condiciones--
;

DELETE FROM customer 
WHERE --ingresar condiciones---
;

--staff
INSERT INTO staff(
staff_id, first_name, last_name, adress_id, email, store_id, active, username, password, last_update, picture)
VALUES(
3, 'nombre1', 'apellido1', 5, 'correo@mail.com', 3, true, 'usuario1', 'password1',current_timestamp, [datainfo]
);

UPDATE staff
SET staff_id=integer, first_name=varchar, last_name=varchar, adress_id=smallint, email=varchar,
store_id=smallint, active=boolean, username=varchar, password=varchar, last_update=current_timestamp, picture=[binary data]
WHERE --ingresar condiciones--
;

DELETE FROM staff 
WHERE --ingresar condiciones---
;

--actor

INSERT INTO actor(
actor_id, first_name, last_name, last_update
)
VALUES(
201, 'Nombre1', 'Apellido1', current_timestamp
);

UPDATE actor
SET actor_id= integer,first_name = varchar, last_name = varchar, last_update = current_timestamp
WHERE --ingresar condiciones---
;

DELETE FROM actor 
WHERE --ingresar condiciones---
;
---pregunta 2---
SELECT * 
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
WHERE TO_CHAR(rental.rental_date, 'YYYY-MM') = --escribe una fecha en formato 'yyyy-mm' ejemplo='2005-06'
;
---pregunta 3---
SELECT payment_id AS Numero, payment_date as Fecha, amount as Total
FROM payment
;

---pregunta 4---
SELECT * FROM film
WHERE rental_rate > 4.0
AND release_year = 2006
;


---SECCION 5 DEL EXAMEN Diccionario--
SELECT
 col.TABLE_NAME AS nombre_tabla,
 col.COLUMN_NAME AS nombre_columna,
 col.IS_NULLABLE AS columna_nulo,
 col.DATA_TYPE AS tipo_dato_columna
FROM
 INFORMATION_SCHEMA.COLUMNS AS col
WHERE
 col.TABLE_SCHEMA = 'public'
ORDER BY
 col.TABLE_NAME
 ;
