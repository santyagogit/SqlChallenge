DROP TABLE IF EXISTS ejer10;
CREATE TABLE ejer10
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    age TINYINT UNSIGNED
);

INSERT INTO ejer10 (name, age)
VALUES ('Bob', 21),
	   ('Sam', 19),
       ('Jill', 18),
       ('Jim', 21),
       ('Sally', 19),
       ('Jess', 20),
       ('Will', 21);
       
SELECT SUM(age) as Total
FROM ejer10;

DROP TABLE ejer10