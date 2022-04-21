DROP PROCEDURE IF EXISTS cantidad;
DROP TABLE IF EXISTS passengers;

CREATE TABLE passengers
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    age TINYINT UNSIGNED
);

INSERT INTO passengers (name, age)
VALUES ('Bob', 21),
	   ('Sam', 19),
       ('Jill', 18),
       ('Jim', 21),
       ('Sally', 19),
       ('Jess', 20),
       ('Will', 21);
       
DELIMITER $$
CREATE PROCEDURE cantidad(age TINYINT UNSIGNED)
BEGIN
	SELECT
		COUNT(*) AS Total
    FROM passengers p
    WHERE p.age = age;
END$$

CALL cantidad(21);

DROP TABLE passengers;
DROP PROCEDURE cantidad;