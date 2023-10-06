SELECT technicien.nom, technicien.prenom FROM technicien
INNER JOIN intervention ON technicien.id = intervention.idTechnicien
INNER JOIN incident ON intervention.idIncident = incident.id
INNER JOIN borne ON borne.id = incident.idBorne
WHERE borne.id = '2'
ORDER BY technicien.nom + technicien.prenom;

SELECT * FROM intervention
INNER JOIN incident ON intervention.idIncident = incident.id
WHERE TIMESTAMPDIFF(HOUR, incident.dateHeure, intervention.dateHeureDébut) > 24;

SELECT COUNT(*) AS incidentNC FROM incident 
WHERE dateHeureClôture IS NULL;

SELECT station.nom FROM station
INNER JOIN borne ON station.id = borne.idStation
INNER JOIN incident ON borne.id = incident.idBorne
GROUP BY nom
HAVING COUNT(*) >= 10;