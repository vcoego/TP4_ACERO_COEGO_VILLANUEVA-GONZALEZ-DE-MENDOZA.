CREATE VIEW vista_pacientes_edad AS
SELECT
    p.id_paciente,
    p.nombre,
    p.fecha_nacimiento,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, p.fecha_nacimiento)) AS edad,
    s.descripcion AS sexo,
    p.ciudad
FROM Pacientes p
INNER JOIN SexoBiologico s ON p.id_sexo = s.id_sexo;



SELECT id_paciente, nombre, edad, sexo, ciudad
FROM vista_pacientes_edad;
