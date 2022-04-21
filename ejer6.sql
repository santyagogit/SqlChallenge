DROP TABLE IF EXISTS ejer6;
CREATE TABLE ejer6
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10)
);

INSERT INTO ejer6 (name)
VALUES ('Bob'),
	   ('Sam'),
       ('Jill'),
       ('Jim'),
       ('Sally'),
       ('Jess'),
       ('Will');

SELECT
	CONCAT('¡Hola ', name, '! ¿Cómo estás hoy?') AS Saludo
FROM ejer6;

DROP TABLE ejer6