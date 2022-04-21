DROP TABLE IF EXISTS nacionalidad;
DROP TABLE IF EXISTS personas;

CREATE TABLE nacionalidad
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    descen VARCHAR(20)
);

CREATE TABLE personas
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    idNac TINYINT,
    name VARCHAR(10),
    age TINYINT UNSIGNED
);

INSERT INTO personas (idNac, name, age)
VALUES (1, 'Bob', 21),
	   (1, 'Sam', 19),
       (2, 'Jill', 18),
       (3, 'Jim', 21),
       (4, 'Sally', 19),
       (2, 'Jess', 20),
       (3, 'Will', 21);
       
INSERT INTO nacionalidad (descen)
VALUES ('Argentino'),
	   ('Italiano'),
       ('Español'),
       ('Alemán');
       
SELECT p.id, descen AS DesNac, name as Name, age as Age
FROM personas p
JOIN nacionalidad n ON(p.idNac = n.id);

DROP TABLE personas;
DROP TABLE nacionalidad