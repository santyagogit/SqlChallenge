DROP TABLE IF EXISTS ejer3;
CREATE TABLE ejer3
(
	id INT KEY AUTO_INCREMENT,
    year INT
);

INSERT INTO ejer3 (year)
VALUES  (1776), 
		(2001), 
		(1643),
        (1865),
        (1969);
        
SELECT CEILING(year / 100)
FROM ejer3;  

DROP TABLE ejer3