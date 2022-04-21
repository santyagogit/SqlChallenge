DROP TABLE IF EXISTS ejer4;
CREATE TABLE ejer4
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    value INT
);

INSERT INTO ejer4 (value)
VALUES (4), (11), (57), (24), (47);

SELECT
    IF((value % 2) = 0, 'par', 'impar') AS value
FROM ejer4;

DROP TABLE ejer4