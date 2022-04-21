DROP TABLE IF EXISTS ejer2;
CREATE TABLE ejer2
(
	division_id INT,
    year YEAR,
    revenue INT
);

INSERT INTO ejer2 (division_id, year, revenue)
VALUES  (1, 2018, 60), 
		(1, 2021, 40), 
		(1, 2020, 70),
        (2, 2021, -10),
        (3, 2018, 20),
        (3, 2016, 40),
        (4, 2021, 50);
        
SELECT division_id
FROM ejer2        
WHERE year = 2021 AND revenue > 0;

DROP TABLE ejer2