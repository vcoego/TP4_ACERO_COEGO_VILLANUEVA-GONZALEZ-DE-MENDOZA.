SELECT m.nombre AS medicamento,
       COUNT(r.id_receta) AS cantidad_recetas
FROM Medicamentos m
INNER JOIN Recetas r ON m.id_medicamento = r.id_medicamento
GROUP BY m.id_medicamento, m.nombre
ORDER BY cantidad_recetas DESC
LIMIT 2;