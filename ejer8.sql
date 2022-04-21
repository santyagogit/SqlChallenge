DROP TABLE IF EXISTS ejer8;
CREATE TABLE ejer8
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    country VARCHAR(20)
);

INSERT INTO ejer8 (name, country)
VALUES 
	    ('Bob Smith', 'United States'),
		('Jim Jones', 'China'),
		('Sam White', 'Japan'),
		('Jess Black', 'Canada'),
		('Will Wilson', 'Germany'),
		('Wilson Scott', 'England'),
		('Scott Daniels', 'France'),
		('Daniel Jackson', 'Canada'),
		('Jack Johnson', 'United States');

SELECT name, country
FROM ejer8
WHERE country NOT IN (
	'Canada', 'United States'
);

DROP TABLE ejer8