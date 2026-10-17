SELECT p.nombre, c.fecha, c.diagnostico
FROM Consultas c
INNER JOIN Pacientes p ON c.id_paciente = p.id_paciente
WHERE EXTRACT(YEAR FROM c.fecha) = 2024
  AND EXTRACT(MONTH FROM c.fecha) = 8
ORDER BY c.fecha;
