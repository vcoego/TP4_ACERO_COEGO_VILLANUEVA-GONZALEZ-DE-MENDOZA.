SELECT DISTINCT ciudad
FROM Pacientes
ORDER BY ciudad;

--------------

UPDATE Pacientes
SET ciudad = 'Buenos Aires'
WHERE ciudad ILIKE '%buenos%'
   OR ciudad ILIKE 'bs%';


UPDATE Pacientes
SET ciudad = 'Córdoba'
WHERE ciudad ILIKE 'c%r%d%';


UPDATE Pacientes
SET ciudad = 'Mendoza'
WHERE ciudad ILIKE 'mend%';


UPDATE Pacientes
SET ciudad = 'Rosario'
WHERE ciudad ILIKE '%rosario%';

----------------

SELECT DISTINCT ciudad
FROM Pacientes
ORDER BY ciudad;
