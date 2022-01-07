-- Cree una tabla llamada CURSO con los atributos:
-- Código de curso (clave primaria, entero no nulo)
-- Nombre (varchar no nulo)
-- Descripcion (varcha)
-- Turno (varchar no nulo)

CREATE TABLE curso
(
    codigo_curso INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre       VARCHAR(100) NOT NULL,
    descripcion  VARCHAR(200) NULL,
    turno        VARCHAR(50)  NOT NULL
);

-- Agregue un campo “cupo” de tipo numérico

ALTER TABLE curso
    ADD COLUMN cupo INTEGER;

-- Inserte datos en la tabla:
-- (101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
-- (102, “Matemática Discreta”,””,”Tarde”,30)

INSERT INTO curso (codigo_curso, nombre, descripcion, turno, cupo)
VALUES (101, 'Algoritmos', 'Algoritmos y Estructura de datos', 'Mañana', 35),
       (102, 'Matematica Discreta', null, 'Tarde', 30);

-- Intente ingresar un registro con el nombre nulo y verifique que no funciona.

INSERT INTO curso (codigo_curso, nombre, descripcion, turno, cupo)
VALUES (null, null, 'Algoritmos y Estructura de datos', 'Mañana', 23);

-- -- Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.

INSERT INTO curso (codigo_curso, nombre, descripcion, turno, cupo)
VALUES (102, 'Algebra Lineal', 'Algebra Linea 1', 'Tarde', 30);

-- Actualice, para todos los cursos, el cupo en 25.

UPDATE curso
SET cupo = 25
WHERE cupo IS NOT NULL;

-- Elimine el curso Algoritmos.

DELETE FROM curso
WHERE nombre like 'Algoritmos';

