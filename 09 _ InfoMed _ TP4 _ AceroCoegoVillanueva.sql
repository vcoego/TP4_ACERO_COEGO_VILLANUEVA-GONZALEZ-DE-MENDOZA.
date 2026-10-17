SELECT m.nombre AS medico, COUNT(r.id_receta) AS cantidad_recetas
FROM Medicos m
INNER JOIN Recetas r ON m.id_medico = r.id_medico
GROUP BY m.nombre
ORDER BY cantidad_recetas DESC;
