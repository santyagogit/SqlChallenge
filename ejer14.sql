DELIMITER $$
CREATE PROCEDURE semana(fecha DATE)
BEGIN
	SELECT
		DAYNAME(fecha) AS Día;
END$$

CALL semana('2022-02-02');

DROP PROCEDURE semana;