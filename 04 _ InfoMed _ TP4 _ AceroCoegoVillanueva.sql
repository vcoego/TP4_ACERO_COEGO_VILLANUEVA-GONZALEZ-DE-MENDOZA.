SELECT id_paciente
FROM Pacientes
WHERE nombre = 'Luciana Gómez';

-------------------------------

UPDATE Pacientes
SET numero = '500',
    calle  = 'Calle Corrientes',
    ciudad = 'Buenos Aires'
WHERE id_paciente = 1;

-------------------------------

SELECT id_paciente, nombre, numero, calle, ciudad
FROM Pacientes
WHERE nombre = 'Luciana Gómez';