CREATE DATABASE IF NOT EXISTS challenge;
USE challenge;
DROP TABLE IF EXISTS ejer1;
CREATE TABLE ejer1
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    value INT NOT NULL
);

INSERT INTO ejer1 (value)
VALUES (-56), (76), (-84), (96), (-47);

SELECT
    IF((value < 0), ABS(value), value * -1) AS value
FROM ejer1;

DROP TABLE ejer1
