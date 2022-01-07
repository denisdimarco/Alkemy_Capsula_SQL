-- 1. Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.

SELECT nombre, apellido, fecha_nacimiento
FROM PROFESOR
ORDER BY fecha_nacimiento;

-- 2. Todos los profesores cuyo salario sea mayor o igual a 65000.

SELECT * FROM PROFESOR
where salario >= 65000;

-- 3. Todos los profesores que nacieron en la década del 80.

SELECT * FROM PROFESOR
WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31';

-- 4. 5 registros

SELECT * FROM PROFESOR LIMIT 5;

-- 5. Todos los profesores cuyo apellido inicie con la letra "P"

SELECT * FROM PROFESOR
WHERE apellido LIKE 'P%' or 'p%';

-- 6. Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000

SELECT * FROM PROFESOR
WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31' AND salario > 80000;
