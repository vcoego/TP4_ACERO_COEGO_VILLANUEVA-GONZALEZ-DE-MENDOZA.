SELECT p.nombre, c.fecha, c.diagnostico
FROM Pacientes p
INNER JOIN Consultas c ON p.id_paciente = c.id_paciente
WHERE c.fecha = (
    SELECT MAX(c2.fecha)
    FROM Consultas c2
    WHERE c2.id_paciente = p.id_paciente
)
ORDER BY p.nombre;