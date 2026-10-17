SELECT *
FROM Consultas
WHERE id_medico = 3
  AND EXTRACT(YEAR FROM fecha) = 2024
  AND EXTRACT(MONTH FROM fecha) = 8;
