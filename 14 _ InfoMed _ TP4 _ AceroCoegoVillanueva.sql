SELECT nombre,
       EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento)) AS edad
FROM Pacientes
WHERE EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento)) >
      (SELECT AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento)))
       FROM Pacientes)
ORDER BY edad DESC;