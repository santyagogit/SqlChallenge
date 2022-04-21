DROP TABLE IF EXISTS ejer5;
CREATE TABLE ejer5
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    age TINYINT UNSIGNED
);

INSERT INTO ejer5 (name, age)
VALUES ('Bob', 21),
	   ('Sam', 19),
       ('Jill', 18),
       ('Jim', 21),
       ('Sally', 19),
       ('Jess', 20),
       ('Will', 21);

SELECT
	age as Age,
    COUNT(*) AS Count
FROM ejer5
GROUP BY Age
ORDER BY Age ASC;

DROP TABLE ejer5