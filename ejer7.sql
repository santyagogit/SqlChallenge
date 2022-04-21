DROP TABLE IF EXISTS ejer7;
CREATE TABLE ejer7
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    amount_sold INT
);

INSERT INTO ejer7 (name, amount_sold)
VALUES ('Cup', 11),
	   ('Saucer', 22),
       ('Plate', 46),
       ('Fork', 34),
       ('Spoon', 45),
       ('Knife', 78),
       ('Mug', 23),
       ('Glass', 64),
       ('Tumbler', 24);

SELECT name, amount_sold
FROM ejer7
ORDER BY amount_sold DESC
LIMIT 5;

DROP TABLE ejer7