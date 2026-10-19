SELECT m.nombre, COUNT(*) AS cantidad_recetas
FROM Recetas r
INNER JOIN Medicamentos m ON r.id_medicamento = m.id_medicamento
WHERE r.id_medico = 2
GROUP BY m.id_medicamento, m.nombre
HAVING COUNT(*) > 1;
