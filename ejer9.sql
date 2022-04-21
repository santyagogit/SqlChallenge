DROP TABLE IF EXISTS ejer9;
CREATE TABLE ejer9
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    age TINYINT UNSIGNED
);

INSERT INTO ejer9 (name, age)
VALUES ('Bob', 21),
	   ('Sam', 19),
       ('Jill', 18),
       ('Jim', 21),
       ('Sally', 19),
       ('Jess', 20),
       ('Will', 21);
       
SELECT DISTINCT age
FROM ejer9
ORDER BY age ASC;

DROP TABLE ejer9