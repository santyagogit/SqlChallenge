DROP TABLE IF EXISTS passports;
DROP TABLE IF EXISTS passengers;

CREATE TABLE passports
(
	id INT,
    f_vto DATE
);

CREATE TABLE passengers
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    idNac TINYINT,
    name VARCHAR(10),
    age TINYINT UNSIGNED
);

INSERT INTO passengers (idNac, name, age)
VALUES (1, 'Bob', 21),
	   (1, 'Sam', 19),
       (2, 'Jill', 18),
       (3, 'Jim', 21),
       (4, 'Sally', 19),
       (2, 'Jess', 20),
       (3, 'Will', 21);
       
INSERT INTO passports (id, f_vto)
VALUES (1, '2023-10-1'),
	   (2, '2025-5-22'),
       (5, '2023-1-22'),
       (6, '2028-6-15');


DELIMITER $$
CREATE PROCEDURE PersonaDelete(id TINYINT UNSIGNED)
BEGIN
    IF (SELECT ps.id FROM passengers ps WHERE ps.id = id) THEN
		DELETE FROM passengers ps WHERE ps.id = id;
		IF (SELECT pp.id FROM passports pp WHERE pp.id = id) THEN
			DELETE FROM passports pp WHERE pp.id = id;
		END IF;
        SELECT 0;
	ELSE
		SELECT -1;
    END IF;
    
END$$

CALL PersonaDelete(1);

DROP TABLE passports;
DROP TABLE passengers;
DROP PROCEDURE PersonaDelete;