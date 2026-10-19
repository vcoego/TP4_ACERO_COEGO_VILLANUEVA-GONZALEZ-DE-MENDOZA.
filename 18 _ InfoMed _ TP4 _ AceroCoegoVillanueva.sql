WITH total_por_medicamento AS (
    SELECT id_medicamento, COUNT(*) AS total_recetas
    FROM Recetas
    GROUP BY id_medicamento
)
SELECT med.nombre AS medicamento,
       t.total_recetas,
       m.nombre AS medico,
       p.nombre AS paciente
FROM Recetas r
INNER JOIN Medicamentos med ON r.id_medicamento = med.id_medicamento
INNER JOIN Medicos m ON r.id_medico = m.id_medico
INNER JOIN Pacientes p ON r.id_paciente = p.id_paciente
INNER JOIN total_por_medicamento t ON r.id_medicamento = t.id_medicamento
ORDER BY t.total_recetas DESC, med.nombre, m.nombre, p.nombre;